.class final Ltms/fp;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/x$a;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;

.field final synthetic b:Lcom/tencent/tmsecure/module/update/UpdateInfo;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Ltms/gy;


# direct methods
.method constructor <init>(Ltms/gy;Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;Lcom/tencent/tmsecure/module/update/UpdateInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Ltms/fp;->d:Ltms/gy;

    iput-object p2, p0, Ltms/fp;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;

    iput-object p3, p0, Ltms/fp;->b:Lcom/tencent/tmsecure/module/update/UpdateInfo;

    iput-object p4, p0, Ltms/fp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "key_errcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ltms/fp;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;

    iget-object v2, p0, Ltms/fp;->b:Lcom/tencent/tmsecure/module/update/UpdateInfo;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateEvent(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V

    iget-object v0, p0, Ltms/fp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
