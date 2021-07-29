.class public Lcom/lenovo/safecenter/support/SafeCenterService;
.super Landroid/app/Service;
.source "SafeCenterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/support/SafeCenterService$a;,
        Lcom/lenovo/safecenter/support/SafeCenterService$d;,
        Lcom/lenovo/safecenter/support/SafeCenterService$b;,
        Lcom/lenovo/safecenter/support/SafeCenterService$c;
    }
.end annotation


# static fields
.field public static final ACORE_SERVICE:Ljava/lang/String; = "safecenter.contact13"

.field public static final DEFENSE_SWITCH_OFF:I = 0x0

.field public static final DEFENSE_SWITCH_ON:I = 0x1

.field public static final PHONE_LIB_NAME:Ljava/lang/String; = "libphonehook-13.so"

.field public static final PHONE_SERVICE:Ljava/lang/String; = "safecenter.phone13"

.field public static final SYSTEM_LIB_NAME:Ljava/lang/String; = "libsystemhook-13.so"

.field public static final SYSTEM_PATH:Ljava/lang/String; = "/system/"

.field public static final SYSTEM_SERVICE:Ljava/lang/String; = "safecenter.system13"

.field public static final UPDATE_WHITELIST:I = 0x2

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation
.end field

.field public static calendar_count:I

.field public static call_count:I

.field public static camera_count:I

.field public static charge_count:I

.field public static contacts_count:I

.field private static d:Ljava/lang/String;

.field public static harass_call_count:I

.field public static harass_msg_count:I

.field public static history_count:I

.field public static location_count:I

.field private static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static phone_count:I

.field public static privacy_count:I

.field public static record_count:I

.field public static send_sms_count:I

.field public static sms_count:I


# instance fields
.field private a:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Landroid/content/pm/PackageManager;

.field private g:Landroid/content/SharedPreferences;

.field private h:Lcom/lenovo/safecenter/support/SafeCenterService$a;

.field private i:Landroid/os/Handler;

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:Landroid/net/LocalServerSocket;

.field private l:Ljava/util/concurrent/locks/ReentrantLock;

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeCenterService$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    sput-object v1, Lcom/lenovo/safecenter/support/SafeCenterService;->b:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/support/SafeCenterService;->c:Ljava/util/List;

    .line 75
    sput-object v1, Lcom/lenovo/safecenter/support/SafeCenterService;->d:Ljava/lang/String;

    .line 767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/support/SafeCenterService;->m:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    const-string v0, "safecenter.server"

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->a:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SafeCenterService$1;-><init>(Lcom/lenovo/safecenter/support/SafeCenterService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->i:Landroid/os/Handler;

    .line 678
    iput-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->j:Ljava/util/concurrent/ExecutorService;

    .line 679
    iput-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->k:Landroid/net/LocalServerSocket;

    .line 681
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1083
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->n:I

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->n:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->o:Ljava/util/List;

    .line 1136
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SafeCenterService;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;
    .param p1, "x1"    # Landroid/net/LocalServerSocket;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->k:Landroid/net/LocalServerSocket;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SafeCenterService;Ljava/lang/String;IIJ)Lcom/lenovo/safecenter/support/SafeLog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Ljava/lang/String;IIJ)Lcom/lenovo/safecenter/support/SafeLog;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;IIJ)Lcom/lenovo/safecenter/support/SafeLog;
    .locals 6
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "action"    # I
    .param p4, "time"    # J

    .prologue
    const/4 v5, 0x0

    .line 331
    new-instance v2, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v2}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 332
    .local v2, "log":Lcom/lenovo/safecenter/support/SafeLog;
    iput-object p1, v2, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 334
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 336
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 341
    iput v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 342
    iput v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    .line 343
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/support/SafeCenterService;->getPernameFromPid(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    .line 344
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 345
    iput p3, v2, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    .line 347
    return-object v2

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/lenovo/safecenter/support/SafeCenterService;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 51
    sput-object p0, Lcom/lenovo/safecenter/support/SafeCenterService;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SafeCenterService;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;
    .param p1, "x1"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->j:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SafeCenterService;Lcom/lenovo/safecenter/support/InjectHelper;)V
    .locals 7
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;
    .param p1, "x1"    # Lcom/lenovo/safecenter/support/InjectHelper;

    .prologue
    const/4 v6, 0x1

    .line 51
    :cond_0
    :goto_0
    const-wide/32 v0, 0x1d4c0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "safecenter.system13"

    invoke-virtual {p1, v0}, Lcom/lenovo/safecenter/support/InjectHelper;->ConnectToServer(Ljava/lang/String;)Z

    const-string v0, "safecenter.phone13"

    invoke-virtual {p1, v0}, Lcom/lenovo/safecenter/support/InjectHelper;->ConnectToServer(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "safecenter.contact13"

    invoke-virtual {p1, v1}, Lcom/lenovo/safecenter/support/InjectHelper;->ConnectToServer(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safecenter.phone13:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safecenter.contact13:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v3, "inject_switch"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "guest_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.lenovo.safecenter"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/lenovo/safecenter/support/InjectHelper;->readSms(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->e:Landroid/content/Context;

    const-string v4, "safecenter.phone13"

    invoke-virtual {p1, v0, v4}, Lcom/lenovo/safecenter/support/InjectHelper;->injectAService(Landroid/content/Context;Ljava/lang/String;)V

    if-ne v2, v6, :cond_1

    const-string v0, "safecenter.phone13"

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3}, Lcom/lenovo/safecenter/support/CMDHelper;->guestModeClient(Ljava/lang/String;III)Z

    :cond_1
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/lenovo/safecenter/support/InjectHelper;->readContact(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->e:Landroid/content/Context;

    const-string v1, "safecenter.contact13"

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/safecenter/support/InjectHelper;->injectAService(Landroid/content/Context;Ljava/lang/String;)V

    if-ne v2, v6, :cond_0

    const-string v0, "safecenter.contact13"

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/support/CMDHelper;->guestModeClient(Ljava/lang/String;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 5
    .param p0, "x1"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/libsystemhook-13.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/lenovo/safecenter/support/MD5Util;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Const;->getFileMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=============>check md5 equle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SafeCenterService;JIII)Z
    .locals 9
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 51
    new-instance v0, Lcom/lenovo/safecenter/support/SafeCenterService$d;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/safecenter/support/SafeCenterService$d;-><init>(Lcom/lenovo/safecenter/support/SafeCenterService;JIII)V

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeCenterService$d;

    iget-wide v3, v0, Lcom/lenovo/safecenter/support/SafeCenterService$d;->a:J

    iget-wide v5, v1, Lcom/lenovo/safecenter/support/SafeCenterService$d;->a:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget v3, v0, Lcom/lenovo/safecenter/support/SafeCenterService$d;->b:I

    iget v4, v1, Lcom/lenovo/safecenter/support/SafeCenterService$d;->b:I

    if-ne v3, v4, :cond_1

    iget v3, v1, Lcom/lenovo/safecenter/support/SafeCenterService$d;->c:I

    iget v4, v0, Lcom/lenovo/safecenter/support/SafeCenterService$d;->c:I

    if-ne v3, v4, :cond_1

    iget v1, v1, Lcom/lenovo/safecenter/support/SafeCenterService$d;->d:I

    iget v3, v0, Lcom/lenovo/safecenter/support/SafeCenterService$d;->d:I

    if-ne v1, v3, :cond_1

    move v1, v8

    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    return v7

    :cond_1
    move v1, v7

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->n:I

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move v7, v8

    goto :goto_1

    :cond_3
    move v1, v7

    :goto_3
    iget v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->n:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->o:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->o:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->o:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->n:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SafeCenterService;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 51
    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.READ_SMS"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v1, v0

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.READ_CALENDAR"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.CALL_PHONE"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v1, v0

    goto :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    goto/16 :goto_0

    :sswitch_8
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.SEND_SMS"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    goto/16 :goto_0

    :sswitch_9
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.WRITE_SMS"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    goto/16 :goto_0

    :sswitch_a
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xb -> :sswitch_8
        0x2c -> :sswitch_9
        0x2d -> :sswitch_a
        0x30 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SafeLog;J)Z
    .locals 7
    .param p0, "x1"    # Lcom/lenovo/safecenter/support/SafeLog;
    .param p1, "x2"    # J

    .prologue
    const/4 v1, 0x1

    .line 51
    sget-object v0, Lcom/lenovo/safecenter/support/SafeCenterService;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    iget v6, p0, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    if-ne v5, v6, :cond_0

    const-wide/32 v5, 0x493e0

    sub-long v5, p1, v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/lenovo/safecenter/support/SafeCenterService;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->g:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/lenovo/safecenter/support/SafeCenterService;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/support/SafeCenterService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/net/LocalServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->k:Landroid/net/LocalServerSocket;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/support/SafeCenterService;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->j:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/support/SafeCenterService;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SafeCenterService;

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static getBackValue(Ljava/lang/String;)I
    .locals 1
    .param p0, "backValueName"    # Ljava/lang/String;

    .prologue
    .line 774
    sget-object v0, Lcom/lenovo/safecenter/support/SafeCenterService;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 775
    const/4 v0, 0x0

    .line 777
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/support/SafeCenterService;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getChargeLogs(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x7f0d0112

    .line 1004
    sget-object v5, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v6, "tariff"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/SafeLog;

    .line 1006
    .local v3, "log":Lcom/lenovo/safecenter/support/SafeLog;
    if-nez v3, :cond_0

    .line 1007
    const-string v1, ""

    .line 1020
    :goto_0
    return-object v1

    .line 1009
    :cond_0
    iget-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p0, v5}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1012
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0d0112

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "des":Ljava/lang/String;
    goto :goto_0

    .line 1015
    .end local v1    # "des":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1016
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1017
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "des":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getHarassLogs(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0d0121

    .line 1050
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0d017a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, "harass_call_des":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0d017b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1052
    .local v2, "harass_sms_des":Ljava/lang/String;
    const-string v0, ""

    .line 1055
    .local v0, "des":Ljava/lang/String;
    sget v4, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    if-eqz v4, :cond_1

    sget v4, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    if-eqz v4, :cond_1

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0d0124

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1080
    :cond_0
    :goto_0
    return-object v0

    .line 1059
    :cond_1
    sget v4, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    if-lez v4, :cond_4

    .line 1060
    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v5, "harass_call"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/SafeLog;

    .line 1061
    .local v3, "log":Lcom/lenovo/safecenter/support/SafeLog;
    if-eqz v3, :cond_3

    .line 1063
    iget v4, v3, Lcom/lenovo/safecenter/support/SafeLog;->fromtype:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1065
    const v4, 0x7f0d05ab

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1068
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1072
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1075
    .end local v3    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_4
    sget v4, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    if-lez v4, :cond_0

    .line 1076
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPrivacyLogs(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x7f0d0112

    .line 1024
    sget-object v5, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v6, "privacy"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/SafeLog;

    .line 1026
    .local v3, "log":Lcom/lenovo/safecenter/support/SafeLog;
    if-nez v3, :cond_0

    .line 1027
    const-string v1, ""

    .line 1046
    :goto_0
    return-object v1

    .line 1029
    :cond_0
    iget v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1031
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0d0487

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p0, v6}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, "content":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1038
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0d0112

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "des":Ljava/lang/String;
    goto :goto_0

    .line 1034
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "des":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p0, v5}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1

    .line 1041
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 1042
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1043
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "des":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static setBackValue(Ljava/lang/String;I)V
    .locals 2
    .param p0, "backValueName"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 770
    sget-object v0, Lcom/lenovo/safecenter/support/SafeCenterService;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    return-void
.end method


# virtual methods
.method public bytesToInt([B)I
    .locals 5
    .param p1, "intByte"    # [B

    .prologue
    .line 988
    const/4 v0, 0x0

    .line 989
    .local v0, "fromByte":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 990
    aget-byte v3, p1, v1

    if-gez v3, :cond_0

    aget-byte v3, p1, v1

    add-int/lit16 v3, v3, 0x100

    :goto_1
    mul-int/lit8 v4, v1, 0x8

    shl-int v2, v3, v4

    .line 991
    .local v2, "n":I
    add-int/2addr v0, v2

    .line 989
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 990
    .end local v2    # "n":I
    :cond_0
    aget-byte v3, p1, v1

    goto :goto_1

    .line 993
    :cond_1
    return v0
.end method

.method public excFromClient(Landroid/net/LocalSocket;)V
    .locals 27
    .param p1, "s"    # Landroid/net/LocalSocket;

    .prologue
    .line 781
    const/4 v13, 0x0

    .line 782
    .local v13, "input":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 783
    .local v9, "dos":Ljava/io/DataOutputStream;
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 784
    .local v15, "msg":Landroid/os/Message;
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v15, Landroid/os/Message;->what:I

    .line 787
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 788
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 789
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .local v10, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v24

    move/from16 v0, v24

    new-array v6, v0, [B

    .line 790
    .local v6, "bytes":[B
    const/16 v24, 0x0

    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v6, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 791
    .local v5, "byteLength":I
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 792
    .local v22, "uid":[B
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 793
    .local v18, "pid":[B
    const/4 v7, 0x0

    .line 794
    .local v7, "content":[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    const/16 v24, 0x4

    const/16 v25, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->bytesToInt([B)I

    move-result v23

    .line 797
    .local v23, "uidValue":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->bytesToInt([B)I

    move-result v19

    .line 798
    .local v19, "pidValue":I
    const/4 v8, 0x0

    .line 800
    .local v8, "contentValue":Ljava/lang/String;
    const/16 v24, 0x8

    move/from16 v0, v24

    if-le v5, v0, :cond_0

    .line 801
    add-int/lit8 v24, v5, -0x8

    move/from16 v0, v24

    new-array v7, v0, [B

    .line 802
    const/16 v24, 0x8

    const/16 v25, 0x0

    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v6, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    :cond_0
    const/16 v24, 0xf

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    const/16 v24, 0x12

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 805
    :cond_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v7, v0, v1, v10}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->getInterceptPermission([BILandroid/content/Context;Ljava/io/DataOutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    :goto_0
    if-eqz v13, :cond_2

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 886
    :cond_2
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 887
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v9, v10

    .line 892
    .end local v5    # "byteLength":I
    .end local v6    # "bytes":[B
    .end local v7    # "content":[B
    .end local v8    # "contentValue":Ljava/lang/String;
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .end local v18    # "pid":[B
    .end local v19    # "pidValue":I
    .end local v22    # "uid":[B
    .end local v23    # "uidValue":I
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    :goto_1
    return-void

    .line 808
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "byteLength":I
    .restart local v6    # "bytes":[B
    .restart local v7    # "content":[B
    .restart local v8    # "contentValue":Ljava/lang/String;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v18    # "pid":[B
    .restart local v19    # "pidValue":I
    .restart local v22    # "uid":[B
    .restart local v23    # "uidValue":I
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/support/SafeCenterService;->getBackValue(II)I

    move-result v12

    .line 809
    .local v12, "i":I
    sget-object v24, Lcom/lenovo/safecenter/support/SafeCenterService;->b:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/lenovo/safecenter/support/AppInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 811
    .local v16, "packageName":Ljava/lang/String;
    const-string v24, "com.qihoo360.mobilesafe"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v24

    if-eqz v24, :cond_4

    if-nez v12, :cond_4

    .line 813
    const-wide/16 v24, 0x2710

    :try_start_4
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 820
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 821
    :try_start_5
    new-instance v8, Ljava/lang/String;

    .end local v8    # "contentValue":Ljava/lang/String;
    const-string v24, "UTF-16LE"

    move-object/from16 v0, v24

    invoke-direct {v8, v7, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 824
    .restart local v8    # "contentValue":Ljava/lang/String;
    :cond_5
    const/16 v24, 0xb

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v12, v0, :cond_f

    .line 825
    const/16 v24, 0x0

    const-string v25, ","

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 827
    .local v17, "phoneNumber":Ljava/lang/String;
    const-string v24, "10655198"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 828
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 829
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 885
    if-eqz v13, :cond_6

    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 886
    :cond_6
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 887
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    move-object v9, v10

    .line 890
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_1

    .line 814
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v17    # "phoneNumber":Ljava/lang/String;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v11

    .line 815
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 881
    .end local v5    # "byteLength":I
    .end local v6    # "bytes":[B
    .end local v7    # "content":[B
    .end local v8    # "contentValue":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "i":I
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "pid":[B
    .end local v19    # "pidValue":I
    .end local v22    # "uid":[B
    .end local v23    # "uidValue":I
    :catch_1
    move-exception v11

    move-object v9, v10

    .line 882
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    .local v11, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 885
    if-eqz v13, :cond_7

    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 886
    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 887
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 888
    :catch_2
    move-exception v11

    .line 889
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 888
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v5    # "byteLength":I
    .restart local v6    # "bytes":[B
    .restart local v7    # "content":[B
    .restart local v8    # "contentValue":Ljava/lang/String;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v12    # "i":I
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v17    # "phoneNumber":Ljava/lang/String;
    .restart local v18    # "pid":[B
    .restart local v19    # "pidValue":I
    .restart local v22    # "uid":[B
    .restart local v23    # "uidValue":I
    :catch_3
    move-exception v11

    .line 889
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 832
    .end local v11    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "value"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 833
    .local v4, "backValueName":Ljava/lang/String;
    sget-object v24, Lcom/lenovo/safecenter/support/SafeCenterService;->m:Ljava/util/HashMap;

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string v24, ","

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 838
    .local v20, "smsContent":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const v25, 0x7f0d0101

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const v25, 0x7f0d0102

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 840
    .local v14, "message":Ljava/lang/String;
    new-instance v24, Landroid/content/Intent;

    const-class v25, Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v25, "message"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v25, "phoneNumber"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v25, "content"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v25, "packageName"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v25, "valueName"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v25, 0x10000000

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v25, 0x8000000

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->startActivity(Landroid/content/Intent;)V

    .line 842
    const/16 v21, 0x0

    .line 843
    .local v21, "time":I
    :goto_5
    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->getBackValue(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v24

    if-gez v24, :cond_c

    .line 845
    const-wide/16 v24, 0x3e8

    :try_start_b
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 849
    :goto_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 846
    :catch_4
    move-exception v11

    .line 847
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_c
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    .line 884
    .end local v4    # "backValueName":Ljava/lang/String;
    .end local v5    # "byteLength":I
    .end local v6    # "bytes":[B
    .end local v7    # "content":[B
    .end local v8    # "contentValue":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "i":I
    .end local v14    # "message":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "phoneNumber":Ljava/lang/String;
    .end local v18    # "pid":[B
    .end local v19    # "pidValue":I
    .end local v20    # "smsContent":Ljava/lang/String;
    .end local v21    # "time":I
    .end local v22    # "uid":[B
    .end local v23    # "uidValue":I
    :catchall_0
    move-exception v24

    move-object v9, v10

    .line 885
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    :goto_7
    if-eqz v13, :cond_a

    :try_start_d
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 886
    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 887
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 890
    :goto_8
    throw v24

    .line 852
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "backValueName":Ljava/lang/String;
    .restart local v5    # "byteLength":I
    .restart local v6    # "bytes":[B
    .restart local v7    # "content":[B
    .restart local v8    # "contentValue":Ljava/lang/String;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v12    # "i":I
    .restart local v14    # "message":Ljava/lang/String;
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v17    # "phoneNumber":Ljava/lang/String;
    .restart local v18    # "pid":[B
    .restart local v19    # "pidValue":I
    .restart local v20    # "smsContent":Ljava/lang/String;
    .restart local v21    # "time":I
    .restart local v22    # "uid":[B
    .restart local v23    # "uidValue":I
    :cond_c
    const/16 v24, 0x14

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    .line 853
    const/16 v24, 0x1

    :try_start_e
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 854
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 855
    invoke-virtual {v15}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "backvalue"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 862
    :goto_9
    sget-object v24, Lcom/lenovo/safecenter/support/SafeCenterService;->m:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    .end local v4    # "backValueName":Ljava/lang/String;
    .end local v14    # "message":Ljava/lang/String;
    .end local v17    # "phoneNumber":Ljava/lang/String;
    .end local v20    # "smsContent":Ljava/lang/String;
    .end local v21    # "time":I
    :goto_a
    invoke-virtual {v15}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "uid"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 875
    invoke-virtual {v15}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "pid"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    if-eqz v7, :cond_d

    .line 877
    invoke-virtual {v15}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "content"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SafeCenterService;->i:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 857
    .restart local v4    # "backValueName":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    .restart local v17    # "phoneNumber":Ljava/lang/String;
    .restart local v20    # "smsContent":Ljava/lang/String;
    .restart local v21    # "time":I
    :cond_e
    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->getBackValue(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 858
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 859
    invoke-virtual {v15}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "backvalue"

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->getBackValue(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    .line 865
    .end local v4    # "backValueName":Ljava/lang/String;
    .end local v14    # "message":Ljava/lang/String;
    .end local v17    # "phoneNumber":Ljava/lang/String;
    .end local v20    # "smsContent":Ljava/lang/String;
    .end local v21    # "time":I
    :cond_f
    invoke-static {v12}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 866
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 867
    invoke-virtual {v15}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "backvalue"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_a

    .line 888
    .end local v12    # "i":I
    .end local v16    # "packageName":Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 889
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 891
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_1

    .line 888
    .end local v5    # "byteLength":I
    .end local v6    # "bytes":[B
    .end local v7    # "content":[B
    .end local v8    # "contentValue":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v18    # "pid":[B
    .end local v19    # "pidValue":I
    .end local v22    # "uid":[B
    .end local v23    # "uidValue":I
    :catch_6
    move-exception v11

    .line 889
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 884
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v24

    goto/16 :goto_7

    .line 881
    :catch_7
    move-exception v11

    goto/16 :goto_4
.end method

.method public getBackValue(II)I
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    const/4 v6, 0x2

    const/16 v12, 0xb

    const/16 v11, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 896
    :try_start_0
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 898
    .local v1, "database":Lcom/lenovo/safecenter/database/AppDatabase;
    iget-object v8, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->g:Landroid/content/SharedPreferences;

    const-string v9, "tariff"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1

    .line 899
    if-eq p2, v11, :cond_0

    if-ne p2, v12, :cond_1

    .line 938
    .end local v1    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    :cond_0
    :goto_0
    return v5

    .line 903
    .restart local v1    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    :cond_1
    iget-object v8, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->g:Landroid/content/SharedPreferences;

    const-string v9, "accessPInformation"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 904
    if-eq p2, v11, :cond_2

    if-ne p2, v12, :cond_0

    .line 908
    :cond_2
    sget-object v8, Lcom/lenovo/safecenter/support/SafeCenterService;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 910
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    if-eqz v0, :cond_0

    .line 913
    if-eq p2, v11, :cond_3

    if-ne p2, v12, :cond_6

    .line 914
    :cond_3
    const-string v8, "sendmessage"

    invoke-virtual {v1, p1, v8}, Lcom/lenovo/safecenter/database/AppDatabase;->isAppTrusted(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 922
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/AppInfo;

    .line 923
    .local v4, "info":Lcom/lenovo/safecenter/support/AppInfo;
    iget-object v9, v4, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    sparse-switch p2, :sswitch_data_0

    const-string v8, ""

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 925
    iget v8, v4, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-eqz v8, :cond_0

    .line 927
    iget v5, v4, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v5, v6, :cond_7

    move v5, v6

    .line 928
    goto :goto_0

    .line 917
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_6
    const-string v8, "privacy"

    invoke-virtual {v1, p1, v8}, Lcom/lenovo/safecenter/database/AppDatabase;->isAppTrusted(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    .line 923
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "info":Lcom/lenovo/safecenter/support/AppInfo;
    :sswitch_0
    const-string v8, "privacy"

    goto :goto_1

    :sswitch_1
    const-string v8, "location"

    goto :goto_1

    :sswitch_2
    const-string v8, "device"

    goto :goto_1

    :sswitch_3
    const-string v8, "call_phone"

    goto :goto_1

    :sswitch_4
    const-string v8, "sendmessage"

    goto :goto_1

    :sswitch_5
    const-string v8, "install_app"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    move v5, v7

    .line 930
    goto :goto_0

    .line 934
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    .end local v1    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Lcom/lenovo/safecenter/support/AppInfo;
    :catch_0
    move-exception v2

    .line 935
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 923
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_0
        0xb -> :sswitch_4
        0xc -> :sswitch_2
        0xd -> :sswitch_5
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch
.end method

.method public getPernameFromPid(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 463
    sparse-switch p1, :sswitch_data_0

    .line 512
    const/4 v0, 0x0

    .line 516
    .local v0, "perm":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 466
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_0
    const-string v0, "android.permission.READ_SMS"

    .line 467
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 471
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_1
    const-string v0, "android.permission.READ_CONTACTS"

    .line 472
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 475
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_2
    const-string v0, "android.permission.READ_CALENDAR"

    .line 476
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 480
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_3
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 481
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 484
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 485
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 488
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_5
    const-string v0, "android.permission.CAMERA"

    .line 489
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 492
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_6
    const-string v0, "android.permission.CALL_PHONE"

    .line 493
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    .line 497
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 500
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_8
    const-string v0, "android.permission.SEND_SMS"

    .line 501
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 504
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.permission.WRITE_SMS"

    .line 505
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 508
    .end local v0    # "perm":Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 509
    .restart local v0    # "perm":Ljava/lang/String;
    goto :goto_0

    .line 463
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xb -> :sswitch_8
        0x2c -> :sswitch_9
        0x2d -> :sswitch_a
        0x30 -> :sswitch_3
    .end sparse-switch
.end method

.method public insertLog(Lcom/lenovo/safecenter/database/AppDatabase;Lcom/lenovo/safecenter/support/SafeLog;ILjava/lang/String;)V
    .locals 6
    .param p1, "db"    # Lcom/lenovo/safecenter/database/AppDatabase;
    .param p2, "log"    # Lcom/lenovo/safecenter/support/SafeLog;
    .param p3, "pid"    # I
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 352
    if-ne p3, v4, :cond_3

    .line 354
    :try_start_0
    iput-object p4, p2, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    .line 355
    const-string v1, "safe_log_tariff"

    invoke-virtual {p1, p2, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->insertLog(Lcom/lenovo/safecenter/support/SafeLog;Ljava/lang/String;)V

    .line 383
    :cond_0
    :goto_0
    iget v1, p2, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    if-ne v1, v3, :cond_2

    .line 384
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->g:Landroid/content/SharedPreferences;

    const-string v2, "block_notify"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    invoke-static {p0, p3}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-ne p3, v4, :cond_5

    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->call_count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lenovo/safecenter/support/SafeCenterService;->call_count:I

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Const;->saveChargeLogsCount(Landroid/content/Context;)V

    :goto_1
    if-eq p3, v4, :cond_1

    if-ne p3, v5, :cond_7

    :cond_1
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "tariff"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x100

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcom/lenovo/safecenter/utils/MyUtils;->showNotification(Landroid/content/Context;II)V

    :goto_2
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f03011c

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0904b4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0d00e7

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/support/SafeCenterService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0d00e8

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->g:Landroid/content/SharedPreferences;

    const-string v2, "first_block_notify"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "from"

    const-string v3, "safecenterservice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "first_block_notify"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_2
    :goto_3
    const-string v1, "handmes"

    const-string v2, "insertLog end..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void

    .line 356
    :cond_3
    if-ne p3, v5, :cond_4

    .line 357
    const/4 v1, 0x0

    :try_start_1
    const-string v2, ","

    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    .line 358
    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    .line 365
    const-string v1, "safe_log_tariff"

    invoke-virtual {p1, p2, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->insertLog(Lcom/lenovo/safecenter/support/SafeLog;Ljava/lang/String;)V

    .line 367
    iget v1, p2, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    if-ne v1, v3, :cond_0

    .line 368
    new-instance v1, Lcom/lenovo/safecenter/support/SafeCenterService$2;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/safecenter/support/SafeCenterService$2;-><init>(Lcom/lenovo/safecenter/support/SafeCenterService;Lcom/lenovo/safecenter/support/SafeLog;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/SafeCenterService$2;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    if-nez p4, :cond_0

    .line 380
    :try_start_2
    const-string v1, "safe_log_privacy"

    invoke-virtual {p1, p2, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->insertLog(Lcom/lenovo/safecenter/support/SafeLog;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 385
    :cond_5
    if-ne p3, v5, :cond_6

    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->send_sms_count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lenovo/safecenter/support/SafeCenterService;->send_sms_count:I

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Const;->saveChargeLogsCount(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_6
    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Const;->savePrivacyLogsCount(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_7
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "privacy"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x100

    const/4 v3, 0x2

    invoke-static {p0, v1, v3}, Lcom/lenovo/safecenter/utils/MyUtils;->showNotification(Landroid/content/Context;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public insertTappingLog(Lcom/lenovo/safecenter/database/AppDatabase;Lcom/lenovo/safecenter/support/SafeLog;)V
    .locals 4
    .param p1, "db"    # Lcom/lenovo/safecenter/database/AppDatabase;
    .param p2, "log"    # Lcom/lenovo/safecenter/support/SafeLog;

    .prologue
    const/4 v3, 0x1

    .line 397
    const/4 v1, 0x1

    :try_start_0
    iput v1, p2, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 399
    const-string v1, "safe_log_privacy"

    invoke-virtual {p1, p2, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->insertLog(Lcom/lenovo/safecenter/support/SafeLog;Ljava/lang/String;)V

    .line 400
    const-string v1, "handmes"

    const-string v2, "insert tapping log end..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget v1, p2, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    if-ne v1, v3, :cond_0

    .line 403
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->g:Landroid/content/SharedPreferences;

    const-string v2, "block_notify"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    .line 405
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Const;->savePrivacyLogsCount(Landroid/content/Context;)V

    .line 406
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v2, "privacy"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const/16 v1, 0x100

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/lenovo/safecenter/utils/MyUtils;->showNotification(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 533
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 537
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 538
    iput-object p0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->e:Landroid/content/Context;

    .line 539
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->g:Landroid/content/SharedPreferences;

    .line 540
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->f:Landroid/content/pm/PackageManager;

    .line 541
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->e:Landroid/content/Context;

    const v2, 0x7f060002

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/safecenter/support/SafeCenterService;->d:Ljava/lang/String;

    .line 545
    new-instance v1, Lcom/lenovo/safecenter/support/SafeCenterService$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/support/SafeCenterService$4;-><init>(Lcom/lenovo/safecenter/support/SafeCenterService;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/SafeCenterService$4;->start()V

    .line 547
    new-instance v1, Lcom/lenovo/safecenter/support/SafeCenterService$c;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/support/SafeCenterService$c;-><init>(Lcom/lenovo/safecenter/support/SafeCenterService;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/SafeCenterService$c;->start()V

    .line 549
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 550
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/lenovo/performancecenter/framework/PolicyService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SafeCenterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 552
    new-instance v1, Lcom/lenovo/safecenter/support/SafeCenterService$a;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/support/SafeCenterService$a;-><init>(Lcom/lenovo/safecenter/support/SafeCenterService;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->h:Lcom/lenovo/safecenter/support/SafeCenterService$a;

    .line 553
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->h:Lcom/lenovo/safecenter/support/SafeCenterService$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.lenovo.safecenter.intercept_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/safecenter/support/SafeCenterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 554
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService;->h:Lcom/lenovo/safecenter/support/SafeCenterService$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SafeCenterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 998
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SafeCenterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 999
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1000
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 557
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 558
    new-instance v0, Lcom/lenovo/safecenter/support/SafeCenterService$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SafeCenterService$3;-><init>(Lcom/lenovo/safecenter/support/SafeCenterService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/SafeCenterService$3;->start()V

    .line 581
    return-void
.end method
