.class final Lcom/lenovo/safecenter/net/NetFilter$2;
.super Ljava/lang/Object;
.source "NetFilter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/NetFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/NetFilter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/NetFilter;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lenovo/safecenter/net/NetFilter$2;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter$2;->a:Lcom/lenovo/safecenter/net/NetFilter;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$2;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/NetFilter$a;

    invoke-static {v2, v0}, Lcom/lenovo/safecenter/net/NetFilter;->a(Lcom/lenovo/safecenter/net/NetFilter;Lcom/lenovo/safecenter/net/NetFilter$a;)Lcom/lenovo/safecenter/net/NetFilter$a;

    .line 192
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$2;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->f(Lcom/lenovo/safecenter/net/NetFilter;)Lcom/lenovo/safecenter/net/NetFilter$a;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$2;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->f(Lcom/lenovo/safecenter/net/NetFilter;)Lcom/lenovo/safecenter/net/NetFilter$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lenovo/safecenter/net/NetFilter$a;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/lenovo/safecenter/net/NetFilter$a;->g:Z

    .line 193
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$2;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->g(Lcom/lenovo/safecenter/net/NetFilter;)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 194
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$2;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter$2;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/NetFilter;->g(Lcom/lenovo/safecenter/net/NetFilter;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/NetFilter$a;

    iput-boolean v1, v0, Lcom/lenovo/safecenter/net/NetFilter$a;->g:Z

    .line 195
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$2;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0, p3}, Lcom/lenovo/safecenter/net/NetFilter;->a(Lcom/lenovo/safecenter/net/NetFilter;I)I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$2;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->h(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 199
    return-void

    :cond_1
    move v0, v1

    .line 192
    goto :goto_0
.end method
