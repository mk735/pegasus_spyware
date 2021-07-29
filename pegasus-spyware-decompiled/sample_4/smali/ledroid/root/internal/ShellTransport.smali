.class public Lledroid/root/internal/ShellTransport;
.super Ljava/lang/Object;
.source "ShellTransport.java"

# interfaces
.implements Lledroid/root/ICommandTransport;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Process;

.field private c:Ljava/io/DataOutputStream;

.field private d:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lledroid/root/internal/ShellTransport;->b:Ljava/lang/Process;

    .line 22
    iput-object v0, p0, Lledroid/root/internal/ShellTransport;->c:Ljava/io/DataOutputStream;

    .line 23
    iput-object v0, p0, Lledroid/root/internal/ShellTransport;->d:Ljava/io/BufferedReader;

    .line 26
    iput-object p1, p0, Lledroid/root/internal/ShellTransport;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lledroid/root/internal/ShellTransport;->b:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lledroid/root/internal/ShellTransport;->b:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 125
    iput-object v1, p0, Lledroid/root/internal/ShellTransport;->b:Ljava/lang/Process;

    .line 127
    :cond_0
    iput-object v1, p0, Lledroid/root/internal/ShellTransport;->c:Ljava/io/DataOutputStream;

    .line 128
    iput-object v1, p0, Lledroid/root/internal/ShellTransport;->d:Ljava/io/BufferedReader;

    .line 129
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 35
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lledroid/root/internal/ShellTransport;->c:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lledroid/root/internal/ShellTransport;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lledroid/root/internal/ShellTransport;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "ShellTransport"

    return-object v0
.end method

.method public getType()Lledroid/root/ShellTerminalController$TransportType;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lledroid/root/ShellTerminalController$TransportType;->NORMAL_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    return-object v0
.end method

.method public isRootTransport()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onAfterExec()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onBeforeExec()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onlyAsScriptBatchExec()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()Z
    .locals 2

    .prologue
    .line 81
    :try_start_0
    const-string v1, "sh"

    invoke-virtual {p0, v1}, Lledroid/root/internal/ShellTransport;->resetTransportProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 v1, 0x1

    .line 85
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lledroid/root/internal/ShellTransport;->d:Ljava/io/BufferedReader;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lledroid/root/internal/ShellTransport;->d:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected resetTransportProcess(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 65
    invoke-virtual {p0}, Lledroid/root/internal/ShellTransport;->destory()V

    .line 67
    new-instance v0, Ljava/lang/ProcessBuilder;

    new-array v1, v2, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lledroid/root/internal/ShellTransport;->b:Ljava/lang/Process;

    .line 68
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lledroid/root/internal/ShellTransport;->b:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lledroid/root/internal/ShellTransport;->c:Ljava/io/DataOutputStream;

    .line 69
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lledroid/root/internal/ShellTransport;->b:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lledroid/root/internal/ShellTransport;->d:Ljava/io/BufferedReader;

    .line 75
    return v3
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lledroid/root/internal/ShellTransport;->c:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lledroid/root/internal/ShellTransport;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0
.end method
