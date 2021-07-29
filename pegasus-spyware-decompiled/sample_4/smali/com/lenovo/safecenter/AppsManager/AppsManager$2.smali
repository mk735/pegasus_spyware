.class final Lcom/lenovo/safecenter/AppsManager/AppsManager$2;
.super Ljava/lang/Object;
.source "AppsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppsManager;
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
    .line 152
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$2;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$2;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->h(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$2;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->setResult(I)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$2;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->finish()V

    .line 158
    return-void
.end method
