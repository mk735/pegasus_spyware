.class final Lcom/lenovo/safecenter/net/NetFilter$4;
.super Ljava/lang/Object;
.source "NetFilter.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/NetFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/lenovo/safecenter/net/support/PhoneSimInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/NetFilter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/NetFilter;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/lenovo/safecenter/net/NetFilter$4;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 786
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$4;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->o(Lcom/lenovo/safecenter/net/NetFilter;)Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->isEmpty()Z

    move-result v0

    .line 787
    .local v0, "isEmpty":Z
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$4;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->p(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 788
    return-void

    .line 787
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/lenovo/safecenter/net/support/PhoneSimInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$4;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->m(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 767
    new-instance v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;

    invoke-static {}, Lcom/lenovo/safecenter/net/NetFilter;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter$4;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/NetFilter;->n(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 763
    check-cast p2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$4;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->m(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$4;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->o(Lcom/lenovo/safecenter/net/NetFilter;)Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->bindStats(Lcom/lenovo/safecenter/net/support/PhoneSimInfo;)V

    invoke-direct {p0}, Lcom/lenovo/safecenter/net/NetFilter$4;->a()V

    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/lenovo/safecenter/net/support/PhoneSimInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/lenovo/safecenter/net/support/PhoneSimInfo;>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$4;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->o(Lcom/lenovo/safecenter/net/NetFilter;)Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->bindStats(Lcom/lenovo/safecenter/net/support/PhoneSimInfo;)V

    .line 782
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/NetFilter$4;->a()V

    .line 783
    return-void
.end method
