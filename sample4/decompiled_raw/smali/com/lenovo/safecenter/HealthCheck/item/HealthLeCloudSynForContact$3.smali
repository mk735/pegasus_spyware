.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$3;
.super Ljava/lang/Object;
.source "HealthLeCloudSynForContact.java"

# interfaces
.implements Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownLoadComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 386
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadActivity onDownLoadComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public final onDownLoadException(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 392
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadActivity onDownLoadException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method public final onInstallComplete(Z)V
    .locals 3
    .param p1, "succeed"    # Z

    .prologue
    .line 400
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->af(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 406
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->ai(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d08cc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 414
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadActivity onInstallComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void

    .line 402
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->ag(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)V

    goto :goto_0

    .line 405
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->ah(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)V

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V
    .locals 3
    .param p1, "resultion"    # Ljava/lang/String;
    .param p2, "lfui"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;

    .prologue
    .line 380
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadActivity onQueryResp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method
