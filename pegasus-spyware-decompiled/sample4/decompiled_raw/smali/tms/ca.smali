.class final Ltms/ca;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Ltms/cn$b;


# direct methods
.method constructor <init>(Ltms/cn$b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ltms/ca;->a:Ltms/cn$b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Ltms/ca;->a:Ltms/cn$b;

    invoke-static {v0}, Ltms/cn$b;->a(Ltms/cn$b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->getDefault(Landroid/content/Context;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->getLastOutBoxSms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ltms/ca;->a:Ltms/cn$b;

    invoke-static {v1}, Ltms/cn$b;->a(Ltms/cn$b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, p0, Ltms/ca;->a:Ltms/cn$b;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ltms/cn$b;->notifyDataReached(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
