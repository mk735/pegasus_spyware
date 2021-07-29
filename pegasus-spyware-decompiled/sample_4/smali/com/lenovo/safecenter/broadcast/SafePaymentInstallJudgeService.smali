.class public Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;
.super Landroid/app/Service;
.source "SafePaymentInstallJudgeService.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/lenovo/safecenter/adapter/DaoImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 12
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 46
    .local v11, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/database/AppUtil;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "md5":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 52
    .local v9, "filesize":J
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->c:Lcom/lenovo/safecenter/adapter/DaoImpl;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->b:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    const-string v6, "true"

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/safecenter/adapter/DaoImpl;->insterForUserApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v3    # "md5":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "filesize":J
    .end local v11    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v7

    .line 55
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 29
    const-string v0, "ydp"

    const-string v1, "add app md5 service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkgname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/lenovo/safecenter/adapter/DaoImpl;

    new-instance v1, Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/adapter/DaoImpl;-><init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;->c:Lcom/lenovo/safecenter/adapter/DaoImpl;

    .line 33
    new-instance v0, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService$1;-><init>(Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/broadcast/SafePaymentInstallJudgeService$1;->start()V

    .line 39
    return-void
.end method
