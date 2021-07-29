.class final Lcom/lenovo/safecenter/AppsManager/AppPermManager$2;
.super Ljava/lang/Object;
.source "AppPermManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppPermManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$2;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$2;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->x(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$2;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->m(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$2;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->setResult(I)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$2;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->finish()V

    .line 290
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$2;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->setResult(I)V

    goto :goto_0
.end method
