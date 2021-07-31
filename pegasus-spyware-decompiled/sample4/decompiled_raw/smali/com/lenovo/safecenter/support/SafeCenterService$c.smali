.class final Lcom/lenovo/safecenter/support/SafeCenterService$c;
.super Ljava/lang/Thread;
.source "SafeCenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SafeCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SafeCenterService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SafeCenterService;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 703
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->d(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/net/LocalServerSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->d(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/net/LocalServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->e(Lcom/lenovo/safecenter/support/SafeCenterService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 711
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 686
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 688
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    new-instance v3, Landroid/net/LocalServerSocket;

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->c(Lcom/lenovo/safecenter/support/SafeCenterService;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;

    .line 692
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v2}, Lcom/lenovo/safecenter/support/SafeCenterService;->d(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/net/LocalServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    .line 693
    .local v1, "socket":Landroid/net/LocalSocket;
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v2}, Lcom/lenovo/safecenter/support/SafeCenterService;->e(Lcom/lenovo/safecenter/support/SafeCenterService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/lenovo/safecenter/support/SafeCenterService$b;

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {v3, v4, v1}, Lcom/lenovo/safecenter/support/SafeCenterService$b;-><init>(Lcom/lenovo/safecenter/support/SafeCenterService;Landroid/net/LocalSocket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 695
    .end local v1    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    invoke-direct {p0}, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a()V

    .line 700
    return-void

    .line 698
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/lenovo/safecenter/support/SafeCenterService$c;->a()V

    throw v2
.end method
