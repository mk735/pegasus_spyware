package com.lenovo.performancecenter;

public class LeemCenterJNITools {
    public static native int canSetGsensor_native();

    public static native int canSetWakelock_native();

    public static native void getHwTimeRealse_native(int i);

    public static native int getHwTime_native(int i);

    public static native int getLcdFreq_native();

    public static native int getLightness_native();

    public static native int getPidCpuTime_native(int[] iArr, long[] jArr);

    public static native int getPidCpuload_native(int[] iArr, float[] fArr, int i);

    public static native int getTime_native(int i, int i2);

    public static native long getTotalCpuTime_native();

    public static native float getTotalCpuload_native();

    public static native int setBackLightness_native(int i);

    public static native int setLcdFreq_native(int i);

    public static native void startWakeLockListen_native();

    public static native void stopWakeLockListen_native();

    public static native void wakelog_native();

    static {
        System.loadLibrary("leemjni");
    }
}
