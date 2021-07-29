.class final Lcom/lenovo/safecenter/safemode/AddContract$4;
.super Ljava/lang/Object;
.source "AddContract.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/AddContract;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/AddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/AddContract;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/AddContract$4;->a:Lcom/lenovo/safecenter/safemode/AddContract;

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
    const/4 v3, 0x0

    .line 298
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$4;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->j(Lcom/lenovo/safecenter/safemode/AddContract;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$4;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    const v2, 0x7f0d01be

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 319
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$4;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->f(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 305
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    .line 308
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$4;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->k(Lcom/lenovo/safecenter/safemode/AddContract;)I

    .line 314
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$4;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->setAddBtnText()V

    .line 315
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$4;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->f(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 311
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    .line 312
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$4;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->l(Lcom/lenovo/safecenter/safemode/AddContract;)I

    goto :goto_1
.end method
