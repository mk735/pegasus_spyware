package com.lenovo.safecenter.notificationintercept;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Parcel;
import android.preference.PreferenceManager;
import android.text.Html;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.notificationintercept.support.InterceptPermission;
import com.lenovo.safecenter.notificationintercept.support.LogUtils;
import com.lenovo.safecenter.notificationintercept.support.NotiAdBean;
import com.lenovo.safecenter.notificationintercept.support.NotificationDB;
import com.lenovo.safecenter.notificationintercept.support.PermissionDB;
import com.lenovo.safecenter.notificationintercept.support.RecordBean;
import com.lenovo.safecenter.notificationintercept.support.RecordDB;
import com.lenovo.safecenter.notificationintercept.support.ScanUtilsImpl;
import com.lenovo.safecenter.support.WhiteAppsList;
import com.lenovo.safecenter.utils.Const;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class InterceptUtils {
    public static final String AD_SWITCH = "ad_switch";
    public static final String FIRST_NOTIFY = "first_notify";
    public static final int FLAG_IACTIVITY = 18;
    public static final int FLAG_INOTIFICATION = 15;
    public static final int FLAG_NOTIFICATION_NOT_NULL = 1;
    public static final int FLAG_NOTIFICATION_NULL = 0;
    public static final String INTERCEPT_NEW_COUNT = "intercept_new_count";
    public static final int NOTIFY_ID = 133331;
    public static final int NOTIFY_ID_EMPTY = 133332;
    public static final int NOTIFY_ID_SCAN = 133333;
    public static final String NOTIFY_SWITCH = "notify_switch";
    public static final int PERMISSION_ALLOW = 1;
    public static final int PERMISSION_DEFAULT_ALLOW = 3;
    public static final int PERMISSION_FIRST_ALLOW = 0;
    public static final int PERMISSION_FORBID = 2;
    private static boolean a = false;
    private static List<RecordBean> b = new ArrayList();
    private static List<String> c = new ArrayList();
    private static Map<String, Integer> d = new HashMap();

    static {
        c.clear();
        c.add(TrafficStatsService.PACKAGE_NAME);
        c.add("com.tencent.mm");
        c.add("com.tencent.mm:push");
        c.add("com.tencent.mobileqq");
        c.add("com.tencent.android.pad");
        c.add("com.duomi.android");
        c.add("com.sina.weibo");
        c.add("com.kugou.android");
        c.add("cn.com.fetion");
        c.add("com.xiaomi.channel");
        c.add("com.immomo.momo");
        c.add(Const.PACKAGENAME_LE_BATTERY);
        c.add("com.dianxinos.powermanager");
        c.add("com.qihoo360.mobilesafe.opti.powerctl");
        c.add("com.zhimahu");
        c.add("com.gau.go.launcherex.gowidget.gopowermaster");
        c.add("com.yxlk.taskmanager");
        c.add("com.antutu.powersaver");
        c.add("com.snda.aipowermanager");
        c.add("com.ijinshan.kbatterydoctor");
        c.add("com.tencent.powermanager");
        c.add("com.d1android.BatteryManager");
        c.add("com.anguanjia.safe.battery");
    }

    public static boolean getInterceptPermission(byte[] buffer, int flag, Context context, DataOutputStream dos) throws IOException {
        int checkPermission;
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall(buffer, 0, buffer.length);
        parcel.setDataPosition(0);
        Notification notification = null;
        String packageName = "";
        int notificationId = 0;
        if (flag == 15) {
            parcel.enforceInterface("android.app.INotificationManager");
            packageName = parcel.readString();
            parcel.readString();
            notificationId = parcel.readInt();
        } else if (flag == 18) {
            parcel.enforceInterface("android.app.IActivityManager");
            packageName = ComponentName.readFromParcel(parcel).getPackageName();
            parcel.readStrongBinder();
            notificationId = parcel.readInt();
        }
        if (b(context, packageName) || a(packageName)) {
            parcel.recycle();
            return true;
        }
        if (parcel.readInt() != 0) {
            try {
                notification = (Notification) Notification.CREATOR.createFromParcel(parcel);
            } catch (Exception e) {
                LogUtils.e("Exception " + e.getMessage());
            }
            parcel.recycle();
        }
        if (notification == null || notification.contentView == null) {
            return true;
        }
        PermissionDB permissionDB = new PermissionDB(context);
        InterceptPermission findByName = permissionDB.findByName(packageName);
        if (findByName == null) {
            checkPermission = 0;
            ContentValues contentValues = new ContentValues();
            contentValues.put(QueryPermissions.PACKAGENAME, packageName);
            contentValues.put(QueryPermissions.PERMISSION, (Integer) 1);
            permissionDB.insert(contentValues);
            permissionDB.closeDatabase();
        } else {
            checkPermission = findByName.permission;
            permissionDB.closeDatabase();
        }
        LogUtils.i(" checkPermission pkg = " + packageName + " permission == " + checkPermission);
        boolean handleNotification = false;
        if (checkPermission == 0) {
            handleNotification = true;
        }
        int mPermission = checkPermission == 2 ? 2 : 1;
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        DataOutputStream data = new DataOutputStream(bos);
        if (a) {
            int len = d.size();
            data.writeInt(Integer.reverseBytes(mPermission == 1 ? 0 : 1));
            data.writeInt(Integer.reverseBytes(1));
            data.writeInt(Integer.reverseBytes(len));
            for (Map.Entry<String, Integer> entry : d.entrySet()) {
                data.writeInt(Integer.reverseBytes(entry.getValue().intValue()));
            }
            a = false;
        } else {
            data.writeInt(Integer.reverseBytes(mPermission == 1 ? 0 : 1));
            data.writeInt(Integer.reverseBytes(0));
        }
        byte[] byteArray = bos.toByteArray();
        data.close();
        bos.close();
        dos.write(byteArray);
        dos.flush();
        LogUtils.i(" pkg === " + packageName + " permission == " + mPermission);
        if (notification != null) {
            String a2 = a(notification);
            if (!"".equals(a2) || handleNotification) {
                if (!"".equals(a2) || !handleNotification) {
                    String a3 = a(context, packageName);
                    boolean z = false;
                    RecordDB recordDB = new RecordDB(context);
                    if (b(a2)) {
                        int[] findByPackage = recordDB.findByPackage(packageName);
                        if (findByPackage[0] > 0 && mPermission == findByPackage[1]) {
                            recordDB.closeDatabase();
                        }
                    }
                    if (recordDB.getCount() == 0) {
                        b.clear();
                    } else if (b.size() == 0) {
                        b = recordDB.getLast();
                    }
                    int[] findByPackage2 = recordDB.findByPackage(packageName);
                    if (((mPermission == 1 && findByPackage2[0] > 0 && findByPackage2[1] == 1) ? false : true) && !a(a2, mPermission, context, a3, packageName, recordDB, notificationId)) {
                        z = true;
                    }
                    recordDB.closeDatabase();
                    a(context, a3, z, packageName, mPermission, handleNotification);
                } else {
                    a(context, a(context, packageName), false, packageName, mPermission, handleNotification);
                }
            }
        }
        if (mPermission == 1) {
            return true;
        }
        return false;
    }

    private static boolean a(String content, int permission, Context context, String applicationLabel, String packageName, RecordDB recordDB, int notificationId) {
        int size = b.size();
        int count = 0;
        int lastIndex = -1;
        for (int i = 0; i < size; i++) {
            if (content.equals(b.get(i).recordContent)) {
                count++;
                lastIndex = i;
            }
        }
        if (count != 0 && permission == b.get(lastIndex).recordPermission) {
            return true;
        }
        synchronized (b) {
            long currentTimeMillis = System.currentTimeMillis();
            ContentValues values = new ContentValues();
            values.put(QueryPermissions.PACKAGENAME, packageName);
            values.put("applabel", applicationLabel);
            values.put("notification_content", content);
            values.put(DatabaseTables.LOG_TIMESTAMP, Long.valueOf(currentTimeMillis));
            values.put("notification_id", Integer.valueOf(notificationId));
            values.put("record_permission", Integer.valueOf(permission));
            recordDB.insert(values);
            SharedPreferences dfPrefs = PreferenceManager.getDefaultSharedPreferences(context);
            int mCount = dfPrefs.getInt(INTERCEPT_NEW_COUNT, 0);
            SharedPreferences.Editor edit = dfPrefs.edit();
            edit.putInt(INTERCEPT_NEW_COUNT, mCount + 1);
            edit.commit();
            if (b.size() >= 3) {
                b.remove(0);
            }
            updateRecordListAdd(content, permission, currentTimeMillis);
        }
        return false;
    }

    public static void updateRecordListAdd(String content, int permission, long currentTimeMillis) {
        RecordBean bean = new RecordBean();
        bean.recordContent = content;
        bean.recordPermission = permission;
        bean.currentTimeMillis = currentTimeMillis;
        b.add(bean);
    }

    public static void updateRecordListRemove(long currentTimeMillis) {
        for (RecordBean bean : b) {
            if (bean.currentTimeMillis == currentTimeMillis) {
                b.remove(bean);
                return;
            }
        }
    }

    private static void a(Context context, String applicationLabel, boolean isToRecord, String packageName, int permission, boolean handleNotification) {
        LogUtils.i(" showInterceptNotification Label=" + applicationLabel + " isToRecord = " + isToRecord + " handleNotification = " + handleNotification);
        if (isToRecord || handleNotification) {
            SharedPreferences df_prefs = PreferenceManager.getDefaultSharedPreferences(context);
            if (handleNotification && df_prefs.getBoolean(NOTIFY_SWITCH, true)) {
                LogUtils.i(" show first Lable = " + applicationLabel + " pkg = " + packageName);
                Notification mNotification = new Notification();
                mNotification.icon = R.drawable.notification_intercept_icon_green;
                mNotification.tickerText = String.format(context.getString(R.string.notification_intercept_notify), applicationLabel);
                mNotification.when = System.currentTimeMillis();
                RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R.layout.notification_notify);
                Intent intent = new Intent(context, NotificationTabActivity.class);
                intent.putExtra("tab", "noti_permission");
                intent.setFlags(335544320);
                PendingIntent contentIntent = PendingIntent.getActivity(context, 0, intent, 0);
                remoteViews.setTextViewText(R.id.intercept_notify_label, String.format(context.getString(R.string.notification_intercept_detail), applicationLabel));
                mNotification.contentView = remoteViews;
                mNotification.contentIntent = contentIntent;
                ((NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION)).notify(NOTIFY_ID, mNotification);
            } else if (permission == 2 && df_prefs.getBoolean(NOTIFY_SWITCH, true)) {
                Notification mNotification2 = new Notification();
                RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), (int) R.layout.notification_notify_empty);
                PendingIntent contentIntent2 = PendingIntent.getActivity(context, 0, new Intent(), 0);
                mNotification2.icon = R.drawable.notification_intercept_icon_green;
                mNotification2.tickerText = Html.fromHtml(context.getString(R.string.notification_intercept_notify_str, applicationLabel));
                mNotification2.when = System.currentTimeMillis();
                mNotification2.contentView = remoteViews2;
                mNotification2.contentIntent = contentIntent2;
                NotificationManager manager = (NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION);
                manager.notify(NOTIFY_ID_EMPTY, mNotification2);
                try {
                    Thread.sleep(1000);
                } catch (Exception e) {
                }
                manager.cancel(NOTIFY_ID_EMPTY);
            }
        }
    }

    private static String a(Context context, String packageName) {
        PackageManager packageManager = context.getPackageManager();
        try {
            return packageManager.getApplicationInfo(packageName, 1).loadLabel(packageManager).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    private static boolean b(Context context, String packageName) {
        try {
            if ((context.getPackageManager().getApplicationInfo(packageName, 1).flags & 1) != 0 || WhiteAppsList.contains(WhiteAppsList.md5s, AppUtils.getCretMD5(context, packageName))) {
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    private static boolean a(String packageName) {
        if (!packageName.startsWith(TrafficStatsService.PACKAGE_NAME) && !c.contains(packageName)) {
            return false;
        }
        return true;
    }

    private static boolean b(String content) {
        if (!content.contains("%")) {
            return false;
        }
        if (content.trim().endsWith("%")) {
            return true;
        }
        try {
            Integer.parseInt(content.subSequence(0, content.indexOf("%")).toString().trim());
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static String a(Notification notification) {
        RemoteViews contentView = notification.contentView;
        String notificationSummary = "";
        if (contentView != null) {
            try {
                Field declaredField = contentView.getClass().getDeclaredField("mActions");
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    ArrayList actions = (ArrayList) declaredField.get(contentView);
                    for (int i = 0; i < actions.size(); i++) {
                        Field methodName = actions.get(i).getClass().getDeclaredField("methodName");
                        methodName.setAccessible(true);
                        if (((String) methodName.get(actions.get(i))).equals("setText")) {
                            Field value = actions.get(i).getClass().getDeclaredField("value");
                            value.setAccessible(true);
                            notificationSummary = notificationSummary + ((Object) ((CharSequence) value.get(actions.get(i)))) + " ";
                        }
                    }
                    return notificationSummary;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "";
    }

    public static void initWhiteListUid(Context context, String packageName) {
        if (packageName == null || "".equals(packageName)) {
            try {
                d.clear();
                PackageManager packageManager = context.getPackageManager();
                for (String pkg : c) {
                    try {
                        int uid = packageManager.getApplicationInfo(pkg, 8192).uid;
                        if (uid > 0) {
                            d.put(pkg, Integer.valueOf(uid));
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
                a = true;
            } catch (Exception e2) {
            }
        } else if (c.contains(packageName)) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(packageName, 1);
                int uid2 = applicationInfo.uid;
                if (d.get(packageName) == null || d.get(packageName).intValue() != uid2) {
                    d.remove(packageName);
                    d.put(packageName, Integer.valueOf(applicationInfo.uid));
                }
                a = true;
            } catch (Exception e3) {
            }
        }
    }

    public static int adApkInsert(String packageName, Context context) {
        ScanApplicationInfo.killProcess(context, packageName);
        PermissionDB permissionDB = new PermissionDB(context);
        InterceptPermission findByName = permissionDB.findByName(packageName);
        if (findByName == null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(QueryPermissions.PACKAGENAME, packageName);
            contentValues.put(QueryPermissions.PERMISSION, (Integer) 2);
            permissionDB.insert(contentValues);
            permissionDB.closeDatabase();
            Toast.makeText(context, context.getString(R.string.notification_ad_insert_notify, a(context, packageName)), 1).show();
            return 1;
        }
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put(QueryPermissions.PACKAGENAME, packageName);
        contentValues2.put(QueryPermissions.PERMISSION, (Integer) 2);
        permissionDB.update(findByName._id, contentValues2);
        permissionDB.closeDatabase();
        return findByName.permission;
    }

    public static void appInit(final Context context) {
        LogUtils.i(" appInit !! scanAll ");
        new Thread() {
            /* class com.lenovo.safecenter.notificationintercept.InterceptUtils.AnonymousClass1 */

            public final void run() {
                new ScanUtilsImpl().notifyScanAll(context);
            }
        }.start();
    }

    public static void appInstall(final Context context, final String packageName) {
        LogUtils.i(" appInstall !! scan ");
        new Thread() {
            /* class com.lenovo.safecenter.notificationintercept.InterceptUtils.AnonymousClass2 */

            public final void run() {
                new ScanUtilsImpl().notifyScanSingle(context, packageName);
            }
        }.start();
    }

    public static void appRemoved(Context context, String packageName) {
        LogUtils.i(" appInstall !! scan ");
        try {
            NotificationDB db = new NotificationDB(context);
            NotiAdBean findByName = db.findByName(packageName);
            if (findByName != null) {
                db.delete(findByName.getId());
            }
            db.closeDatabase();
        } catch (Exception e) {
            LogUtils.e(" Pkg remove Exception " + e.getMessage());
            e.printStackTrace();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:52:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void bootCompleted(android.content.Context r24) {
        /*
        // Method dump skipped, instructions count: 299
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.notificationintercept.InterceptUtils.bootCompleted(android.content.Context):void");
    }

    public static boolean notificationFilter(Context context, String packageName) {
        return b(context, packageName) || a(packageName);
    }

    @Deprecated
    public static void notificationForbid(Context context, String pkgName) {
        ContentValues values = new ContentValues();
        values.put(QueryPermissions.PACKAGENAME, pkgName);
        values.put(QueryPermissions.PERMISSION, (Integer) 2);
        PermissionDB db = new PermissionDB(context);
        InterceptPermission permission = db.findByName(pkgName);
        if (permission == null) {
            db.insert(values);
        } else {
            values.put("_id", Integer.valueOf(permission._id));
            db.update(permission._id, values);
        }
        db.closeDatabase();
    }

    @Deprecated
    public static void notificationAllow(Context context, String pkgName) {
        ContentValues values = new ContentValues();
        values.put(QueryPermissions.PACKAGENAME, pkgName);
        values.put(QueryPermissions.PERMISSION, (Integer) 1);
        PermissionDB db = new PermissionDB(context);
        InterceptPermission permission = db.findByName(pkgName);
        if (permission == null) {
            db.insert(values);
        } else {
            values.put("_id", Integer.valueOf(permission._id));
            db.update(permission._id, values);
        }
        db.closeDatabase();
    }

    public static void notificationAllow(final Context context, final String pkgName, boolean isAllow) {
        ContentValues values = new ContentValues();
        values.put(QueryPermissions.PACKAGENAME, pkgName);
        values.put(QueryPermissions.PERMISSION, Integer.valueOf(isAllow ? 1 : 2));
        PermissionDB db = new PermissionDB(context);
        InterceptPermission permission = db.findByName(pkgName);
        if (permission == null) {
            db.insert(values);
        } else {
            values.put("_id", Integer.valueOf(permission._id));
            db.update(permission._id, values);
        }
        db.closeDatabase();
        if (!isAllow) {
            new Thread() {
                /* class com.lenovo.safecenter.notificationintercept.InterceptUtils.AnonymousClass3 */

                public final void run() {
                    RootPassage.clearnNotification(pkgName, context);
                }
            }.start();
        }
    }

    public static List<InterceptPermission> checkScannedAd(Context context) {
        PermissionDB pDB = new PermissionDB(context);
        List<InterceptPermission> permissions = pDB.findAll();
        pDB.closeDatabase();
        NotificationDB nDB = new NotificationDB(context);
        List<NotiAdBean> notifications = nDB.findAll();
        nDB.closeDatabase();
        List<InterceptPermission> mPermissions = new ArrayList<>();
        for (NotiAdBean adBean : notifications) {
            for (InterceptPermission permission : permissions) {
                if (adBean.getPkgName().equals(permission.pkgname) && permission.permission == 1) {
                    mPermissions.add(permission);
                }
            }
        }
        return mPermissions;
    }

    public static boolean setScannedAdForbid(Context context, List<InterceptPermission> permissions) {
        for (InterceptPermission mPermission : permissions) {
            mPermission.permission = 2;
        }
        try {
            PermissionDB pDB = new PermissionDB(context);
            pDB.updateList(permissions);
            pDB.closeDatabase();
            return true;
        } catch (Exception e) {
            LogUtils.e(" update Error");
            e.printStackTrace();
            return false;
        }
    }

    public static boolean getNotificationAllow(Context context, String pkgName) {
        PermissionDB db = new PermissionDB(context);
        InterceptPermission permission = db.findByName(pkgName);
        db.closeDatabase();
        if (permission == null || permission.permission == 1) {
            return true;
        }
        return false;
    }
}
