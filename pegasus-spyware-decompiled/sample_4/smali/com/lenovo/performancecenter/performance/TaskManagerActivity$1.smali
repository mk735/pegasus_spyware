.class final Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;
.super Ljava/lang/Object;
.source "TaskManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/TaskManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 117
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 118
    .local v2, "userSize":I
    if-eqz p3, :cond_0

    if-ne p3, v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;

    .line 123
    .local v3, "vh":Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;
    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    if-gt p3, v2, :cond_4

    .line 127
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 129
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 139
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->d(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->notifyDataSetChanged()V

    .line 141
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->e(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)I

    move-result v5

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;I)I

    .line 142
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->c(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 144
    const/4 v0, 0x0

    .line 150
    .local v0, "currentAppCount":I
    :goto_2
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->g(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    const v6, 0x7f0d0898

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v9}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->f(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v10}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->e(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    if-nez v0, :cond_3

    .line 154
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->g(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->h(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    :cond_3
    const-string v4, " -fs "

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->f(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 133
    .end local v0    # "currentAppCount":I
    :cond_4
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->c(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    sub-int v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 134
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->c(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 135
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->c(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 145
    :cond_5
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->c(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 146
    :cond_6
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "currentAppCount":I
    goto/16 :goto_2

    .line 148
    .end local v0    # "currentAppCount":I
    :cond_7
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x2

    .restart local v0    # "currentAppCount":I
    goto/16 :goto_2
.end method
