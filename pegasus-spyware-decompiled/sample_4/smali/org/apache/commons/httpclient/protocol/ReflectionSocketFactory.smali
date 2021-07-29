.class public final Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;
.super Ljava/lang/Object;
.source "ReflectionSocketFactory.java"


# static fields
.field static a:Ljava/lang/Class;

.field static b:Ljava/lang/Class;

.field private static c:Z

.field private static d:Ljava/lang/reflect/Constructor;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->c:Z

    .line 55
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->d:Ljava/lang/reflect/Constructor;

    .line 56
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->e:Ljava/lang/reflect/Method;

    .line 57
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->f:Ljava/lang/reflect/Method;

    .line 58
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->g:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 121
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

.method public static createSocket(Ljava/lang/String;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;
    .locals 15
    .param p0, "socketfactoryName"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/commons/httpclient/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    .line 95
    sget-boolean v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->c:Z

    if-eqz v10, :cond_0

    .line 97
    const/4 v7, 0x0

    .line 166
    :goto_0
    return-object v7

    .line 109
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 110
    .local v9, "socketfactoryClass":Ljava/lang/Class;
    const-string v10, "getDefault"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 112
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 114
    .local v8, "socketfactory":Ljava/lang/Object;
    const-string v10, "createSocket"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 116
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/Socket;

    .line 118
    .local v7, "socket":Ljava/net/Socket;
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->d:Ljava/lang/reflect/Constructor;

    if-nez v10, :cond_1

    .line 119
    const-string v10, "java.net.InetSocketAddress"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 120
    .local v1, "addressClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->a:Ljava/lang/Class;

    if-nez v10, :cond_5

    const-string v10, "java.net.InetAddress"

    invoke-static {v10}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->a:Ljava/lang/Class;

    :goto_1
    aput-object v10, v11, v12

    const/4 v10, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v10

    invoke-virtual {v1, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    sput-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->d:Ljava/lang/reflect/Constructor;

    .line 124
    .end local v1    # "addressClass":Ljava/lang/Class;
    :cond_1
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->d:Ljava/lang/reflect/Constructor;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 127
    .local v6, "remoteaddr":Ljava/lang/Object;
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->d:Ljava/lang/reflect/Constructor;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v11, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 130
    .local v4, "localaddr":Ljava/lang/Object;
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->e:Ljava/lang/reflect/Method;

    if-nez v10, :cond_2

    .line 131
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->b:Ljava/lang/Class;

    if-nez v10, :cond_6

    const-string v10, "java.net.Socket"

    invoke-static {v10}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->b:Ljava/lang/Class;

    :goto_2
    const-string v11, "connect"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-string v14, "java.net.SocketAddress"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->e:Ljava/lang/reflect/Method;

    .line 135
    :cond_2
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->f:Ljava/lang/reflect/Method;

    if-nez v10, :cond_3

    .line 136
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->b:Ljava/lang/Class;

    if-nez v10, :cond_7

    const-string v10, "java.net.Socket"

    invoke-static {v10}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->b:Ljava/lang/Class;

    :goto_3
    const-string v11, "bind"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-string v14, "java.net.SocketAddress"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->f:Ljava/lang/reflect/Method;

    .line 139
    :cond_3
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->f:Ljava/lang/reflect/Method;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v10, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->e:Ljava/lang/reflect/Method;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v11, v12

    invoke-virtual {v10, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 143
    .end local v4    # "localaddr":Ljava/lang/Object;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "remoteaddr":Ljava/lang/Object;
    .end local v7    # "socket":Ljava/net/Socket;
    .end local v8    # "socketfactory":Ljava/lang/Object;
    .end local v9    # "socketfactoryClass":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 145
    .local v2, "cause":Ljava/lang/Throwable;
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->g:Ljava/lang/Class;

    if-nez v10, :cond_4

    .line 147
    :try_start_1
    const-string v10, "java.net.SocketTimeoutException"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->g:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :cond_4
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->g:Ljava/lang/Class;

    invoke-virtual {v10, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 155
    new-instance v10, Lorg/apache/commons/httpclient/ConnectTimeoutException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "The host did not accept the connection within timeout of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 120
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "addressClass":Ljava/lang/Class;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v7    # "socket":Ljava/net/Socket;
    .restart local v8    # "socketfactory":Ljava/lang/Object;
    .restart local v9    # "socketfactoryClass":Ljava/lang/Class;
    :cond_5
    :try_start_2
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->a:Ljava/lang/Class;

    goto/16 :goto_1

    .line 131
    .end local v1    # "addressClass":Ljava/lang/Class;
    .restart local v4    # "localaddr":Ljava/lang/Object;
    .restart local v6    # "remoteaddr":Ljava/lang/Object;
    :cond_6
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->b:Ljava/lang/Class;

    goto/16 :goto_2

    .line 136
    :cond_7
    sget-object v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->b:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 150
    .end local v4    # "localaddr":Ljava/lang/Object;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "remoteaddr":Ljava/lang/Object;
    .end local v7    # "socket":Ljava/net/Socket;
    .end local v8    # "socketfactory":Ljava/lang/Object;
    .end local v9    # "socketfactoryClass":Ljava/lang/Class;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    .restart local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v10

    const/4 v10, 0x1

    sput-boolean v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->c:Z

    .line 151
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 159
    :cond_8
    instance-of v10, v2, Ljava/io/IOException;

    if-eqz v10, :cond_9

    .line 160
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "cause":Ljava/lang/Throwable;
    throw v2

    .line 162
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 165
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v10

    const/4 v10, 0x1

    sput-boolean v10, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->c:Z

    .line 166
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
