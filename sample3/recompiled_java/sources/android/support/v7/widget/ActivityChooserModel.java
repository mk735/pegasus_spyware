package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.support.v4.os.AsyncTaskCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* access modifiers changed from: package-private */
public class ActivityChooserModel extends DataSetObservable {
    static final String ATTRIBUTE_ACTIVITY = "activity";
    static final String ATTRIBUTE_TIME = "time";
    static final String ATTRIBUTE_WEIGHT = "weight";
    static final boolean DEBUG = false;
    private static final int DEFAULT_ACTIVITY_INFLATION = 5;
    private static final float DEFAULT_HISTORICAL_RECORD_WEIGHT = 1.0f;
    public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
    public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
    private static final String HISTORY_FILE_EXTENSION = ".xml";
    private static final int INVALID_INDEX = -1;
    static final String LOG_TAG = ActivityChooserModel.class.getSimpleName();
    static final String TAG_HISTORICAL_RECORD = "historical-record";
    static final String TAG_HISTORICAL_RECORDS = "historical-records";
    private static final Map<String, ActivityChooserModel> sDataModelRegistry = new HashMap();
    private static final Object sRegistryLock = new Object();
    private final List<ActivityResolveInfo> mActivities = new ArrayList();
    private OnChooseActivityListener mActivityChoserModelPolicy;
    private ActivitySorter mActivitySorter = new DefaultSorter();
    boolean mCanReadHistoricalData = true;
    final Context mContext;
    private final List<HistoricalRecord> mHistoricalRecords = new ArrayList();
    private boolean mHistoricalRecordsChanged = true;
    final String mHistoryFileName;
    private int mHistoryMaxSize = 50;
    private final Object mInstanceLock = new Object();
    private Intent mIntent;
    private boolean mReadShareHistoryCalled = false;
    private boolean mReloadActivities = false;

    public interface ActivityChooserModelClient {
        void setActivityChooserModel(ActivityChooserModel activityChooserModel);
    }

    public interface ActivitySorter {
        void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2);
    }

    public interface OnChooseActivityListener {
        boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent);
    }

    public static ActivityChooserModel get(Context context, String historyFileName) {
        ActivityChooserModel dataModel;
        synchronized (sRegistryLock) {
            dataModel = sDataModelRegistry.get(historyFileName);
            if (dataModel == null) {
                dataModel = new ActivityChooserModel(context, historyFileName);
                sDataModelRegistry.put(historyFileName, dataModel);
            }
        }
        return dataModel;
    }

    private ActivityChooserModel(Context context, String historyFileName) {
        this.mContext = context.getApplicationContext();
        if (TextUtils.isEmpty(historyFileName) || historyFileName.endsWith(HISTORY_FILE_EXTENSION)) {
            this.mHistoryFileName = historyFileName;
        } else {
            this.mHistoryFileName = historyFileName + HISTORY_FILE_EXTENSION;
        }
    }

    public void setIntent(Intent intent) {
        synchronized (this.mInstanceLock) {
            if (this.mIntent != intent) {
                this.mIntent = intent;
                this.mReloadActivities = true;
                ensureConsistentState();
            }
        }
    }

    public Intent getIntent() {
        Intent intent;
        synchronized (this.mInstanceLock) {
            intent = this.mIntent;
        }
        return intent;
    }

    public int getActivityCount() {
        int size;
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            size = this.mActivities.size();
        }
        return size;
    }

    public ResolveInfo getActivity(int index) {
        ResolveInfo resolveInfo;
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            resolveInfo = this.mActivities.get(index).resolveInfo;
        }
        return resolveInfo;
    }

    public int getActivityIndex(ResolveInfo activity) {
        int i;
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            List<ActivityResolveInfo> activities = this.mActivities;
            int activityCount = activities.size();
            i = 0;
            while (true) {
                if (i >= activityCount) {
                    i = -1;
                    break;
                } else if (activities.get(i).resolveInfo == activity) {
                    break;
                } else {
                    i++;
                }
            }
        }
        return i;
    }

    public Intent chooseActivity(int index) {
        synchronized (this.mInstanceLock) {
            if (this.mIntent == null) {
                return null;
            }
            ensureConsistentState();
            ActivityResolveInfo chosenActivity = this.mActivities.get(index);
            ComponentName chosenName = new ComponentName(chosenActivity.resolveInfo.activityInfo.packageName, chosenActivity.resolveInfo.activityInfo.name);
            Intent choiceIntent = new Intent(this.mIntent);
            choiceIntent.setComponent(chosenName);
            if (this.mActivityChoserModelPolicy != null) {
                if (this.mActivityChoserModelPolicy.onChooseActivity(this, new Intent(choiceIntent))) {
                    return null;
                }
            }
            addHistoricalRecord(new HistoricalRecord(chosenName, System.currentTimeMillis(), (float) DEFAULT_HISTORICAL_RECORD_WEIGHT));
            return choiceIntent;
        }
    }

    public void setOnChooseActivityListener(OnChooseActivityListener listener) {
        synchronized (this.mInstanceLock) {
            this.mActivityChoserModelPolicy = listener;
        }
    }

    public ResolveInfo getDefaultActivity() {
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            if (this.mActivities.isEmpty()) {
                return null;
            }
            return this.mActivities.get(0).resolveInfo;
        }
    }

    public void setDefaultActivity(int index) {
        float weight;
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            ActivityResolveInfo newDefaultActivity = this.mActivities.get(index);
            ActivityResolveInfo oldDefaultActivity = this.mActivities.get(0);
            if (oldDefaultActivity != null) {
                weight = (oldDefaultActivity.weight - newDefaultActivity.weight) + 5.0f;
            } else {
                weight = DEFAULT_HISTORICAL_RECORD_WEIGHT;
            }
            addHistoricalRecord(new HistoricalRecord(new ComponentName(newDefaultActivity.resolveInfo.activityInfo.packageName, newDefaultActivity.resolveInfo.activityInfo.name), System.currentTimeMillis(), weight));
        }
    }

    private void persistHistoricalDataIfNeeded() {
        if (!this.mReadShareHistoryCalled) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        } else if (this.mHistoricalRecordsChanged) {
            this.mHistoricalRecordsChanged = false;
            if (!TextUtils.isEmpty(this.mHistoryFileName)) {
                AsyncTaskCompat.executeParallel(new PersistHistoryAsyncTask(), new ArrayList(this.mHistoricalRecords), this.mHistoryFileName);
            }
        }
    }

    public void setActivitySorter(ActivitySorter activitySorter) {
        synchronized (this.mInstanceLock) {
            if (this.mActivitySorter != activitySorter) {
                this.mActivitySorter = activitySorter;
                if (sortActivitiesIfNeeded()) {
                    notifyChanged();
                }
            }
        }
    }

    public void setHistoryMaxSize(int historyMaxSize) {
        synchronized (this.mInstanceLock) {
            if (this.mHistoryMaxSize != historyMaxSize) {
                this.mHistoryMaxSize = historyMaxSize;
                pruneExcessiveHistoricalRecordsIfNeeded();
                if (sortActivitiesIfNeeded()) {
                    notifyChanged();
                }
            }
        }
    }

    public int getHistoryMaxSize() {
        int i;
        synchronized (this.mInstanceLock) {
            i = this.mHistoryMaxSize;
        }
        return i;
    }

    public int getHistorySize() {
        int size;
        synchronized (this.mInstanceLock) {
            ensureConsistentState();
            size = this.mHistoricalRecords.size();
        }
        return size;
    }

    private void ensureConsistentState() {
        boolean stateChanged = loadActivitiesIfNeeded() | readHistoricalDataIfNeeded();
        pruneExcessiveHistoricalRecordsIfNeeded();
        if (stateChanged) {
            sortActivitiesIfNeeded();
            notifyChanged();
        }
    }

    private boolean sortActivitiesIfNeeded() {
        if (this.mActivitySorter == null || this.mIntent == null || this.mActivities.isEmpty() || this.mHistoricalRecords.isEmpty()) {
            return false;
        }
        this.mActivitySorter.sort(this.mIntent, this.mActivities, Collections.unmodifiableList(this.mHistoricalRecords));
        return true;
    }

    private boolean loadActivitiesIfNeeded() {
        if (!this.mReloadActivities || this.mIntent == null) {
            return false;
        }
        this.mReloadActivities = false;
        this.mActivities.clear();
        List<ResolveInfo> resolveInfos = this.mContext.getPackageManager().queryIntentActivities(this.mIntent, 0);
        int resolveInfoCount = resolveInfos.size();
        for (int i = 0; i < resolveInfoCount; i++) {
            this.mActivities.add(new ActivityResolveInfo(resolveInfos.get(i)));
        }
        return true;
    }

    private boolean readHistoricalDataIfNeeded() {
        if (!this.mCanReadHistoricalData || !this.mHistoricalRecordsChanged || TextUtils.isEmpty(this.mHistoryFileName)) {
            return false;
        }
        this.mCanReadHistoricalData = false;
        this.mReadShareHistoryCalled = true;
        readHistoricalDataImpl();
        return true;
    }

    private boolean addHistoricalRecord(HistoricalRecord historicalRecord) {
        boolean added = this.mHistoricalRecords.add(historicalRecord);
        if (added) {
            this.mHistoricalRecordsChanged = true;
            pruneExcessiveHistoricalRecordsIfNeeded();
            persistHistoricalDataIfNeeded();
            sortActivitiesIfNeeded();
            notifyChanged();
        }
        return added;
    }

    private void pruneExcessiveHistoricalRecordsIfNeeded() {
        int pruneCount = this.mHistoricalRecords.size() - this.mHistoryMaxSize;
        if (pruneCount > 0) {
            this.mHistoricalRecordsChanged = true;
            for (int i = 0; i < pruneCount; i++) {
                this.mHistoricalRecords.remove(0);
            }
        }
    }

    public static final class HistoricalRecord {
        public final ComponentName activity;
        public final long time;
        public final float weight;

        public HistoricalRecord(String activityName, long time2, float weight2) {
            this(ComponentName.unflattenFromString(activityName), time2, weight2);
        }

        public HistoricalRecord(ComponentName activityName, long time2, float weight2) {
            this.activity = activityName;
            this.time = time2;
            this.weight = weight2;
        }

        public int hashCode() {
            return (((((this.activity == null ? 0 : this.activity.hashCode()) + 31) * 31) + ((int) (this.time ^ (this.time >>> 32)))) * 31) + Float.floatToIntBits(this.weight);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (getClass() != obj.getClass()) {
                return false;
            }
            HistoricalRecord other = (HistoricalRecord) obj;
            if (this.activity == null) {
                if (other.activity != null) {
                    return false;
                }
            } else if (!this.activity.equals(other.activity)) {
                return false;
            }
            if (this.time != other.time) {
                return false;
            }
            return Float.floatToIntBits(this.weight) == Float.floatToIntBits(other.weight);
        }

        public String toString() {
            StringBuilder builder = new StringBuilder();
            builder.append("[");
            builder.append("; activity:").append(this.activity);
            builder.append("; time:").append(this.time);
            builder.append("; weight:").append(new BigDecimal((double) this.weight));
            builder.append("]");
            return builder.toString();
        }
    }

    public final class ActivityResolveInfo implements Comparable<ActivityResolveInfo> {
        public final ResolveInfo resolveInfo;
        public float weight;

        public ActivityResolveInfo(ResolveInfo resolveInfo2) {
            this.resolveInfo = resolveInfo2;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.weight) + 31;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (getClass() != obj.getClass()) {
                return false;
            }
            return Float.floatToIntBits(this.weight) == Float.floatToIntBits(((ActivityResolveInfo) obj).weight);
        }

        public int compareTo(ActivityResolveInfo another) {
            return Float.floatToIntBits(another.weight) - Float.floatToIntBits(this.weight);
        }

        public String toString() {
            StringBuilder builder = new StringBuilder();
            builder.append("[");
            builder.append("resolveInfo:").append(this.resolveInfo.toString());
            builder.append("; weight:").append(new BigDecimal((double) this.weight));
            builder.append("]");
            return builder.toString();
        }
    }

    private final class DefaultSorter implements ActivitySorter {
        private static final float WEIGHT_DECAY_COEFFICIENT = 0.95f;
        private final Map<ComponentName, ActivityResolveInfo> mPackageNameToActivityMap = new HashMap();

        DefaultSorter() {
        }

        @Override // android.support.v7.widget.ActivityChooserModel.ActivitySorter
        public void sort(Intent intent, List<ActivityResolveInfo> activities, List<HistoricalRecord> historicalRecords) {
            Map<ComponentName, ActivityResolveInfo> componentNameToActivityMap = this.mPackageNameToActivityMap;
            componentNameToActivityMap.clear();
            int activityCount = activities.size();
            for (int i = 0; i < activityCount; i++) {
                ActivityResolveInfo activity = activities.get(i);
                activity.weight = 0.0f;
                componentNameToActivityMap.put(new ComponentName(activity.resolveInfo.activityInfo.packageName, activity.resolveInfo.activityInfo.name), activity);
            }
            float nextRecordWeight = ActivityChooserModel.DEFAULT_HISTORICAL_RECORD_WEIGHT;
            for (int i2 = historicalRecords.size() - 1; i2 >= 0; i2--) {
                HistoricalRecord historicalRecord = historicalRecords.get(i2);
                ActivityResolveInfo activity2 = componentNameToActivityMap.get(historicalRecord.activity);
                if (activity2 != null) {
                    activity2.weight += historicalRecord.weight * nextRecordWeight;
                    nextRecordWeight *= WEIGHT_DECAY_COEFFICIENT;
                }
            }
            Collections.sort(activities);
        }
    }

    private void readHistoricalDataImpl() {
        FileInputStream fis = null;
        try {
            FileInputStream fis2 = this.mContext.openFileInput(this.mHistoryFileName);
            try {
                XmlPullParser parser = Xml.newPullParser();
                parser.setInput(fis2, "UTF-8");
                int type = 0;
                while (type != 1 && type != 2) {
                    type = parser.next();
                }
                if (!TAG_HISTORICAL_RECORDS.equals(parser.getName())) {
                    throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                }
                List<HistoricalRecord> historicalRecords = this.mHistoricalRecords;
                historicalRecords.clear();
                while (true) {
                    int type2 = parser.next();
                    if (type2 == 1) {
                        if (fis2 != null) {
                            try {
                                fis2.close();
                                return;
                            } catch (IOException e) {
                                return;
                            }
                        } else {
                            return;
                        }
                    } else if (!(type2 == 3 || type2 == 4)) {
                        if (!TAG_HISTORICAL_RECORD.equals(parser.getName())) {
                            throw new XmlPullParserException("Share records file not well-formed.");
                        }
                        historicalRecords.add(new HistoricalRecord(parser.getAttributeValue(null, ATTRIBUTE_ACTIVITY), Long.parseLong(parser.getAttributeValue(null, ATTRIBUTE_TIME)), Float.parseFloat(parser.getAttributeValue(null, ATTRIBUTE_WEIGHT))));
                    }
                }
            } catch (XmlPullParserException xppe) {
                Log.e(LOG_TAG, "Error reading historical recrod file: " + this.mHistoryFileName, xppe);
                if (0 != 0) {
                    try {
                        fis.close();
                    } catch (IOException e2) {
                    }
                }
            } catch (IOException ioe) {
                Log.e(LOG_TAG, "Error reading historical recrod file: " + this.mHistoryFileName, ioe);
                if (0 != 0) {
                    try {
                        fis.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        fis.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e5) {
        }
    }

    /* access modifiers changed from: private */
    public final class PersistHistoryAsyncTask extends AsyncTask<Object, Void, Void> {
        PersistHistoryAsyncTask() {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Object... args) {
            List<HistoricalRecord> historicalRecords = (List) args[0];
            String historyFileName = (String) args[1];
            try {
                FileOutputStream fos = ActivityChooserModel.this.mContext.openFileOutput(historyFileName, 0);
                XmlSerializer serializer = Xml.newSerializer();
                try {
                    serializer.setOutput(fos, null);
                    serializer.startDocument("UTF-8", true);
                    serializer.startTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORDS);
                    int recordCount = historicalRecords.size();
                    for (int i = 0; i < recordCount; i++) {
                        HistoricalRecord record = historicalRecords.remove(0);
                        serializer.startTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORD);
                        serializer.attribute(null, ActivityChooserModel.ATTRIBUTE_ACTIVITY, record.activity.flattenToString());
                        serializer.attribute(null, ActivityChooserModel.ATTRIBUTE_TIME, String.valueOf(record.time));
                        serializer.attribute(null, ActivityChooserModel.ATTRIBUTE_WEIGHT, String.valueOf(record.weight));
                        serializer.endTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORD);
                    }
                    serializer.endTag(null, ActivityChooserModel.TAG_HISTORICAL_RECORDS);
                    serializer.endDocument();
                    ActivityChooserModel.this.mCanReadHistoricalData = true;
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (IllegalArgumentException iae) {
                    Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, iae);
                    ActivityChooserModel.this.mCanReadHistoricalData = true;
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (IOException e2) {
                        }
                    }
                } catch (IllegalStateException ise) {
                    Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, ise);
                    ActivityChooserModel.this.mCanReadHistoricalData = true;
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (IOException e3) {
                        }
                    }
                } catch (IOException ioe) {
                    Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, ioe);
                    ActivityChooserModel.this.mCanReadHistoricalData = true;
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (IOException e4) {
                        }
                    }
                } catch (Throwable th) {
                    ActivityChooserModel.this.mCanReadHistoricalData = true;
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw th;
                }
                return null;
            } catch (FileNotFoundException fnfe) {
                Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + historyFileName, fnfe);
                return null;
            }
        }
    }
}
