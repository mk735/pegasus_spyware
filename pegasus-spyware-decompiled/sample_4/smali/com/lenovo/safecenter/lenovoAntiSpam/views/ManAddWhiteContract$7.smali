.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;
.super Ljava/lang/Object;
.source "ManAddWhiteContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->onBtn_Click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 427
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->m(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 429
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    .line 431
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    const v5, 0x7f0d0246

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 474
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->checkCancelAll()Z

    move-result v4

    if-nez v4, :cond_5

    .line 436
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 437
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v2, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 440
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 441
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 443
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 446
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_2
    const-string v4, "count"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v5, v5, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getWhitePersonCount()I

    move-result v5

    rsub-int v5, v5, 0x1f4

    if-le v4, v5, :cond_3

    .line 450
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    const v5, 0x7f0d02a7

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 454
    :cond_3
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->n(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v4, v2, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->hasblack(Ljava/util/List;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 456
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v4, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->showDialog(Ljava/util/List;)V

    goto :goto_0

    .line 460
    :cond_4
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v4, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->initApps(Ljava/util/List;)V

    goto/16 :goto_0

    .line 467
    .end local v1    # "i":I
    .end local v2    # "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    .end local v3    # "size":I
    :cond_5
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    const v5, 0x7f0d024c

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 472
    :cond_6
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    const v5, 0x7f0d025b

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
