.class public Ltms/ed;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;)V
    .locals 0

    iput-object p1, p0, Ltms/ed;->a:Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "chmod 666 /sys/devices/system/cpu/kernel_max"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "chmod 666 /sys/devices/system/cpu/online"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/*"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/stats/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/stats/*"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
