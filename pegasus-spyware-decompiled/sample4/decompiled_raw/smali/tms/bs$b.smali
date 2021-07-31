.class final Ltms/bs$b;
.super Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private d:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

.field private h:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

.field private k:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

.field private l:Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

.field private m:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

.field private n:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

.field private o:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

.field private p:Ltms/ax;


# direct methods
.method constructor <init>()V
    .locals 4

    const/16 v3, 0x8

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v0

    iput-object v0, p0, Ltms/bs$b;->o:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    new-instance v0, Ltms/ax;

    invoke-direct {v0}, Ltms/ax;-><init>()V

    iput-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    iget-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ltms/ax;->a([I)V

    iget-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    const/4 v1, 0x1

    new-instance v2, Ltms/bh;

    invoke-direct {v2, p0}, Ltms/bh;-><init>(Ltms/bs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    const/4 v1, 0x2

    new-instance v2, Ltms/bj;

    invoke-direct {v2, p0}, Ltms/bj;-><init>(Ltms/bs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    const/4 v1, 0x4

    new-instance v2, Ltms/bk;

    invoke-direct {v2, p0}, Ltms/bk;-><init>(Ltms/bs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    new-instance v1, Ltms/bl;

    invoke-direct {v1, p0}, Ltms/bl;-><init>(Ltms/bs$b;)V

    invoke-virtual {v0, v3, v1}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    const/16 v1, 0x10

    new-instance v2, Ltms/bm;

    invoke-direct {v2, p0}, Ltms/bm;-><init>(Ltms/bs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    const/16 v1, 0x20

    new-instance v2, Ltms/bp;

    invoke-direct {v2, p0}, Ltms/bp;-><init>(Ltms/bs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    const/16 v1, 0x40

    new-instance v2, Ltms/bq;

    invoke-direct {v2, p0}, Ltms/bq;-><init>(Ltms/bs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    iget-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    const/16 v1, 0x80

    new-instance v2, Ltms/br;

    invoke-direct {v2, p0}, Ltms/br;-><init>(Ltms/bs$b;)V

    invoke-virtual {v0, v1, v2}, Ltms/ax;->a(ILtms/ax$a;)V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v1

    iput-object v1, p0, Ltms/bs$b;->n:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bs$b;->f:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bs$b;->d:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bs$b;->e:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getKeyWordDao()Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bs$b;->j:Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bs$b;->g:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bs$b;->k:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bs$b;->h:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v1

    iput-object v1, p0, Ltms/bs$b;->i:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getEntityConverter()Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v0

    iput-object v0, p0, Ltms/bs$b;->m:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method static synthetic a(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->f:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method private final a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/aresengine/FilterResult;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    new-instance v0, Ltms/bt;

    invoke-direct {v0, p0, p2, p1, p3}, Ltms/bt;-><init>(Ltms/bs$b;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    return-object v0
.end method

.method static synthetic a(Ltms/bs$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)Ljava/lang/Runnable;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Ltms/bs$b;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ltms/bs$b;Ltms/ax$a;)V
    .locals 4

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    invoke-virtual {p1}, Ltms/ax$a;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-virtual {p1}, Ltms/ax$a;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-virtual {p1}, Ltms/ax$a;->d()I

    move-result v2

    iput v2, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    invoke-virtual {p1}, Ltms/ax$a;->b()I

    move-result v2

    iput v2, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    invoke-virtual {p1}, Ltms/ax$a;->b()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ltms/bs$b;->n:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    invoke-virtual {p1}, Ltms/ax$a;->c()[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->unBlockSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Ltms/ax$a;->a(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ltms/ax$a;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Ltms/bs$b;->n:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    invoke-virtual {p1}, Ltms/ax$a;->c()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    iget-object v0, p0, Ltms/bs$b;->h:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ltms/ax$a;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v3, p0, Ltms/bs$b;->h:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    invoke-direct {p0, v0, v3, v1}, Ltms/bs$b;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->n:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-object v0
.end method

.method static synthetic c(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->i:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    return-object v0
.end method

.method static synthetic d(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->d:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic e(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->e:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic f(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->g:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-object v0
.end method

.method static synthetic g(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->k:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-object v0
.end method

.method static synthetic h(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->j:Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    return-object v0
.end method

.method static synthetic i(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->o:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    return-object v0
.end method

.method static synthetic j(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->l:Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

    return-object v0
.end method

.method static synthetic k(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->h:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    return-object v0
.end method

.method static synthetic l(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;
    .locals 1

    iget-object v0, p0, Ltms/bs$b;->m:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-object v0
.end method


# virtual methods
.method public final defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    invoke-virtual {v0, v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v0, v4, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    return-object v0
.end method

.method protected final synthetic onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v0, p0, Ltms/bs$b;->p:Ltms/ax;

    invoke-virtual {p0}, Ltms/bs$b;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Ltms/ax;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    iput-object p1, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    const/4 v0, -0x1

    iput v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    iput v2, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lt v0, v3, :cond_0

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    new-instance v2, Ltms/bi;

    invoke-direct {v2, p0, p1, p2}, Ltms/bi;-><init>(Ltms/bs$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, v1

    :cond_1
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

    iput-object p1, p0, Ltms/bs$b;->e:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
    .locals 0

    iput-object p1, p0, Ltms/bs$b;->m:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-void
.end method

.method public final setIntelligentSmsHandler(Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;)V
    .locals 0

    iput-object p1, p0, Ltms/bs$b;->l:Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

    return-void
.end method

.method public final setKeywordDao(Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;)V
    .locals 0

    iput-object p1, p0, Ltms/bs$b;->j:Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    return-void
.end method

.method public final setLastCallLogDao(Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;)V
    .locals 0

    iput-object p1, p0, Ltms/bs$b;->k:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-void
.end method

.method public final setPhoneDeviceController(Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;)V
    .locals 0

    iput-object p1, p0, Ltms/bs$b;->n:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-void
.end method

.method public final setPrivateSmsDao(Lcom/tencent/tmsecure/module/aresengine/ISmsDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltms/bs$b;->i:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

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

    iput-object p1, p0, Ltms/bs$b;->f:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setSmsDao(Lcom/tencent/tmsecure/module/aresengine/ISmsDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltms/bs$b;->h:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    return-void
.end method

.method public final setSysDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
    .locals 0

    iput-object p1, p0, Ltms/bs$b;->g:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

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

    iput-object p1, p0, Ltms/bs$b;->d:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method
