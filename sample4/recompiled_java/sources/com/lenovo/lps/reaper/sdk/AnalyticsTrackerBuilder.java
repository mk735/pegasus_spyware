package com.lenovo.lps.reaper.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import com.lenovo.lps.reaper.sdk.api.EventDao;
import com.lenovo.lps.reaper.sdk.config.Configuration;
import com.lenovo.lps.reaper.sdk.request.HttpRequestHandler;
import com.lenovo.lps.reaper.sdk.request.ReaperServerAddressQueryTask;
import com.lenovo.lps.reaper.sdk.request.ReportManager;
import com.lenovo.lps.reaper.sdk.request.TaskHandler;
import com.lenovo.lps.reaper.sdk.storage.EventStorage;
import com.lenovo.lps.reaper.sdk.storage.FileEventDaoImpl;
import com.lenovo.lps.reaper.sdk.storage.FileStorage;
import com.lenovo.lps.reaper.sdk.storage.FileStorageMeta;
import com.lenovo.lps.reaper.sdk.storage.ServerConfigStorage;
import com.lenovo.lps.reaper.sdk.util.Constants;
import com.lenovo.lps.reaper.sdk.util.PlusUtil;
import com.lenovo.lps.reaper.sdk.util.TLog;
import java.util.Map;

public class AnalyticsTrackerBuilder {
    private static AnalyticsTrackerBuilder a = new AnalyticsTrackerBuilder();
    protected Configuration configuration;
    protected ConnectivityManager connectivityManager;
    protected Context context;
    protected EventStorage eventStorage;
    protected FileStorageMeta fileStorageMeta;
    protected boolean initialized;
    protected ReportManager reportManager;
    protected Runnable rescheduleTask;

    public static AnalyticsTrackerBuilder getInstance() {
        return a;
    }

    public void setContext(Context context2) {
        this.context = context2;
    }

    public void initialize() {
        if (this.initialized) {
            TLog.v("AnalyticsTrackerBuilder", "reinitialize");
            reinitialize();
        } else {
            TLog.v("AnalyticsTrackerBuilder", "internalInitialize");
            this.initialized = true;
            internalInitialize();
        }
        TLog.i("AnalyticsTrackerBuilder", "AnalyticsTrackerBuilder initialized");
    }

    public void initialize(String applicationToken, int reportIntervalInSeconds) {
        if (this.initialized) {
            reinitialize();
        } else {
            this.initialized = true;
            internalInitialize(applicationToken, reportIntervalInSeconds);
        }
        TLog.i("AnalyticsTrackerBuilder", "AnalyticsTrackerBuilder initialized");
    }

    /* access modifiers changed from: protected */
    public void internalInitialize() {
        initializeConfiguration();
        initializeOthers();
    }

    /* access modifiers changed from: protected */
    public void internalInitialize(String applicationToken, int reportIntervalInSeconds) {
        initializeConfiguration(applicationToken, reportIntervalInSeconds);
        initializeOthers();
    }

    /* access modifiers changed from: protected */
    public void initializeOthers() {
        initializeReportManager();
        initializeEventStorage();
        TaskHandler.getInstance().addTask(new Runnable() {
            /* class com.lenovo.lps.reaper.sdk.AnalyticsTrackerBuilder.AnonymousClass1 */

            public final void run() {
                new ReaperServerAddressQueryTask(AnalyticsTrackerBuilder.this.configuration).run();
            }
        });
    }

    /* access modifiers changed from: protected */
    public void initializeEventStorage() {
        this.eventStorage = new EventStorage();
        this.eventStorage.setEventDao(createEventDao());
        this.eventStorage.initialize();
    }

    /* access modifiers changed from: protected */
    public EventDao createEventDao() {
        FileEventDaoImpl eventDao = new FileEventDaoImpl();
        FileStorage fileStorage = new FileStorage("lenovo_reaper.db6", this.context);
        this.fileStorageMeta = new FileStorageMeta(1000);
        eventDao.setMeta(this.fileStorageMeta);
        eventDao.setFileStorage(fileStorage);
        return eventDao;
    }

    /* access modifiers changed from: protected */
    public void initializeConfiguration() {
        this.configuration = createConfiguration();
        this.configuration.initialize();
    }

    /* access modifiers changed from: protected */
    public void initializeConfiguration(String applicationToken, int reportIntervalInSeconds) {
        this.configuration = createConfiguration();
        this.configuration.initialize(applicationToken, reportIntervalInSeconds);
    }

    /* access modifiers changed from: protected */
    public Configuration createConfiguration() {
        return new Configuration(this.context);
    }

    /* access modifiers changed from: protected */
    public void initializeReportManager() {
        this.reportManager = createReportManager();
        this.connectivityManager = (ConnectivityManager) this.context.getSystemService("connectivity");
        HttpRequestHandler httpRequestHandler = createHttpRequestHandler();
        httpRequestHandler.setConfiguration(this.configuration);
        this.reportManager.setHttpRequestHandler(httpRequestHandler);
    }

    /* access modifiers changed from: protected */
    public HttpRequestHandler createHttpRequestHandler() {
        return new HttpRequestHandler();
    }

    /* access modifiers changed from: protected */
    public ReportManager createReportManager() {
        return new ReportManager();
    }

    public ReportManager getReportManager() {
        return this.reportManager;
    }

    public Configuration getConfiguration() {
        return this.configuration;
    }

    public EventStorage getEventStorage() {
        return this.eventStorage;
    }

    public void reinitialize() {
        this.eventStorage.initialize();
    }

    public boolean isInitialized() {
        return this.initialized;
    }

    public void readConfigFromPreferences() {
        try {
            TLog.v("AnalyticsTrackerBuilder", "Reading Configuration From Preferences...");
            for (Map.Entry<String, ?> entry : this.context.getSharedPreferences(Constants.SharedPreference.COMMON, 0).getAll().entrySet()) {
                ServerConfigStorage.put(entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
            }
            ServerConfigStorage.setTimestampMills(this.context.getSharedPreferences(Constants.SharedPreference.CONFIGUPDATE, 0).getLong(Constants.ServerConfig.UpdateStrategy.CATEGORY_UPDATE, 0));
        } catch (Exception e) {
            TLog.e("AnalyticsTrackerBuilder", "read config from preferences error. " + e.getMessage());
        }
    }

    public void setOnNetworkListener(BroadcastReceiver networkReceiver) {
        TLog.v("AnalyticsTrackerBuilder", "Setting On Network Listener...");
        IntentFilter mIntenFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        PlusUtil.NetworkStatus.setNetworkStatus(this.context);
        this.context.registerReceiver(networkReceiver, mIntenFilter);
    }
}
