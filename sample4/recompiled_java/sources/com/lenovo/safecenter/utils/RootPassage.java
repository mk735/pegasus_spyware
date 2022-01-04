package com.lenovo.safecenter.utils;

import android.util.Log;
import java.io.DataOutputStream;

public class RootPassage {
    public static final String CMD_CC = " -cc ";
    public static final String CMD_FS = " -fs ";
    public static DataOutputStream mOutputStream;
    public static Process mProcess;

    public static boolean rootCmd(String cmd) {
        try {
            DataOutputStream os = Const.mOutputStream;
            if (os == null) {
                Log.i("RootPassage", "rootCmd()...os=null---->cmd=" + cmd);
                return false;
            }
            os.writeBytes(cmd + "\n");
            os.flush();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean appPross(String paramString, String flag) {
        return rootCmd(String.format("%s/%s %s %s %s\n", "/system/bin", "app_process", "/system/bin", "com.lenovo.safecenter.LFS", flag + paramString));
    }
}
