.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$1;
.super Ljava/lang/Object;
.source "AppUninstall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;I)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$1;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iput p2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$1;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$1;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$1;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    .line 438
    return-void
.end method
