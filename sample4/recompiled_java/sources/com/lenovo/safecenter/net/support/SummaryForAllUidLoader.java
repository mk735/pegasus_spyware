package com.lenovo.safecenter.net.support;

import android.content.AsyncTaskLoader;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.NetworkStats;
import android.net.NetworkTemplate;
import android.os.Bundle;
import android.util.Log;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.net.NetFilter;
import java.util.HashSet;

public class SummaryForAllUidLoader extends AsyncTaskLoader<PhoneSimInfo> {
    private static PhoneSimInfo a = null;
    private final Object b;
    private final Bundle c;
    private HashSet<Integer> d = new HashSet<>();
    private Context e;

    public static Bundle buildArgs(PhoneSimInfo info, long start, long end) {
        a = info;
        Bundle args = new Bundle();
        args.putLong("start", start);
        args.putLong("end", end);
        return args;
    }

    public SummaryForAllUidLoader(Context context, Object statsService, Bundle args) {
        super(context);
        this.e = context;
        this.b = statsService;
        this.c = args;
    }

    /* access modifiers changed from: protected */
    public void onStartLoading() {
        super.onStartLoading();
        forceLoad();
    }

    @Override // android.content.AsyncTaskLoader
    public PhoneSimInfo loadInBackground() {
        TrafficStatsService.addNetWhiteList(this.e);
        SharedPreferences prefs = this.e.getSharedPreferences("system info", 0);
        SharedPreferences prefsWlan = this.e.getSharedPreferences("wlan info", 0);
        String allUid = prefs.getString("selected uids", "");
        String[] uidString = allUid.split(c.O);
        if (!allUid.equals("") && uidString.length > 0) {
            for (String uid : uidString) {
                NetFilter.netBlackUids.add(Integer.valueOf(Integer.parseInt(uid)));
            }
        }
        String allUidWlan = prefsWlan.getString("selected uids", "");
        String[] uidStringWlan = allUidWlan.split(c.O);
        Log.i("nac", "allUidWlan =" + allUidWlan + ",uidStringWlan[] length = " + uidStringWlan.length);
        if (!allUidWlan.equals("") && uidStringWlan.length > 0) {
            for (String uid2 : uidStringWlan) {
                NetFilter.netBlackUidsWlan.add(Integer.valueOf(Integer.parseInt(uid2)));
            }
        }
        long start = this.c.getLong("start");
        long end = this.c.getLong("end");
        if (a.sim1IMSI != null && !"".equals(a.sim1IMSI)) {
            a.networkInfo1 = TrafficStatsService.invokeForAllUid("getSummaryForAllUid", this.b, NetworkTemplate.buildTemplateMobileAll(a.sim1IMSI), start, end);
            NetworkStats stats = a.networkInfo1;
            if (stats != null) {
                for (int i : stats.getUniqueUids()) {
                    this.d.add(Integer.valueOf(i));
                }
            }
        }
        if (a.sim2IMSI != null && !"".equals(a.sim2IMSI)) {
            a.networkInfo2 = TrafficStatsService.invokeForAllUid("getSummaryForAllUid", this.b, NetworkTemplate.buildTemplateMobileAll(a.sim2IMSI), start, end);
            NetworkStats stats2 = a.networkInfo2;
            if (stats2 != null) {
                for (int i2 : stats2.getUniqueUids()) {
                    this.d.add(Integer.valueOf(i2));
                }
            }
        }
        a.setNetworkInfoWlan(TrafficStatsService.invokeForAllUid("getSummaryForAllUid", this.b, NetworkTemplate.buildTemplateWifi(), start, end));
        NetworkStats statsWlan = a.getNetworkInfoWlan();
        if (statsWlan != null) {
            for (int i3 : statsWlan.getUniqueUids()) {
                this.d.add(Integer.valueOf(i3));
            }
        }
        a.networkList = TrafficStatsService.getNetWorkApps(this.e, this.d);
        return a;
    }

    /* access modifiers changed from: protected */
    public void onStopLoading() {
        super.onStopLoading();
        cancelLoad();
    }

    /* access modifiers changed from: protected */
    public void onReset() {
        super.onReset();
        cancelLoad();
    }
}
