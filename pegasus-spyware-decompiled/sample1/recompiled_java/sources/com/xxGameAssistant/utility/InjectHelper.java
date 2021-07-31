package com.xxGameAssistant.utility;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.PrintWriter;

@SuppressLint({"SdCardPath"})
public class InjectHelper {
    private static String mGameMode = "DEFAULT";
    static final String targetFuncName = "kick";

    public static void setGameMode(String gameMode) {
        mGameMode = gameMode;
    }

    public static void executeCmd(Context context, String packageName) {
        try {
            String baseExeDir = NativeFileInstaller.getCacheDir(context);
            String baseSODir = NativeFileInstaller.getSODir(context);
            Process rootProcess = Runtime.getRuntime().exec("su");
            PrintWriter printWriter = new PrintWriter(rootProcess.getOutputStream());
            StringBuilder strBuilder = new StringBuilder();
            strBuilder.append(String.valueOf(baseExeDir) + "/inject");
            strBuilder.append(" " + packageName);
            strBuilder.append(" " + (String.valueOf(baseSODir) + "/libghost.so"));
            strBuilder.append(" kick");
            strBuilder.append(" " + mGameMode);
            printWriter.print(strBuilder.toString());
            printWriter.flush();
            printWriter.close();
            rootProcess.waitFor();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
