package com.xxGameAssistant.utility;

import android.app.Activity;
import android.content.Context;
import android.os.Environment;
import android.os.Process;
import com.xxGameAssistant.pao.MTApplication;

public class JNIHelper {
    Context mContext;

    public static native void nativeSetExternalAssetPath(String str);

    public static native void nativeSetPackageName(String str);

    public JNIHelper(Context context) {
        this.mContext = context;
    }

    public void nativeInit() {
        nativeSetPackageName(((MTApplication) ((Activity) this.mContext).getApplication()).getMTPackageName());
        nativeSetExternalAssetPath(getAbsolutePathOnExternalStorage(""));
    }

    public String getAbsolutePathOnExternalStorage(String relevantPath) {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static void terminateProcess() {
        Process.killProcess(Process.myPid());
    }
}
