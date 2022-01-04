.class final Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;
.super Ljava/lang/Object;
.source "MessageBlackList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/MessageBlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 198
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;I)I

    .line 199
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;Z)Z

    .line 200
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->k(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->d(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->expertSuggest(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->l(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ExpandableListView;->setTranscriptMode(I)V

    .line 207
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 209
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 210
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->n(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    .line 209
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    return-void
.end method
