.class public Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;
.super Landroid/app/Service;
.source "LaboratoryInstallJudgeService.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/database/AppUtil;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "md5":Ljava/lang/String;
    const-string v2, "8DDB342F2DA5408402D7568AF21E29F9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "md5":Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 23
    const-string v0, "ydp"

    const-string v1, "add app md5 service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkgname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;->a:Ljava/lang/String;

    .line 26
    const-string v0, "laboratory_otherakp"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;->b:Landroid/content/SharedPreferences;

    .line 27
    new-instance v0, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService$1;-><init>(Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/broadcast/LaboratoryInstallJudgeService$1;->start()V

    .line 34
    return-void
.end method
