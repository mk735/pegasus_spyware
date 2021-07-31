.class final Lcom/lenovo/safecenter/antivirus/support/dowmdataService$3;
.super Ljava/lang/Object;
.source "dowmdataService.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateListener;


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
    .line 213
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$3;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 3
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/UpdateInfo;
    .param p2, "arg1"    # I

    .prologue
    .line 217
    const-string v0, "demo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public final onUpdateCanceled()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public final onUpdateEvent(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 4
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/UpdateInfo;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x1

    .line 223
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 224
    .local v0, "mes":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 225
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$3;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    return-void
.end method

.method public final onUpdateFinished()V
    .locals 4

    .prologue
    .line 232
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 233
    .local v0, "mes":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 234
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$3;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method

.method public final onUpdateStarted()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method
