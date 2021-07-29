.class final Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$3;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/update/ICheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->updateVirusQuery(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$3;->a:Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckCanceled()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public final onCheckEvent(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 305
    const-string v0, "demo"

    const-string v1, "CheckResult=========onCheckEvent1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a(I)I

    .line 308
    return-void
.end method

.method public final onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 3
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/CheckResult;

    .prologue
    .line 313
    :try_start_0
    const-string v1, "demo"

    const-string v2, "CheckResult=========onCheckFinished1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz p1, :cond_0

    .line 316
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a(I)I

    .line 317
    iget-object v1, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 319
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onCheckStarted()V
    .locals 2

    .prologue
    .line 328
    const-string v0, "demo"

    const-string v1, "CheckResult=========onCheckStarted1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method
