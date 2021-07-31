package com.lenovo.safecenter.notificationintercept;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.utils.httpApi.HttpApiAsyncTask;
import com.lenovo.safecenter.utils.httpApi.LeSafeAPI;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipFile;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class UrlOptionUtils {
    public static final String BLCAK_FILE = "black_file";
    public static final String IS_FIRST_INIT = "ad_is_first_init";
    public static final String NATIVE_FILE = "hosts_native";
    public static final String WHITE_FILE = "white_file";

    public static void replaceURL(final Context context, final Handler handler) {
        LeSafeAPI.getBlackUrlSyncFlag(context, new HttpApiAsyncTask.ApiRequestListener() {
            /* class com.lenovo.safecenter.notificationintercept.UrlOptionUtils.AnonymousClass1 */

            @Override // com.lenovo.safecenter.utils.httpApi.HttpApiAsyncTask.ApiRequestListener
            public final void onSuccess(int method, Object obj) {
                UrlOptionUtils.handlerMessage(context, handler);
            }

            @Override // com.lenovo.safecenter.utils.httpApi.HttpApiAsyncTask.ApiRequestListener
            public final void onError(int method, int statusCode) {
                UrlOptionUtils.handlerMessage(context, handler);
            }
        });
    }

    public static void handlerMessage(final Context context, final Handler handler) {
        new Thread() {
            /* class com.lenovo.safecenter.notificationintercept.UrlOptionUtils.AnonymousClass2 */

            public final void run() {
                boolean execute = UrlOptionUtils.updateHostsUrl(context);
                if (handler != null) {
                    Message message = new Message();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("replace", execute);
                    message.setData(bundle);
                    message.what = 0;
                    handler.sendMessage(message);
                }
            }
        }.start();
    }

    public static void resumeURL(final Context context, final Handler handler) {
        new Thread() {
            /* class com.lenovo.safecenter.notificationintercept.UrlOptionUtils.AnonymousClass3 */

            public final void run() {
                boolean execute = UrlOptionUtils.resumeURLOpti(context);
                if (handler != null) {
                    Message message = new Message();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("replace", execute);
                    message.setData(bundle);
                    message.what = 0;
                    handler.sendMessage(message);
                }
            }
        }.start();
    }

    public static boolean resumeURLOpti(Context context) {
        String filePath = context.getFilesDir().getAbsolutePath();
        try {
            File backFile = new File(filePath + "/back");
            if (!backFile.exists()) {
                backFile.createNewFile();
                FileWriter writer = new FileWriter(backFile);
                writer.write("127.0.0.1 localhost\n::1 localhost\n");
                writer.flush();
                writer.close();
            }
            FileWriter shWriter = new FileWriter(new File(filePath + "/back.sh"));
            StringBuffer buffer = new StringBuffer();
            buffer.append("mount -o remount,rw " + CMDHelper.getMountDate(context) + " /system \n").append("chmod 666 " + filePath + "/back" + "\n").append("cat " + filePath + "/back" + " >" + " /etc/hosts" + "\n");
            shWriter.write(buffer.toString());
            shWriter.close();
            return CMDHelper.exeCmd(context, buffer.toString());
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean updateHostsUrl(Context context) {
        String filePath = context.getFilesDir().getAbsolutePath();
        try {
            HashSet<String> allUrls = getAssetsUrl(context);
            HashSet<String> blackNative = getBlackNative(context);
            allUrls.removeAll(getWhiteNative(context));
            allUrls.addAll(blackNative);
            File killer = new File(filePath + "/killer");
            if (!killer.exists()) {
                killer.createNewFile();
            }
            FileWriter writer = new FileWriter(killer);
            writer.write("127.0.0.1 localhost\n::1 localhost\n\n");
            writer.flush();
            Iterator i$ = allUrls.iterator();
            while (i$.hasNext()) {
                String string = i$.next();
                if (!string.startsWith("#")) {
                    writer.write("127.0.0.1 " + string + "\n");
                } else {
                    writer.write(string + "\n");
                }
            }
            writer.flush();
            writer.close();
            FileWriter shWriter = new FileWriter(new File(filePath + "/intercept.sh"));
            StringBuffer buffer = new StringBuffer();
            buffer.append("mount -o remount,rw " + CMDHelper.getMountDate(context) + " /system \n").append("chmod 666 " + filePath + "/killer" + "\n").append("cat " + filePath + "/killer" + " >" + " /etc/hosts" + "\n");
            shWriter.write(buffer.toString());
            shWriter.close();
            boolean execute = CMDHelper.exeCmd(context, buffer.toString());
            killer.delete();
            return execute;
        } catch (Exception e) {
            return false;
        }
    }

    public static void updateNativeUrl(List<String> whiteList, List<String> blackList, Context context) {
        String path;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            path = Environment.getExternalStorageDirectory().getAbsolutePath() + CookieSpec.PATH_DELIM + NATIVE_FILE;
        } else {
            path = context.getFilesDir().getAbsolutePath() + CookieSpec.PATH_DELIM + NATIVE_FILE;
        }
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
            a(path, whiteList, blackList);
            return;
        }
        HashSet<String> blackNative = getBlackNative(context);
        blackNative.removeAll(whiteList);
        blackNative.addAll(blackList);
        if (blackNative.size() != 0) {
            File blackFile = new File(path + CookieSpec.PATH_DELIM + BLCAK_FILE);
            StringBuilder blackBuiler = new StringBuilder();
            Iterator i$ = blackNative.iterator();
            while (i$.hasNext()) {
                blackBuiler.append(i$.next() + "\n");
            }
            try {
                FileWriter writer = new FileWriter(blackFile);
                writer.write(blackBuiler.toString());
                writer.flush();
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        HashSet<String> whiteNative = getWhiteNative(context);
        whiteNative.removeAll(blackList);
        whiteNative.addAll(whiteNative);
        if (whiteNative.size() != 0) {
            File whiteFile = new File(path + CookieSpec.PATH_DELIM + WHITE_FILE);
            StringBuilder whiteBuilder = new StringBuilder();
            Iterator i$2 = whiteNative.iterator();
            while (i$2.hasNext()) {
                whiteBuilder.append(i$2.next() + "\n");
            }
            try {
                FileWriter writer2 = new FileWriter(whiteFile);
                writer2.write(whiteBuilder.toString());
                writer2.flush();
                writer2.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void a(String path, List<String> whiteList, List<String> blackList) {
        if (blackList.size() != 0) {
            File blackFile = new File(path + CookieSpec.PATH_DELIM + BLCAK_FILE);
            StringBuilder blackBuiler = new StringBuilder();
            Iterator i$ = blackList.iterator();
            while (i$.hasNext()) {
                blackBuiler.append(i$.next() + "\n");
            }
            try {
                FileWriter writer = new FileWriter(blackFile);
                writer.write(blackBuiler.toString());
                writer.flush();
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (whiteList.size() != 0) {
            File whiteFile = new File(path + CookieSpec.PATH_DELIM + WHITE_FILE);
            StringBuilder whiteBuilder = new StringBuilder();
            Iterator i$2 = whiteList.iterator();
            while (i$2.hasNext()) {
                whiteBuilder.append(i$2.next() + "\n");
            }
            try {
                FileWriter writer2 = new FileWriter(whiteFile);
                writer2.write(whiteBuilder.toString());
                writer2.flush();
                writer2.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static HashSet<String> getBlackNative(Context context) {
        File fileEx = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + CookieSpec.PATH_DELIM + NATIVE_FILE + CookieSpec.PATH_DELIM + BLCAK_FILE);
        File fileDa = new File(context.getFilesDir().getAbsolutePath() + CookieSpec.PATH_DELIM + NATIVE_FILE + CookieSpec.PATH_DELIM + BLCAK_FILE);
        HashSet<String> blackList = new HashSet<>();
        if (fileEx.exists()) {
            try {
                BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileEx)));
                while (true) {
                    String line = reader.readLine();
                    if (line == null) {
                        break;
                    }
                    blackList.add(line);
                }
                reader.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (fileDa.exists()) {
            try {
                BufferedReader reader2 = new BufferedReader(new InputStreamReader(new FileInputStream(fileDa)));
                while (true) {
                    String line2 = reader2.readLine();
                    if (line2 == null) {
                        break;
                    }
                    blackList.add(line2);
                }
                reader2.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return blackList;
    }

    public static HashSet<String> getWhiteNative(Context context) {
        File fileEx = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + CookieSpec.PATH_DELIM + NATIVE_FILE + CookieSpec.PATH_DELIM + WHITE_FILE);
        File fileDa = new File(context.getFilesDir().getAbsolutePath() + CookieSpec.PATH_DELIM + NATIVE_FILE + CookieSpec.PATH_DELIM + WHITE_FILE);
        HashSet<String> whiteList = new HashSet<>();
        if (fileEx.exists()) {
            try {
                BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileEx)));
                while (true) {
                    String line = reader.readLine();
                    if (line == null) {
                        break;
                    }
                    whiteList.add(line);
                }
                reader.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (fileDa.exists()) {
            try {
                BufferedReader reader2 = new BufferedReader(new InputStreamReader(new FileInputStream(fileDa)));
                while (true) {
                    String line2 = reader2.readLine();
                    if (line2 == null) {
                        break;
                    }
                    whiteList.add(line2);
                }
                reader2.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return whiteList;
    }

    public static HashSet<String> getAssetsUrl(Context context) throws IOException {
        InputStream is = context.getAssets().open("hosts_tmp.zip");
        File tmp_file = new File(context.getFilesDir().getAbsolutePath() + "/hosts_tmp.zip");
        FileOutputStream os = new FileOutputStream(tmp_file);
        byte[] buffer = new byte[is.available()];
        while (is.read(buffer) != -1) {
            os.write(buffer);
            os.flush();
        }
        os.close();
        is.close();
        ZipFile zipFile = new ZipFile(tmp_file);
        InputStream open = new BufferedInputStream(zipFile.getInputStream(zipFile.getEntry("hosts_tmp")));
        BufferedReader reader = new BufferedReader(new InputStreamReader(open));
        HashSet<String> initList = new HashSet<>();
        while (true) {
            String line = reader.readLine();
            if (line != null) {
                initList.add(line);
            } else {
                open.close();
                reader.close();
                tmp_file.delete();
                return initList;
            }
        }
    }

    public static boolean isAdOpen(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(InterceptUtils.AD_SWITCH, true);
    }

    public static boolean adSwitch(Context context, boolean open) {
        boolean execute;
        if (open) {
            execute = updateHostsUrl(context);
        } else {
            execute = resumeURLOpti(context);
        }
        if (execute) {
            writeSwitch(context, open);
        }
        return execute;
    }

    public static void writeSwitch(Context context, boolean mSwitch) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putBoolean(InterceptUtils.AD_SWITCH, mSwitch);
        edit.commit();
    }

    public static boolean isAppFirstInit(Context context) {
        SharedPreferences dfPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        boolean boolean1 = dfPrefs.getBoolean(IS_FIRST_INIT, true);
        if (boolean1) {
            SharedPreferences.Editor edit = dfPrefs.edit();
            edit.putBoolean(IS_FIRST_INIT, false);
            edit.commit();
        }
        return boolean1;
    }
}
