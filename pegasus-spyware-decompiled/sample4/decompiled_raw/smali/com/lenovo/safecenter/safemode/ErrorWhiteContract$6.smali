.class final Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$6;
.super Ljava/lang/Object;
.source "ErrorWhiteContract.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$6;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 212
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$6;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 213
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$6;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->c(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$6;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v1, p3}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->a(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;I)I

    .line 216
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$6;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->d(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$6;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->c(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$6;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 229
    :cond_1
    return-void

    .line 225
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    goto :goto_0
.end method
