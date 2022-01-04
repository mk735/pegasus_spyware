.class final Lcom/lenovo/safecenter/AppsManager/MessageBlackList$3;
.super Ljava/lang/Object;
.source "MessageBlackList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->setOnclick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$3;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 328
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$3;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$3;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    return-void
.end method
