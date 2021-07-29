.class final Lcom/lenovo/safecenter/AppsManager/AppsManager$4;
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
    .line 287
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$4;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 290
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$4;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v1, p3}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b(Lcom/lenovo/safecenter/AppsManager/AppsManager;I)I

    .line 291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$4;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    const-class v2, Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "permType"

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$4;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->i(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v2, "pkgname"

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$4;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$4;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->startActivityForResult(Landroid/content/Intent;I)V

    .line 295
    return-void
.end method
