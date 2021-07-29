.class final Ltms/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

.field final synthetic b:Ltms/by;


# direct methods
.method constructor <init>(Ltms/by;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V
    .locals 0

    iput-object p1, p0, Ltms/bz;->b:Ltms/by;

    iput-object p2, p0, Ltms/bz;->a:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ltms/bz;->a:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v1, p0, Ltms/bz;->b:Ltms/by;

    iget-object v1, v1, Ltms/by;->a:Ltms/cn$a;

    invoke-static {v1}, Ltms/cn$a;->b(Ltms/cn$a;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    iget-object v1, p0, Ltms/bz;->b:Ltms/by;

    iget-object v1, v1, Ltms/by;->a:Ltms/cn$a;

    invoke-static {v1}, Ltms/cn$a;->c(Ltms/cn$a;)Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltms/bz;->b:Ltms/by;

    iget-object v1, v1, Ltms/by;->a:Ltms/cn$a;

    invoke-static {v1}, Ltms/cn$a;->c(Ltms/cn$a;)Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;->convert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Ltms/bz;->b:Ltms/by;

    iget-object v1, v1, Ltms/by;->a:Ltms/cn$a;

    invoke-static {v1}, Ltms/cn$a;->d(Ltms/cn$a;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v1

    iget-object v2, p0, Ltms/bz;->a:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tmsecure/module/aresengine/ISmsDao;->insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J

    return-void
.end method
