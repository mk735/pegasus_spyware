.class final Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Ljava/util/LinkedList;

.field private final c:Ljava/util/Map;

.field private d:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

.field private e:I

.field private final f:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)V
    .locals 1

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->f:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .line 703
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a:Ljava/util/LinkedList;

    .line 706
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b:Ljava/util/LinkedList;

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c:Ljava/util/Map;

    .line 714
    new-instance v0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->d:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    .line 717
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->e:I

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;B)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .prologue
    .line 700
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)V

    return-void
.end method

.method static a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    .prologue
    .line 700
    iget v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->e:I

    return v0
.end method

.method private declared-synchronized a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;)V
    .locals 5
    .param p1, "hostPool"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    .prologue
    .line 945
    monitor-enter p0

    const/4 v1, 0x0

    .line 947
    .local v1, "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :try_start_0
    iget-object v2, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 948
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 949
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Notifying thread waiting on host pool, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->a:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 952
    :cond_0
    iget-object v2, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;

    move-object v1, v0

    .line 953
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 964
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 965
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->c:Z

    .line 966
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->a:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    :cond_2
    monitor-exit p0

    return-void

    .line 954
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 955
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 956
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "No-one waiting on host pool, notifying next waiting thread."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 958
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;

    move-object v1, v0

    .line 959
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->b:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    iget-object v2, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 945
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 960
    :cond_5
    :try_start_2
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 961
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "Notifying no-one, there are no waiting threads"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static b(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    .prologue
    .line 700
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method private declared-synchronized b(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 5
    .param p1, "connection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 886
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->f:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    .line 888
    .local v0, "connectionConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 889
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Reclaiming connection, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 892
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 894
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    move-result-object v1

    .line 896
    .local v1, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    .line 898
    iget v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->e:I

    .line 899
    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 902
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->d:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v2, p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->remove(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    monitor-exit p0

    return-void

    .line 886
    .end local v0    # "connectionConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .end local v1    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static c(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    .prologue
    .line 700
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method private declared-synchronized d(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 930
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    monitor-exit p0

    return-void

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 5
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 758
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    move-result-object v1

    .line 759
    .local v1, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Allocating new connection, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 762
    :cond_0
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 764
    .local v0, "connection":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->f:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 765
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->f:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 766
    iget v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->e:I

    .line 767
    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    .line 771
    invoke-static {v0, p1, p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    monitor-exit p0

    return-object v0

    .line 758
    .end local v0    # "connection":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;
    .end local v1    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized a(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    .locals 3
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "create"    # Z

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "enter HttpConnectionManager.ConnectionPool.getHostPool(HostConfiguration)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 808
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    .line 810
    .local v0, "listConnections":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 812
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    .end local v0    # "listConnections":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;-><init>(B)V

    .line 813
    .restart local v0    # "listConnections":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    iput-object p1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->a:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 814
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    :cond_0
    monitor-exit p0

    return-object v0

    .line 805
    .end local v0    # "listConnections":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 725
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 726
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 727
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    .line 728
    .local v0, "conn":Lorg/apache/commons/httpclient/HttpConnection;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 729
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 725
    .end local v0    # "conn":Lorg/apache/commons/httpclient/HttpConnection;
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 733
    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-static {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)V

    .line 736
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 737
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;

    .line 739
    .local v2, "waiter":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 740
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->c:Z

    .line 741
    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->a:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 745
    .end local v2    # "waiter":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 748
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->d:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->removeAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(J)V
    .locals 1
    .param p1, "idleTimeout"    # J

    .prologue
    .line 872
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->d:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->closeIdleConnections(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    monitor-exit p0

    return-void

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 6
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 976
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->f:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v1

    .line 978
    .local v1, "connectionConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 979
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Freeing connection, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 982
    :cond_0
    monitor-enter p0

    .line 984
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->f:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 987
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 988
    monitor-exit p0

    .line 1018
    :goto_0
    return-void

    .line 991
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    move-result-object v2

    .line 994
    .local v2, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 995
    iget v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    if-nez v3, :cond_2

    .line 997
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Host connection pool not found, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 999
    const/4 v3, 0x1

    iput v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    .line 1002
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1005
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;

    move-object v3, v0

    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;)V

    .line 1006
    iget v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->e:I

    if-nez v3, :cond_3

    .line 1008
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Host connection pool not found, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 1010
    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->e:I

    .line 1014
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->d:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v3, p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->add(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1016
    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;)V

    .line 1017
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 856
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 858
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 859
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    .line 860
    .local v0, "conn":Lorg/apache/commons/httpclient/HttpConnection;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 861
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 862
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 856
    .end local v0    # "conn":Lorg/apache/commons/httpclient/HttpConnection;
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 865
    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 782
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    move-result-object v0

    .line 783
    .local v0, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    iget v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    .line 784
    iget v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_0
    iget v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->e:I

    .line 791
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->d(Lorg/apache/commons/httpclient/HostConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    monitor-exit p0

    return-void

    .line 782
    .end local v0    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized c(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 6
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 828
    monitor-enter p0

    const/4 v1, 0x0

    .line 830
    .local v1, "connection":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    move-result-object v2

    .line 832
    .local v2, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 833
    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;

    move-object v1, v0

    .line 834
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 837
    invoke-static {v1, p1, p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)V

    .line 838
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 839
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Getting free connection, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 843
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->d:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v3, v1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->remove(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 844
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 845
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "There were no free connections to get, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 828
    .end local v2    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final declared-synchronized c()V
    .locals 3

    .prologue
    .line 914
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    .line 916
    .local v0, "connection":Lorg/apache/commons/httpclient/HttpConnection;
    if-eqz v0, :cond_1

    .line 917
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 918
    :cond_1
    :try_start_1
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Attempted to reclaim an unused connection but there were none."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 914
    .end local v0    # "connection":Lorg/apache/commons/httpclient/HttpConnection;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
