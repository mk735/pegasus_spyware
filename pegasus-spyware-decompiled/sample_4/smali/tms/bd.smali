.class final Ltms/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltms/bc;


# direct methods
.method constructor <init>(Ltms/bc;)V
    .locals 0

    iput-object p1, p0, Ltms/bd;->a:Ltms/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltms/bd;->a:Ltms/bc;

    iget-object v0, v0, Ltms/bc;->b:Ltms/bn$a;

    invoke-static {v0}, Ltms/bn$a;->f(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->hangup()V

    return-void
.end method
