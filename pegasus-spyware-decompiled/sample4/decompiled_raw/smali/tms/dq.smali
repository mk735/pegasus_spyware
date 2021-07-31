.class final Ltms/dq;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/es$a;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;

.field final synthetic b:Ltms/es;


# direct methods
.method constructor <init>(Ltms/es;Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;)V
    .locals 0

    iput-object p1, p0, Ltms/dq;->b:Ltms/es;

    iput-object p2, p0, Ltms/dq;->a:Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Ltms/dq;->b:Ltms/es;

    iget-object v1, p0, Ltms/dq;->a:Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;

    invoke-static {v0, v1}, Ltms/es;->a(Ltms/es;Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;)Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;

    return-void
.end method

.method public final a(Lcom/tencent/tmsecure/module/permission/IDummyService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Ltms/dq;->b:Ltms/es;

    invoke-static {v0}, Ltms/es;->a(Ltms/es;)Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/tmsecure/module/permission/IDummyService;->setDummyServiceCallback(Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;)V

    return-void
.end method

.method public final b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
