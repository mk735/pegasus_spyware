.class final Ltms/bg;
.super Ltms/bx;


# instance fields
.field final synthetic a:Ltms/bs$a;


# direct methods
.method constructor <init>(Ltms/bs$a;)V
    .locals 0

    iput-object p1, p0, Ltms/bg;->a:Ltms/bs$a;

    invoke-direct {p0}, Ltms/bx;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Landroid/content/BroadcastReceiver;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltms/bg;->a:Ltms/bs$a;

    invoke-static {v0}, Ltms/bs$a;->a(Ltms/bs$a;)Ltms/bs$c;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0, p1, v1}, Ltms/bs$c;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/bg;->a:Ltms/bs$a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Ltms/bs$a;->notifyDataReached(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
