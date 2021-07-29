.class public Lcom/lenovo/performancecenter/LeemCenterJNITools;
.super Ljava/lang/Object;
.source "LeemCenterJNITools.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "leemjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static native canSetGsensor_native()I
.end method

.method public static native canSetWakelock_native()I
.end method

.method public static native getHwTimeRealse_native(I)V
.end method

.method public static native getHwTime_native(I)I
.end method

.method public static native getLcdFreq_native()I
.end method

.method public static native getLightness_native()I
.end method

.method public static native getPidCpuTime_native([I[J)I
.end method

.method public static native getPidCpuload_native([I[FI)I
.end method

.method public static native getTime_native(II)I
.end method

.method public static native getTotalCpuTime_native()J
.end method

.method public static native getTotalCpuload_native()F
.end method

.method public static native setBackLightness_native(I)I
.end method

.method public static native setLcdFreq_native(I)I
.end method

.method public static native startWakeLockListen_native()V
.end method

.method public static native stopWakeLockListen_native()V
.end method

.method public static native wakelog_native()V
.end method
