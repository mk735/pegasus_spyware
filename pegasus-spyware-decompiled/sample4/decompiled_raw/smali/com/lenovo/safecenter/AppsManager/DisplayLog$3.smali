.class final Lcom/lenovo/safecenter/AppsManager/DisplayLog$3;
.super Ljava/lang/Object;
.source "DisplayLog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/DisplayLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

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
    const/4 v6, 0x0

    .line 183
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    const-class v4, Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/SafeLog;

    .line 186
    .local v2, "log":Lcom/lenovo/safecenter/support/SafeLog;
    iget-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->logDay:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 189
    const-string v3, "permType"

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->f(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v3, "pkgname"

    iget-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v3, "from"

    const-string v4, "displaylog"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 195
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0357

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
