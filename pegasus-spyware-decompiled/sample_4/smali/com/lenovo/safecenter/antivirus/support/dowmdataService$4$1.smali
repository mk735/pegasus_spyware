.class final Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4$1;
.super Ljava/lang/Object;
.source "dowmdataService.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/update/ICheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckCanceled()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public final onCheckEvent(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 294
    const-string v1, "demo"

    const-string v2, "CheckResult=========onCheckEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 296
    .local v0, "mes":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 297
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;

    iget-object v1, v1, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->b:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    return-void
.end method

.method public final onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 5
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/CheckResult;

    .prologue
    .line 305
    :try_start_0
    const-string v2, "demo"

    const-string v3, "CheckResult=========onCheckFinished"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 309
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 310
    .local v1, "mes":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 311
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->b:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    .end local v1    # "mes":Landroid/os/Message;
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 317
    .restart local v1    # "mes":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 318
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$4;->b:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->d(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v1    # "mes":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onCheckStarted()V
    .locals 2

    .prologue
    .line 329
    const-string v0, "demo"

    const-string v1, "CheckResult=========onCheckStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method
