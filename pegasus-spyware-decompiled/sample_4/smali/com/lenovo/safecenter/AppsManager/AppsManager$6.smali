.class final Lcom/lenovo/safecenter/AppsManager/AppsManager$6;
.super Ljava/lang/Object;
.source "AppsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 315
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$6;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 319
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$6;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 323
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$6;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 324
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$6;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/ProcessInfo;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/ProcessInfo;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 327
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$6;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->m(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/app/ActivityManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$6;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$6;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->n(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->notifyDataSetChanged()V

    .line 323
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 331
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$6;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->k(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 333
    return-void
.end method
