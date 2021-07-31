package com.lenovo.lps.reaper.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import com.lenovo.lps.reaper.sdk.api.Event;
import com.lenovo.lps.reaper.sdk.config.Configuration;
import com.lenovo.lps.reaper.sdk.request.ConfigurationUpdateTask;
import com.lenovo.lps.reaper.sdk.request.ReportManager;
import com.lenovo.lps.reaper.sdk.request.TaskHandler;
import com.lenovo.lps.reaper.sdk.storage.EventStorage;
import com.lenovo.lps.reaper.sdk.storage.ServerConfigStorage;
import com.lenovo.lps.reaper.sdk.util.AnalyticsTrackerUtils;
import com.lenovo.lps.reaper.sdk.util.Constants;
import com.lenovo.lps.reaper.sdk.util.Messages;
import com.lenovo.lps.reaper.sdk.util.PlusUtil;
import com.lenovo.lps.reaper.sdk.util.ReaperAppManager;
import com.lenovo.lps.reaper.sdk.util.TLog;
import com.lenovo.lps.sus.c.c;
import java.lang.Thread;
import java.net.URL;
import org.apache.commons.httpclient.cookie.CookieSpec;

public final class AnalyticsTracker {
    protected static AnalyticsTracker tracker;
    private final AnalyticsTrackerBuilder a = AnalyticsTrackerBuilder.getInstance();
    private Configuration b;
    private ReportManager c;
    private EventStorage d;
    private boolean e = true;
    private String f = "1.0";
    private int g = 1;
    private String h;
    private Context i;
    private String j;
    private String k;
    private byte[] l = new byte[0];
    private BroadcastReceiver m = new BroadcastReceiver() {
        /* class com.lenovo.lps.reaper.sdk.AnalyticsTracker.AnonymousClass1 */

        public final void onReceive(Context context, Intent intent) {
            PlusUtil.NetworkStatus.setNetworkStatus(context);
        }
    };

    static /* synthetic */ String a(PackageInfo x1) {
        int i2 = 20;
        if (x1.requestedPermissions == null) {
            return null;
        }
        String[] strArr = x1.requestedPermissions;
        StringBuilder sb = new StringBuilder(400);
        if (20 >= strArr.length) {
            i2 = strArr.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append(strArr[i3]).append(",");
        }
        return sb.substring(0, sb.length() - 1);
    }

    static /* synthetic */ void c(AnalyticsTracker x0) {
        synchronized (x0.l) {
            try {
                if (ServerConfigStorage.DispatchStrategy.readyForReport(Constants.DispatchMode.FORCE_DISPATCH)) {
                    x0.a(Constants.DispatchMode.FORCE_DISPATCH);
                } else {
                    TLog.i("AnalyticsTracker", "not ready for reporting.");
                }
            } catch (Exception e2) {
                TLog.e("AnalyticsTracker", "some error occured when dispatch. " + e2.getMessage());
            }
        }
    }

    private AnalyticsTracker() {
    }

    public static synchronized AnalyticsTracker getInstance() {
        AnalyticsTracker analyticsTracker;
        synchronized (AnalyticsTracker.class) {
            if (tracker == null) {
                tracker = new AnalyticsTracker();
            }
            analyticsTracker = tracker;
        }
        return analyticsTracker;
    }

    public final synchronized void initialize(Context context) {
        try {
            if (this.e) {
                TLog.v("AnalyticsTracker", "AnalyticsTracker is Initializing.................");
                this.i = context.getApplicationContext();
                this.a.setContext(this.i);
                this.a.setOnNetworkListener(this.m);
                this.a.readConfigFromPreferences();
                this.a.initialize();
                if (!ReaperAppManager.getInstance().isTrackerInitialized()) {
                    d();
                }
                a();
                ReaperAppManager.getInstance().resetCurrentActivitySeqNumber();
                ReaperAppManager.getInstance().resetCurrentUserActionSeqNumber();
                ReaperAppManager.getInstance().setTrackerInitialized(true);
                b();
            }
        } catch (Exception e2) {
            TLog.e("AnalyticsTracker", "some error occured when initital AnalyticsTracker. " + e2.getMessage());
            disableReport();
        }
        return;
    }

    public final synchronized void initialize(Context context, String applicationToken, int reportIntervalInSeconds) {
        try {
            if (this.e) {
                if (applicationToken == null || applicationToken.length() == 0) {
                    TLog.e("AnalyticsTracker", Messages.APPLICATION_TOKER_MESSAGE);
                } else {
                    TLog.v("AnalyticsTracker", "AnalyticsTracker is Initializing.................");
                    this.i = context.getApplicationContext();
                    this.a.setContext(this.i);
                    this.a.setOnNetworkListener(this.m);
                    this.a.readConfigFromPreferences();
                    this.a.initialize(applicationToken, reportIntervalInSeconds);
                    if (!ReaperAppManager.getInstance().isTrackerInitialized()) {
                        d();
                    }
                    a();
                    ReaperAppManager.getInstance().resetCurrentActivitySeqNumber();
                    ReaperAppManager.getInstance().resetCurrentUserActionSeqNumber();
                    ReaperAppManager.getInstance().setTrackerInitialized(true);
                    b();
                }
            }
        } catch (Exception e2) {
            TLog.e("AnalyticsTracker", "some error occured when initital AnalyticsTracker. " + e2.getMessage());
            disableReport();
        }
        return;
    }

    private void a() {
        this.c = this.a.getReportManager();
        this.b = this.a.getConfiguration();
        this.d = this.a.getEventStorage();
    }

    public final boolean needReport(String category, String action) {
        try {
            if (this.e && isTrackerInitialized()) {
                return this.b.needReport(category, action);
            }
            return false;
        } catch (Exception e2) {
            TLog.w("AnalyticsTracker", e2.getClass() + " " + e2.getMessage());
            TLog.e("AnalyticsTracker", "some error occured in needReport.");
            return false;
        }
    }

    public final void setParam(int index, String name, String value) {
        try {
            if (this.e && isTrackerInitialized()) {
                this.d.setParam(index, name, value);
            }
        } catch (Exception e2) {
            TLog.e("AnalyticsTracker", "error in setParam. " + e2.getMessage());
        }
    }

    public final void trackEvent(final String category, String action, String label, int value) {
        if (isTrackerInitialized()) {
            if (category == null || category.length() == 0) {
                TLog.e("AnalyticsTracker", Messages.EVENT_CATEGORY_MESSAGE);
                c();
            } else if (action == null || action.length() == 0) {
                TLog.e("AnalyticsTracker", Messages.EVENT_ACTION_MESSAGE);
                c();
            } else if (!needReport(category, action)) {
                TLog.i("AnalyticsTracker", Messages.EVENT_NEED_NOT_SEND);
                c();
            } else {
                final Event event = new Event(this.b.getApplicationToken(), category, action, label, value);
                event.setCustomParameters(this.d.getCustomParamManager().getAllCustomParameters());
                c();
                TaskHandler.getInstance().addTask(new Runnable() {
                    /* class com.lenovo.lps.reaper.sdk.AnalyticsTracker.AnonymousClass2 */

                    public final void run() {
                        try {
                            if (AnalyticsTracker.this.b.checkTimestamp()) {
                                TLog.i("AnalyticsTracker", "add configuration update task.");
                                new ConfigurationUpdateTask(AnalyticsTracker.this.b).run();
                            }
                            if (ServerConfigStorage.DeviceSendFlag.needSend()) {
                                AnalyticsTracker.this.d.addEvent(event);
                                if (Constants.Event.EVENT_TYPE_INITIAL.equals(category)) {
                                    AnalyticsTracker.c(AnalyticsTracker.this);
                                } else {
                                    AnalyticsTracker.this.dispatch();
                                }
                            }
                        } catch (Exception e) {
                            TLog.e("AnalyticsTracker", "some error occurd in trackEvent.addTask" + e.getMessage());
                        }
                    }
                });
            }
        }
    }

    @Deprecated
    public final void trackActivity(String activity) {
        if (activity == null || activity.length() == 0) {
            TLog.e("AnalyticsTracker", Messages.ACTIVITY_EVENT_ACTION_MESSAGE);
        } else if (activity.startsWith(CookieSpec.PATH_DELIM)) {
            trackEvent(Constants.Event.EVENT_TYPE_VIEW, activity, null, 1);
        } else {
            trackEvent(Constants.Event.EVENT_TYPE_VIEW, CookieSpec.PATH_DELIM + activity, null, 1);
        }
    }

    public final void trackResume(Context context) {
        try {
            if (isTrackerInitialized()) {
                if (context == null) {
                    TLog.e("AnalyticsTracker", Messages.ACTIVITY_CONTEXT_MESSAGE);
                } else {
                    trackPageResume(CookieSpec.PATH_DELIM + context.getClass().getSimpleName());
                }
            }
        } catch (Exception e2) {
            TLog.e("AnalyticsTracker", "some error occured in trackResume.");
        }
    }

    public final void trackPageResume(String pageName) {
        trackPageResume(pageName, null);
    }

    public final void trackPageResume(String pageName, String framePageName) {
        try {
            if (isTrackerInitialized()) {
                ReaperAppManager manager = ReaperAppManager.getInstance();
                manager.setRecentTrackedPageview(pageName);
                manager.addCurrentActivitySeqNumber();
                manager.addCurrentUserActionSeqNumber();
                setParam(2, Constants.Event.PAGE_QUEUE_PREFIX_IN_PARAM, String.valueOf(manager.getCurrentActivitySeqNumber()));
                if (framePageName != null) {
                    setParam(3, Constants.Event.PARAM_FRAME_PAGE, framePageName);
                }
                setParam(4, Constants.Event.USER_ACTION_QUEUE_PREFIX_IN_PARAM, String.valueOf(manager.getCurrentUserActionSeqNumber()));
                trackEvent(Constants.Event.EVENT_TYPE_VIEW, pageName, null, 2);
            }
        } catch (Exception e2) {
            TLog.e("AnalyticsTracker", "some error occured in trackPageResume.");
        }
    }

    public final void trackPause(Context context) {
        try {
            if (isTrackerInitialized()) {
                if (context == null) {
                    TLog.e("AnalyticsTracker", Messages.ACTIVITY_CONTEXT_MESSAGE);
                } else {
                    trackPagePause(CookieSpec.PATH_DELIM + context.getClass().getSimpleName());
                }
            }
        } catch (Exception e2) {
            TLog.e("AnalyticsTracker", "some error occured in trackPause.");
        }
    }

    public final void trackPagePause(String pageName) {
        trackPagePause(pageName, null);
    }

    public final void trackPagePause(String pageName, String framePageName) {
        try {
            if (isTrackerInitialized()) {
                long currentTime = System.currentTimeMillis();
                ReaperAppManager manager = ReaperAppManager.getInstance();
                if (manager.getPageViewTimeMap().containsKey(pageName)) {
                    setParam(1, pageName, String.valueOf(currentTime - manager.getPageViewTimeMap().get(pageName).longValue()));
                }
                setParam(2, Constants.Event.PAGE_QUEUE_PREFIX_IN_PARAM, String.valueOf(manager.getCurrentActivitySeqNumber()));
                if (framePageName != null) {
                    setParam(3, Constants.Event.PARAM_FRAME_PAGE, framePageName);
                }
                trackEvent(Constants.Event.EVENT_TYPE_VIEW, pageName, null, 3);
            }
        } catch (Exception e2) {
            TLog.e("AnalyticsTracker", "some error occured in trackPagePause.");
        }
    }

    @Deprecated
    public final void trackUserAction(String userActionName) {
    }

    public final void trackUserAction(String userActionName, String pageName) {
        try {
            if (isTrackerInitialized()) {
                ReaperAppManager manager = ReaperAppManager.getInstance();
                manager.addCurrentUserActionSeqNumber();
                setParam(4, Constants.Event.USER_ACTION_QUEUE_PREFIX_IN_PARAM, String.valueOf(manager.getCurrentUserActionSeqNumber()));
                trackEvent(Constants.Event.EVENT_TYPE_USER_ACTION_NEW, userActionName, pageName, 4);
            }
        } catch (Exception e2) {
            TLog.e("AnalyticsTracker", "some error occured in trackUserAction.");
        }
    }

    public final void trackThrowable(Throwable throwable) {
        try {
            a(throwable, 1);
        } catch (Exception e2) {
            TLog.e("AnalyticsTracker", "some error occured in trackThrowable. " + e2.getMessage());
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(Throwable throwable, int flag) {
        if (throwable == null || !(flag == 0 || flag == 1)) {
            TLog.e("AnalyticsTracker", Messages.THROWABLE_EVENT_ACTION_MESSAGE);
            c();
            return;
        }
        Throwable thr = throwable;
        while (thr.getCause() != null) {
            thr = thr.getCause();
        }
        String thrName = thr.getClass().getName();
        String thrMsg = thr.getMessage();
        if (!(thrName == null || thrName.length() == 0)) {
            StringBuilder stack = new StringBuilder(4096);
            stack.append(thrMsg).append("\n");
            StackTraceElement[] arr$ = thr.getStackTrace();
            for (StackTraceElement e2 : arr$) {
                stack.append(e2.getClassName()).append(".").append(e2.getMethodName()).append("() ").append(e2.getFileName()).append(c.N).append(e2.getLineNumber()).append("\n");
            }
            trackEvent(Constants.Event.EVENT_TYPE_THROWABLE, thrName, stack.length() >= 3600 ? stack.toString().substring(0, 3600) : stack.toString(), flag);
        }
    }

    public final void trackFeedback(String contents) {
        try {
            if (isTrackerInitialized()) {
                if (contents == null || contents.length() == 0) {
                    c();
                } else {
                    trackEvent(Constants.Event.EVENT_TYPE_FEEDBACK, contents, this.b.getPhoneNumber(), 1);
                }
            }
        } catch (Exception e2) {
            TLog.e("AnalyticsTracker", "some error occured in trackFeedback. " + e2.getMessage());
        }
    }

    private void b() {
        trackEvent(Constants.Event.EVENT_TYPE_INITIAL, "initial", "", 0);
    }

    private void c() {
        if (this.d != null) {
            this.d.clearCustomParameter();
        }
    }

    public final void trackInstalledApps(final boolean includeSystemApp) {
        if (this.i == null) {
            TLog.w("AnalyticsTracker", "Context is Null in trackInstalledApps");
        } else {
            new Thread() {
                /* class com.lenovo.lps.reaper.sdk.AnalyticsTracker.AnonymousClass3 */

                public final void run() {
                    for (PackageInfo info : AnalyticsTracker.this.i.getPackageManager().getInstalledPackages(4096)) {
                        try {
                            AnalyticsTracker analyticsTracker = AnalyticsTracker.this;
                            String permissionString = AnalyticsTracker.a(info);
                            boolean isSystemApp = true;
                            if ((info.applicationInfo.flags & 128) != 0) {
                                isSystemApp = false;
                            } else if ((info.applicationInfo.flags & 1) == 0) {
                                isSystemApp = false;
                            }
                            if (isSystemApp && includeSystemApp) {
                                AnalyticsTracker.this.setParam(1, "appVersionCode", String.valueOf(info.versionCode));
                                AnalyticsTracker.this.trackEvent(Constants.Event.EVENT_TYPE_APPINFO, info.packageName, permissionString, 0);
                            } else if (!isSystemApp) {
                                AnalyticsTracker.this.setParam(1, "appVersionCode", String.valueOf(info.versionCode));
                                AnalyticsTracker.this.trackEvent(Constants.Event.EVENT_TYPE_APPINFO, info.packageName, permissionString, 1);
                            }
                        } catch (Exception e) {
                            TLog.e("AnalyticsTracker", "TrackApp is Error. " + e.getMessage());
                        }
                    }
                }
            }.start();
        }
    }

    public final void setUserId(String userId) {
        if (isTrackerInitialized()) {
            if (userId == null) {
                this.j = null;
                this.k = null;
                return;
            }
            this.j = AnalyticsTrackerUtils.encode(userId.trim());
            this.k = "LenovoID";
        }
    }

    public final void setUserId(String userId, String userIdClass) {
        if (isTrackerInitialized()) {
            if (userId == null) {
                this.j = null;
                this.k = null;
                return;
            }
            this.j = AnalyticsTrackerUtils.encode(userId.trim());
            this.k = userIdClass == null ? "" : AnalyticsTrackerUtils.encode(userIdClass.trim());
        }
    }

    public final String getUserId() {
        return this.j;
    }

    public final String getUserIdClass() {
        return this.k;
    }

    public final String getVersionName() {
        return this.f;
    }

    public final void setVersionName(String versionName) {
        if (versionName == null || versionName.length() == 0) {
            TLog.e("AnalyticsTracker", Messages.APPLICATION_VERSION_NAME_MESSAGE);
        } else {
            this.f = versionName;
        }
    }

    public final int getVersionCode() {
        return this.g;
    }

    public final void setVersionCode(int versionCode) {
        this.g = versionCode;
    }

    public final String getReaperServerUrl() {
        return this.h;
    }

    public final void setReaperServerUrl(String reaperServerUrl) {
        if (reaperServerUrl != null) {
            try {
                if (reaperServerUrl.length() != 0) {
                    new URL(reaperServerUrl);
                    this.h = reaperServerUrl;
                    if (this.b != null) {
                        this.b.initReportAndConfigurationUrl(reaperServerUrl);
                        return;
                    }
                    return;
                }
            } catch (Exception e2) {
                TLog.e("AnalyticsTracker", "some error occured when setReaperServerUrl. " + e2.getMessage());
                return;
            }
        }
        TLog.e("AnalyticsTracker", Messages.REAPER_SERVER_URL_MESSAGE);
    }

    public final void dispatch() {
        synchronized (this.l) {
            try {
                if (isTrackerInitialized()) {
                    if (ServerConfigStorage.DispatchStrategy.readyForReport(Constants.DispatchMode.NORMAL_DISPATCH)) {
                        a(Constants.DispatchMode.NORMAL_DISPATCH);
                    } else {
                        TLog.i("AnalyticsTracker", "not ready for reporting.");
                    }
                }
            } catch (Exception e2) {
                TLog.e("AnalyticsTracker", "some error occured when dispatch. " + e2.getMessage());
            }
        }
    }

    public final boolean isTrackerInitialized() {
        if (ReaperAppManager.getInstance().isTrackerInitialized()) {
            return true;
        }
        TLog.e("AnalyticsTracker", Messages.NOT_INITIAL_MESSAGE);
        return false;
    }

    @Deprecated
    public final void shutdown() {
    }

    public final void disableReport() {
        boolean z = this.a.initialized;
        this.e = false;
    }

    public final int countEvent() {
        if (ReaperAppManager.getInstance().isTrackerInitialized()) {
            return this.d.countEvent();
        }
        TLog.e("AnalyticsTracker", Messages.NOT_INITIAL_MESSAGE);
        return 0;
    }

    private void d() {
        final Thread.UncaughtExceptionHandler defaultHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
            /* class com.lenovo.lps.reaper.sdk.AnalyticsTracker.AnonymousClass4 */

            public final void uncaughtException(Thread thread, Throwable e) {
                AnalyticsTracker.tracker.a((AnalyticsTracker) e, (Throwable) 0);
                defaultHandler.uncaughtException(thread, e);
            }
        });
    }

    private void a(Constants.DispatchMode dispatchMode) {
        Event[] events;
        switch (dispatchMode) {
            case NORMAL_DISPATCH:
                if (((long) this.d.countEvent()) >= ServerConfigStorage.DispatchStrategy.getThreshold()) {
                    events = this.d.fetchEvents();
                    break;
                } else {
                    TLog.i("AnalyticsTracker", "current number of events is not enough.");
                    return;
                }
            case FORCE_DISPATCH:
                events = this.d.fetchEvents(200);
                break;
            default:
                return;
        }
        Event[] postedEvents = this.c.postEvents(events);
        this.d.deleteEvents(postedEvents);
        if (postedEvents == null || postedEvents.length == 0) {
            TLog.i("AnalyticsTracker", "no reported event.");
        }
    }
}
