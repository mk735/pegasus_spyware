package com.lenovo.safecenter.net.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.provider.MultiSIMUtils;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.widget.Toast;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.LowLevelNetFilter;
import com.lenovo.safecenter.net.NetFilter;
import com.lenovo.safecenter.net.cache.NetCache;
import com.lenovo.safecenter.net.doublemode.DoubleCardUtil;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.AlarmManageUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.Iterator;
import java.util.Set;

public class BootBroadcast extends BroadcastReceiver {
    public static final String APPLY_IPTABLE_RULES = "apply_iptable_rules";
    private TrafficStatsService a;

    public void onReceive(final Context context, Intent intent) {
        Bundle b;
        long monthUsed;
        if (intent != null) {
            if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
                Log.i("forzajuve", "is in boot onReceive ");
                long now = System.currentTimeMillis();
                NetCache.setBoot_time(now);
                TrafficStatsService.getTrafficSP(context).edit().putLong("boot_time", now).commit();
                TrafficStatsService.initNetCache(context);
                PhoneSimInfo info = TrafficStatsService.getImsiInfo(context);
                Log.i("bootairtest", "imsi 1 = " + info.sim1IMSI + "imsi 2 = " + info.sim2IMSI + "boolean airmode =" + TrafficStatsService.IsAirModeOn(context) + "now = " + now);
                TrafficStatsService.getExecutorService().execute(new Thread() {
                    /* class com.lenovo.safecenter.net.support.BootBroadcast.AnonymousClass1 */

                    public final void run() {
                        TrafficStatsService.trafficForceUpdate(context);
                    }
                });
                this.a = TrafficStatsService.getInstance(context);
                SharedPreferences trafficSP = TrafficStatsService.getTrafficSP(context);
                int currentMonth = TrafficStatsService.getCurrentMonth();
                int i = trafficSP.getInt("shutdowm_month", -1);
                Log.i("clear", "nowMonth =" + currentMonth + ",month = " + i);
                if (!(i == currentMonth || i == -1 || trafficSP.getInt("haveDone4newMonthTime", -1) == currentMonth)) {
                    long j = trafficSP.getLong("shutdowm_time", -1);
                    if (j == -1 || j <= System.currentTimeMillis()) {
                        Log.i("clear", "do4newMonth now");
                        this.a.do4newMonth();
                        Log.i("clear", "haveDone4newMonthTime = " + trafficSP.getInt("haveDone4newMonthTime", -1));
                    }
                    TrafficStatsService.startAutoTrafficCorrectSim1(context);
                    TrafficStatsService.startAutoTrafficCorrectSim2(context);
                }
                if (TrafficStatsService.getDate() != trafficSP.getInt("shutdowm_daily", -1)) {
                    Const.setIsTodayNoticed(false);
                    TrafficStatsService.setIsTodayNoticed2(context, false);
                }
                TrafficStatsService.startAutoTrafficCorrectSim1(context);
                TrafficStatsService.startAutoTrafficCorrectSim2(context);
            }
            if ("android.intent.action.PACKAGE_REMOVED".equals(intent.getAction())) {
                int uid = intent.getExtras().getInt("android.intent.extra.UID");
                if (TrafficStatsService.getTrafficMode(context) != 13) {
                    if (NetFilter.netBlackUids == null || NetFilter.netBlackUids.size() == 0) {
                        String allUid = context.getSharedPreferences("system info", 0).getString("selected uids", "");
                        String[] uidString = allUid.split(c.O);
                        if (!allUid.equals("") && uidString.length > 0) {
                            int len$ = uidString.length;
                            for (int i$ = 0; i$ < len$; i$++) {
                                NetFilter.netBlackUids.add(Integer.valueOf(Integer.parseInt(uidString[i$])));
                            }
                        }
                    }
                    if (NetFilter.netBlackUidsWlan == null || NetFilter.netBlackUidsWlan.size() == 0) {
                        String allUid2 = context.getSharedPreferences("wlan info", 0).getString("selected uids", "");
                        String[] uidString2 = allUid2.split(c.O);
                        if (!allUid2.equals("") && uidString2.length > 0) {
                            int len$2 = uidString2.length;
                            for (int i$2 = 0; i$2 < len$2; i$2++) {
                                NetFilter.netBlackUidsWlan.add(Integer.valueOf(Integer.parseInt(uidString2[i$2])));
                            }
                        }
                    }
                    boolean flag = false;
                    if (NetFilter.netBlackUids != null && NetFilter.netBlackUids.contains(Integer.valueOf(uid))) {
                        flag = true;
                        NetFilter.netBlackUids.remove(Integer.valueOf(uid));
                        a(NetFilter.netBlackUids, context, "system info");
                    }
                    if (NetFilter.netBlackUidsWlan != null && NetFilter.netBlackUidsWlan.contains(Integer.valueOf(uid))) {
                        flag = true;
                        NetFilter.netBlackUidsWlan.remove(Integer.valueOf(uid));
                        a(NetFilter.netBlackUidsWlan, context, "wlan info");
                    }
                    if (flag) {
                        TrafficStatsService.createShell(context);
                    }
                } else {
                    if (LowLevelNetFilter.netBlackUids == null || LowLevelNetFilter.netBlackUids.size() == 0) {
                        String allUid3 = context.getSharedPreferences("system info", 0).getString("selected uids", "");
                        String[] uidString3 = allUid3.split(c.O);
                        if (!allUid3.equals("") && uidString3.length > 0) {
                            int len$3 = uidString3.length;
                            for (int i$3 = 0; i$3 < len$3; i$3++) {
                                LowLevelNetFilter.netBlackUids.add(Integer.valueOf(Integer.parseInt(uidString3[i$3])));
                            }
                        }
                    }
                    if (LowLevelNetFilter.netBlackUidsWlan == null || LowLevelNetFilter.netBlackUidsWlan.size() == 0) {
                        String allUid4 = context.getSharedPreferences("wlan info", 0).getString("selected uids", "");
                        String[] uidString4 = allUid4.split(c.O);
                        if (!allUid4.equals("") && uidString4.length > 0) {
                            int len$4 = uidString4.length;
                            for (int i$4 = 0; i$4 < len$4; i$4++) {
                                LowLevelNetFilter.netBlackUidsWlan.add(Integer.valueOf(Integer.parseInt(uidString4[i$4])));
                            }
                        }
                    }
                    boolean flag2 = false;
                    if (LowLevelNetFilter.netBlackUids != null && LowLevelNetFilter.netBlackUids.contains(Integer.valueOf(uid))) {
                        flag2 = true;
                        LowLevelNetFilter.netBlackUids.remove(Integer.valueOf(uid));
                        a(LowLevelNetFilter.netBlackUids, context, "system info");
                    }
                    if (LowLevelNetFilter.netBlackUidsWlan != null && LowLevelNetFilter.netBlackUidsWlan.contains(Integer.valueOf(uid))) {
                        flag2 = true;
                        LowLevelNetFilter.netBlackUidsWlan.remove(Integer.valueOf(uid));
                        a(LowLevelNetFilter.netBlackUidsWlan, context, "wlan info");
                    }
                    if (flag2) {
                        TrafficStatsService.createShell(context);
                    }
                }
            }
            if ("android.intent.action.ACTION_SHUTDOWN".equals(intent.getAction())) {
                SharedPreferences trafficSP2 = TrafficStatsService.getTrafficSP(context);
                trafficSP2.edit().putInt("shutdowm_month", TrafficStatsService.getCurrentMonth()).commit();
                trafficSP2.edit().putInt("shutdowm_daily", TrafficStatsService.getDate()).commit();
                trafficSP2.edit().putLong("shutdowm_time", System.currentTimeMillis()).commit();
                this.a = TrafficStatsService.getInstance(context);
                if (TrafficStatsService.getTrafficMode(context) == 13) {
                    this.a.refresh();
                }
                this.a.insertDayTrafficDate(context);
            }
            if (intent.getAction().equals(SecurityService.ACTION)) {
                Log.i("TrafficCorrectCenter", "touch com.lenovo.safecenter.traffic.correction receive");
                String correctResult = null;
                int errorCode = intent.getIntExtra("code", -666);
                int used = intent.getIntExtra("used", -3);
                int card = intent.getIntExtra("card", 0);
                int left = intent.getIntExtra("left", 0);
                String desc = intent.getStringExtra("description");
                Log.i("TrafficCorrectCenter", "desc = " + desc);
                Log.i("TrafficCorrectCenter", "errorCode =" + errorCode + ",used =" + used + ",card =" + card + ",left =" + left);
                if (errorCode == 0) {
                    TrafficStatsService mAppDatabase = TrafficStatsService.getInstance(context);
                    boolean trafficCorrectSucessFlag = false;
                    if (card == 0) {
                        NetCache.lastCorrectCard = 0;
                    } else {
                        NetCache.lastCorrectCard = 1;
                    }
                    NetCache.canCorrect = true;
                    if (used != -1) {
                        long monthUsed2 = (long) (used * 1024);
                        DoubleCardUtil.checkTraffic(monthUsed2, mAppDatabase, context, card);
                        correctResult = context.getString(R.string.net_traffic_correct_sucess2) + Formatter.formatFileSize(context, monthUsed2);
                        trafficCorrectSucessFlag = true;
                    } else if (left != -1) {
                        long monthLeft = (long) (left * 1024);
                        if (card == 0) {
                            monthUsed = ((Long.valueOf(Const.getMonthLimitTraffic()).longValue() * 1024) * 1024) - monthLeft;
                        } else {
                            monthUsed = ((Long.valueOf(Const.getMonthLimitTraffic2()).longValue() * 1024) * 1024) - monthLeft;
                        }
                        DoubleCardUtil.checkTraffic(monthUsed, mAppDatabase, context, card);
                        correctResult = context.getString(R.string.net_traffic_correct_sucess3) + Formatter.formatFileSize(context, monthLeft);
                        trafficCorrectSucessFlag = true;
                    } else {
                        Toast.makeText(context, (int) R.string.net_correct_fail, 1).show();
                    }
                    if (trafficCorrectSucessFlag) {
                        if (Const.trafficHandler != null) {
                            Const.trafficHandler.sendEmptyMessage(5);
                        }
                        Utils.showCorrectSuccessNotification(context, correctResult);
                    }
                } else if (!TextUtils.isEmpty(desc)) {
                    if (errorCode == -103) {
                        desc = context.getString(R.string.net_correct_fail);
                    }
                    Toast.makeText(context, desc, 1).show();
                    Utils.showCorrectFailNotification(context, context.getString(R.string.net_error_code10), context.getString(R.string.net_error_code11), 0);
                }
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) && (b = intent.getExtras()) != null) {
                NetworkInfo.DetailedState state = ((NetworkInfo) b.get("networkInfo")).getDetailedState();
                if (state == NetworkInfo.DetailedState.CONNECTED) {
                    Logger.i("nac", "conn~~");
                    MyUtils.showLeSecNotification(context);
                    AlarmManageUtils.noticeTrafficStats(context);
                    Logger.i("nac", "net on notice trafficStats");
                    try {
                        if (MyMultiSIMUtils.isMultiSim(context) && WflUtils.isMobileNetwork(context)) {
                            MultiSIMUtils mUtils = MultiSIMUtils.getDefault(context);
                            String id = (String) mUtils.getClass().getDeclaredMethod("getDataSubscriberId", null).invoke(mUtils, new Object[0]);
                            Const.setDataCacheImsi(id);
                            Logger.i("nac", "data id =" + id);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if (state == NetworkInfo.DetailedState.DISCONNECTED) {
                    TrafficStatsService.getExecutorService().execute(new Thread() {
                        /* class com.lenovo.safecenter.net.support.BootBroadcast.AnonymousClass2 */

                        public final void run() {
                            TrafficStatsService.trafficForceUpdate(context);
                        }
                    });
                    AlarmManageUtils.cancelNoticeTrafficStats(context);
                    Logger.i("nac", "net dis cancel trafficStats");
                }
            }
            if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction()) && TrafficStatsService.getTrafficMode(context) == 13) {
                PackageManager packageManager = context.getPackageManager();
                String dataString = intent.getDataString();
                final int i2 = intent.getExtras().getInt("android.intent.extra.UID");
                String str = dataString.split(c.N)[1];
                if (packageManager.checkPermission("android.permission.INTERNET", str) == 0) {
                    Log.i("pa", "pkgname = " + str);
                    TrafficStatsService.getExecutorService().execute(new Thread() {
                        /* class com.lenovo.safecenter.net.support.BootBroadcast.AnonymousClass3 */

                        public final void run() {
                            TrafficStatsService.getInstance(context).insertToApp(0, 0, 0, 0, i2);
                            Log.i("pa", "uid = " + i2);
                        }
                    });
                }
            }
        }
    }

    private static void a(Set<Integer> netBlackUids, Context context, String xmlName) {
        String uids = "";
        try {
            SharedPreferences prefs = context.getSharedPreferences(xmlName, 0);
            Iterator it = netBlackUids.iterator();
            while (it.hasNext()) {
                uids = uids + it.next() + c.O;
            }
            SharedPreferences.Editor editor = prefs.edit();
            editor.putString("selected uids", uids);
            editor.commit();
        } catch (Exception e) {
            Log.v("Filter", e.toString());
        }
    }
}
