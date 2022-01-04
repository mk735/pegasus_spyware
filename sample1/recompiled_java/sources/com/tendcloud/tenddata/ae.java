package com.tendcloud.tenddata;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

final class ae implements Application.ActivityLifecycleCallbacks {
    ae() {
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
        if (activity.getParent() == null) {
            TCAgent.onPageEnd(activity, activity.getLocalClassName());
        }
    }

    public void onActivityResumed(Activity activity) {
        if (activity.getParent() == null) {
            TCAgent.onPageStart(activity, activity.getLocalClassName());
        }
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }
}
