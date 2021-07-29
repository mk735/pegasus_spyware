.class public Ltms/ap;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Ltms/ap;->a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Ltms/ap;->a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/ap;->a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->b(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltms/ap;->a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->c(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
