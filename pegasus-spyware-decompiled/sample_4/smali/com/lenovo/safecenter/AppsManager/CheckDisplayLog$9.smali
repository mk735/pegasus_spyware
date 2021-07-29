.class final Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$9;
.super Ljava/lang/Object;
.source "CheckDisplayLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$9;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$9;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$9;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const v1, 0x7f0d017e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$9;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->k(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$9;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const v1, 0x7f0d017c

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;I)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$9;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const v1, 0x7f0d017d

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;I)V

    goto :goto_0
.end method
