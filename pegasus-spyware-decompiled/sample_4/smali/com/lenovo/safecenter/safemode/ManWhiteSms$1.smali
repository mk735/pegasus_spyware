.class final Lcom/lenovo/safecenter/safemode/ManWhiteSms$1;
.super Ljava/lang/Object;
.source "ManWhiteSms.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ManWhiteSms;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$1;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

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
    .line 148
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$1;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->c(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 149
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$1;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->c(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 158
    return-void

    .line 154
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    goto :goto_0
.end method
