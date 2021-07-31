package com.lenovo.safecenter.support;

import QQPIM.EModelID;
import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.util.Log;
import com.lenovo.lps.sus.c.c;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.safecenter.Laboratory.SafeHomePage;
import com.lenovo.safecenter.Laboratory.SafeHomePageBroadcast;
import com.lenovo.safecenter.adskill.FileUtils;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.utils.Const;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.List;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class CMDHelper {
    public static void init(Context context) {
        StringBuffer command = new StringBuffer();
        int guest_mode = Settings.System.getInt(context.getContentResolver(), "guest_mode_on", 0);
        TrafficStatsService.changeBinFileOwnerMode("iptables", context);
        if (guest_mode == 0 && Const.SDK_VERSION < 14 && !new File("/data/data/com.android.providers.contacts/databases/contacts2_guest.db").exists()) {
            command.append(a("/data/data/com.android.providers.contacts/databases/contacts2.db", "/data/data/com.android.providers.contacts/databases/contacts2_guest.db"));
            command.append(a("/data/data/com.android.providers.contacts/databases/contacts2.db-wal", "/data/data/com.android.providers.contacts/databases/contacts2_guest.db-wal"));
            command.append(a("/data/data/com.android.providers.contacts/databases/contacts2.db-shm", "/data/data/com.android.providers.contacts/databases/contacts2_guest.db-shm"));
            command.append(a(context, "com.android.providers.contacts"));
        }
        command.append(a(context.getFilesDir() + "/whitelist", "/data/data/whitelist"));
        exeCmd(context, command.toString());
    }

    public static String checkSu(Context context) {
        String systemDev = getMountDate(context);
        String cmd = ("" + "mount -o remount,rw " + systemDev + " /system \n") + "mount -o remount,rw /system \n";
        boolean isDiff = false;
        String mySuMd5 = Const.getSuMd5(context);
        File file = new File("/system/xbin/su");
        if (file.exists() && !mySuMd5.equals(MD5Util.getFileMD5(file))) {
            isDiff = true;
            cmd = ((cmd + "cat /data/data/com.lenovo.safecenter/files/competing_su > /system/xbin/su \n") + "chown root.root /system/xbin/su \n") + "chmod 6777 /system/xbin/su \n";
        }
        File sfile = new File("/system/bin/su");
        if (sfile.exists() && !mySuMd5.equals(MD5Util.getFileMD5(sfile))) {
            isDiff = true;
            cmd = ((cmd + "cat /data/data/com.lenovo.safecenter/files/competing_su > /system/bin/su \n") + "chown root.root /system/bin/su \n") + "chmod 6777 /system/bin/su \n";
        }
        String cmd2 = (((cmd + "sync;sleep 1\n") + "rm /data/data/com.lenovo.safecenter/files/competing_su\n") + "mount -o remount,ro " + systemDev + " /system \n") + "mount -o remount,ro /system \n";
        if (isDiff) {
            return cmd2;
        }
        return null;
    }

    public static String copyLibs(Context context) {
        String systemDev = getMountDate(context);
        StringBuffer command = new StringBuffer();
        command.append("mount -o remount,rw " + systemDev + " /system \n");
        command.append("mount -o remount,rw /system \n");
        command.append(a("/data/data/com.lenovo.safecenter/files/libams-1.1.0.so", "/system/lib/libams-1.1.0.so"));
        command.append(a("/data/data/com.lenovo.safecenter/files/liblocation-1.0.0.so", "/system/lib/liblocation-1.0.0.so"));
        command.append(a("/data/data/com.lenovo.safecenter/files/libsmschecker-1.0.1.so", "/system/lib/libsmschecker-1.0.1.so"));
        command.append(a("/data/data/com.lenovo.safecenter/files/libcryptor-1.0.0.so", "/system/lib/libcryptor-1.0.0.so"));
        command.append("mount -o remount,ro  " + systemDev + " /system \n");
        command.append("mount -o remount,ro /system \n");
        return command.toString();
    }

    public static boolean dealLibs_forupdate(Context context) {
        String systemDev = getMountDate(context);
        boolean result = exeCmd(context, (((("mount -o remount,rw " + systemDev + " /system \n") + "mount -o remount,rw /system \n") + "rm /system/lib/libsmschecker.so\n") + "mount -o remount,ro  " + systemDev + " /system \n") + "mount -o remount,ro /system \n");
        Log.i("dealLibs_forupdate", "dealLibs_forupdate==" + result);
        return result;
    }

    public static boolean updateHookLibs(Context context) {
        String SAFECENTER_FILE_PATH = context.getFilesDir() + CookieSpec.PATH_DELIM;
        String systemDev = getMountDate(context);
        StringBuffer command = new StringBuffer();
        command.append("mount -o remount,rw " + systemDev + " /system \n");
        command.append("mount -o remount,rw /system \n");
        command.append(a(SAFECENTER_FILE_PATH + "injectso", "/system/bin/injectso"));
        command.append(a(SAFECENTER_FILE_PATH + SafeCenterService.PHONE_LIB_NAME, "/system/libphonehook-13.so"));
        command.append(a(SAFECENTER_FILE_PATH + SafeCenterService.SYSTEM_LIB_NAME, "/system/libsystemhook-13.so"));
        command.append("chmod 555 /system/bin/injectso\n");
        boolean result = exeCmd(context, command.toString());
        Log.d("test", "updateSystemLib, result: " + result);
        return result;
    }

    public static boolean whiteMountToFiles(Context context) {
        if (!new File(context.getFilesDir() + "/mount").exists()) {
            return exeCmd(context, "mount >/data/data/com.lenovo.safecenter/files/mount\n" + "chmod 666 /data/data/com.lenovo.safecenter/files/mount\n");
        }
        return true;
    }

    public static String getMountDate(Context context) {
        String system = "";
        FileInputStream fis = null;
        try {
            FileInputStream fis2 = context.openFileInput("mount");
            BufferedReader bufReader = new BufferedReader(new InputStreamReader(fis2));
            bufReader.readLine();
            while (true) {
                String line = bufReader.readLine();
                if (line != null) {
                    if (line.contains(" /system ")) {
                        system = line.substring(0, line.indexOf(" "));
                        break;
                    }
                } else {
                    break;
                }
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
        return system;
    }

    public static void initWhiteList(Context context) {
        Log.d("test", "init whitelist, result: " + exeCmd(context, "" + a(context.getFilesDir() + "/whitelist", "/data/data/whitelist")));
    }

    private static String a(String from, String to) {
        return ("cat " + from + " > " + to + "\n") + "chmod 666 " + to + "\n";
    }

    private static String b(String from, String to) {
        return "mv /data/data/" + from + " /data/data/" + to + "\n";
    }

    public static boolean copyApk(Context context, String from, String to, String pkg) {
        String systemDev = getMountDate(context);
        String command = ((((("" + "mount -o remount,rw " + systemDev + " /system \n") + "mount -o remount,rw /system \n") + "cat " + from + " >" + to + "\n") + "chmod 777 " + to + " \n") + "mount -o remount,ro  " + systemDev + " /system \n") + "mount -o remount,ro /system \n";
        boolean result = exeCmd(context, command);
        Log.d("test", "copyapk, result: " + result + "comm:" + command);
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e1) {
            e1.printStackTrace();
        }
        if (!result) {
            return result;
        }
        try {
            context.getPackageManager().getApplicationInfo(pkg, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d("test", "copyapk but the system not edit!! ");
            e.printStackTrace();
            return false;
        }
    }

    public static boolean installAPK(Context context, String path, String pkg) {
        boolean result = exeCmd(context, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib \n" + "pm install -r '" + path + "'" + "\n");
        Log.d("test", "install apk, result: " + result);
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e1) {
            e1.printStackTrace();
        }
        if (!result) {
            return result;
        }
        try {
            context.getPackageManager().getApplicationInfo(pkg, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d("test", "installapk but the system not edit!! ");
            e.printStackTrace();
            return false;
        }
    }

    private static String a(Context context, String file) {
        try {
            return "chown " + context.getPackageManager().getApplicationInfo(file, 0).uid + " /data/data/" + file + "/databases/*\n";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean changeToGuestContactsAndMmsDB(Context context, boolean childModeOn, AppDatabase database) {
        String command = "";
        if (childModeOn) {
            List<AppInfo> childhideApp = database.queryAllHideApps(0);
            for (int i = 0; i < childhideApp.size(); i++) {
                command = command + "pm enable " + childhideApp.get(i).packageName + "\n";
            }
        }
        if (Const.SDK_VERSION < 14) {
            command = ((command + ((((((b("com.android.providers.contacts/databases/contacts2.db", "com.android.providers.contacts/databases/contacts2_back.db") + b("com.android.providers.contacts/databases/contacts2.db-wal", "com.android.providers.contacts/databases/contacts2_back.db-wal")) + b("com.android.providers.contacts/databases/contacts2.db-shm", "com.android.providers.contacts/databases/contacts2_back.db-shm")) + b("com.android.providers.contacts/databases/contacts2_guest.db", "com.android.providers.contacts/databases/contacts2.db")) + b("com.android.providers.contacts/databases/contacts2_guest.db-wal", "com.android.providers.contacts/databases/contacts2.db-wal")) + b("com.android.providers.contacts/databases/contacts2_guest.db-shm", "com.android.providers.contacts/databases/contacts2.db-shm")) + a(context, "com.android.providers.contacts"))) + RootPassage.exportLenovo(context)) + RootPassage.appProssLenovo(" com.android.contacts", "-fs");
        } else if (new File("/data/data/com.android.contacts/databases/simcontacts.db").exists()) {
            command = command + moveSimContacts(context, "simcontacts.db", "simcontacts.db_bak");
        }
        boolean result = exeCmd(context, command);
        Log.d("test", "change to guest: " + result);
        if (!result) {
            return result;
        }
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        return changeGuestMode(context, 1);
    }

    public static boolean deleMail(Context context) {
        boolean result = exeCmd(context, "" + "rm -r /data/data/com.android.email/databases/\n");
        Log.d("test", "delete mail: " + result);
        List<ActivityManager.RunningAppProcessInfo> list = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).pkgList[0].equals("com.android.email")) {
                exeCmd(context, "kill " + list.get(i).pid);
            }
        }
        return result;
    }

    public static boolean changeToNormalContactsAndMmsDB(Context context, boolean childModeOn, AppDatabase database) {
        String command = "";
        if (childModeOn) {
            List<AppInfo> childhideApp = database.queryAllHideApps(0);
            for (int i = 0; i < childhideApp.size(); i++) {
                command = command + "pm disable " + childhideApp.get(i).packageName + "\n";
            }
        }
        if (Const.SDK_VERSION < 14) {
            command = ((command + ((((((b("com.android.providers.contacts/databases/contacts2.db", "com.android.providers.contacts/databases/contacts2_guest.db") + b("com.android.providers.contacts/databases/contacts2.db-wal", "com.android.providers.contacts/databases/contacts2_guest.db-wal")) + b("com.android.providers.contacts/databases/contacts2.db-shm", "com.android.providers.contacts/databases/contacts2_guest.db-shm")) + b("com.android.providers.contacts/databases/contacts2_back.db", "com.android.providers.contacts/databases/contacts2.db")) + b("com.android.providers.contacts/databases/contacts2_back.db-wal", "com.android.providers.contacts/databases/contacts2.db-wal")) + b("com.android.providers.contacts/databases/contacts2_back.db-shm", "com.android.providers.contacts/databases/contacts2.db-shm")) + a(context, "com.android.providers.contacts"))) + RootPassage.exportLenovo(context)) + RootPassage.appProssLenovo(" com.android.contacts", "-fs");
        } else if (new File("/data/data/com.android.contacts/databases/simcontacts.db_bak").exists()) {
            command = command + moveSimContacts(context, "simcontacts.db_bak", "simcontacts.db");
        }
        boolean result = exeCmd(context, command);
        Log.d("test", "change to normal: " + result);
        if (!result) {
            return result;
        }
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        return changeGuestMode(context, 0);
    }

    public static String moveSimContacts(Context context, String oriDb, String purDb) {
        return (((("" + b("com.android.contacts/databases/" + oriDb, "com.android.contacts/databases/" + purDb)) + a(context, "com.android.contacts")) + "sync;sleep 2\n") + RootPassage.exportLenovo(context)) + RootPassage.appProssLenovo(" com.android.contacts", "-fs");
    }

    public static boolean disableApp(Context context, String pkgName) {
        return exeCmd(context, "" + "pm disable " + pkgName + "\n");
    }

    public static boolean enableApp(Context context, String pkgName) {
        return exeCmd(context, "" + "pm enable " + pkgName + "\n");
    }

    public static boolean disableApps(Context context, List<AppInfo> packages) {
        String command = "";
        for (int i = 0; i < packages.size(); i++) {
            command = command + "pm disable " + packages.get(i).packageName + "\n";
        }
        return exeCmd(context, command);
    }

    public static boolean enableApps(Context context, List<AppInfo> packages) {
        String command = "";
        for (int i = 0; i < packages.size(); i++) {
            command = command + "pm enable " + packages.get(i).packageName + "\n";
        }
        return exeCmd(context, command);
    }

    public static boolean changeGuestMode(Context context, int enbaleGuestMode) {
        try {
            InjectHelper helper = new InjectHelper();
            boolean phoneServiceRun = helper.ConnectToServer(SafeCenterService.PHONE_SERVICE);
            boolean acorServiceRun = helper.ConnectToServer(SafeCenterService.ACORE_SERVICE);
            Log.d("server", "phoneServiceRun: " + phoneServiceRun + ", acorServiceRun: " + acorServiceRun);
            if (!phoneServiceRun) {
                helper.readSms(context);
                helper.injectAService(context, SafeCenterService.PHONE_SERVICE);
            }
            if (!acorServiceRun) {
                helper.readContact(context);
                helper.injectAService(context, SafeCenterService.ACORE_SERVICE);
            }
            int uid = context.getPackageManager().getApplicationInfo(TrafficStatsService.PACKAGE_NAME, 0).uid;
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            return guestModeClient(SafeCenterService.PHONE_SERVICE, 1, enbaleGuestMode, uid) || guestModeClient(SafeCenterService.ACORE_SERVICE, 1, enbaleGuestMode, uid);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x00a3 A[SYNTHETIC, Splitter:B:20:0x00a3] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00a8 A[Catch:{ Exception -> 0x00ac }] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00b4 A[SYNTHETIC, Splitter:B:28:0x00b4] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00b9 A[Catch:{ Exception -> 0x00bd }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean guestModeClient(java.lang.String r14, int r15, int r16, int r17) {
        /*
        // Method dump skipped, instructions count: 208
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.support.CMDHelper.guestModeClient(java.lang.String, int, int, int):boolean");
    }

    public static synchronized boolean exeCmd(Context context, String cmd) {
        boolean rootCmd;
        String line;
        synchronized (CMDHelper.class) {
            if (cmd.length() == 0) {
                rootCmd = true;
            } else if (!Const.isObtainRoot()) {
                rootCmd = SocketClient(context, cmd);
            } else {
                long curtime = System.currentTimeMillis();
                String fileName = context.getFilesDir() + CookieSpec.PATH_DELIM + curtime + ".sh";
                FileOutputStream fos = null;
                try {
                    fos = context.openFileOutput(curtime + ".sh", 0);
                    fos.write(("export LD_LIBRARY_PATH=/vendor/lib:/system/lib \n" + cmd).getBytes());
                    fos.flush();
                    fos.write("\necho endcmd\n".getBytes());
                    fos.flush();
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e1) {
                    e1.printStackTrace();
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (Throwable th) {
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
                rootCmd = com.lenovo.safecenter.utils.RootPassage.rootCmd("sh " + fileName + " &");
                try {
                    BufferedReader in = new BufferedReader(new InputStreamReader(Const.mInputStream));
                    do {
                        line = in.readLine();
                        if (line == null) {
                            break;
                        }
                    } while (!line.contains("endcmd"));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                new File(fileName).delete();
            }
        }
        return rootCmd;
    }

    public static synchronized boolean SocketClient(Context context, String cmd) {
        boolean success;
        synchronized (CMDHelper.class) {
            success = false;
            long curtime = System.currentTimeMillis();
            String fileName = context.getFilesDir() + CookieSpec.PATH_DELIM + curtime + ".sh";
            FileOutputStream fos = null;
            try {
                fos = context.openFileOutput(curtime + ".sh", 0);
                fos.write(("export LD_LIBRARY_PATH=/vendor/lib:/system/lib \n" + cmd).getBytes());
                fos.flush();
                fos.write("\necho endcmd\n".getBytes());
                fos.flush();
                if (fos != null) {
                    try {
                        fos.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e1) {
                e1.printStackTrace();
                if (fos != null) {
                    try {
                        fos.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                if (fos != null) {
                    try {
                        fos.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
            try {
                Socket client = new Socket("127.0.0.1", (int) EModelID._EMID_QQPIM_Install);
                PrintWriter socketWriter = new PrintWriter(client.getOutputStream(), true);
                BufferedReader socketReader = new BufferedReader(new InputStreamReader(client.getInputStream()));
                socketWriter.write(fileName);
                socketWriter.flush();
                String a = socketReader.readLine();
                if (a != null) {
                    success = a.startsWith("success");
                }
                socketWriter.close();
                socketReader.close();
                client.close();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            try {
                LocalSocketAddress address = new LocalSocketAddress("nac_server");
                LocalSocket localSocket = new LocalSocket();
                localSocket.connect(address);
                PrintWriter socketWriter2 = new PrintWriter(localSocket.getOutputStream(), true);
                BufferedReader socketReader2 = new BufferedReader(new InputStreamReader(localSocket.getInputStream()));
                socketWriter2.write(fileName);
                socketWriter2.flush();
                String a2 = socketReader2.readLine();
                if (a2 != null) {
                    success = a2.startsWith("success");
                }
                socketWriter2.close();
                socketReader2.close();
                localSocket.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            new File(fileName).delete();
        }
        return success;
    }

    public static void unInstall(final Context context, final String pkg, final Handler h) {
        new Thread() {
            /* class com.lenovo.safecenter.support.CMDHelper.AnonymousClass1 */

            public final void run() {
                if (CMDHelper.exeCmd(context, "pm uninstall " + pkg + " \n")) {
                    for (int i = 0; i < 3; i++) {
                        if (!CMDHelper.isAppExistence(context, pkg)) {
                            Message msg = h.obtainMessage(10);
                            msg.arg1 = 1;
                            h.sendMessage(msg);
                            return;
                        }
                        try {
                            sleep(NetConstant.SLEEP_SECONDS_TEN);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    h.sendMessage(h.obtainMessage(5, pkg));
                    return;
                }
                h.sendMessage(h.obtainMessage(5, pkg));
            }
        }.start();
    }

    public static boolean isAppExistence(Context context, String pkgName) {
        try {
            if (isThirdpartApp(context.getPackageManager().getPackageInfo(pkgName, 0).applicationInfo)) {
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isThirdpartApp(ApplicationInfo appInfo) {
        if ((appInfo.flags & 128) == 0 && (appInfo.flags & 1) != 0) {
            return false;
        }
        return true;
    }

    public static void delApp(final Context context, final String pkg, final Handler h) {
        try {
            Log.i("ydp", "rm " + context.getPackageManager().getApplicationInfo(pkg, 0).sourceDir.replaceFirst(CookieSpec.PATH_DELIM, "") + "\n");
            Log.i("ydp", "rm data/dalvik-cache" + context.getPackageManager().getApplicationInfo(pkg, 0).sourceDir.replace(CookieSpec.PATH_DELIM, "@").replaceFirst("@", CookieSpec.PATH_DELIM) + "@classes.dex");
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        new Thread() {
            /* class com.lenovo.safecenter.support.CMDHelper.AnonymousClass2 */

            public final void run() {
                Log.e("ydp", "del -------------1");
                boolean result = true;
                try {
                    String systemDev = CMDHelper.getMountDate(context);
                    Log.e("ydp", "del -------------2");
                    String comm1 = "rm -r data/data/" + pkg;
                    String comm2 = "rm " + context.getPackageManager().getApplicationInfo(pkg, 0).sourceDir.replaceFirst(CookieSpec.PATH_DELIM, "");
                    String path2 = context.getPackageManager().getApplicationInfo(pkg, 0).sourceDir.replaceFirst(CookieSpec.PATH_DELIM, "");
                    String comm3 = "rm data/dalvik-cache" + context.getPackageManager().getApplicationInfo(pkg, 0).sourceDir.replace(CookieSpec.PATH_DELIM, "@").replaceFirst("@", CookieSpec.PATH_DELIM) + "@classes.dex";
                    String path3 = "data/dalvik-cache" + context.getPackageManager().getApplicationInfo(pkg, 0).sourceDir.replace(CookieSpec.PATH_DELIM, "@").replaceFirst("@", CookieSpec.PATH_DELIM) + "@classes.dex";
                    CMDHelper.reMountSystem("mount -o remount,rw " + systemDev + " /system \n", context);
                    Log.e("ydp", "del -------------3");
                    if (!CMDHelper.execDel(comm1, "data/data/" + pkg, context)) {
                        result = false;
                        Log.e("ydp", "del -------------4");
                    }
                    if (!CMDHelper.execDel(comm2, path2, context)) {
                        result = false;
                        Log.e("ydp", "del -------------5");
                    }
                    if (!CMDHelper.execDel(comm3, path3, context)) {
                        result = false;
                        Log.e("ydp", "del -------------6");
                    }
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                try {
                    sleep(c.ap);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Log.e("ydp", "del -------------7");
                if (h != null) {
                    Log.e("ydp", "del -------------8");
                    Message msg = h.obtainMessage(10);
                    if (result) {
                        Log.e("ydp", "del -------------9");
                        msg.arg1 = 1;
                    } else {
                        Log.e("ydp", "del -------------10");
                        msg.arg1 = -1;
                    }
                    h.sendMessage(msg);
                }
                Log.e("ydp", "updateSafeCenter over:" + result);
            }
        }.start();
    }

    public static boolean reMountSystem(String str, Context context) {
        return exeCmd(context, str);
    }

    public static boolean execDel(String str, String path, Context context) {
        FileOutputStream fos = null;
        try {
            fos = context.openFileOutput("copy.sh", 0);
            fos.write(str.getBytes());
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e1) {
            e1.printStackTrace();
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Throwable th) {
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            throw th;
        }
        Log.e("ydp", "dele " + path + "over:" + exeCmd(context, str));
        if (new File(path).exists()) {
            return false;
        }
        return true;
    }

    public static boolean updateCmcc(Context context) {
        if (WhiteAppsList.getCpuInfo(context).equals("intel")) {
            WhiteAppsList.writeFile(context, "c_x86", "c");
        } else {
            WhiteAppsList.writeFile(context, "c", "c");
        }
        String systemDev = getMountDate(context);
        return exeCmd(context, (((((((("mount -o remount,rw " + systemDev + " /system \n") + "mount -o remount,rw /system \n") + "cat /data/data/com.lenovo.safecenter/files/c > /system/bin/cmcc_ps \n") + "chown root.root /system/bin/cmcc_ps \n") + "chmod 6777 /system/bin/cmcc_ps \n") + "sync;sleep 1\n") + "rm /data/data/com.lenovo.safecenter/files/c\n") + "mount -o remount,ro " + systemDev + " /system \n") + "mount -o remount,ro /system \n");
    }

    public static boolean homePageOn(Context context) {
        if (!AppUtil.isAppExistence(context, SafeHomePageBroadcast.BROWSER_PKG)) {
            return true;
        }
        Log.i("homepage", "in homepage");
        String mySPName = "com.android.browser_preferences" + System.currentTimeMillis();
        if (!exeCmd(context, ("" + "cat data/data/com.android.browser/shared_prefs/com.android.browser_preferences.xml > data/data/com.lenovo.safecenter/shared_prefs/" + mySPName + ".xml \n") + "chmod 777 data/data/com.lenovo.safecenter/shared_prefs/" + mySPName + ".xml \n")) {
            return true;
        }
        String homepage = context.getSharedPreferences(mySPName, 1).getString("homepage", "null--");
        new File("data/data/com.lenovo.safecenter/shared_prefs/" + mySPName + FileUtils.XML).delete();
        if (homepage.contains("idea123") || homepage.contains("hao.lenovo.com")) {
            Log.i("homepage", "old homepage is " + homepage + " return !");
            return true;
        }
        Log.i("homepage", "now homepage is " + homepage);
        return false;
    }

    public static void editHomePage(Context context, boolean state) {
        boolean on = homePageOn(context);
        String mySPName = "com.android.browser_preferences" + System.currentTimeMillis();
        exeCmd(context, ("" + "cat data/data/com.android.browser/shared_prefs/com.android.browser_preferences.xml > data/data/com.lenovo.safecenter/shared_prefs/" + mySPName + ".xml \n") + "chmod 777 data/data/com.lenovo.safecenter/shared_prefs/" + mySPName + ".xml \n");
        SharedPreferences sp = context.getSharedPreferences(mySPName, 1);
        if (!state) {
            Log.i("homepage", "close safeHomePage ! old homepage :" + Const.mDefaultPreference.getString("old_home_page", "about:blank"));
            sp.edit().putString("homepage", Const.mDefaultPreference.getString("old_home_page", "about:blank")).commit();
            exeCmd(context, ((("cat data/data/com.lenovo.safecenter/shared_prefs/" + mySPName + ".xml >  data/data/com.android.browser/shared_prefs/com.android.browser_preferences.xml \n") + "chmod 777 data/data/com.android.browser/shared_prefs/com.android.browser_preferences.xml \n") + "am force-stop com.android.browser \n") + "rm data/data/com.lenovo.safecenter/shared_prefs/" + mySPName + ".xml \n");
        } else if (on) {
            Log.i("homepage", "editHomePage no edit! ");
        } else {
            String homepage = sp.getString("homepage", "about:blank");
            Const.mDefaultPreference.edit().putString("old_home_page", homepage).commit();
            Log.i("homepage", "editHomePage save ole homepage :" + homepage);
            sp.edit().putString("homepage", SafeHomePage.SAFE_HOME_PAGE).commit();
            exeCmd(context, ((("cat data/data/com.lenovo.safecenter/shared_prefs/" + mySPName + ".xml >  data/data/com.android.browser/shared_prefs/com.android.browser_preferences.xml \n") + "chmod 777 data/data/com.android.browser/shared_prefs/com.android.browser_preferences.xml \n") + "am force-stop com.android.browser \n") + "rm data/data/com.lenovo.safecenter/shared_prefs/" + mySPName + ".xml \n");
        }
    }
}
