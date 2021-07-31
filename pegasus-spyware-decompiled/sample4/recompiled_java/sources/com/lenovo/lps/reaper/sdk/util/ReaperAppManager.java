package com.lenovo.lps.reaper.sdk.util;

import android.app.Activity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ReaperAppManager {
    private static ReaperAppManager b = new ReaperAppManager();
    private ArrayList<Activity> a = new ArrayList<>();
    private Activity c;
    private int d;
    private int e;
    private Map<String, Long> f = new HashMap();
    private boolean g = false;

    public static ReaperAppManager getInstance() {
        return b;
    }

    public void setTrackerInitialized(boolean isInitialized) {
        this.g = isInitialized;
    }

    public boolean isTrackerInitialized() {
        return this.g;
    }

    public Activity getFirstActivity() {
        return this.c;
    }

    public void setFirstActivity(Activity firstActivity) {
        this.c = firstActivity;
    }

    public boolean noMoreActivity() {
        return this.a.isEmpty();
    }

    public void add(Activity activity) {
        this.a.add(activity);
    }

    public boolean remove(Activity activity) {
        return this.a.remove(activity);
    }

    public void setRecentTrackedPageview(String name) {
        this.f.put(name, Long.valueOf(System.currentTimeMillis()));
    }

    public Map<String, Long> getPageViewTimeMap() {
        return this.f;
    }

    public int getCurrentActivitySeqNumber() {
        return this.d;
    }

    public void addCurrentActivitySeqNumber() {
        this.d++;
    }

    public void resetCurrentActivitySeqNumber() {
        this.d = 0;
    }

    public int getCurrentUserActionSeqNumber() {
        return this.e;
    }

    public void addCurrentUserActionSeqNumber() {
        this.e++;
    }

    public void resetCurrentUserActionSeqNumber() {
        this.e = 0;
    }
}
