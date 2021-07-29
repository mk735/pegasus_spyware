.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$c;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "AppUninstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$c;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final packageMoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 657
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$c;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 658
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 659
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$c;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 660
    return-void
.end method
