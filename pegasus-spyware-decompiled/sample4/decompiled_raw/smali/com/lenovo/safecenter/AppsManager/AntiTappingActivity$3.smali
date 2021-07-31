.class final Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;
.super Ljava/lang/Object;
.source "AntiTappingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x0

    .line 99
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->a(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, p3

    .line 102
    .local v1, "pkgname":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 103
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->c(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pkgname"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->c(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "permType"

    const-string v4, "privacy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->c(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->a(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 108
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 111
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0357

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
