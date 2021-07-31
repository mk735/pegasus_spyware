.class final Ltms/bn$a;
.super Lcom/tencent/tmsecure/module/aresengine/InComingCallFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

.field private e:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

.field private f:Ltms/ax;

.field private g:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;


# direct methods
.method constructor <init>()V
    .locals 7

    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/InComingCallFilter;-><init>()V

    new-instance v0, Ltms/ax;

    invoke-direct {v0}, Ltms/ax;-><init>()V

    iput-object v0, p0, Ltms/bn$a;->f:Ltms/ax;

    iget-object v0, p0, Ltms/bn$a;->f:Ltms/ax;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ltms/ax;->a([I)V

    iget-object v0, p0, Ltms/bn$a;->f:Ltms/ax;

    invoke-direct {p0, v2}, Ltms/bn$a;->a(I)Ltms/ax$a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bn$a;->f:Ltms/ax;

    invoke-direct {p0, v3}, Ltms/bn$a;->a(I)Ltms/ax$a;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bn$a;->f:Ltms/ax;

    invoke-direct {p0, v4}, Ltms/bn$a;->a(I)Ltms/ax$a;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bn$a;->f:Ltms/ax;

    invoke-direct {p0, v5}, Ltms/bn$a;->a(I)Ltms/ax$a;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bn$a;->f:Ltms/ax;

    invoke-direct {p0, v6}, Ltms/bn$a;->a(I)Ltms/ax$a;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bn$a;->f:Ltms/ax;

    const/16 v1, 0x20

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Ltms/bn$a;->a(I)Ltms/ax$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v1

    iput-object v1, p0, Ltms/bn$a;->g:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bn$a;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bn$a;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bn$a;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bn$a;->e:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    iput-object v0, p0, Ltms/bn$a;->d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
    .end array-data
.end method

.method static synthetic a(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/bn$a;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method private a(I)Ltms/ax$a;
    .locals 1

    new-instance v0, Ltms/bc;

    invoke-direct {v0, p0, p1}, Ltms/bc;-><init>(Ltms/bn$a;I)V

    return-object v0
.end method

.method static synthetic b(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/bn$a;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic c(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/bn$a;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic d(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 1

    iget-object v0, p0, Ltms/bn$a;->d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-object v0
.end method

.method static synthetic e(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    iget-object v0, p0, Ltms/bn$a;->e:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-object v0
.end method

.method static synthetic f(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 1

    iget-object v0, p0, Ltms/bn$a;->g:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-object v0
.end method


# virtual methods
.method public final defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    invoke-virtual {v0, v3, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    return-object v0
.end method

.method protected final synthetic onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 2

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v0, p0, Ltms/bn$a;->f:Ltms/ax;

    invoke-virtual {p0}, Ltms/bn$a;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Ltms/ax;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method public final setBlacklistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltms/bn$a;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setLastCallLogDao(Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;)V
    .locals 0

    iput-object p1, p0, Ltms/bn$a;->e:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-void
.end method

.method public final setPhoneDeviceController(Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;)V
    .locals 0

    iput-object p1, p0, Ltms/bn$a;->g:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-void
.end method

.method public final setPrivatelistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltms/bn$a;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setSysDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
    .locals 0

    iput-object p1, p0, Ltms/bn$a;->d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-void
.end method

.method public final setWhitelistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltms/bn$a;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method
