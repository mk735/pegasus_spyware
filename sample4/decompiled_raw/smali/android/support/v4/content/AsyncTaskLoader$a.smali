.class final Landroid/support/v4/content/AsyncTaskLoader$a;
.super Landroid/os/AsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field b:Z

.field final synthetic c:Landroid/support/v4/content/AsyncTaskLoader;

.field private d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroid/support/v4/content/AsyncTaskLoader;)V
    .locals 2

    .prologue
    .line 41
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$a;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.a;"
    iput-object p1, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->c:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/content/AsyncTaskLoader$a;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/content/AsyncTaskLoader$a;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->d:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$a;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.a;"
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->c:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$a;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.a;"
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->c:Landroid/support/v4/content/AsyncTaskLoader;

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->a(Landroid/support/v4/content/AsyncTaskLoader$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$a;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.a;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->c:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->b(Landroid/support/v4/content/AsyncTaskLoader$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 66
    return-void

    .line 64
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$a;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.a;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->b:Z

    .line 81
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$a;->c:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->a()V

    .line 82
    return-void
.end method
