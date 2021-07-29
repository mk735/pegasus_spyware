.class final Ltms/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

.field final synthetic b:[Ljava/lang/Object;

.field final synthetic c:Ltms/bs$b;


# direct methods
.method constructor <init>(Ltms/bs$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ltms/bi;->c:Ltms/bs$b;

    iput-object p2, p0, Ltms/bi;->a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iput-object p3, p0, Ltms/bi;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ltms/bi;->c:Ltms/bs$b;

    invoke-static {v0}, Ltms/bs$b;->b(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    iget-object v1, p0, Ltms/bi;->a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v2, p0, Ltms/bi;->b:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->unBlockSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    return-void
.end method
