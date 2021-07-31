.class final Ltms/du;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/es$a;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ltms/es;


# direct methods
.method constructor <init>(Ltms/es;III)V
    .locals 0

    iput-object p1, p0, Ltms/du;->d:Ltms/es;

    iput p2, p0, Ltms/du;->a:I

    iput p3, p0, Ltms/du;->b:I

    iput p4, p0, Ltms/du;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Ltms/du;->d:Ltms/es;

    invoke-static {v0}, Ltms/es;->b(Ltms/es;)Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    move-result-object v0

    iget v1, p0, Ltms/du;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->getItemByUid(I)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    iget v1, p0, Ltms/du;->b:I

    iget v2, p0, Ltms/du;->c:I

    aput v2, v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tmsecure/module/permission/IDummyService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Ltms/du;->a:I

    iget v1, p0, Ltms/du;->b:I

    iget v2, p0, Ltms/du;->c:I

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/tmsecure/module/permission/IDummyService;->updatePermissionTable(III)V

    return-void
.end method

.method public final b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Ltms/du;->d:Ltms/es;

    invoke-static {v0}, Ltms/es;->b(Ltms/es;)Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    move-result-object v0

    iget v1, p0, Ltms/du;->a:I

    iget v2, p0, Ltms/du;->b:I

    iget v3, p0, Ltms/du;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->update(III)Z

    return-void
.end method
