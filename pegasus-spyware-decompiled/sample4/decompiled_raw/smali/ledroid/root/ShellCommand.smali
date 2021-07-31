.class public final Lledroid/root/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/root/ShellCommand$a;,
        Lledroid/root/ShellCommand$ShellCommandResponse;
    }
.end annotation


# instance fields
.field private a:Lledroid/root/ICommandTransport;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lledroid/root/ShellCommand$ShellCommandResponse;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lledroid/root/ICommandTransport;)V
    .locals 2
    .param p1, "transport"    # Lledroid/root/ICommandTransport;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lledroid/root/ShellCommand;->b:Ljava/util/ArrayList;

    .line 22
    iput-object v1, p0, Lledroid/root/ShellCommand;->c:Lledroid/root/ShellCommand$ShellCommandResponse;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lledroid/root/ShellCommand;->d:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    .line 31
    return-void
.end method

.method public varargs constructor <init>(Lledroid/root/ICommandTransport;[Ljava/lang/String;)V
    .locals 0
    .param p1, "transport"    # Lledroid/root/ICommandTransport;
    .param p2, "command"    # [Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V

    .line 35
    invoke-virtual {p0, p2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    .line 36
    return-void
.end method

.method static synthetic a(Lledroid/root/ShellCommand;)Lledroid/root/ShellCommand$ShellCommandResponse;
    .locals 1
    .param p0, "x0"    # Lledroid/root/ShellCommand;

    .prologue
    .line 14
    iget-object v0, p0, Lledroid/root/ShellCommand;->c:Lledroid/root/ShellCommand$ShellCommandResponse;

    return-object v0
.end method

.method private declared-synchronized a()Lledroid/root/ShellCommand;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lledroid/root/ShellCommand;->b:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_1

    .line 109
    :cond_0
    const/4 v7, 0x0

    .line 145
    :goto_0
    monitor-exit p0

    return-object v7

    .line 111
    :cond_1
    :try_start_1
    iget-object v7, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    invoke-interface {v7}, Lledroid/root/ICommandTransport;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    .local v1, "context":Landroid/content/Context;
    const-string v7, "ledroid"

    const-string v8, ".cmds"

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 113
    .local v6, "tempFile":Ljava/io/File;
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 114
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    const/4 v4, 0x0

    .line 117
    .local v4, "shellBW":Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 118
    .end local v4    # "shellBW":Ljava/io/BufferedWriter;
    .local v5, "shellBW":Ljava/io/BufferedWriter;
    :try_start_3
    iget-object v7, p0, Lledroid/root/ShellCommand;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 120
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 122
    .local v2, "exit":Z
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 123
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    .local v0, "cmd":Ljava/lang/String;
    const-string v7, "exit"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    const/4 v2, 0x1

    .line 127
    :cond_2
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 137
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "exit":Z
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "shellBW":Ljava/io/BufferedWriter;
    .restart local v4    # "shellBW":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v4, :cond_3

    .line 138
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 139
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "shellBW":Ljava/io/BufferedWriter;
    .end local v6    # "tempFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 133
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "exit":Z
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "shellBW":Ljava/io/BufferedWriter;
    .restart local v6    # "tempFile":Ljava/io/File;
    :cond_4
    if-eqz v2, :cond_5

    .line 134
    :try_start_5
    const-string v7, "echo \"SHELL COMMAND END\" \n"

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    :cond_5
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 139
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 143
    iget-object v7, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " & \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lledroid/root/ICommandTransport;->write(Ljava/lang/String;)V

    .line 144
    iget-object v7, p0, Lledroid/root/ShellCommand;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v7, p0

    .line 145
    goto/16 :goto_0

    .line 137
    .end local v2    # "exit":Z
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "shellBW":Ljava/io/BufferedWriter;
    .restart local v4    # "shellBW":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v7

    goto :goto_2
.end method

.method static synthetic a(Lledroid/root/ShellCommand;ILjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lledroid/root/ShellCommand;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 14
    iget-object v0, p0, Lledroid/root/ShellCommand;->c:Lledroid/root/ShellCommand$ShellCommandResponse;

    invoke-interface {v0, p1, p2}, Lledroid/root/ShellCommand$ShellCommandResponse;->onShellCommandResponse(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lledroid/root/ShellCommand;)Lledroid/root/ICommandTransport;
    .locals 1
    .param p0, "x0"    # Lledroid/root/ShellCommand;

    .prologue
    .line 14
    iget-object v0, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    return-object v0
.end method


# virtual methods
.method public final varargs declared-synchronized addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;
    .locals 5
    .param p1, "command"    # [Ljava/lang/String;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .local v0, "cmds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 51
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 49
    .end local v0    # "cmds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 56
    .restart local v0    # "cmds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    const/16 v3, 0xa

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    iget-object v3, p0, Lledroid/root/ShellCommand;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    monitor-exit p0

    return-object p0
.end method

.method public final declared-synchronized exec()Lledroid/root/ShellCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lledroid/root/ShellCommand;->exec(I)Lledroid/root/ShellCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized exec(I)Lledroid/root/ShellCommand;
    .locals 4
    .param p1, "exeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lledroid/root/ShellCommand;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    monitor-exit p0

    return-object v0

    .line 77
    :cond_1
    :try_start_1
    iget-object v0, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    invoke-interface {v0}, Lledroid/root/ICommandTransport;->onBeforeExec()V

    .line 78
    iget-object v0, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    invoke-interface {v0}, Lledroid/root/ICommandTransport;->onlyAsScriptBatchExec()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-direct {p0}, Lledroid/root/ShellCommand;->a()Lledroid/root/ShellCommand;

    .line 83
    :cond_2
    :goto_1
    iget-object v0, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    invoke-interface {v0}, Lledroid/root/ICommandTransport;->flush()V

    .line 84
    iget-object v0, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    invoke-interface {v0}, Lledroid/root/ICommandTransport;->onAfterExec()V

    .line 86
    iget-object v0, p0, Lledroid/root/ShellCommand;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v0, p0

    .line 87
    goto :goto_0

    .line 81
    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lledroid/root/ShellCommand;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "exit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    iget-object v3, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    invoke-interface {v3, v0}, Lledroid/root/ICommandTransport;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :cond_5
    if-nez v1, :cond_2

    :try_start_2
    iget-object v0, p0, Lledroid/root/ShellCommand;->a:Lledroid/root/ICommandTransport;

    const-string v1, "echo \"SHELL COMMAND END\" \n"

    invoke-interface {v0, v1}, Lledroid/root/ICommandTransport;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, Lledroid/root/ShellCommand;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 41
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lledroid/root/ShellCommand;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 46
    return-void
.end method

.method public final declared-synchronized setResponseCallBack(Lledroid/root/ShellCommand$ShellCommandResponse;)V
    .locals 1
    .param p1, "callback"    # Lledroid/root/ShellCommand$ShellCommandResponse;

    .prologue
    .line 63
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 64
    :try_start_0
    iput-object p1, p0, Lledroid/root/ShellCommand;->c:Lledroid/root/ShellCommand$ShellCommandResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final waitResponse()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lledroid/root/ShellCommand;->waitResponse(I)V

    .line 155
    return-void
.end method

.method public final waitResponse(I)V
    .locals 2
    .param p1, "exeId"    # I

    .prologue
    .line 175
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lledroid/root/ShellCommand;->waitResponse(IJ)V

    .line 176
    return-void
.end method

.method public final waitResponse(IJ)V
    .locals 5
    .param p1, "exeId"    # I
    .param p2, "millis"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 187
    iget-object v1, p0, Lledroid/root/ShellCommand;->c:Lledroid/root/ShellCommand$ShellCommandResponse;

    if-nez v1, :cond_2

    .line 188
    cmp-long v1, p2, v3

    if-gez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 193
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lledroid/root/ShellCommand$a;

    invoke-direct {v1, p0, p0, p1}, Lledroid/root/ShellCommand$a;-><init>(Lledroid/root/ShellCommand;Lledroid/root/ShellCommand;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    .local v0, "relayThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lledroid/root/ShellCommand;->c:Lledroid/root/ShellCommand$ShellCommandResponse;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Relay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 205
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    :goto_1
    cmp-long v1, p2, v3

    if-nez v1, :cond_3

    .line 211
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_2
    cmp-long v1, p2, v3

    if-lez v1, :cond_0

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_0

    .line 213
    :cond_3
    :try_start_2
    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 219
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final waitResponse(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 165
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lledroid/root/ShellCommand;->waitResponse(IJ)V

    .line 166
    return-void
.end method
