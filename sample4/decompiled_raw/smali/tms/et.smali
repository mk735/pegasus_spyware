.class final Ltms/et;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/reflect/Method;

.field private d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Ltms/et;->d:Landroid/content/Context;

    const-string v0, "com.android.internal.os.PowerProfile"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ltms/et;->a:Ljava/lang/Class;

    iget-object v0, p0, Ltms/et;->a:Ljava/lang/Class;

    const-string v1, "getAveragePower"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v0, p0, Ltms/et;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ltms/et;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()D
    .locals 12

    const-wide/16 v2, 0x0

    :try_start_0
    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v4, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.android.internal.os.PowerProfile"

    const-string v8, "POWER_WIFI_ACTIVE"

    invoke-static {v7, v8}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v6

    add-double v1, v2, v4

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_BLUETOOTH_ACTIVE"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v3

    add-double v0, v1, v3

    :goto_1
    return-wide v0

    :catch_0
    move-exception v0

    move-object v9, v0

    move-wide v0, v2

    move-object v2, v9

    :goto_2
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v9, v0

    move-wide v0, v2

    move-object v2, v9

    :goto_3
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v9, v0

    move-wide v0, v2

    move-object v2, v9

    :goto_4
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v9, v0

    move-wide v0, v2

    move-object v2, v9

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v9, v0

    move-wide v10, v1

    move-wide v0, v10

    move-object v2, v9

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v9, v0

    move-wide v10, v1

    move-wide v0, v10

    move-object v2, v9

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v9, v0

    move-wide v10, v1

    move-wide v0, v10

    move-object v2, v9

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v9, v0

    move-wide v10, v1

    move-wide v0, v10

    move-object v2, v9

    goto :goto_2

    :cond_0
    move-wide v0, v1

    goto :goto_1

    :cond_1
    move-wide v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final getCallRemainHours()D
    .locals 8

    :try_start_0
    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.android.internal.os.PowerProfile"

    const-string v5, "POWER_NONE"

    invoke-static {v4, v5}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_RADIO_ACTIVE"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_CPU_ACTIVE"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double v0, v1, v3

    invoke-direct {p0}, Ltms/et;->a()D

    move-result-wide v2

    add-double v1, v0, v2

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_BATTERY_CAPACITY"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v3

    div-double v0, v3, v1

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final getContinueRemainHours()D
    .locals 8

    :try_start_0
    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.android.internal.os.PowerProfile"

    const-string v5, "POWER_NONE"

    invoke-static {v4, v5}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_CPU_ACTIVE"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_SCREEN_FULL"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v0, p0, Ltms/et;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ltms/n;->b(Landroid/content/ContentResolver;)I

    move-result v0

    int-to-double v5, v0

    mul-double/2addr v3, v5

    add-double v0, v1, v3

    invoke-direct {p0}, Ltms/et;->a()D

    move-result-wide v2

    add-double v1, v0, v2

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_BATTERY_CAPACITY"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v3

    div-double v0, v3, v1

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final getMaxPowerUseHours()D
    .locals 11

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_NONE"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_CPU_ACTIVE"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_SCREEN_FULL"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v0, p0, Ltms/et;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ltms/n;->b(Landroid/content/ContentResolver;)I

    move-result v0

    int-to-double v5, v0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_WIFI_ACTIVE"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_BLUETOOTH_ACTIVE"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_GPS_ON"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_BATTERY_CAPACITY"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v3

    div-double v0, v3, v1

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-wide v9, v1

    move-wide v0, v9

    move-object v2, v8

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, v0

    move-wide v9, v1

    move-wide v0, v9

    move-object v2, v8

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v8, v0

    move-wide v9, v1

    move-wide v0, v9

    move-object v2, v8

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v8, v0

    move-wide v9, v1

    move-wide v0, v9

    move-object v2, v8

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final getStayRemainHours()D
    .locals 8

    :try_start_0
    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.android.internal.os.PowerProfile"

    const-string v5, "POWER_NONE"

    invoke-static {v4, v5}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_CPU_ACTIVE"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-object v0, p0, Ltms/et;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ltms/et;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.internal.os.PowerProfile"

    const-string v7, "POWER_BATTERY_CAPACITY"

    invoke-static {v6, v7}, Ltms/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v3

    div-double v0, v3, v1

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
