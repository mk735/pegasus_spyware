package com.lenovo.lps.reaper.sdk;

import android.app.TabActivity;
import android.os.Bundle;
import com.lenovo.lps.reaper.sdk.util.ReaperAppManager;

public class ReaperTabActivity extends TabActivity {
    private ReaperAppManager a = ReaperAppManager.getInstance();
    private AnalyticsTracker b = AnalyticsTracker.getInstance();

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this.a.getFirstActivity() == null) {
            this.b.initialize(this);
            this.a.setFirstActivity(this);
        }
        this.a.add(this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.b.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        this.b.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.a.remove(this);
        if (equals(this.a.getFirstActivity())) {
            this.a.setFirstActivity(null);
        }
    }
}
