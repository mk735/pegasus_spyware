.class public final Lcom/tencent/tmsecure/utils/ScriptHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;,
        Lcom/tencent/tmsecure/utils/ScriptHelper$b;,
        Lcom/tencent/tmsecure/utils/ScriptHelper$a;
    }
.end annotation


# static fields
.field public static final ROOT_GOT:I = 0x0

.field public static final ROOT_GOT_ACTION:Ljava/lang/String; = "com.tencent.tmsecure.root"

.field public static final ROOT_NOT_GOT:I = 0x2

.field public static final ROOT_NOT_SUPPORT:I = 0x1

.field public static final ROOT_NO_RESPOND:I = -0x1

.field private static a:Z = false

.field private static b:Z = false

.field private static c:Ljava/lang/Object; = null

.field private static final d:Ljava/lang/String; = "/dev/socket/script_socket"

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String; = "athena_v2.dat"

.field private static final g:Z

.field private static final h:Z

.field private static final i:I = 0x7530

.field private static j:Ltms/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->a:Z

    sput-boolean v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->b:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->e:Ljava/lang/String;

    const-string v1, "/system/bin/su"

    invoke-static {v1}, Ltms/v;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/system/xbin/su"

    invoke-static {v1}, Ltms/v;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/sbin/su"

    invoke-static {v1}, Ltms/v;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/socket/script_socket"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->h:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "uid=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "su"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "Kill"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "kill"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "uid=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->b()V

    goto :goto_0
.end method

.method private static declared-synchronized a(Lcom/tencent/tmsecure/utils/ScriptHelper$a;Z)Lcom/tencent/tmsecure/utils/ScriptHelper$b;
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x4

    const-class v4, Lcom/tencent/tmsecure/utils/ScriptHelper;

    monitor-enter v4

    :try_start_0
    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper$b;-><init>()V

    sget-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->h:Z

    if-eqz v2, :cond_3

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v7, "/dev/socket/script_socket"

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v5, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    :try_start_2
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :try_start_3
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v3

    :try_start_4
    iget-object v6, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->d:[B

    array-length v6, v6

    iput v6, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->c:I

    const/16 v6, 0xc

    new-array v6, v6, [B

    iget v7, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->a:I

    invoke-static {v7}, Ltms/r;->a(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->b:I

    invoke-static {v7}, Ltms/r;->a(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x4

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->c:I

    invoke-static {v7}, Ltms/r;->a(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x4

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    iget-object v6, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->d:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    const-string v6, "andysinguan"

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->d:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6, v7}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x4

    new-array v6, v6, [B

    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v11, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v6, "respond data is invalid"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_2
    :goto_3
    :try_start_8
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    move-object v0, v1

    :goto_5
    monitor-exit v4

    return-object v0

    :cond_3
    :try_start_9
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v7, Lcom/tencent/tmsecure/utils/ScriptHelper;->e:Ljava/lang/String;

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_1
    move-exception v2

    :try_start_a
    sget-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->h:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->c()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const-wide/16 v7, 0xc8

    :try_start_b
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_6
    const/4 v0, 0x0

    :try_start_c
    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->a(Lcom/tencent/tmsecure/utils/ScriptHelper$a;Z)Lcom/tencent/tmsecure/utils/ScriptHelper$b;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v0

    if-eqz v1, :cond_4

    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_5
    :goto_8
    :try_start_f
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v1

    :try_start_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_5

    :cond_6
    :try_start_11
    invoke-static {v6}, Ltms/r;->b([B)I

    move-result v6

    iput v6, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->a:I

    iget v6, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->a:I

    new-array v6, v6, [B

    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    array-length v8, v6

    if-eq v7, v8, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v6, "respond data is invalid"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catchall_1
    move-exception v0

    :goto_9
    if-eqz v3, :cond_7

    :try_start_12
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_7
    :goto_a
    if-eqz v2, :cond_8

    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_8
    :goto_b
    :try_start_14
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :goto_c
    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_9
    :try_start_16
    iput-object v6, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->b:[B

    const-string v7, "andysinguan"

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7, v8}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v3, :cond_a

    :try_start_17
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_a
    :goto_d
    if-eqz v2, :cond_b

    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_b
    :goto_e
    :try_start_19
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v1

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_9

    :catch_f
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :catch_10
    move-exception v0

    move-object v3, v1

    goto/16 :goto_1
.end method

.method private static b()V
    .locals 5

    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "export "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/util/List;)Ljava/lang/String;

    return-void
.end method

.method private static c()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "athena_v2.dat"

    invoke-static {v0, v2, v1}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/tmsecure/utils/ScriptHelper;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 755 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/ProcessBuilder;

    new-array v3, v5, [Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sh"

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static canRunAtRoot()I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot(I)I

    move-result v0

    return v0
.end method

.method public static canRunAtRoot(I)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->h:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Z

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/tencent/tmsecure/utils/ScriptHelper;->b:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    const/4 v3, 0x1

    :try_start_1
    sput-boolean v3, Lcom/tencent/tmsecure/utils/ScriptHelper;->b:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    :goto_1
    if-ge v2, p0, :cond_3

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->a()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    :cond_3
    if-nez v0, :cond_4

    sget-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->a:Z

    if-nez v2, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.tmsecure.root"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->a:Z

    :cond_4
    sget-object v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->b:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static canRunAtRoot(Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;)V
    .locals 1

    new-instance v0, Ltms/hf;

    invoke-direct {v0, p0}, Ltms/hf;-><init>(Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;)V

    invoke-virtual {v0}, Ltms/hf;->start()V

    return-void
.end method

.method public static isRootGot()Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/tencent/tmsecure/utils/ScriptHelper$a;

    invoke-direct {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper$a;-><init>()V

    const/16 v2, 0x3e8

    iput v2, v1, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->b:I

    const-string v2, "id\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->d:[B

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->a(Lcom/tencent/tmsecure/utils/ScriptHelper$a;Z)Lcom/tencent/tmsecure/utils/ScriptHelper$b;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->b:[B

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "uid=0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSystemUid()Z
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static provider()Ltms/l;
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    return-object v0
.end method

.method public static providerSupportCancelMissCall()Z
    .locals 2

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ltms/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static providerSupportCpuRelative()Z
    .locals 2

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ltms/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static providerSupportGetAllApkFiles()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    invoke-interface {v1, v0}, Ltms/l;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static providerSupportPmRelative()Z
    .locals 2

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ltms/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs runScript(Ljava/lang/StringBuilder;[Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScript(ILjava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper$a;-><init>()V

    iput p0, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->b:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->d:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->a(Lcom/tencent/tmsecure/utils/ScriptHelper$a;Z)Lcom/tencent/tmsecure/utils/ScriptHelper$b;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->b:[B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs runScript(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runScript(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x7530

    invoke-static {v0, p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs runScript([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x7530

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs runScriptAsRoot(Ljava/lang/StringBuilder;[Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScriptAsRoot(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static varargs runScriptAsRoot([Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScriptIfSystemUidOrAsRoot(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSystemUid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSystemUid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs runScriptSplitLines([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setProvider(Ltms/l;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/tencent/tmsecure/common/TMSApplication;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "init"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_2

    const-string v0, "ScriptHelper"

    const-string v1, "Unauthorized caller"

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sput-object p0, Lcom/tencent/tmsecure/utils/ScriptHelper;->j:Ltms/l;

    goto :goto_1
.end method
