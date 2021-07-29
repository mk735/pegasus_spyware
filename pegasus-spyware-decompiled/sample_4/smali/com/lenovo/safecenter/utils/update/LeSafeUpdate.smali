.class public Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;
.super Ljava/lang/Object;
.source "LeSafeUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$5;,
        Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;
    }
.end annotation


# static fields
.field public static final SUS_ERROR_CODE_DOWNLOAD:I = 0x3

.field public static final SUS_ERROR_CODE_INSUFFICIENTSTORAGESPACE:I = 0x4

.field public static final SUS_ERROR_CODE_NETWORKUNAVAILABLE:I = 0x1

.field public static final SUS_ERROR_CODE_PENDING:I = 0x2


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Z

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/pm/PackageManager;

.field private j:Lcom/lenovo/lps/sus/SUSListener;

.field private k:Landroid/content/SharedPreferences;

.field private l:Z

.field private m:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

.field private n:Landroid/os/Handler;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZZLcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "channelKey"    # Ljava/lang/String;
    .param p5, "moveToSystem"    # Z
    .param p6, "promptDisable"    # Z
    .param p7, "sdkPromptDisable"    # Z
    .param p8, "lsul"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->f:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->g:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->h:Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->l:Z

    .line 43
    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b:Z

    .line 44
    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c:Z

    .line 45
    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d:Z

    .line 404
    new-instance v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$3;-><init>(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->n:Landroid/os/Handler;

    .line 435
    new-instance v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$4;-><init>(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->o:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->e:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->i:Landroid/content/pm/PackageManager;

    .line 63
    iput p3, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a:I

    .line 64
    iput-object p4, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->g:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->f:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->k:Landroid/content/SharedPreferences;

    .line 67
    iput-boolean p5, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->l:Z

    .line 68
    if-nez p8, :cond_0

    .line 69
    new-instance p8, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$1;

    .end local p8    # "lsul":Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;
    invoke-direct {p8, p0}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$1;-><init>(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)V

    .line 96
    .restart local p8    # "lsul":Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;
    :cond_0
    iput-object p8, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->m:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    .line 97
    iput-boolean p6, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b:Z

    .line 98
    iput-boolean p7, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c:Z

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .param p1, "text"    # I

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c:Z

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 466
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->m:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->k:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->l:Z

    return v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic i(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->o:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public canExecute(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, "i":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, "file":Ljava/io/File;
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 377
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    const-string v4, "ydp"

    const-string v5, "canExecute()...true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_1
    return v3

    .line 381
    :cond_0
    const-string v4, "ydp"

    const-string v5, "canExecute()...false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    const-wide/16 v4, 0x5dc

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 399
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-wide/16 v4, 0xbb8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 388
    :catch_1
    move-exception v4

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_1

    .line 395
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 401
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public upDate(Z)V
    .locals 1
    .param p1, "downloadNow"    # Z

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->upDate(ZZ)V

    .line 104
    return-void
.end method

.method public upDate(ZZ)V
    .locals 12
    .param p1, "downloadNow"    # Z
    .param p2, "installNow"    # Z

    .prologue
    .line 113
    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->isVersionUpdateStarted()Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d:Z

    if-eqz v8, :cond_1

    .line 114
    :cond_0
    const v8, 0x7f0d08c3

    invoke-direct {p0, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(I)V

    .line 115
    iget-object v8, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->m:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onDownLoadException(I)V

    .line 370
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v8, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b:Z

    invoke-static {v8}, Lcom/lenovo/lps/sus/SUS;->setAllPromptDisableFlag(Z)V

    .line 118
    iget-object v8, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->j:Lcom/lenovo/lps/sus/SUSListener;

    if-nez v8, :cond_2

    .line 119
    new-instance v8, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    invoke-direct {v8, p0, p1, p2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;-><init>(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;ZZ)V

    iput-object v8, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->j:Lcom/lenovo/lps/sus/SUSListener;

    .line 353
    :cond_2
    iget-object v8, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->j:Lcom/lenovo/lps/sus/SUSListener;

    invoke-static {v8}, Lcom/lenovo/lps/sus/SUS;->setSUSListener(Lcom/lenovo/lps/sus/SUSListener;)V

    .line 355
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 359
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 360
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 361
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 362
    .local v0, "availableBlocks":J
    mul-long v2, v0, v4

    .line 363
    .local v2, "availableSize":J
    iget-object v8, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-static {v8, v2, v3, v9, v10}, Lcom/lenovo/lps/sus/SUS;->setDownloadPath(Ljava/lang/String;JJ)V

    .line 365
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/lenovo/lps/sus/SUS;->setSDKPromptDisableFlag(Z)V

    .line 366
    iget-object v8, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->e:Landroid/content/Context;

    iget-object v9, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->f:Ljava/lang/String;

    iget v10, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a:I

    iget-object v11, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->g:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/lenovo/lps/sus/SUS;->AsyncQueryLatestVersionByPackageName(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
