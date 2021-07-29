.class final Ltms/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltms/an;


# direct methods
.method constructor <init>(Ltms/an;)V
    .locals 0

    iput-object p1, p0, Ltms/at;->a:Ltms/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltms/at;->a:Ltms/an;

    iget-object v0, v0, Ltms/an;->b:Ltms/bb$c;

    invoke-static {v0}, Ltms/bb$c;->a(Ltms/bb$c;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/at;->a:Ltms/an;

    iget-object v0, v0, Ltms/an;->b:Ltms/bb$c;

    invoke-static {v0}, Ltms/bb$c;->b(Ltms/bb$c;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
