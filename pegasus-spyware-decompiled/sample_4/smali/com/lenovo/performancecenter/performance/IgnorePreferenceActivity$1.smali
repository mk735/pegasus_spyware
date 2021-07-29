.class final Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;
.super Ljava/lang/Object;
.source "IgnorePreferenceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x1

    .line 115
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->a(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 118
    .local v2, "userSize":I
    if-eqz p3, :cond_0

    if-ne p3, v2, :cond_1

    .line 152
    .end local v2    # "userSize":I
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v2    # "userSize":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$b;

    .line 123
    .local v3, "vh":Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$b;
    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$b;->a(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$b;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->b(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->c(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 129
    if-gt p3, v2, :cond_3

    .line 130
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->a(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 131
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->a(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 132
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->c(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->a(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 146
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;->notifyDataSetChanged()V

    .line 147
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$b;->a(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$b;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->updateApplication(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "userSize":I
    .end local v3    # "vh":Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$b;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v2    # "userSize":I
    .restart local v3    # "vh":Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$b;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    sub-int v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 138
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->c(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
