.class public Lcom/lenovo/safecenter/platform/BootBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcast.java"


# static fields
.field private static b:Landroid/content/Context;

.field public static ignorePlaneMode:Z

.field private static j:Landroid/os/Handler;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/lenovo/safecenter/adapter/DaoImpl;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/platform/BootBroadcast;->ignorePlaneMode:Z

    .line 321
    new-instance v0, Lcom/lenovo/safecenter/platform/BootBroadcast$3;

    invoke-direct {v0}, Lcom/lenovo/safecenter/platform/BootBroadcast$3;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/platform/BootBroadcast;->j:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->d:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->e:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->f:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->h:Z

    .line 65
    iput-boolean v1, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->i:Z

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/lenovo/safecenter/platform/BootBroadcast;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/BootBroadcast;)Lcom/lenovo/safecenter/adapter/DaoImpl;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/BootBroadcast;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->g:Lcom/lenovo/safecenter/adapter/DaoImpl;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/BootBroadcast;Lcom/lenovo/safecenter/adapter/DaoImpl;)Lcom/lenovo/safecenter/adapter/DaoImpl;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/BootBroadcast;
    .param p1, "x1"    # Lcom/lenovo/safecenter/adapter/DaoImpl;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->g:Lcom/lenovo/safecenter/adapter/DaoImpl;

    return-object p1
.end method

.method private static a(IZ)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "state"    # Z

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 245
    const-string v0, "no card"

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    sget-object v1, Lcom/lenovo/safecenter/platform/BootBroadcast;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "number":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    :cond_2
    sget-object v1, Lcom/lenovo/safecenter/platform/BootBroadcast;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    sget-object v1, Lcom/lenovo/safecenter/platform/BootBroadcast;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/provider/MultiSIMUtils;->getSimState(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 251
    const-string v0, "no card"

    goto :goto_0

    .line 253
    :cond_3
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "......get sim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/BootBroadcast;Landroid/content/Context;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/BootBroadcast;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 50
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "old_input"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.inputmethod.latin/.LatinIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v1, "theft_preference"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v1, "all"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v1, "locked"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/lenovo/safecenter/platform/BootBroadcast;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v1, "all"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v1, "alarm"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all or alarm :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v3, "all"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v3, "alarm"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/lenovo/safecenter/utils/MyUtils;->alarming(Landroid/content/Context;)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "safeinput error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 259
    const-string v1, "test"

    const-string v2, "sendMsgAndLockScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v2, "sim_alarm_screen"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const-string v1, "ydp"

    const-string v2, "locked screen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v1, Lcom/lenovo/safecenter/platform/BootBroadcast;->j:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v2, "sim_alarm_sms"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const-string v1, "ydp"

    const-string v2, "sim_alarm_sms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafePhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->c:Ljava/lang/String;

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.antitheft.SENDMESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "phone_number"

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/lenovo/safecenter/platform/BootBroadcast;->b:Landroid/content/Context;

    const v4, 0x7f0d0149

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lenovo/safecenter/platform/BootBroadcast;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPasswordWithJieMi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lenovo/safecenter/platform/BootBroadcast;->b:Landroid/content/Context;

    const v4, 0x7f0d014a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "type"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    sget-object v1, Lcom/lenovo/safecenter/platform/BootBroadcast;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 291
    .end local v0    # "it":Landroid/content/Intent;
    :cond_0
    return-void

    .line 267
    :cond_1
    const-string v1, "test"

    const-string v2, "SIM SAFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/platform/BootBroadcast;Landroid/content/Context;)V
    .locals 11
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/BootBroadcast;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v3, "theft_preference"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-object p1, Lcom/lenovo/safecenter/platform/BootBroadcast;->b:Landroid/content/Context;

    const-string v0, "test"

    const-string v3, "==============>checking SIM"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "test"

    const-string v3, "==============>checking SIM MultiSim"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v3, "ORG_SIM_NUMBER1"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v3, "ORG_SIM_NUMBER2"

    const-string v5, ""

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v0

    aget v6, v0, v2

    aget v7, v0, v1

    const-string v0, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim1:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  sim2:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v9, :cond_4

    move v3, v1

    :goto_0
    if-ne v7, v9, :cond_5

    move v0, v1

    :goto_1
    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {p1}, Lcom/lenovo/safecenter/platform/BootBroadcast;->a(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-boolean v8, Lcom/lenovo/safecenter/platform/BootBroadcast;->ignorePlaneMode:Z

    if-eqz v8, :cond_3

    sput-boolean v2, Lcom/lenovo/safecenter/platform/BootBroadcast;->ignorePlaneMode:Z

    const-string v8, "boot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "boot  sim0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "sim1"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/platform/BootBroadcast;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/platform/BootBroadcast;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->f:Ljava/lang/String;

    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orgSimSerialNumber1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orgSimSerialNumber2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simSerialNumber1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simSerialNumber2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->e:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->e:Ljava/lang/String;

    const-string v1, "no card"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->f:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->f:Ljava/lang/String;

    const-string v1, "no card"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BootBroadcast;->b()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v3, v2

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    const-string v0, "test"

    const-string v1, "==============>checking SIM one Sim"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v9, :cond_3

    invoke-static {p1}, Lcom/lenovo/safecenter/platform/BootBroadcast;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "test"

    const-string v3, "SIM_STATE_READY"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/lenovo/safecenter/platform/BootBroadcast;->ignorePlaneMode:Z

    if-eqz v1, :cond_3

    sput-boolean v2, Lcom/lenovo/safecenter/platform/BootBroadcast;->ignorePlaneMode:Z

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v2, "ORG_SIM_NUMBER"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v2, ""

    iget-object v3, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->d:Ljava/lang/String;

    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "......"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BootBroadcast;->b()V

    goto/16 :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    sput-object p1, Lcom/lenovo/safecenter/platform/BootBroadcast;->b:Landroid/content/Context;

    .line 93
    const-string v0, "antitheft"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->noticeUpdateLab(Landroid/content/Context;)V

    .line 97
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/WflUtils;->registerContentObserver(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lcom/lenovo/safecenter/platform/BootBroadcast$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/platform/BootBroadcast$1;-><init>(Lcom/lenovo/safecenter/platform/BootBroadcast;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/BootBroadcast$1;->start()V

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast;->a:Landroid/content/SharedPreferences;

    const-string v1, "simchanged"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, Lcom/lenovo/safecenter/platform/BootBroadcast$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/platform/BootBroadcast$2;-><init>(Lcom/lenovo/safecenter/platform/BootBroadcast;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/BootBroadcast$2;->start()V

    .line 147
    :cond_1
    return-void
.end method
