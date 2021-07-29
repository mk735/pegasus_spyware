.class final Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$10;
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
    .line 235
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$10;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$10;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$10;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const v1, 0x7f0d0180

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;IZ)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$10;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const v1, 0x7f0d017f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;IZ)V

    goto :goto_0
.end method
