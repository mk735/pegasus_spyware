package com.lenovo.performancecenter.performance;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Handler;
import android.util.Log;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.lenovo.performancecenter.coreui.util.MemoryTools;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.performancecenter.service.object.PolicyAppInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TreeMap;

public class ScanApplicationInfo {
    public static final long DEFAULT_POLICY_TIME = 20;
    public static final int GET_CAN_KILL_LIST = 0;
    public static final String POLICY_SETTINGS = "policy_settings";
    public static final String POLICY_SWITCH = "policy_switch";
    public static final String POLICY_TIME = "policy_time";
    private static ScanApplicationInfo f;
    private Timer a;
    private PolicyTask b;
    private long c;
    private boolean d;
    private Handler e;

    private ScanApplicationInfo(Handler handler) {
        Log.i("ScanApp", "ScanApplicationInfo Constructor");
        this.e = handler;
    }

    public static ScanApplicationInfo getSingleton(Context context, Handler handler) {
        Log.i("PolicyService", "getSingleton : " + f);
        if (f == null) {
            f = new ScanApplicationInfo(handler);
            Log.i("PolicyService", "instance = new ScanApplicationInfo(context)");
        }
        return f;
    }

    public static void releaseInstance() {
        Log.i("PolicyService", "getSingleton : " + f);
        f = null;
    }

    public void initPolicyTask(Context context) {
        SharedPreferences pref = context.getSharedPreferences(POLICY_SETTINGS, 0);
        this.c = pref.getLong(POLICY_TIME, 20);
        this.d = pref.getBoolean(POLICY_SWITCH, false);
        if (this.d) {
            this.a = new Timer(true);
            this.b = new PolicyTask(context, this.e);
            this.a.schedule(this.b, this.c * 60000, this.c * 60000);
        }
    }

    public void stopPolicyTask(Context context) {
        if (this.b != null) {
            this.b.cancel();
            this.b.release();
            this.b = null;
        }
    }

    public void restartPolicyTask(Context context) {
        stopPolicyTask(context);
        initPolicyTask(context);
    }

    public void updateConfiguration(String key, Object value, Context context) {
        if (POLICY_TIME.equals(key)) {
            this.c = ((Long) value).longValue();
            restartPolicyTask(context);
        } else if (POLICY_SWITCH.equals(key)) {
            this.d = ((Boolean) value).booleanValue();
            if (this.d) {
                restartPolicyTask(context);
            } else if (this.b != null) {
                this.b.cancel();
                this.b.isRunning = false;
                stopPolicyTask(context);
            }
        }
    }

    private static TreeMap<Integer, String> a(Context context, ArrayList<String> launchers) {
        Log.i("DESIGN", System.currentTimeMillis() + " getRunningProcesses start");
        TreeMap<Integer, String> mapRunningProcess = new TreeMap<>();
        PackageManager pkgManager = context.getPackageManager();
        ArrayList<String> userWhiteList = DataLayerManager.getUserWhiteList(context);
        ArrayList<String> highLevelWhiteList = DataLayerManager.getLenovoHighLevelPkg(context);
        ArrayList<String> notKillHiddenAppList = DataLayerManager.getWhiteListNotKillForHidden(context);
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        for (int i = 0; i < runningAppProcesses.size(); i++) {
            ActivityManager.RunningAppProcessInfo rapInfo = runningAppProcesses.get(i);
            if (rapInfo.importance > 100) {
                String[] pkgList = rapInfo.pkgList;
                for (String packageName : pkgList) {
                    if (!launchers.contains(packageName) ? !(notKillHiddenAppList.contains(packageName) || a(pkgManager, packageName)) : !(userWhiteList.contains(packageName) || highLevelWhiteList.contains(packageName))) {
                        mapRunningProcess.put(Integer.valueOf(rapInfo.pid), packageName);
                    }
                }
            }
        }
        Log.i("DESIGN", System.currentTimeMillis() + " getRunningProcesses end");
        return mapRunningProcess;
    }

    public static HashMap<String, int[]> getRunningAppInfo(Context inContext) {
        Log.i("DESIGN", System.currentTimeMillis() + " getRunningAppInfo start");
        HashMap<String, int[]> map = new HashMap<>();
        Context context = (Context) Utils.getSoftreference(inContext);
        ArrayList<String> launchers = getInstalledAppInLauncher(context);
        for (Map.Entry<Integer, String> element : a(context, launchers).entrySet()) {
            int pid = element.getKey().intValue();
            String pkgName = element.getValue();
            int inLauncher = launchers.contains(pkgName) ? 1 : 0;
            int memory = MemoryTools.getMemInfoForPid(context, pid);
            Log.i("DESIGN", System.currentTimeMillis() + " pid == " + pid + " packageName == " + pkgName + " memory == " + memory);
            if (map.get(pkgName) != null) {
                memory += map.get(pkgName)[1];
            }
            map.put(pkgName, new int[]{pid, memory, inLauncher});
        }
        Log.i("DESIGN", System.currentTimeMillis() + " getRunningAppInfo end");
        return map;
    }

    public static HashMap<String, int[]> getRunningAppInfoJustInLauncher(Context inContext) {
        Log.i("DESIGN", System.currentTimeMillis() + " getRunningAppInfoJustInLauncher start");
        HashMap<String, int[]> map = new HashMap<>();
        Context context = (Context) Utils.getSoftreference(inContext);
        ArrayList<String> launchers = getInstalledAppInLauncher(context);
        for (Map.Entry<Integer, String> element : a(context, launchers).entrySet()) {
            int pid = element.getKey().intValue();
            String pkgName = element.getValue();
            int inLauncher = launchers.contains(pkgName) ? 1 : 0;
            int memory = 0;
            if (inLauncher == 1) {
                memory = MemoryTools.getMemInfoForPid(context, pid);
                Log.i("DESIGN", System.currentTimeMillis() + " pid == " + pid + " packageName == " + pkgName + " memory == " + memory);
                if (map.get(pkgName) != null) {
                    memory += map.get(pkgName)[1];
                }
            }
            map.put(pkgName, new int[]{pid, memory, inLauncher});
        }
        Log.i("DESIGN", System.currentTimeMillis() + " getRunningAppInfoJustInLauncher end");
        return map;
    }

    public static ArrayList<String> getRunningAppListJustInLauncher(Context inContext) {
        Log.i("DESIGN", System.currentTimeMillis() + " getRunningAppListJustInLauncher start");
        ArrayList<String> list = new ArrayList<>();
        Context context = (Context) Utils.getSoftreference(inContext);
        ArrayList<String> launchers = getInstalledAppInLauncher(context);
        for (Map.Entry<Integer, String> element : a(context, launchers).entrySet()) {
            String pkgName = element.getValue();
            if (launchers.contains(pkgName) && !list.contains(pkgName)) {
                list.add(pkgName);
            }
        }
        Log.i("DESIGN", System.currentTimeMillis() + " getRunningAppListJustInLauncher end");
        return list;
    }

    public static ArrayList<String> getRunningAppList(Context inContext) {
        Log.i("DESIGN", System.currentTimeMillis() + " getRunningAppList start");
        Context context = (Context) Utils.getSoftreference(inContext);
        ArrayList<String> list = new ArrayList<>();
        for (Map.Entry<Integer, String> element : a(context, getInstalledAppInLauncher(context)).entrySet()) {
            String pkgName = element.getValue();
            if (!list.contains(pkgName)) {
                list.add(pkgName);
            }
        }
        Log.i("DESIGN", System.currentTimeMillis() + " getRunningAppList end");
        return list;
    }

    public static HashMap<String, PolicyAppInfo> readRunningAppInfoPolicy(Context inContext, PolicyTask policyTask) {
        int flag;
        Context context = (Context) Utils.getSoftreference(inContext);
        String myPkgName = inContext.getPackageName();
        HashMap<String, PolicyAppInfo> zhengYunXingMap = new HashMap<>();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        ArrayList<String> userWhiteList = DataLayerManager.getUserWhiteList(context);
        int rPCount = runningAppProcesses.size();
        for (int i = 0; i < rPCount && policyTask.isRunning; i++) {
            ActivityManager.RunningAppProcessInfo rapInfo = runningAppProcesses.get(i);
            if (rapInfo.importance > 100) {
                String[] pkgList = rapInfo.pkgList;
                int pkgCount = pkgList.length;
                for (int j = 0; j < pkgCount; j++) {
                    PackageManager pkgManager = context.getPackageManager();
                    try {
                        PackageInfo pkgInfo = pkgManager.getPackageInfo(pkgList[j], 1);
                        ApplicationInfo appInfo = pkgManager.getApplicationInfo(pkgList[j], 0);
                        if (!pkgInfo.packageName.equals(myPkgName) && !userWhiteList.contains(appInfo.packageName)) {
                            if ((appInfo.flags & 1) <= 0) {
                                flag = 0;
                            } else {
                                flag = 1;
                            }
                            CharSequence appLabel = "";
                            if (pkgInfo.applicationInfo.labelRes != 0) {
                                appLabel = pkgManager.getText(pkgList[j], pkgInfo.applicationInfo.labelRes, pkgInfo.applicationInfo);
                            }
                            PolicyAppInfo uai = new PolicyAppInfo(rapInfo.pid, rapInfo.processName, context);
                            uai.pid = rapInfo.pid;
                            uai.uid = rapInfo.uid;
                            uai.packageName = pkgList[j];
                            uai.processName = rapInfo.processName;
                            uai.label = (String) appLabel;
                            uai.addNum();
                            uai.setImportance((long) rapInfo.importance);
                            uai.flag = flag;
                            long currentTime = System.currentTimeMillis();
                            if (rapInfo.importance == 100) {
                                uai.setForegoing(currentTime);
                            }
                            uai.setRunningTime(currentTime);
                            uai.setTodayUsed(true);
                            uai.updateUAIRunningTimeToDatebase();
                            policyTask.updatePolicyData(uai, false);
                            zhengYunXingMap.put(uai.packageName, uai);
                            Log.i("ScanApp", rapInfo.processName + "========end=========");
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        DataLayerManager.fileUserWhiteListPolicy(zhengYunXingMap, context);
        return zhengYunXingMap;
    }

    private static boolean a(PackageManager pm, String pkgname) {
        if ("com.google.android.apps.maps".equals(pkgname)) {
            return false;
        }
        if (pm.checkPermission("android.permission.BIND_WALLPAPER", pkgname) == 0) {
            return true;
        }
        try {
            PackageInfo pi = pm.getPackageInfo(pkgname, 4);
            if (pi.services == null) {
                return false;
            }
            ServiceInfo[] arr$ = pi.services;
            for (ServiceInfo si : arr$) {
                if (si.permission != null && si.permission.equals("android.permission.BIND_WALLPAPER")) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void addInputMethod(Context context, ArrayList<String> list) {
        List<InputMethodInfo> mInputMethodProperties = ((InputMethodManager) context.getSystemService("input_method")).getInputMethodList();
        int size = mInputMethodProperties.size();
        for (int i = 0; i < size; i++) {
            list.add(mInputMethodProperties.get(i).getPackageName());
        }
    }

    public static ArrayList<String> getInstalledLauncher(Context context) {
        ArrayList<String> launchers = new ArrayList<>();
        PackageManager pm = context.getPackageManager();
        Intent it = new Intent("android.intent.action.MAIN");
        it.addCategory("android.intent.category.HOME");
        for (ResolveInfo ri : pm.queryIntentActivities(it, 0)) {
            launchers.add(ri.activityInfo.packageName);
        }
        return launchers;
    }

    public static ArrayList<String> getInstalledAppInLauncher(Context context) {
        ArrayList<String> launchers = new ArrayList<>();
        PackageManager pm = context.getPackageManager();
        Intent it = new Intent("android.intent.action.MAIN");
        it.addCategory("android.intent.category.LAUNCHER");
        for (ResolveInfo ri : pm.queryIntentActivities(it, 0)) {
            launchers.add(ri.activityInfo.packageName);
        }
        return launchers;
    }

    public static void killProcess(Context cotext, String pkgName) {
        try {
            RootPassage.execRootCmd(pkgName, " -fs ", cotext);
        } catch (Exception e2) {
            ((ActivityManager) cotext.getSystemService("activity")).killBackgroundProcesses(pkgName);
        }
    }

    public static void killAllProcess(Handler handler, Context cotext, ArrayList<String> pkgList) {
        try {
            RootPassage.execRootCmd(handler, pkgList, " -fs ", cotext);
        } catch (Exception e2) {
            ActivityManager am = (ActivityManager) cotext.getSystemService("activity");
            Iterator i$ = pkgList.iterator();
            while (i$.hasNext()) {
                am.killBackgroundProcesses(i$.next());
            }
        }
    }
}
