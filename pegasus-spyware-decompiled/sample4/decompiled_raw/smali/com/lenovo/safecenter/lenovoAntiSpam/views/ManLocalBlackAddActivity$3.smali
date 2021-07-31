.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$3;
.super Ljava/lang/Object;
.source "ManLocalBlackAddActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

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

    .line 307
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 308
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v1

    .line 309
    .local v1, "flag":Z
    if-eqz v1, :cond_0

    .line 310
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setSelect(Z)V

    .line 311
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->l(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)I

    .line 316
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->setAddBtnText()V

    .line 317
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 318
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->k(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 319
    return-void

    .line 313
    :cond_0
    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setSelect(Z)V

    .line 314
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)I

    goto :goto_0
.end method
