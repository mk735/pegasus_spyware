.class final Lcom/lenovo/safecenter/antivirus/support/dowmdataService$2;
.super Ljava/lang/Object;
.source "dowmdataService.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/update/ICheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$2;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckCanceled()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public final onCheckEvent(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    const/4 v3, 0x1

    .line 171
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 172
    .local v0, "mes":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 173
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$2;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    return-void
.end method

.method public final onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 5
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/CheckResult;

    .prologue
    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$2;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->a(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Ljava/util/List;)Ljava/util/List;

    .line 181
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$2;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->e(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$2;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->e(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 201
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 194
    .local v1, "mes":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 195
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$2;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v1    # "mes":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onCheckStarted()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method
