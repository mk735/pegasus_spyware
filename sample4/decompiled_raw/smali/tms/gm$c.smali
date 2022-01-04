.class final Ltms/gm$c;
.super Landroid/os/FileObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Ltms/gm;

.field private b:Lcom/tencent/tmsecure/module/tools/IFileChangedListener;


# direct methods
.method public constructor <init>(Ltms/gm;Ljava/lang/String;ILcom/tencent/tmsecure/module/tools/IFileChangedListener;)V
    .locals 0

    iput-object p1, p0, Ltms/gm$c;->a:Ltms/gm;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Ltms/gm$c;->b:Lcom/tencent/tmsecure/module/tools/IFileChangedListener;

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ltms/gm$c;->b:Lcom/tencent/tmsecure/module/tools/IFileChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/gm$c;->a:Ltms/gm;

    invoke-static {v0}, Ltms/gm;->a(Ltms/gm;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/gm$c;->a:Ltms/gm;

    invoke-static {v0}, Ltms/gm;->a(Ltms/gm;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ltms/gm$c;->b:Lcom/tencent/tmsecure/module/tools/IFileChangedListener;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "event"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "path"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
