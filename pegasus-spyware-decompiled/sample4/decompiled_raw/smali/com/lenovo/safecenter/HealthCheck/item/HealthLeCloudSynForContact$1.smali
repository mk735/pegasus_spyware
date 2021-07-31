.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;
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
    .line 140
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "failMsg"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->N(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->unbind(Landroid/content/Context;)V

    .line 213
    return-void
.end method

.method public final onFinish(Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;)V
    .locals 9
    .param p1, "diffInfo"    # Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0d05f3

    const v5, 0x7f0d054e

    const/4 v4, 0x3

    .line 144
    if-nez p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->unbind(Landroid/content/Context;)V

    .line 208
    :goto_0
    return-void

    .line 148
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

    .line 150
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->b(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->c(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->d(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 154
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {p1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a(Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 160
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->e(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->f(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 161
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->g(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->h(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->i(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->j(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->k(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->l(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d05f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->m(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 168
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->n(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 169
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->o(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iput-boolean v7, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 170
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->p(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->q(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d05fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->r(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    invoke-virtual {v0, v4, v8}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->s(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I

    .line 176
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->u(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->t(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 206
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->M(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->unbind(Landroid/content/Context;)V

    .line 207
    const-string v0, "wu0wu"

    const-string v1, "scanLeCloudSynForContact finish..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_2
    iget v0, p1, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opAdd:I

    if-nez v0, :cond_3

    iget v0, p1, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opDelete:I

    if-nez v0, :cond_3

    iget v0, p1, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opUpdate:I

    if-eqz v0, :cond_1

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->b(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 185
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->v(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->w(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 186
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->x(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->y(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->z(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->A(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->B(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->C(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d05f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->D(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 193
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->E(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 194
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->F(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iput-boolean v7, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 195
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->G(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->H(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d05fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->I(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    invoke-virtual {v0, v4, v8}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 200
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->J(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I

    .line 202
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->L(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->K(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    goto/16 :goto_1
.end method
