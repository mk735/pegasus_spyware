.class final Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;
.super Ljava/lang/Object;
.source "ApplicationList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/ApplicationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->h(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->i(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->i(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->j(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 217
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    iget v3, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v3, :cond_1

    .line 218
    .local v1, "flag":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 219
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->k(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I

    .line 220
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->i(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->i(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    :goto_2
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v2, v0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a(Lcom/lenovo/safecenter/AppsManager/ApplicationList;Lcom/lenovo/safecenter/support/AppInfo;Z)V

    .line 227
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->m(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .end local v1    # "flag":Z
    :cond_1
    move v1, v2

    .line 217
    goto :goto_1

    .line 223
    .restart local v1    # "flag":Z
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->l(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I

    .line 224
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->i(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->i(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
