.class public Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$d;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_HOST_CONNECTIONS:I = 0x2

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14

.field static a:Ljava/lang/Class;

.field private static final b:Lorg/apache/commons/logging/Log;

.field private static final c:Ljava/util/Map;

.field private static final d:Ljava/lang/ref/ReferenceQueue;

.field private static e:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;

.field private static f:Ljava/util/WeakHashMap;


# instance fields
.field private g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

.field private h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

.field private volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.MultiThreadedHttpConnectionManager"

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->d:Ljava/lang/ref/ReferenceQueue;

    .line 98
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->f:Ljava/util/WeakHashMap;

    return-void

    .line 70
    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 248
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->i:Z

    .line 257
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;B)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    .line 258
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->f:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->f:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static a(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    .locals 4
    .param p0, "x1"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 65
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HostConfiguration;->setLocalAddress(Ljava/net/InetAddress;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/HostConfiguration;->setProxy(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method private a(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 21
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v2, 0x0

    .line 444
    .local v2, "connection":Lorg/apache/commons/httpclient/HttpConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v8

    .line 445
    .local v8, "maxHostConnections":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxTotalConnections()I

    move-result v9

    .line 447
    .local v9, "maxTotalConnections":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 451
    :try_start_0
    new-instance v6, Lorg/apache/commons/httpclient/HostConfiguration;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 452
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .local v6, "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    move-result-object v7

    .line 453
    .local v7, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    const/4 v15, 0x0

    .line 455
    .local v15, "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    const-wide/16 v19, 0x0

    cmp-long v17, p2, v19

    if-lez v17, :cond_0

    const/4 v14, 0x1

    .line 456
    .local v14, "useTimeout":Z
    :goto_0
    move-wide/from16 v12, p2

    .line 457
    .local v12, "timeToWait":J
    const-wide/16 v10, 0x0

    .line 458
    .local v10, "startWait":J
    const-wide/16 v4, 0x0

    .local v4, "endWait":J
    move-object/from16 v16, v15

    .line 460
    .end local v15    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    .local v16, "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :goto_1
    if-nez v2, :cond_f

    .line 462
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->i:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 463
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v19, "Connection factory has been shutdown."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    .end local v4    # "endWait":J
    .end local v7    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    .end local v10    # "startWait":J
    .end local v12    # "timeToWait":J
    .end local v14    # "useTimeout":Z
    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :catchall_0
    move-exception v17

    move-object/from16 p1, v6

    .end local v6    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :goto_2
    monitor-exit v18

    throw v17

    .line 455
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local v6    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local v7    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    .restart local v15    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 468
    .end local v15    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    .restart local v4    # "endWait":J
    .restart local v10    # "startWait":J
    .restart local v12    # "timeToWait":J
    .restart local v14    # "useTimeout":Z
    .restart local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :cond_1
    :try_start_2
    iget-object v0, v7, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->b:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    if-lez v17, :cond_2

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v2

    goto :goto_1

    .line 473
    :cond_2
    iget v0, v7, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v9, :cond_3

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v2

    goto :goto_1

    .line 481
    :cond_3
    iget v0, v7, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c()V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto/16 :goto_1

    .line 496
    :cond_4
    if-eqz v14, :cond_7

    const-wide/16 v19, 0x0

    cmp-long v17, v12, v19

    if-gtz v17, :cond_7

    .line 497
    :try_start_3
    new-instance v17, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;

    const-string v19, "Timeout waiting for connection"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 519
    :catch_0
    move-exception v3

    move-object/from16 v15, v16

    .line 520
    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    .local v3, "e":Ljava/lang/InterruptedException;
    .restart local v15    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :goto_3
    :try_start_4
    iget-boolean v0, v15, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->c:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 521
    sget-object v17, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    const-string v19, "Interrupted while waiting for connection"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 522
    new-instance v17, Ljava/lang/IllegalThreadStateException;

    const-string v19, "Interrupted while waiting in MultiThreadedHttpConnectionManager"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 529
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v17

    :goto_4
    :try_start_5
    iget-boolean v0, v15, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->c:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 533
    iget-object v0, v7, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->c:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)Ljava/util/LinkedList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_5
    if-eqz v14, :cond_6

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 539
    :cond_6
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 500
    .end local v15    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    .restart local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :cond_7
    :try_start_6
    sget-object v17, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 501
    sget-object v17, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "Unable to get a connection, waiting..., hostConfig="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 504
    :cond_8
    if-nez v16, :cond_c

    .line 505
    new-instance v15, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v15, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;-><init>(B)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 506
    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    .restart local v15    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :try_start_7
    iput-object v7, v15, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->b:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    .line 507
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->a:Ljava/lang/Thread;

    .line 512
    :goto_5
    if-eqz v14, :cond_9

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 516
    :cond_9
    iget-object v0, v7, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->c:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)Ljava/util/LinkedList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 529
    :try_start_8
    iget-boolean v0, v15, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->c:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 533
    iget-object v0, v7, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->c:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)Ljava/util/LinkedList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_a
    if-eqz v14, :cond_b

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-wide v4

    .line 539
    sub-long v19, v4, v10

    sub-long v12, v12, v19

    :cond_b
    :goto_6
    move-object/from16 v16, v15

    .end local v15    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    .restart local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    goto/16 :goto_1

    .line 509
    :cond_c
    const/16 v17, 0x0

    :try_start_9
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->c:Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v15, v16

    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    .restart local v15    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    goto :goto_5

    .line 529
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    :cond_d
    :try_start_a
    iget-boolean v0, v15, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->c:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    .line 533
    iget-object v0, v7, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->c:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->c(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)Ljava/util/LinkedList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_e
    if-eqz v14, :cond_b

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 539
    sub-long v19, v4, v10

    sub-long v12, v12, v19

    goto :goto_6

    .line 544
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v15    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    .restart local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :cond_f
    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 545
    return-object v2

    .line 544
    .end local v4    # "endWait":J
    .end local v6    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .end local v7    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    .end local v10    # "startWait":J
    .end local v12    # "timeToWait":J
    .end local v14    # "useTimeout":Z
    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    .restart local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :catchall_2
    move-exception v17

    goto/16 :goto_2

    .line 529
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local v4    # "endWait":J
    .restart local v6    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local v7    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    .restart local v10    # "startWait":J
    .restart local v12    # "timeToWait":J
    .restart local v14    # "useTimeout":Z
    .restart local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    :catchall_3
    move-exception v17

    move-object/from16 v15, v16

    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    .restart local v15    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
    goto/16 :goto_4

    .line 519
    :catch_1
    move-exception v3

    goto/16 :goto_3
.end method

.method static a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method static a()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)V
    .locals 5
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    .prologue
    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;

    iget-object v1, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;->a:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    if-ne v1, p0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/HttpConnection;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;)V
    .locals 3
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;

    .prologue
    .line 65
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;->b:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)V
    .locals 4
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;
    .param p1, "x1"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "x2"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    .prologue
    .line 65
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;-><init>(B)V

    iput-object p2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;->a:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    iput-object p1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$b;->b:Lorg/apache/commons/httpclient/HostConfiguration;

    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->e:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;-><init>()V

    sput-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->e:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;

    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->e:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;->start()V

    :cond_0
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;->b:Ljava/lang/ref/WeakReference;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    return-object v0
.end method

.method static b(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->i:Z

    return v0
.end method

.method static c()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->d:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static shutdownAll()V
    .locals 7

    .prologue
    .line 113
    sget-object v4, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    monitor-enter v4

    .line 115
    :try_start_0
    sget-object v5, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->f:Ljava/util/WeakHashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    sget-object v6, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->size()I

    move-result v6

    new-array v6, v6, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-interface {v3, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    move-object v0, v3

    check-cast v0, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    move-object v1, v0

    .line 127
    .local v1, "connManagers":[Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 128
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 129
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown()V

    .line 127
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->e:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;

    if-eqz v3, :cond_2

    .line 135
    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->e:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;->a()V

    .line 136
    const/4 v3, 0x0

    sput-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->e:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$f;

    .line 138
    :cond_2
    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 139
    monitor-exit v4

    .line 140
    return-void

    .line 131
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public closeIdleConnections(J)V
    .locals 1
    .param p1, "idleTimeout"    # J

    .prologue
    .line 618
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(J)V

    .line 619
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->deleteClosedConnections()V

    .line 620
    return-void
.end method

.method public deleteClosedConnections()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->b()V

    .line 612
    return-void
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 3
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 371
    :goto_0
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 372
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    const-string v2, "Unexpected exception while waiting for connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 3
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 431
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpConnectionManager.getConnection(HostConfiguration, long)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 433
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
    new-instance v1, Lorg/apache/commons/httpclient/HttpException;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 4
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
        }
    .end annotation

    .prologue
    .line 405
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpConnectionManager.getConnectionWithTimeout(HostConfiguration, long)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 407
    if-nez p1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "hostConfiguration is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_0
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "HttpConnectionManager.getConnection:  config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 416
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->a(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0

    .line 420
    .local v0, "conn":Lorg/apache/commons/httpclient/HttpConnection;
    new-instance v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$d;

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$d;-><init>(Lorg/apache/commons/httpclient/HttpConnection;)V

    return-object v1
.end method

.method public getConnectionsInPool()I
    .locals 2

    .prologue
    .line 574
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    monitor-enter v1

    .line 575
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getConnectionsInPool(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .locals 5
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    monitor-enter v2

    .line 560
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

    move-result-object v0

    .line 561
    .local v0, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 562
    .end local v0    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getConnectionsInUse()I
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionsInPool()I

    move-result v0

    return v0
.end method

.method public getConnectionsInUse(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .locals 1
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionsInPool(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerHost()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getDefaultMaxConnectionsPerHost()I

    move-result v0

    return v0
.end method

.method public getMaxTotalConnections()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxTotalConnections()I

    move-result v0

    return v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method public isConnectionStaleCheckingEnabled()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->isStaleCheckingEnabled()Z

    move-result v0

    return v0
.end method

.method public releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 630
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->b:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnectionManager.releaseConnection(HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 632
    instance-of v0, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$d;

    if-eqz v0, :cond_0

    .line 634
    check-cast p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$d;

    .end local p1    # "conn":Lorg/apache/commons/httpclient/HttpConnection;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$d;->a()Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object p1

    .line 641
    .restart local p1    # "conn":Lorg/apache/commons/httpclient/HttpConnection;
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->a(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 643
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 644
    return-void
.end method

.method public setConnectionStaleCheckingEnabled(Z)V
    .locals 1
    .param p1, "connectionStaleCheckingEnabled"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setStaleCheckingEnabled(Z)V

    .line 310
    return-void
.end method

.method public setMaxConnectionsPerHost(I)V
    .locals 1
    .param p1, "maxHostConnections"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaultMaxConnectionsPerHost(I)V

    .line 324
    return-void
.end method

.method public setMaxTotalConnections(I)V
    .locals 1
    .param p1, "maxTotalConnections"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxTotalConnections(I)V

    .line 350
    return-void
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .prologue
    .line 691
    if-nez p1, :cond_0

    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->g:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 695
    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->i:Z

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->i:Z

    .line 278
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->h:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$a;->a()V

    .line 280
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
