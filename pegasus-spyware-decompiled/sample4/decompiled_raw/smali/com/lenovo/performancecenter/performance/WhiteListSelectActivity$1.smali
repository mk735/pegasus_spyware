.class final Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$1;
.super Ljava/lang/Object;
.source "WhiteListSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$1;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 105
    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$1;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne p3, v5, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$1;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    .line 110
    .local v0, "appInfo":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)I

    move-result v2

    .line 111
    .local v2, "state":I
    if-ne v2, v7, :cond_2

    move v5, v6

    :goto_1
    invoke-static {v0, v5}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;I)I

    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;

    .line 114
    .local v4, "vh":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)I

    move-result v3

    .line 117
    .local v3, "toState":I
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 118
    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$1;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->c(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$1;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->c(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_2
    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;)Landroid/widget/CheckBox;

    move-result-object v5

    if-ne v3, v7, :cond_4

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v3    # "toState":I
    .end local v4    # "vh":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;
    :cond_2
    move v5, v7

    .line 111
    goto :goto_1

    .line 123
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v3    # "toState":I
    .restart local v4    # "vh":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;
    :cond_3
    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$1;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->c(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v7, v6

    .line 126
    goto :goto_3
.end method
