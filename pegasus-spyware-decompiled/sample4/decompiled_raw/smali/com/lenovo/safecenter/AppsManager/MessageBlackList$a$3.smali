.class final Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;
.super Ljava/lang/Object;
.source "MessageBlackList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/AppInfo;

.field final synthetic b:I

.field final synthetic c:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;Lcom/lenovo/safecenter/support/AppInfo;I)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->c:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->a:Lcom/lenovo/safecenter/support/AppInfo;

    iput p3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 415
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->a:Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-eq v0, v3, :cond_0

    .line 416
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->c:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->n(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    .line 417
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->c:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->c:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->a:Lcom/lenovo/safecenter/support/AppInfo;

    iput v3, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 420
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->c:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 421
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->c:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 422
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->c:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->a:Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;->a:Lcom/lenovo/safecenter/support/AppInfo;

    iget v2, v2, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;Lcom/lenovo/safecenter/support/AppInfo;I)V

    .line 423
    return-void
.end method
