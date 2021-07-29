.class final Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$8;
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
    .line 211
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$8;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$8;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$8;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    const/4 v2, 0x0

    iput v2, v1, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 215
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$8;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method
