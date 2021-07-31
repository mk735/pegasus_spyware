.class public Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
.field public static final AIRPLANE:Ljava/lang/String; = "airplane"

.field public static final AUTOROTATE:Ljava/lang/String; = "autorotate"

.field public static final BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final CHILD_MODE:Ljava/lang/String; = "child_mode"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final GUEST_MODE:Ljava/lang/String; = "guest_mode"

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final TOUCH_VIBRATOR:Ljava/lang/String; = "vibrator"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final WIFI:Ljava/lang/String; = "wifi"

.field private static d:Ljava/lang/String;

.field public static isMultiSim:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/telephony/TelephonyManager;

.field private c:Landroid/net/ConnectivityManager;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/media/AudioManager;

.field private g:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->c:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 51
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->c:Landroid/net/ConnectivityManager;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 54
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->b:Landroid/telephony/TelephonyManager;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 57
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->g:Landroid/os/Vibrator;

    if-nez v0, :cond_3

    .line 60
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->g:Landroid/os/Vibrator;

    .line 63
    :cond_3
    return-void
.end method


# virtual methods
.method public getDataSimId()J
    .locals 22

    .prologue
    .line 439
    :try_start_0
    const-string v18, "android.provider.Telephony$SIMInfo"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 440
    .local v2, "clazz":Ljava/lang/Class;
    const-string v18, "getInsertedSIMList"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Landroid/content/Context;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 441
    .local v8, "method":Ljava/lang/reflect/Method;
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 442
    .local v11, "simList":Ljava/util/List;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_0

    .line 443
    const-wide/16 v5, -0x1

    .line 492
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "simList":Ljava/util/List;
    :goto_0
    return-wide v5

    .line 444
    .restart local v2    # "clazz":Ljava/lang/Class;
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v11    # "simList":Ljava/util/List;
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 445
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 446
    .local v4, "iterator":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 447
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 448
    .local v9, "next":Ljava/lang/Object;
    const-string v18, "mSimId"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 449
    .local v10, "simId":Ljava/lang/reflect/Field;
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 450
    .local v5, "mSimId":J
    goto :goto_0

    .line 453
    .end local v4    # "iterator":Ljava/util/Iterator;
    .end local v5    # "mSimId":J
    .end local v9    # "next":Ljava/lang/Object;
    .end local v10    # "simId":Ljava/lang/reflect/Field;
    :cond_1
    const/4 v12, -0x1

    .line 454
    .local v12, "simSlot":I
    new-instance v13, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    .line 455
    .local v13, "simUtils":Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;
    invoke-virtual {v13}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getDataSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "dataSubscriberId":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 457
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSimState(I)I

    move-result v15

    .line 458
    .local v15, "status":I
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v15, v0, :cond_4

    .line 459
    const/4 v12, 0x0

    .line 477
    .end local v15    # "status":I
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 479
    .restart local v4    # "iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 480
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 481
    .restart local v9    # "next":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    const-string v18, "mSlot"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 483
    .local v14, "slot":Ljava/lang/reflect/Field;
    invoke-virtual {v14, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 484
    .local v7, "mSlot":I
    if-ne v7, v12, :cond_3

    .line 485
    const-string v18, "mSimId"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 486
    .restart local v10    # "simId":Ljava/lang/reflect/Field;
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 461
    .end local v4    # "iterator":Ljava/util/Iterator;
    .end local v7    # "mSlot":I
    .end local v9    # "next":Ljava/lang/Object;
    .end local v10    # "simId":Ljava/lang/reflect/Field;
    .end local v14    # "slot":Ljava/lang/reflect/Field;
    .restart local v15    # "status":I
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSimState(I)I

    move-result v15

    .line 462
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v15, v0, :cond_2

    .line 463
    const/4 v12, 0x1

    goto :goto_1

    .line 467
    .end local v15    # "status":I
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v16

    .line 468
    .local v16, "subscriberId0":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v17

    .line 470
    .local v17, "subscriberId1":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 471
    const/4 v12, 0x0

    goto :goto_1

    .line 472
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_2

    .line 473
    const/4 v12, 0x1

    goto :goto_1

    .line 490
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "dataSubscriberId":Ljava/lang/String;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "simList":Ljava/util/List;
    .end local v12    # "simSlot":I
    .end local v13    # "simUtils":Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;
    .end local v16    # "subscriberId0":Ljava/lang/String;
    .end local v17    # "subscriberId1":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 492
    :cond_7
    const-wide/16 v5, -0x1

    goto/16 :goto_0
.end method

.method public getDefaultDataSimId()J
    .locals 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    const-string v1, "dataSubscriberId"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->e:Landroid/content/SharedPreferences;

    .line 434
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->e:Landroid/content/SharedPreferences;

    const-string v1, "dataSubscriberId"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileData()Z
    .locals 4

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "isMobileDataEnable":Z
    :try_start_0
    const-string v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getQualcommSimState()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 496
    new-instance v1, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    .line 497
    .local v1, "utils":Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getDataSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "dataSubscriberId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 499
    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSimState(I)I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v2

    .line 501
    :cond_1
    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSimState(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    :cond_2
    move v2, v3

    .line 505
    goto :goto_0
.end method

.method public getSimState()Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 166
    .local v0, "airplane_on":I
    if-ne v0, v3, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v2

    .line 169
    :cond_1
    sget-boolean v4, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->isMultiSim:Z

    if-eqz v4, :cond_3

    .line 170
    new-instance v1, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "simUtils":Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;
    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSimState(I)I

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSimState(I)I

    move-result v4

    if-ne v4, v6, :cond_0

    :cond_2
    move v2, v3

    .line 172
    goto :goto_0

    .line 175
    .end local v1    # "simUtils":Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;
    :cond_3
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v6, :cond_0

    move v2, v3

    .line 176
    goto :goto_0
.end method

.method public getStatus(Ljava/lang/String;)I
    .locals 14
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v11, "timeout"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 75
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_off_timeout"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 77
    .local v8, "timeout":I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_0

    .line 78
    const/4 v8, 0x4

    :goto_0
    move v11, v8

    .line 157
    .end local v8    # "timeout":I
    :goto_1
    return v11

    .line 79
    .restart local v8    # "timeout":I
    :cond_0
    const/16 v11, 0x7530

    if-gt v8, v11, :cond_1

    .line 80
    const/4 v8, 0x1

    goto :goto_0

    .line 81
    :cond_1
    const v11, 0xea60

    if-gt v8, v11, :cond_2

    .line 82
    const/4 v8, 0x2

    goto :goto_0

    .line 83
    :cond_2
    const v11, 0x1d4c0

    if-gt v8, v11, :cond_3

    .line 84
    const/4 v8, 0x3

    goto :goto_0

    .line 86
    :cond_3
    const/4 v8, 0x4

    goto :goto_0

    .line 89
    .end local v8    # "timeout":I
    :cond_4
    const-string v11, "wifi"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 90
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 92
    .local v10, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 93
    .end local v10    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_6
    const-string v11, "child_mode"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 94
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "child_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    goto :goto_1

    .line 95
    :cond_7
    const-string v11, "guest_mode"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 96
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "guest_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    goto :goto_1

    .line 97
    :cond_8
    const-string v11, "bluetooth"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 100
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 101
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_9

    const/4 v1, 0x1

    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .local v1, "bluetooth_on":I
    :goto_2
    move v11, v1

    .line 105
    goto :goto_1

    .line 101
    .end local v1    # "bluetooth_on":I
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 102
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v4

    .line 103
    .local v4, "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "bluetooth_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "bluetooth_on":I
    goto :goto_2

    .line 106
    .end local v1    # "bluetooth_on":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    const-string v11, "vibrator"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 107
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "haptic_feedback_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_1

    .line 108
    :cond_b
    const-string v11, "autorotate"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 109
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accelerometer_rotation"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_1

    .line 111
    :cond_c
    const-string v11, "brightness"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 112
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 113
    .local v2, "brightness":I
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 115
    .local v6, "mode":I
    const/4 v11, 0x1

    if-ne v6, v11, :cond_d

    .line 116
    const/4 v2, 0x5

    :goto_3
    move v11, v2

    .line 126
    goto/16 :goto_1

    .line 117
    :cond_d
    const/16 v11, 0x50

    if-ge v2, v11, :cond_e

    .line 118
    const/4 v2, 0x1

    goto :goto_3

    .line 119
    :cond_e
    const/16 v11, 0x8c

    if-ge v2, v11, :cond_f

    .line 120
    const/4 v2, 0x2

    goto :goto_3

    .line 121
    :cond_f
    const/16 v11, 0xc8

    if-ge v2, v11, :cond_10

    .line 122
    const/4 v2, 0x3

    goto :goto_3

    .line 124
    :cond_10
    const/4 v2, 0x4

    goto :goto_3

    .line 127
    .end local v2    # "brightness":I
    .end local v6    # "mode":I
    :cond_11
    const-string v11, "airplane"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 128
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_1

    .line 129
    :cond_12
    const-string v11, "data"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 130
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getSimState()Z

    move-result v11

    if-eqz v11, :cond_15

    const-string v11, "Lenovo S880"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string v11, "Lenovo A60+"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string v11, "Lenovo A750"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 131
    :cond_13
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 132
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 133
    .local v7, "ni":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_14

    const-string v11, "CONNECTED"

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 134
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 136
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 138
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v7    # "ni":Landroid/net/NetworkInfo;
    :cond_15
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getSimState()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 139
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getMobileData()Z

    move-result v5

    .line 140
    .local v5, "mobileData":Z
    if-eqz v5, :cond_16

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 142
    .end local v5    # "mobileData":Z
    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 143
    :cond_18
    const-string v11, "ringtone"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 144
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_19

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 145
    :cond_1a
    const-string v11, "vibrate"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 146
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v9

    .line 147
    .local v9, "vibrateFlag":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_1c

    .line 148
    iget-object v11, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-nez v11, :cond_1b

    .line 149
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 151
    :cond_1b
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 154
    :cond_1c
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 157
    .end local v9    # "vibrateFlag":I
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public invokeBooleanArgMethod(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 412
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 414
    .local v2, "ownerClass":Ljava/lang/Class;
    new-array v0, v4, [Ljava/lang/Class;

    .line 415
    .local v0, "argsClass":[Ljava/lang/Class;
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v6

    .line 416
    invoke-virtual {v2, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 417
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->c:Landroid/net/ConnectivityManager;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "arg"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 213
    .local v2, "ownerClass":Ljava/lang/Class;
    const/4 v0, 0x0

    .line 214
    .local v0, "argsClass":[Ljava/lang/Class;
    if-eqz p2, :cond_0

    .line 215
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    .line 216
    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3

    .line 218
    :cond_0
    invoke-virtual {v2, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 219
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public isMultiSim()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 187
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->d:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 188
    const-string v6, "true"

    sput-object v6, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->d:Ljava/lang/String;

    .line 190
    :try_start_0
    const-string v6, "android.provider.MultiSIMUtils"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 191
    .local v1, "clazz":Ljava/lang/Class;
    const-string v6, "getDefault"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 192
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 193
    .local v3, "invoke":Ljava/lang/Object;
    const-string v6, "getPhoneCount"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 194
    .local v5, "method2":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    .local v0, "cardCount":I
    if-le v0, v11, :cond_0

    .line 196
    const/4 v6, 0x1

    sput-boolean v6, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->isMultiSim:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    .end local v0    # "cardCount":I
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "invoke":Ljava/lang/Object;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "method2":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->isMultiSim:Z

    :goto_1
    return v6

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v10, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->isMultiSim:Z

    goto :goto_0

    .line 200
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    sput-boolean v10, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->isMultiSim:Z

    goto :goto_0

    .line 204
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    sget-boolean v6, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->isMultiSim:Z

    goto :goto_1
.end method

.method public setMobileData(Z)V
    .locals 2
    .param p1, "bool"    # Z

    .prologue
    .line 422
    :try_start_0
    const-string v1, "setMobileDataEnabled"

    invoke-virtual {p0, v1, p1}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->invokeBooleanArgMethod(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;I)V
    .locals 15
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 234
    const-string v12, "airplane"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 235
    const-string v12, "airplane"

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v12

    move/from16 v0, p2

    if-eq v0, v12, :cond_0

    .line 236
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    move/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v7, "intent":Landroid/content/Intent;
    const-string v13, "state"

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 238
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 241
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v12, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 242
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 243
    .local v11, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v11, :cond_0

    .line 244
    if-nez p2, :cond_3

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    goto :goto_2

    .line 245
    .end local v11    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_4
    const-string v12, "guest_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 246
    sget-object v12, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->instanceFloatWindow:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-virtual {v12}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    .line 247
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.lenovo.safecenter.view.DialogActivity"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v8, "it":Landroid/content/Intent;
    if-nez p2, :cond_5

    .line 249
    const-string v12, "style"

    const/4 v13, 0x5

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :goto_3
    const/high16 v12, 0x10000000

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 251
    :cond_5
    const-string v12, "style"

    const/4 v13, 0x4

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 255
    .end local v8    # "it":Landroid/content/Intent;
    :cond_6
    const-string v12, "child_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 256
    sget-object v12, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->instanceFloatWindow:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-virtual {v12}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    .line 257
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.lenovo.safecenter.view.DialogActivity"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, "childrenActivity":Landroid/content/Intent;
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_7

    .line 259
    const-string v12, "style"

    const/4 v13, 0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    :goto_4
    const/high16 v12, 0x10000000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v12, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 261
    :cond_7
    const-string v12, "style"

    const/4 v13, 0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 265
    .end local v3    # "childrenActivity":Landroid/content/Intent;
    :cond_8
    const-string v12, "bluetooth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 266
    const-string v12, "bluetooth"

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v12

    move/from16 v0, p2

    if-eq v0, v12, :cond_0

    .line 267
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 270
    .local v2, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_0

    .line 271
    if-nez p2, :cond_9

    .line 272
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_1

    .line 277
    .end local v2    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v12

    goto/16 :goto_1

    .line 274
    .restart local v2    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_9
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 279
    .end local v2    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_a
    const-string v12, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 280
    const-string v12, "vibrator"

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v12

    move/from16 v0, p2

    if-eq v0, v12, :cond_0

    .line 281
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "haptic_feedback_enabled"

    move/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 283
    :cond_b
    const-string v12, "autorotate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 284
    const-string v12, "autorotate"

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v12

    move/from16 v0, p2

    if-eq v0, v12, :cond_0

    .line 285
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "accelerometer_rotation"

    move/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 287
    :cond_c
    const-string v12, "brightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "auto":Z
    packed-switch p2, :pswitch_data_0

    .line 306
    const/16 p2, 0x3c

    .line 309
    :goto_5
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 310
    .restart local v7    # "intent":Landroid/content/Intent;
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    const-class v13, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 311
    const/high16 v12, 0x10000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v9, "mBundle":Landroid/os/Bundle;
    const-string v12, "autoFlag"

    invoke-virtual {v9, v12, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    const-string v12, "value"

    move/from16 v0, p2

    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    invoke-virtual {v7, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 317
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 291
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "mBundle":Landroid/os/Bundle;
    :pswitch_0
    const/16 p2, 0x40

    .line 292
    goto :goto_5

    .line 294
    :pswitch_1
    const/16 p2, 0x7f

    .line 295
    goto :goto_5

    .line 297
    :pswitch_2
    const/16 p2, 0xbe

    .line 298
    goto :goto_5

    .line 300
    :pswitch_3
    const/16 p2, 0xff

    .line 301
    goto :goto_5

    .line 303
    :pswitch_4
    const/4 v1, 0x1

    .line 304
    goto :goto_5

    .line 318
    .end local v1    # "auto":Z
    :cond_d
    const-string v12, "timeout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 319
    packed-switch p2, :pswitch_data_1

    .line 333
    const/16 p2, 0x7530

    .line 336
    :goto_6
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "screen_off_timeout"

    move/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 321
    :pswitch_5
    const/16 p2, 0x7530

    .line 322
    goto :goto_6

    .line 324
    :pswitch_6
    const p2, 0xea60

    .line 325
    goto :goto_6

    .line 327
    :pswitch_7
    const p2, 0x1d4c0

    .line 328
    goto :goto_6

    .line 330
    :pswitch_8
    const p2, 0x927c0

    .line 331
    goto :goto_6

    .line 337
    :cond_e
    const-string v12, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 338
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->isMultiSim()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 339
    new-instance v10, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;

    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-direct {v10, v12}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    .line 340
    .local v10, "utils":Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;
    const-string v12, "qualcomm"

    invoke-virtual {v10}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getPlatform()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 341
    if-nez p2, :cond_f

    .line 342
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setMobileData(Z)V

    goto/16 :goto_1

    .line 344
    :cond_f
    invoke-virtual {v10}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getDataSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, "dataSubscriberId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 346
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSimState(I)I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_10

    .line 347
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setMobileData(Z)V

    goto/16 :goto_1

    .line 348
    :cond_10
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSimState(I)I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_0

    .line 349
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setMobileData(Z)V

    goto/16 :goto_1

    .line 355
    .end local v6    # "dataSubscriberId":Ljava/lang/String;
    :cond_11
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v7    # "intent":Landroid/content/Intent;
    if-nez p2, :cond_12

    .line 357
    const-string v12, "simid"

    const-string v13, "0"

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v7, v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 358
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 360
    :cond_12
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getDefaultDataSimId()J

    move-result-wide v4

    .line 361
    .local v4, "dataSimId":J
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_0

    .line 362
    const-string v12, "simid"

    invoke-virtual {v7, v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 363
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->a:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 368
    .end local v4    # "dataSimId":J
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "utils":Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;
    :cond_13
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_14

    const/4 v12, 0x1

    :goto_7
    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setMobileData(Z)V

    goto/16 :goto_1

    :cond_14
    const/4 v12, 0x0

    goto :goto_7

    .line 370
    :cond_15
    const-string v12, "ringtone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 371
    const-string v12, "ringtone"

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v12

    move/from16 v0, p2

    if-eq v0, v12, :cond_0

    .line 372
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_16

    .line 373
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_1

    .line 375
    :cond_16
    const-string v12, "vibrate"

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_17

    .line 376
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_1

    .line 378
    :cond_17
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_1

    .line 384
    :cond_18
    const-string v12, "vibrate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 385
    const-string v12, "vibrate"

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v12

    move/from16 v0, p2

    if-eq v0, v12, :cond_0

    .line 386
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1a

    .line 387
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 388
    const-string v12, "ringtone"

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_19

    .line 389
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 393
    :goto_8
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->g:Landroid/os/Vibrator;

    const/4 v13, 0x3

    new-array v13, v13, [J

    fill-array-data v13, :array_0

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v14}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_1

    .line 391
    :cond_19
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_8

    .line 395
    :cond_1a
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 396
    const-string v12, "ringtone"

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1b

    .line 397
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_1

    .line 399
    :cond_1b
    iget-object v12, p0, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->f:Landroid/media/AudioManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_1

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 319
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 393
    :array_0
    .array-data 8
        0x1f4
        0x1f4
        0x3e8
    .end array-data
.end method
