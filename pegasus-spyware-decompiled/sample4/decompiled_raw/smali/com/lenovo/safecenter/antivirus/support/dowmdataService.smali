.class public Lcom/lenovo/safecenter/antivirus/support/dowmdataService;
.super Landroid/app/Service;
.source "dowmdataService.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Lcom/tencent/tmsecure/module/update/UpdateManager;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/update/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;-><init>(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/dowmdataService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/dowmdataService;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/dowmdataService;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Lcom/tencent/tmsecure/module/update/UpdateManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d:Lcom/tencent/tmsecure/module/update/UpdateManager;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Lcom/tencent/tmsecure/module/update/UpdateManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d:Lcom/tencent/tmsecure/module/update/UpdateManager;

    return-object v0
.end method


# virtual methods
.method public down(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;-><init>(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->start()V

    .line 345
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 152
    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d:Lcom/tencent/tmsecure/module/update/UpdateManager;

    .line 153
    iput-boolean v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->b:Z

    iput-boolean v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->c:Z

    .line 154
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 255
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 256
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    .line 257
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 127
    const-string v0, "downdata"

    const-string v1, "onStartonStartonStartonStartonStartonStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antivirus.query"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "downdata"

    const-string v1, "queryqueryqueryqueryquery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "query"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->down(Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antivirus.update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "update"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->down(Ljava/lang/String;)V

    .line 140
    const-string v0, "yincc"

    const-string v1, "update Url !! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/utils/httpApi/LeSafeAPI;->getBlackUrlSyncFlag(Landroid/content/Context;Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;)V

    goto :goto_0
.end method

.method public setQueryIntent(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.antivirus.queryresult"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string v1, "desc"

    const-string v2, "virusquery_desc"

    invoke-static {v2, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method public setUpdateIntent(Ljava/lang/String;II)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "type"    # I

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.antivirus.updateresult"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d:Lcom/tencent/tmsecure/module/update/UpdateManager;

    const/16 v1, 0xe

    new-instance v2, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$2;-><init>(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d:Lcom/tencent/tmsecure/module/update/UpdateManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->e:Ljava/util/List;

    new-instance v2, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$3;-><init>(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->update(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    .line 250
    :cond_0
    return-void
.end method
