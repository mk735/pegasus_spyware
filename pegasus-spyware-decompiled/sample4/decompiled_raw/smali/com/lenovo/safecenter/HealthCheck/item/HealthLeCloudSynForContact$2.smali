.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;
.super Ljava/lang/Object;
.source "HealthLeCloudSynForContact.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;
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
    .line 264
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "failMsg"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->ae(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->unbind(Landroid/content/Context;)V

    .line 305
    return-void
.end method

.method public final onFinish(Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;)V
    .locals 5
    .param p1, "diffInfo"    # Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 268
    if-nez p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->O(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->unbind(Landroid/content/Context;)V

    .line 300
    :goto_0
    return-void

    .line 272
    :cond_0
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diffInfo.toString()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v0, p1, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opAdd:I

    if-nez v0, :cond_2

    iget v0, p1, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opDelete:I

    if-nez v0, :cond_2

    iget v0, p1, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opUpdate:I

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->P(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->Q(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->R(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d05f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->S(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 280
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->T(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 281
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->U(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iput-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 282
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->V(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->W(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->X(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 293
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->Z(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->Y(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 295
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->ab(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->aa(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 296
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->ac(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->saveHealthScoreAndCheckupTime()V

    .line 298
    :cond_2
    const-string v0, "wu0wu"

    const-string v1, "scanLeCloudSynForContact finish..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->ad(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->unbind(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
