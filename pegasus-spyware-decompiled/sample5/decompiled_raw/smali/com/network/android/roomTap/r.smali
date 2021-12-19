.class final Lcom/network/android/roomTap/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/network/android/roomTap/ShowDesktop;


# direct methods
.method constructor <init>(Lcom/network/android/roomTap/ShowDesktop;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/roomTap/r;->a:Lcom/network/android/roomTap/ShowDesktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v1, p0, Lcom/network/android/roomTap/r;->a:Lcom/network/android/roomTap/ShowDesktop;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/network/android/roomTap/r;->a:Lcom/network/android/roomTap/ShowDesktop;

    invoke-static {v0}, Lcom/network/android/roomTap/ShowDesktop;->a(Lcom/network/android/roomTap/ShowDesktop;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
