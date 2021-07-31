.class final Ltms/cs$b;
.super Lcom/tencent/tmsecure/module/aresengine/SystemCalllogFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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

.field private d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

.field private g:Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

.field private h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

.field private i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

.field private j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

.field private k:Landroid/content/Context;

.field private l:Ltms/ax;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/SystemCalllogFilter;-><init>()V

    iput-object p1, p0, Ltms/cs$b;->k:Landroid/content/Context;

    invoke-direct {p0}, Ltms/cs$b;->c()Z

    move-result v0

    iput-boolean v0, p0, Ltms/cs$b;->m:Z

    new-instance v0, Ltms/ax;

    invoke-direct {v0}, Ltms/ax;-><init>()V

    iput-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ltms/ax;->a([I)V

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    const/4 v1, 0x1

    new-instance v2, Ltms/cf;

    invoke-direct {v2, p0}, Ltms/cf;-><init>(Ltms/cs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    const/4 v1, 0x2

    new-instance v2, Ltms/cg;

    invoke-direct {v2, p0}, Ltms/cg;-><init>(Ltms/cs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    const/4 v1, 0x4

    new-instance v2, Ltms/ch;

    invoke-direct {v2, p0}, Ltms/ch;-><init>(Ltms/cs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    const/16 v1, 0x8

    new-instance v2, Ltms/ci;

    invoke-direct {v2, p0}, Ltms/ci;-><init>(Ltms/cs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    const/16 v1, 0x10

    new-instance v2, Ltms/ck;

    invoke-direct {v2, p0}, Ltms/ck;-><init>(Ltms/cs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    const/16 v1, 0x20

    new-instance v2, Ltms/co;

    invoke-direct {v2, p0}, Ltms/co;-><init>(Ltms/cs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    const/16 v1, 0x40

    new-instance v2, Ltms/cp;

    invoke-direct {v2, p0}, Ltms/cp;-><init>(Ltms/cs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    const/16 v1, 0x80

    new-instance v2, Ltms/cq;

    invoke-direct {v2, p0}, Ltms/cq;-><init>(Ltms/cs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    const/16 v1, 0x100

    new-instance v2, Ltms/cr;

    invoke-direct {v2, p0}, Ltms/cr;-><init>(Ltms/cs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/cs$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/cs$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/cs$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    iput-object v1, p0, Ltms/cs$b;->d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    iput-object v1, p0, Ltms/cs$b;->e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v1

    iput-object v1, p0, Ltms/cs$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    move-result-object v1

    iput-object v1, p0, Ltms/cs$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getEntityConverter()Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v1

    iput-object v1, p0, Ltms/cs$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    iput-object v0, p0, Ltms/cs$b;->i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x80
        0x40
        0x100
    .end array-data
.end method

.method static synthetic a(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/cs$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic a(Ltms/cs$b;Ltms/ax$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V
    .locals 3

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    invoke-virtual {p1}, Ltms/ax$a;->c()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    invoke-virtual {p1}, Ltms/ax$a;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-virtual {p1}, Ltms/ax$a;->d()I

    move-result v0

    iput v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    invoke-virtual {p1}, Ltms/ax$a;->b()I

    move-result v0

    iput v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    invoke-virtual {p1, v1}, Ltms/ax$a;->a(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ltms/ax$a;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    if-eqz p4, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    :cond_0
    iget-object v2, p0, Ltms/cs$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->remove(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Z

    iget-object v2, p0, Ltms/cs$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltms/cs$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    invoke-interface {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;->convert(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    move-result-object v0

    :cond_1
    invoke-interface {p2, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;->insert(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J

    :cond_2
    return-void
.end method

.method static synthetic b(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 1

    iget-object v0, p0, Ltms/cs$b;->e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    return-object v0
.end method

.method static synthetic c(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/cs$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/cs$b;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.htc.launcher"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic d(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 1

    iget-object v0, p0, Ltms/cs$b;->d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    return-object v0
.end method

.method static synthetic e(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/cs$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic f(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 1

    iget-object v0, p0, Ltms/cs$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-object v0
.end method

.method static synthetic g(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    iget-object v0, p0, Ltms/cs$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-object v0
.end method

.method static synthetic h(Ltms/cs$b;)Z
    .locals 1

    iget-boolean v0, p0, Ltms/cs$b;->m:Z

    return v0
.end method

.method static synthetic i(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;
    .locals 1

    iget-object v0, p0, Ltms/cs$b;->g:Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

    return-object v0
.end method

.method static synthetic j(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 1

    iget-object v0, p0, Ltms/cs$b;->i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-object v0
.end method


# virtual methods
.method public final defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    invoke-virtual {v0, v4, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v0, v3, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    return-object v0
.end method

.method protected final synthetic onFiltered(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V
    .locals 2

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-super {p0, p1, p2}, Lcom/tencent/tmsecure/module/aresengine/SystemCalllogFilter;->onFiltered(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltms/cs$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;->update(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    :cond_0
    return-void
.end method

.method protected final synthetic onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 2

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v0, p0, Ltms/cs$b;->l:Ltms/ax;

    invoke-virtual {p0}, Ltms/cs$b;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

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

    iput-object p1, p0, Ltms/cs$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setCalllogDao(Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltms/cs$b;->d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    return-void
.end method

.method public final setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
    .locals 0

    iput-object p1, p0, Ltms/cs$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-void
.end method

.method public final setLastCallLogDao(Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;)V
    .locals 0

    iput-object p1, p0, Ltms/cs$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-void
.end method

.method public final setPhoneDeviceController(Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;)V
    .locals 0

    iput-object p1, p0, Ltms/cs$b;->i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-void
.end method

.method public final setPrivateCalllogDao(Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltms/cs$b;->e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

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

    iput-object p1, p0, Ltms/cs$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setShortCallChecker(Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;)V
    .locals 0

    iput-object p1, p0, Ltms/cs$b;->g:Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

    return-void
.end method

.method public final setSysDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
    .locals 0

    iput-object p1, p0, Ltms/cs$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

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

    iput-object p1, p0, Ltms/cs$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method
