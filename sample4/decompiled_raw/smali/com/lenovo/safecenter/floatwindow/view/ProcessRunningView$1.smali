.class final Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;
.super Ljava/lang/Object;
.source "ProcessRunningView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

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
    .line 100
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->e(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/service/object/UsedAppInfo;

    iget-object v0, v0, Lcom/lenovo/performancecenter/service/object/UsedAppInfo;->packageName:Ljava/lang/String;

    const-string v1, " -fs "

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    iget-object v2, v2, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 101
    sget-object v1, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->instanceClearView:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->e(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/service/object/UsedAppInfo;

    iget v0, v0, Lcom/lenovo/performancecenter/service/object/UsedAppInfo;->memroy:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->updateRunningView(I)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->e(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->d(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->e(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->clear_view()V

    .line 109
    :cond_0
    return-void
.end method
