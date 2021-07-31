.class final Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$1;
.super Ljava/lang/Object;
.source "RecentTaskView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 102
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v1, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->instanceFloatWindow:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->a(Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->getPackagename()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->a(Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->getMainname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;

    iget-object v1, v1, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
