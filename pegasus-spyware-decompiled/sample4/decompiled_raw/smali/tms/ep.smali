.class final Ltms/ep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltms/en;


# direct methods
.method constructor <init>(Ltms/en;)V
    .locals 0

    iput-object p1, p0, Ltms/ep;->a:Ltms/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Ltms/en;->c:Z

    iget-object v0, p0, Ltms/ep;->a:Ltms/en;

    invoke-static {v0}, Ltms/en;->b(Ltms/en;)Z

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    return-void
.end method
