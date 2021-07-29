.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;
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
    .line 447
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iput p2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v1, "third"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->start()V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$2;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$2;->start()V

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->n(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0665

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
