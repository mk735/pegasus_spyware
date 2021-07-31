.class final Lcom/lenovo/safecenter/AppsManager/AppsManager$5;
.super Ljava/lang/Object;
.source "AppsManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/AppsManager;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppsManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$5;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 303
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$5;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$5;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->m(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/app/ActivityManager;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$5;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/ProcessInfo;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/ProcessInfo;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$5;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$5;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->notifyUpdate()V

    .line 308
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$5;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->n(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->notifyDataSetChanged()V

    .line 309
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$5;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->k(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    :cond_0
    return-void
.end method
