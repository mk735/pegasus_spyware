.class final Ltms/dy;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/es$a;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ltms/es;


# direct methods
.method constructor <init>(Ltms/es;Z)V
    .locals 0

    iput-object p1, p0, Ltms/dy;->b:Ltms/es;

    iput-boolean p2, p0, Ltms/dy;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ltms/dy;->b:Ltms/es;

    iget-boolean v1, p0, Ltms/dy;->a:Z

    invoke-static {v0, v1}, Ltms/es;->a(Ltms/es;Z)Z

    return-void
.end method

.method public final a(Lcom/tencent/tmsecure/module/permission/IDummyService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Ltms/dy;->a:Z

    invoke-interface {p1, v0}, Lcom/tencent/tmsecure/module/permission/IDummyService;->setEnable(Z)V

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
