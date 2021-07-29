.class final Lcom/lenovo/safecenter/safemode/WhiteCall$2;
.super Ljava/lang/Object;
.source "WhiteCall.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteCall;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteCall;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteCall;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$2;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$2;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteCall;->a(Lcom/lenovo/safecenter/safemode/WhiteCall;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 147
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$2;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteCall;->b(Lcom/lenovo/safecenter/safemode/WhiteCall;)I

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$2;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v1, p3}, Lcom/lenovo/safecenter/safemode/WhiteCall;->a(Lcom/lenovo/safecenter/safemode/WhiteCall;I)I

    .line 150
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$2;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->a(Lcom/lenovo/safecenter/safemode/WhiteCall;Lcom/lenovo/safecenter/support/Contract;)V

    .line 151
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$2;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteCall;->c(Lcom/lenovo/safecenter/safemode/WhiteCall;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->updateCall(I)V

    .line 152
    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 153
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$2;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteCall;->a(Lcom/lenovo/safecenter/safemode/WhiteCall;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$2;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteCall;->b(Lcom/lenovo/safecenter/safemode/WhiteCall;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 157
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$2;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteCall;->a(Lcom/lenovo/safecenter/safemode/WhiteCall;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 166
    :cond_1
    return-void

    .line 162
    :cond_2
    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    goto :goto_0
.end method
