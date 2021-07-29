.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$4;
.super Ljava/lang/Object;
.source "ManAddWhiteContract.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 369
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 373
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 374
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v1

    .line 375
    .local v1, "flag":Z
    if-eqz v1, :cond_0

    .line 376
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setSelect(Z)V

    .line 377
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->k(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)I

    .line 382
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->setAddBtnText()V

    .line 383
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 384
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 385
    return-void

    .line 379
    :cond_0
    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setSelect(Z)V

    .line 380
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)I

    goto :goto_0
.end method
