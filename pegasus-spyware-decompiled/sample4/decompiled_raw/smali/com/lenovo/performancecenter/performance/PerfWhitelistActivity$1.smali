.class final Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$1;
.super Ljava/lang/Object;
.source "PerfWhitelistActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$1;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    const/4 v8, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 92
    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$1;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    .line 93
    .local v0, "appInfo":Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;
    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$1;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)I

    move-result v5

    if-ne p3, v5, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)I

    move-result v2

    .line 98
    .local v2, "state":I
    if-ne v2, v7, :cond_4

    move v5, v6

    :goto_1
    invoke-static {v0, v5}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;I)I

    .line 100
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)I

    move-result v3

    .line 102
    .local v3, "toState":I
    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$1;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->c(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/HashMap;

    move-result-object v5

    new-array v9, v7, [I

    aput v3, v9, v6

    invoke-virtual {v5, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;

    .line 105
    .local v4, "vh":Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;
    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/CheckBox;

    move-result-object v9

    if-ne v3, v7, :cond_5

    move v5, v7

    :goto_2
    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$1;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->d(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$1;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->e(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 107
    :cond_2
    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/TextView;

    move-result-object v5

    if-ne v3, v7, :cond_3

    move v6, v8

    :cond_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v3    # "toState":I
    .end local v4    # "vh":Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;
    :cond_4
    move v5, v7

    .line 98
    goto :goto_1

    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v3    # "toState":I
    .restart local v4    # "vh":Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;
    :cond_5
    move v5, v6

    .line 105
    goto :goto_2

    .line 109
    :cond_6
    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
