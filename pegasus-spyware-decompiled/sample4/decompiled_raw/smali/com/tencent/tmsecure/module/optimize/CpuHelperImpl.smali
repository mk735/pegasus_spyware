.class public Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/optimize/ICpuHelper;


# static fields
.field private static final a:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/"

.field private static final b:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/stats/"

.field private static final c:Ljava/lang/String; = "cpuinfo_max_freq"

.field private static final d:Ljava/lang/String; = "cpuinfo_min_freq"

.field private static final e:Ljava/lang/String; = "scaling_available_governors"

.field private static final f:Ljava/lang/String; = "scaling_governor"

.field private static final g:Ljava/lang/String; = "scaling_max_freq"

.field private static final h:Ljava/lang/String; = "scaling_min_freq"

.field private static final i:Ljava/lang/String; = "scaling_cur_freq"

.field private static final j:Ljava/lang/String; = "scaling_available_frequencies"

.field private static final k:Ljava/lang/String; = "scaling_setspeed"

.field private static final l:Ljava/lang/String; = "time_in_state"

.field private static final m:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final n:Ljava/lang/String; = "kernel_max"

.field private static final o:Ljava/lang/String; = "online"

.field private static final p:Ljava/lang/String; = "present"

.field private static final q:Ljava/lang/String; = "possible"


# instance fields
.field private r:I

.field private s:[Ljava/lang/String;

.field private t:[I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->r:I

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ltms/ed;

    invoke-direct {v0, p0}, Ltms/ed;-><init>(Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;)V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot(Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/PriorityQueue;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return-object v0

    :cond_1
    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    array-length v1, v6

    if-ne v1, v8, :cond_4

    aget-object v1, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    array-length v1, v6

    const/4 v7, 0x2

    if-ne v1, v7, :cond_2

    aget-object v1, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_2
    if-gt v1, v6, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private a(I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingAvaliableFrequencies()[I

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a()[I
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getCpuInfoMinFreq()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getCpuInfoMaxFreq()I

    move-result v7

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingCurFreq()I

    move-result v0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, v6, :cond_2

    if-eq v0, v7, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingGovernor()Ljava/lang/String;

    move-result-object v9

    const-string v0, "userspace"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingAvaliableGovernors()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "userspace"

    invoke-direct {p0, v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "userspace"

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->setScalingGovernor(Ljava/lang/String;)V

    :cond_3
    const-string v0, "userspace"

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingGovernor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    move v4, v1

    move v5, v0

    move v0, v2

    :goto_1
    add-int/lit8 v3, v0, 0x1

    const/4 v10, 0x3

    if-ge v0, v10, :cond_7

    invoke-virtual {p0, v5, v2}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->setScalingFreq(IZ)V

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingCurFreq()I

    move-result v5

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    add-int v0, v7, v5

    div-int/lit8 v0, v0, 0x2

    move v4, v2

    move v5, v0

    move v0, v3

    goto :goto_1

    :cond_6
    add-int v0, v6, v5

    div-int/lit8 v0, v0, 0x2

    move v4, v1

    move v5, v0

    move v0, v3

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v9}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->setScalingGovernor(Ljava/lang/String;)V

    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    :goto_3
    if-ge v2, v3, :cond_9

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_2
.end method

.method private static b()I
    .locals 4

    const-string v0, "/sys/devices/system/cpu/present"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a(Ljava/lang/String;)Ljava/util/PriorityQueue;

    move-result-object v2

    const-string v0, "/sys/devices/system/cpu/possible"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a(Ljava/lang/String;)Ljava/util/PriorityQueue;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingAvaliableGovernors()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getAvailableCpus()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->r:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->b()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->r:I

    :cond_0
    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->r:I

    return v0
.end method

.method public getCpuInfoMaxFreq()I
    .locals 2

    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->u:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltms/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->u:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->u:I

    return v0

    :cond_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->u:I

    goto :goto_0
.end method

.method public getCpuInfoMinFreq()I
    .locals 2

    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->v:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltms/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->v:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->v:I

    return v0

    :cond_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->v:I

    goto :goto_0
.end method

.method public getKernelMax()I
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    invoke-interface {v0}, Ltms/l;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->w:I

    if-nez v0, :cond_1

    const-string v0, "/sys/devices/system/cpu/kernel_max"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->w:I

    :cond_1
    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->w:I

    goto :goto_0
.end method

.method public getOnlineCpus()[Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ltms/l;->c(I)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "/sys/devices/system/cpu/online"

    invoke-static {v1}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move-object v2, v1

    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v3, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move-object v2, v1

    goto :goto_1

    :cond_3
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public declared-synchronized getScalingAvaliableFrequencies()[I
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->t:[I

    if-nez v1, :cond_3

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ltms/l;->c(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->t:[I

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->t:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v1}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->t:[I

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->t:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-static {v1}, Ltms/v;->j(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->t:[I

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->t:[I

    aget-object v3, v1, v0

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->t:[I

    :cond_3
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->t:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScalingAvaliableGovernors()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->s:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltms/l;->c(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->s:[Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->s:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->s:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScalingCurFreq()I
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ltms/l;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getScalingGovernor()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    invoke-interface {v0}, Ltms/l;->e()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScalingMaxFreq()I
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ltms/l;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getScalingMinFreq()I
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ltms/l;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setScalingFreq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->setScalingFreq(IZ)V

    return-void
.end method

.method public setScalingFreq(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Ltms/l;->a(IIZ)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the freq is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingMinFreq()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingMaxFreq()I

    move-result v0

    if-le p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the freq should not be smaller than the min freq and not be larger than the max freq!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scaling_setspeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setScalingGovernor(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    invoke-interface {v0, p1}, Ltms/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->s:[Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingAvaliableGovernors()[Ljava/lang/String;

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the governor is unavailable!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scaling_governor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setScalingMaxFreq(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1, v2}, Ltms/l;->a(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the max freq is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingMinFreq()I

    move-result v0

    if-ge p1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the max freq can not be smaller than the min freq!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scaling_max_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScalingMinFreq(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, v2}, Ltms/l;->a(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the min freq is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingMaxFreq()I

    move-result v0

    if-le p1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the min freq can not be larger than the max freq!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scaling_min_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    goto :goto_0
.end method
