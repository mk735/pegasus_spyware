.class final Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;
.super Ljava/lang/Thread;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1080
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;->a:Z

    .line 1081
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;->setDaemon(Z)V

    .line 1082
    const-string v0, "MultiThreadedHttpConnectionManager cleanup"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;->setName(Ljava/lang/String;)V

    .line 1083
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;->a:Z

    .line 1087
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;->interrupt()V

    .line 1088
    return-void
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 1119
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;->a:Z

    if-nez v2, :cond_2

    .line 1122
    :try_start_0
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    .line 1123
    .local v1, "ref":Ljava/lang/ref/Reference;
    if-eqz v1, :cond_0

    .line 1124
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b()Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Connection reclaimed by garbage collector, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;->b:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;->a:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    iget-object v2, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;->b:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v3, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b(Lorg/apache/commons/httpclient/HostConfiguration;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1126
    .end local v1    # "ref":Ljava/lang/ref/Reference;
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "ReferenceQueueThread interrupted"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1124
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "ref":Ljava/lang/ref/Reference;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1130
    .end local v1    # "ref":Ljava/lang/ref/Reference;
    :cond_2
    return-void
.end method
