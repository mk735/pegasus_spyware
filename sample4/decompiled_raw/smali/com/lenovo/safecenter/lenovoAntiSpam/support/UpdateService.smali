.class public Lcom/lenovo/safecenter/lenovoAntiSpam/support/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 23
    const-string v2, "flag"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 24
    .local v0, "flag":Z
    const-string v2, "UpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin>>>>>>>>>>>.flag=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SafeCenter;->setPathUrl(Landroid/content/Context;)V

    .line 29
    invoke-static {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SmsCheckUtils;->init(Landroid/content/Context;)V

    .line 30
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    .line 31
    .local v1, "utils":Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;
    const-string v2, "systime"

    const-string v3, "2011.08.18"

    invoke-virtual {v1, v2, v3, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 37
    .end local v1    # "utils":Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/UpdateService;->stopSelf()V

    .line 39
    return-void
.end method
