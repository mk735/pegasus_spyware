.class final Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;
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
    .line 154
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 158
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;Z)Z

    .line 159
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->k(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->updateApp(Ljava/util/ArrayList;I)V

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->l(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->getGroupCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setTranscriptMode(I)V

    .line 166
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 168
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;I)I

    .line 170
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
