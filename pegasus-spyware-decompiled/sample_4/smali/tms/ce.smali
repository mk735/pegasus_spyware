.class final Ltms/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

.field final synthetic b:Ltms/cd;


# direct methods
.method constructor <init>(Ltms/cd;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 0

    iput-object p1, p0, Ltms/ce;->b:Ltms/cd;

    iput-object p2, p0, Ltms/ce;->a:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ltms/ce;->a:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltms/ce;->b:Ltms/cd;

    iget-object v0, v0, Ltms/cd;->b:Ltms/cs$a;

    iget-object v1, p0, Ltms/ce;->b:Ltms/cd;

    iget-object v1, v1, Ltms/cd;->b:Ltms/cs$a;

    invoke-static {v1}, Ltms/cs$a;->d(Ltms/cs$a;)Landroid/database/ContentObserver;

    iget-object v1, p0, Ltms/ce;->a:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v2, p0, Ltms/ce;->b:Ltms/cd;

    iget-object v2, v2, Ltms/cd;->b:Ltms/cs$a;

    invoke-static {v2}, Ltms/cs$a;->b(Ltms/cs$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ltms/cs$a;->a(Ltms/cs$a;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ltms/ce;->b:Ltms/cd;

    iget-object v0, v0, Ltms/cd;->b:Ltms/cs$a;

    iget-object v1, p0, Ltms/ce;->b:Ltms/cd;

    iget-object v1, v1, Ltms/cd;->b:Ltms/cs$a;

    invoke-static {v1}, Ltms/cs$a;->d(Ltms/cs$a;)Landroid/database/ContentObserver;

    iget-object v1, p0, Ltms/ce;->a:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v2, p0, Ltms/ce;->b:Ltms/cd;

    iget-object v2, v2, Ltms/cd;->b:Ltms/cs$a;

    invoke-static {v2}, Ltms/cs$a;->c(Ltms/cs$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ltms/cs$a;->a(Ltms/cs$a;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    goto :goto_0
.end method
