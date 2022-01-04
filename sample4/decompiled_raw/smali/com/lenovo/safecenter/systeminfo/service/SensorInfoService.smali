.class public Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;
.super Ljava/lang/Object;
.source "SensorInfoService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;


# instance fields
.field private c:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;

    if-nez v0, :cond_0

    .line 36
    const-class v1, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;

    monitor-enter v1

    .line 38
    :try_start_0
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public sensorInfo()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 72
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 73
    .local v2, "pm":Landroid/os/PowerManager;
    const v3, 0x2000000a

    sget-object v4, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 76
    .local v1, "lock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v0, "buffer":Ljava/lang/StringBuffer;
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v4, 0x7f0d06af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->suppert(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\u652f\u6301"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v4, 0x7f0d06b0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->suppert(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "\u652f\u6301"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v4, 0x7f0d06b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->suppert(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\u652f\u6301"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v4, 0x7f0d06b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->suppert(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "\u652f\u6301"

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v4, 0x7f0d06b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->suppert(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "\u652f\u6301"

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v4, 0x7f0d06b4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->suppert(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "\u652f\u6301"

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v4, 0x7f0d06b5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->suppert(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "\u652f\u6301"

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 79
    :cond_0
    const-string v3, "\u4e0d\u652f\u6301"

    goto/16 :goto_0

    .line 80
    :cond_1
    const-string v3, "\u4e0d\u652f\u6301"

    goto/16 :goto_1

    .line 81
    :cond_2
    const-string v3, "\u4e0d\u652f\u6301"

    goto/16 :goto_2

    .line 82
    :cond_3
    const-string v3, "\u4e0d\u652f\u6301"

    goto :goto_3

    .line 83
    :cond_4
    const-string v3, "\u4e0d\u652f\u6301"

    goto :goto_4

    .line 84
    :cond_5
    const-string v3, "\u4e0d\u652f\u6301"

    goto :goto_5

    .line 85
    :cond_6
    const-string v3, "\u4e0d\u652f\u6301"

    goto :goto_6
.end method

.method public suppert(I)Z
    .locals 3
    .param p1, "sensorType"    # I

    .prologue
    .line 52
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->c:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->c:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public suppert(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sensorType"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 63
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 64
    .local v1, "support":Z
    return v1
.end method
