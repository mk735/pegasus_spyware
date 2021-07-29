.class final Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$6;
.super Ljava/lang/Object;
.source "CheckDisplayLog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 188
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$6;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 190
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$6;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    .line 191
    .local v0, "log":Lcom/lenovo/safecenter/support/SafeLog;
    iget v1, v0, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    if-ne v1, v2, :cond_0

    .line 193
    const/4 v1, 0x0

    iput v1, v0, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$6;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 199
    return-void

    .line 196
    :cond_0
    iput v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    goto :goto_0
.end method
