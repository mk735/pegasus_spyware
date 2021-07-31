.class public Lledroid/root/internal/SuTransport;
.super Lledroid/root/internal/ShellTransport;
.source "SuTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/root/internal/SuTransport$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lledroid/root/internal/ShellTransport;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected final becomeProcess(Ljava/lang/String;)Z
    .locals 6
    .param p1, "suCmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 48
    new-instance v1, Lledroid/root/ShellCommand;

    invoke-direct {v1, p0}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V

    .line 49
    .local v1, "sc":Lledroid/root/ShellCommand;
    new-instance v0, Lledroid/root/internal/SuTransport$a;

    invoke-direct {v0, p0, v4}, Lledroid/root/internal/SuTransport$a;-><init>(Lledroid/root/internal/SuTransport;B)V

    .line 50
    .local v0, "response":Lledroid/root/internal/SuTransport$a;
    invoke-virtual {v1, v0}, Lledroid/root/ShellCommand;->setResponseCallBack(Lledroid/root/ShellCommand$ShellCommandResponse;)V

    .line 51
    invoke-virtual {p0, p1}, Lledroid/root/internal/SuTransport;->resetTransportProcess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v2

    invoke-virtual {v2, v5}, Lledroid/root/ShellCommand;->exec(I)Lledroid/root/ShellCommand;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lledroid/root/ShellCommand;->waitResponse(IJ)V

    .line 60
    :cond_0
    invoke-static {v0}, Lledroid/root/internal/SuTransport$a;->a(Lledroid/root/internal/SuTransport$a;)Z

    move-result v2

    return v2
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "SuShellTransport"

    return-object v0
.end method

.method public getType()Lledroid/root/ShellTerminalController$TransportType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lledroid/root/ShellTerminalController$TransportType;->SU_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    return-object v0
.end method

.method public isRootTransport()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public prepare()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    const-string v1, "/system/xbin/su"

    invoke-static {v1}, Lledroid/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/system/bin/su"

    invoke-static {v1}, Lledroid/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return v0

    .line 38
    :cond_0
    :try_start_0
    const-string v1, "su"

    invoke-virtual {p0, v1}, Lledroid/root/internal/SuTransport;->becomeProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    goto :goto_0
.end method
