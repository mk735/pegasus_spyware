.class public final Lledroid/root/internal/LeNacTransport;
.super Ljava/lang/Object;
.source "LeNacTransport.java"

# interfaces
.implements Lledroid/root/ICommandTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/root/internal/LeNacTransport$a;
    }
.end annotation


# static fields
.field private static d:I

.field private static e:Lledroid/root/internal/LeNacTransport;


# instance fields
.field private a:Z

.field private b:Lledroid/root/internal/LeNacTransport$a;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lledroid/root/internal/LeNacTransport;->d:I

    .line 37
    new-instance v0, Lledroid/root/internal/LeNacTransport;

    invoke-direct {v0}, Lledroid/root/internal/LeNacTransport;-><init>()V

    sput-object v0, Lledroid/root/internal/LeNacTransport;->e:Lledroid/root/internal/LeNacTransport;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lledroid/root/internal/LeNacTransport;->a:Z

    .line 27
    iput-object v1, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    .line 28
    iput-object v1, p0, Lledroid/root/internal/LeNacTransport;->c:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    invoke-virtual {v0}, Lledroid/root/internal/LeNacTransport$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lledroid/root/internal/LeNacTransport;)Z
    .locals 1
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport;

    .prologue
    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lledroid/root/internal/LeNacTransport;->a:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lledroid/root/internal/LeNacTransport;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lledroid/root/internal/LeNacTransport;->e:Lledroid/root/internal/LeNacTransport;

    iput-object p0, v0, Lledroid/root/internal/LeNacTransport;->c:Landroid/content/Context;

    .line 41
    sget-object v0, Lledroid/root/internal/LeNacTransport;->e:Lledroid/root/internal/LeNacTransport;

    return-object v0
.end method


# virtual methods
.method public final destory()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    invoke-static {v0}, Lledroid/root/internal/LeNacTransport$a;->a(Lledroid/root/internal/LeNacTransport$a;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    .line 344
    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lledroid/root/internal/LeNacTransport;->e:Lledroid/root/internal/LeNacTransport;

    if-ne v0, p0, :cond_0

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lledroid/root/internal/LeNacTransport;->e:Lledroid/root/internal/LeNacTransport;

    .line 50
    :cond_0
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    invoke-static {v0}, Lledroid/root/internal/LeNacTransport$a;->a(Lledroid/root/internal/LeNacTransport$a;)V

    .line 57
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 58
    return-void
.end method

.method public final declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lledroid/root/internal/LeNacTransport;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    invoke-virtual {v0}, Lledroid/root/internal/LeNacTransport$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_0
    monitor-exit p0

    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const-string v0, "LeNacTransport"

    return-object v0
.end method

.method public final getType()Lledroid/root/ShellTerminalController$TransportType;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lledroid/root/ShellTerminalController$TransportType;->NAC_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    return-object v0
.end method

.method public final isRootTransport()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public final onAfterExec()V
    .locals 6

    .prologue
    .line 331
    :try_start_0
    const-string v1, "LeNacTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAC Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    new-instance v4, Lledroid/root/internal/LeNacTransport$a$b;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lledroid/root/internal/LeNacTransport$a$b;-><init>(Lledroid/root/internal/LeNacTransport$a;B)V

    invoke-virtual {v4}, Lledroid/root/internal/LeNacTransport$a$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    invoke-virtual {p0}, Lledroid/root/internal/LeNacTransport;->destory()V

    .line 336
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onBeforeExec()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Lledroid/root/internal/LeNacTransport;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lledroid/root/internal/LeNacTransport;->prepare()Z

    .line 326
    :cond_0
    return-void
.end method

.method public final onlyAsScriptBatchExec()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public final prepare()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 242
    iget-object v3, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    if-nez v3, :cond_0

    .line 243
    new-instance v3, Lledroid/root/internal/LeNacTransport$a;

    invoke-direct {v3}, Lledroid/root/internal/LeNacTransport$a;-><init>()V

    iput-object v3, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    .line 246
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data"

    const-string v4, "testr"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v2, "testr":Ljava/io/File;
    iget-object v3, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    invoke-virtual {v3}, Lledroid/root/internal/LeNacTransport$a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 250
    new-instance v1, Lledroid/root/ShellCommand;

    invoke-direct {v1, p0}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V

    .line 251
    .local v1, "sc":Lledroid/root/ShellCommand;
    new-instance v3, Lledroid/root/internal/LeNacTransport$1;

    invoke-direct {v3, p0, v2}, Lledroid/root/internal/LeNacTransport$1;-><init>(Lledroid/root/internal/LeNacTransport;Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lledroid/root/ShellCommand;->setResponseCallBack(Lledroid/root/ShellCommand$ShellCommandResponse;)V

    .line 261
    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "echo \'1\' > "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "exit"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lledroid/root/ShellCommand;->exec(I)Lledroid/root/ShellCommand;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lledroid/root/ShellCommand;->waitResponse(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "sc":Lledroid/root/ShellCommand;
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lledroid/root/internal/LeNacTransport;->a:Z

    return v3

    .line 265
    .restart local v1    # "sc":Lledroid/root/ShellCommand;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "sc":Lledroid/root/ShellCommand;
    :cond_2
    iput-boolean v5, p0, Lledroid/root/internal/LeNacTransport;->a:Z

    goto :goto_0
.end method

.method public final declared-synchronized readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    const-string v0, "useless response."
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lledroid/root/internal/LeNacTransport;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport;->b:Lledroid/root/internal/LeNacTransport$a;

    invoke-virtual {v0, p1}, Lledroid/root/internal/LeNacTransport$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_0
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
