.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;
.super Ljava/lang/Object;
.source "ManLocalBlackAddContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 363
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 365
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    .line 367
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    const v6, 0x7f0d0246

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 408
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->checkCancelAll()Z

    move-result v5

    if-nez v5, :cond_5

    .line 372
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 373
    .local v4, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v3, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 376
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 377
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 382
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_2
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->k(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getBlackListcount(I)I

    move-result v1

    .line 383
    .local v1, "count":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    rsub-int v6, v1, 0x1f4

    if-lt v5, v6, :cond_3

    .line 385
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    const v6, 0x7f0d02a7

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 389
    :cond_3
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    iget-object v5, v5, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-virtual {v5, v3, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->hasWhite(Ljava/util/List;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 391
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-virtual {v5, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->showDialog(Ljava/util/List;)V

    goto :goto_0

    .line 394
    :cond_4
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-virtual {v5, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->initApps(Ljava/util/List;)V

    goto :goto_0

    .line 401
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    .end local v4    # "size":I
    :cond_5
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    const v6, 0x7f0d024c

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 406
    :cond_6
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    const v6, 0x7f0d025b

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
