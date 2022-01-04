.class public Lcom/lenovo/safecenter/broadcast/SafePaymenUninstallService;
.super Landroid/app/Service;
.source "SafePaymenUninstallService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/SafePaymenUninstallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v1, :cond_0

    .line 49
    const/4 v2, 0x1

    .line 51
    :cond_0
    return v2

    .line 44
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 46
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 26
    const-string v3, "pkgName"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/broadcast/SafePaymenUninstallService;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    const-string v3, "safepayment"

    const-string v4, "pkgname null uninstall error!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/SafePaymenUninstallService;->stopSelf()V

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 33
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .local v2, "uninstallIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/broadcast/SafePaymenUninstallService;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/SafePaymenUninstallService;->stopSelf()V

    goto :goto_0
.end method
