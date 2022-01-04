.class public Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;
.super Landroid/app/Service;
.source "DownSysService.java"


# instance fields
.field a:Landroid/os/Handler;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->a:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;

    .prologue
    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->b:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 51
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 53
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 89
    const-string v0, "downdata"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update...................."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antispam.sysupdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antispam.sysquery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setQueryIntent(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.antispam.sysqueryresult"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public setUpdateIntent(Ljava/lang/String;II)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "type"    # I

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.antispam.sysupdateresult"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
