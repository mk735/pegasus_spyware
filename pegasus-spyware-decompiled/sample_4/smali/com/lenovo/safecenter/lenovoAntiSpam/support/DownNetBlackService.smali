.class public Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;
.super Landroid/app/Service;
.source "DownNetBlackService.java"


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

.field private c:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    return-object v0
.end method


# virtual methods
.method public downNetBlack(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->start()V

    .line 183
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 142
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    .line 143
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 97
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 99
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 126
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antispam.netblackupdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "update"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->downNetBlack(Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antispam.netblackquery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "query"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->downNetBlack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setQueryIntent(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.antispam.blackqueryresult"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public setUpdateIntent(Ljava/lang/String;II)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "type"    # I

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.antispam.blackupdateresult"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void
.end method
