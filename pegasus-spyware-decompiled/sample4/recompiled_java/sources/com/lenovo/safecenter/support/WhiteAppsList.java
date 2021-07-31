package com.lenovo.safecenter.support;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.util.Log;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.utils.Const;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class WhiteAppsList {
    public static String[] md5s = {"5ABDF9B649C2B8AC6026B88313C3C332", "EBAA529685AAE3A1D299AC15F7710AEA", "B4BDCC6C9886781D05FB601649D02801", "B78A0EE7E80045B4F9A0C425703D0CA4", "388CF508552BC50ED26A8715D33312BA", "6B861FD954CE40EE4C560992DCCB35F0", "49FF2FEA9A214DCC2F7EF229488B1A54", "56B44C8B44C3A4064FE0667DC91E01AA", "CEA942B20A36347B3BF793BFF50F737D"};

    public static String getFromRaw(Context context, int fileId) {
        String result = "";
        try {
            BufferedReader bufReader = new BufferedReader(new InputStreamReader(context.getResources().openRawResource(fileId)));
            while (true) {
                String line = bufReader.readLine();
                if (line == null) {
                    break;
                }
                result = result + line;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0029 A[SYNTHETIC, Splitter:B:13:0x0029] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0077 A[SYNTHETIC, Splitter:B:26:0x0077] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.List<java.lang.String> getThirdWhiteAppsList(android.content.Context r7) {
        /*
        // Method dump skipped, instructions count: 133
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.support.WhiteAppsList.getThirdWhiteAppsList(android.content.Context):java.util.List");
    }

    public static boolean contains(String[] packages, String pkg) {
        if (packages != null && packages.length > 0) {
            for (String str : packages) {
                if (str.equals(pkg)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String getSystemPkgs(Context context) {
        StringBuffer buffer = new StringBuffer();
        PackageManager pm = context.getPackageManager();
        for (ApplicationInfo applicationInfo : pm.getInstalledApplications(0)) {
            if (!AppUtil.isThirdpartApp(applicationInfo) && pm.checkPermission("android.permission.SEND_SMS", applicationInfo.packageName) == 0) {
                buffer.append(applicationInfo.packageName).append(",");
            }
        }
        return buffer.substring(0, buffer.length());
    }

    public static List<ApplicationInfo> getRunningApps(Context context) {
        ActivityManager am = (ActivityManager) context.getSystemService("activity");
        PackageManager mPm = context.getPackageManager();
        if (mPm.getInstalledApplications(8192) == null) {
            return new ArrayList();
        }
        List<ApplicationInfo> appList = new ArrayList<>();
        List<ActivityManager.RunningAppProcessInfo> procList = am.getRunningAppProcesses();
        if (procList == null || procList.size() == 0) {
            return appList;
        }
        for (ActivityManager.RunningAppProcessInfo appProcInfo : procList) {
            if (!(appProcInfo == null || appProcInfo.pkgList == null)) {
                int size = appProcInfo.pkgList.length;
                for (int i = 0; i < size; i++) {
                    try {
                        ApplicationInfo appInfo = mPm.getApplicationInfo(appProcInfo.pkgList[i], 8192);
                        if (appInfo != null && !appInfo.processName.equals("android.process.letaskmenu") && !appInfo.processName.equals("android.process.launcher") && !appInfo.processName.equals("android.process.acore")) {
                            appList.add(appInfo);
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        Log.w("test", "Error retrieving ApplicationInfo for pkg:" + appProcInfo.pkgList[i]);
                    }
                }
            }
        }
        return appList;
    }

    public static boolean equals(List<ApplicationInfo> apps, String pkgName) {
        for (int i = 0; i < apps.size(); i++) {
            if (apps.get(i).packageName.equals(pkgName)) {
                return true;
            }
        }
        return false;
    }

    public static boolean contains(List<String> list, String pkgName) {
        for (int i = 0; i < list.size(); i++) {
            if (pkgName.contains(list.get(i))) {
                return true;
            }
        }
        return false;
    }

    public static void killAllProgress(Context context, ArrayList<AppInfo> appList) {
        ActivityManager am = (ActivityManager) context.getSystemService("activity");
        List<ApplicationInfo> runningApps = getRunningApps(context);
        for (int i = 0; i < appList.size(); i++) {
            try {
                String pkgName = appList.get(i).packageName;
                if (pkgName != null && equals(runningApps, pkgName) && !pkgName.equals("com.android.stk")) {
                    am.forceStopPackage(pkgName);
                    Log.d("test", "kill: " + pkgName);
                }
            } catch (Exception e) {
                return;
            }
        }
    }

    public static void killAllProgress(Context context, String[] pkgnames) {
        ActivityManager am = (ActivityManager) context.getSystemService("activity");
        List<ApplicationInfo> runningApps = getRunningApps(context);
        if (pkgnames != null) {
            for (String pkgName : pkgnames) {
                try {
                    if (equals(runningApps, pkgName) && !pkgName.equals("com.android.stk")) {
                        am.forceStopPackage(pkgName);
                        Log.d("test", "kill: " + pkgName);
                    }
                } catch (Exception e) {
                    return;
                }
            }
        }
    }

    public static void writeWhiteApksToFile(Context context) {
        String pkgs = "com.lenovo.safecenter\n";
        String uids = "";
        for (ApplicationInfo app : context.getPackageManager().getInstalledApplications(0)) {
            if (!AppUtil.isThirdpartApp(app)) {
                pkgs = (pkgs + app.packageName) + "\n";
                if (app.uid > 10000) {
                    uids = (uids + app.uid) + "\n";
                }
            } else if (contains(md5s, AppUtil.getCretMD5(context, app.packageName))) {
                pkgs = (pkgs + app.packageName) + "\n";
                uids = (uids + app.uid) + "\n";
            }
            if (app.packageName.equals("com.lenovo.ideafriend") || app.packageName.equals("com.lenovo.safecenter.update")) {
                pkgs = (pkgs + app.packageName) + "\n";
                uids = (uids + app.uid) + "\n";
            }
        }
        FileOutputStream fos1 = null;
        FileOutputStream fos2 = null;
        try {
            fos1 = context.openFileOutput("lenovoapks", 0);
            fos1.write(pkgs.getBytes());
            fos2 = context.openFileOutput("whitelist", 0);
            fos2.write(uids.getBytes());
            if (fos1 != null) {
                try {
                    fos1.close();
                } catch (IOException e) {
                    e.printStackTrace();
                    return;
                }
            }
            if (fos2 != null) {
                fos2.close();
            }
        } catch (Exception e1) {
            e1.printStackTrace();
            if (fos1 != null) {
                try {
                    fos1.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            if (fos2 != null) {
                fos2.close();
            }
        } catch (Throwable th) {
            if (fos1 != null) {
                try {
                    fos1.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                    throw th;
                }
            }
            if (fos2 != null) {
                fos2.close();
            }
            throw th;
        }
    }

    public static String getWhiteList(Context context, String fileName) {
        String data = "";
        FileInputStream fis = null;
        try {
            FileInputStream fis2 = context.openFileInput(fileName);
            BufferedReader bufReader = new BufferedReader(new InputStreamReader(fis2));
            while (true) {
                String line = bufReader.readLine();
                if (line == null) {
                    break;
                }
                data = (data + line) + "\n";
            }
            if (fis2 != null) {
                try {
                    fis2.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (0 != 0) {
                try {
                    fis.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    fis.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
        return data;
    }

    public static void getLibsFromAssets(Context context) {
        writeFile(context, "libsmschecker-1.0.1.so", "libsmschecker-1.0.1.so");
        writeFile(context, "libcryptor-1.0.0.so", "libcryptor-1.0.0.so");
        writeFile(context, "libams-1.1.0.so", "libams-1.1.0.so");
        writeFile(context, "liblocation-1.0.0.so", "liblocation-1.0.0.so");
    }

    public static void updateHookLibsFromAssets(Context context) {
        String cpuinfo = getCpuInfo(context);
        boolean intel = cpuinfo.equals("intel");
        boolean armv7 = cpuinfo.equals("armv7");
        if (intel) {
            Log.d("test", "cpuInfo intel: " + intel);
            writeFile(context, "injectso_x86", "injectso");
            writeFile(context, "libphonehook_x86.so", SafeCenterService.PHONE_LIB_NAME);
            writeFile(context, "libsystemhook_x86.so", SafeCenterService.SYSTEM_LIB_NAME);
        } else if (armv7) {
            Log.d("test", "cpuInfo armv7: " + armv7);
            writeFile(context, "injectso_arm", "injectso");
            writeFile(context, "libphonehook_armv7.so", SafeCenterService.PHONE_LIB_NAME);
            writeFile(context, "libsystemhook_armv7.so", SafeCenterService.SYSTEM_LIB_NAME);
        } else {
            Log.d("test", "cpuInfo other ");
            writeFile(context, "injectso_arm", "injectso");
            writeFile(context, "libphonehook_armv6.so", SafeCenterService.PHONE_LIB_NAME);
            writeFile(context, "libsystemhook_armv6.so", SafeCenterService.SYSTEM_LIB_NAME);
        }
    }

    public static void writeFile(Context context, String fromFile, String toFile) {
        FileOutputStream fos = null;
        try {
            FileOutputStream fos2 = context.openFileOutput(toFile, 0);
            InputStream is = context.getResources().getAssets().open(fromFile);
            byte[] buf = new byte[1024];
            while (true) {
                int len = is.read(buf);
                if (len == -1) {
                    break;
                }
                fos2.write(buf, 0, len);
            }
            if (fos2 != null) {
                try {
                    fos2.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (0 != 0) {
                try {
                    fos.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    fos.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static String getCpuInfo(Context context) {
        ContentResolver resolver = context.getContentResolver();
        String info = Const.mDefaultPreference.getString("cpuinfo", null);
        if (info == null) {
            info = "armv6";
            try {
                writeFile(context, "cputest", "cputest");
                CMDHelper.exeCmd(context, (("chmod 555 /data/data/com.lenovo.safecenter/files/cputest \n" + "/data/data/com.lenovo.safecenter/files/cputest \n") + "echo $? > /data/data/com.lenovo.safecenter/files/cpuinfo \n") + "chmod 666 /data/data/com.lenovo.safecenter/files/cpuinfo \n");
                BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream("/data/data/com.lenovo.safecenter/files/cpuinfo")));
                String str = in.readLine();
                in.close();
                Log.i("dcy", "===========>test cpu result: " + str);
                if (str == null || Integer.valueOf(str.trim()).intValue() != 123) {
                    BufferedReader bu = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/cpuinfo")));
                    while (true) {
                        String line = bu.readLine();
                        if (line != null) {
                            if (line.toLowerCase().contains("armv7")) {
                                info = "armv7";
                                bu.close();
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    bu.close();
                    Const.mDefaultPreference.edit().putString("cpuinfo", info).commit();
                    Settings.System.putString(resolver, "cpuinfo", info);
                } else {
                    info = "intel";
                    Const.mDefaultPreference.edit().putString("cpuinfo", info).commit();
                    Settings.System.putString(resolver, "cpuinfo", info);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Log.i("dcy", "===========>cpu: " + info);
        return info;
    }
}
