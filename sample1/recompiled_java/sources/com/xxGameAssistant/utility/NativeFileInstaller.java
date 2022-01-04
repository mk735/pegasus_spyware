package com.xxGameAssistant.utility;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;

public class NativeFileInstaller {
    static final String TAG = "NativeFileInstaller";
    static String cacheDir = "pao/";
    static String[] filenamesExe = {"inject"};
    static String[] filenamesSO = {"libghost.so", "libhook.so"};
    static File installDirCache = null;
    static String[] libFile = {"/data/data/com.xxGameAssistant.pao/lib/libsubstrate.so"};
    static String soFileDir = "/data/local/tmp/pao/";

    public static boolean test() {
        Log.d(TAG, "########  NativeFileInstaller test start!!!!\n");
        int j = libFile.length;
        for (int i = 0; i < j; i++) {
            File file = new File(libFile[i]);
            if (!file.exists()) {
                Log.d(TAG, String.valueOf(file.getAbsolutePath()) + " install failed!\n");
                return false;
            }
            Log.d(TAG, String.valueOf(file.getAbsolutePath()) + " install succeed!\n");
        }
        int j2 = filenamesExe.length;
        for (int i2 = 0; i2 < j2; i2++) {
            File file2 = new File(installDirCache.getAbsoluteFile(), filenamesExe[i2]);
            if (!file2.exists()) {
                Log.d(TAG, String.valueOf(file2.getAbsolutePath()) + " install failed!\n");
                return false;
            }
            Log.d(TAG, String.valueOf(file2.getAbsolutePath()) + " install succeed!\n");
        }
        int j3 = filenamesSO.length;
        for (int i3 = 0; i3 < j3; i3++) {
            File file3 = new File(installDirCache.getAbsoluteFile(), filenamesSO[i3]);
            if (!file3.exists()) {
                Log.d(TAG, String.valueOf(file3.getAbsolutePath()) + " install failed!\n");
                return false;
            }
            Log.d(TAG, String.valueOf(file3.getAbsolutePath()) + " install succeed!\n");
        }
        int j4 = filenamesSO.length;
        for (int i4 = 0; i4 < j4; i4++) {
            File file4 = new File(soFileDir, filenamesSO[i4]);
            if (!file4.exists()) {
                Log.d(TAG, String.valueOf(file4.getAbsolutePath()) + " install failed!\n");
                return false;
            }
            Log.d(TAG, String.valueOf(file4.getAbsolutePath()) + " install succeed!\n");
        }
        return new File(libFile[0]).exists();
    }

    static File ensureEmptyDir(File dir, Context context) {
        Log.d(TAG, dir.getAbsolutePath());
        if (dir.exists()) {
            dir.delete();
        }
        dir.mkdirs();
        dir.setReadable(true);
        dir.setWritable(true);
        dir.setExecutable(true);
        return dir;
    }

    static Boolean extractAssetsFile(File dir, String filename, Context context) {
        byte[] buffer = new byte[4096];
        File file = new File(dir.getAbsolutePath(), filename);
        if (file.exists()) {
            file.delete();
        }
        try {
            InputStream inStream = context.getResources().getAssets().open(filename);
            FileOutputStream outStream = new FileOutputStream(file);
            while (true) {
                int chunkSize = inStream.read(buffer);
                if (chunkSize == -1) {
                    outStream.flush();
                    outStream.close();
                    file.setReadable(true);
                    file.setWritable(true);
                    file.setExecutable(true);
                    return true;
                }
                outStream.write(buffer, 0, chunkSize);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void install(Context context) {
        Log.d(TAG, "### install begin!");
        installDirCache = ensureEmptyDir(getCacheDirFile(context), context);
        Log.d(TAG, "##### exe -> " + installDirCache.getPath());
        for (int i = 0; i < filenamesExe.length; i++) {
            if (!extractAssetsFile(installDirCache, filenamesExe[i], context).booleanValue()) {
                Log.e(TAG, "Orz exe: " + filenamesExe[i]);
            }
        }
        for (int i2 = 0; i2 < filenamesSO.length; i2++) {
            if (!extractAssetsFile(installDirCache, filenamesSO[i2], context).booleanValue()) {
                Log.e(TAG, "Orz so: " + filenamesSO[i2]);
            }
        }
        installGhostAndHook(context);
        xx_do_link();
        Log.d(TAG, "### install end!");
    }

    static void xx_do_link() {
        try {
            Process rootProcess = Runtime.getRuntime().exec("su");
            PrintWriter printWriter = new PrintWriter(rootProcess.getOutputStream());
            StringBuilder strBuilder = new StringBuilder();
            strBuilder.append("mount -o remount,rw /system\n");
            String str = "rm " + "/system/lib/libsubstrate.so" + "\n";
            strBuilder.append("ln -s " + libFile[0] + " " + "/system/lib/libsubstrate.so" + "\n");
            strBuilder.append("chmod 777 " + "/system/lib/libsubstrate.so" + "\n");
            strBuilder.append("mount -o remount,ro /system\n");
            printWriter.print(strBuilder.toString());
            printWriter.flush();
            printWriter.close();
            rootProcess.waitFor();
        } catch (Exception e) {
        }
    }

    static void installGhostAndHook(Context context) {
        try {
            Log.d(TAG, "#############\t\tinstallGhostAndHook start");
            Process rootProcess = Runtime.getRuntime().exec("su");
            PrintWriter printWriter = new PrintWriter(rootProcess.getOutputStream());
            StringBuilder strBuilder = new StringBuilder();
            String baseCacheDir = getCacheDir(context);
            String baseSODir = getSODir(context);
            strBuilder.append("rm -r " + baseSODir + "\n");
            strBuilder.append("mkdir -p " + baseSODir + "\n");
            strBuilder.append("chmod 777 " + baseSODir + "\n");
            for (int i = 0; i < filenamesSO.length; i++) {
                String destFilePath = String.valueOf(baseSODir) + filenamesSO[i];
                strBuilder.append("dd if=" + (String.valueOf(baseCacheDir) + "/" + filenamesSO[i]) + " " + "of=" + destFilePath + "\n");
                strBuilder.append("chmod 777 " + destFilePath + "\n");
            }
            String cmd = strBuilder.toString();
            printWriter.print(cmd);
            Log.d(TAG, "installGhostAndHook run cmd: " + cmd);
            printWriter.flush();
            printWriter.close();
            rootProcess.waitFor();
            Log.d(TAG, "#############\t\tinstallGhostAndHook end");
        } catch (Exception e) {
        }
    }

    public static String getSODir(Context context) {
        return soFileDir;
    }

    public static File getCacheDirFile(Context context) {
        return new File(context.getCacheDir(), cacheDir);
    }

    public static String getCacheDir(Context context) {
        return getCacheDirFile(context).getAbsolutePath();
    }

    public static boolean isRoot() {
        if (new File("/system/bin/su").exists() || new File("/system/xbin/su").exists()) {
            Log.d("Bash.isRoot", "Bash: this is a root device");
            return true;
        }
        Log.d("Bash.isRoot", "Bash: this isn't a root device");
        return false;
    }
}
