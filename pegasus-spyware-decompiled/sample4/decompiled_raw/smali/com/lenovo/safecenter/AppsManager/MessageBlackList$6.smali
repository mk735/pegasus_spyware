.class final Lcom/lenovo/safecenter/AppsManager/MessageBlackList$6;
.super Ljava/lang/Object;
.source "MessageBlackList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/MessageBlackList;
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
    .line 145
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$6;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$6;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$6;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->g(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$6;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->h(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$6;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$6;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
