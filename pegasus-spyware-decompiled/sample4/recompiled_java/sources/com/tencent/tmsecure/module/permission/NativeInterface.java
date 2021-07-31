package com.tencent.tmsecure.module.permission;

public final class NativeInterface {
    static {
        System.loadLibrary("native-1.0.0");
    }

    public static native int dlopenAddr();

    public static native int dlsymAddr();

    public static native void test(String str);
}
