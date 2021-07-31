.class final Lledroid/root/ShellCommand$a;
.super Ljava/lang/Object;
.source "ShellCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/ShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lledroid/root/ShellCommand;

.field private b:Lledroid/root/ShellCommand;

.field private c:I


# direct methods
.method public constructor <init>(Lledroid/root/ShellCommand;Lledroid/root/ShellCommand;I)V
    .locals 0
    .param p2, "shellCmd"    # Lledroid/root/ShellCommand;
    .param p3, "exeId"    # I

    .prologue
    .line 239
    iput-object p1, p0, Lledroid/root/ShellCommand$a;->a:Lledroid/root/ShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Lledroid/root/ShellCommand$a;->b:Lledroid/root/ShellCommand;

    .line 241
    iput p3, p0, Lledroid/root/ShellCommand$a;->c:I

    .line 242
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 246
    iget-object v2, p0, Lledroid/root/ShellCommand$a;->a:Lledroid/root/ShellCommand;

    invoke-static {v2}, Lledroid/root/ShellCommand;->a(Lledroid/root/ShellCommand;)Lledroid/root/ShellCommand$ShellCommandResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lledroid/root/ShellCommand$a;->a:Lledroid/root/ShellCommand;

    invoke-static {v2}, Lledroid/root/ShellCommand;->b(Lledroid/root/ShellCommand;)Lledroid/root/ICommandTransport;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lledroid/root/ShellCommand$a;->b:Lledroid/root/ShellCommand;

    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    :try_start_0
    iget-object v2, p0, Lledroid/root/ShellCommand$a;->a:Lledroid/root/ShellCommand;

    invoke-static {v2}, Lledroid/root/ShellCommand;->b(Lledroid/root/ShellCommand;)Lledroid/root/ICommandTransport;

    move-result-object v2

    invoke-interface {v2}, Lledroid/root/ICommandTransport;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 254
    const-string v2, "SHELL COMMAND END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lledroid/root/ShellCommand$a;->b:Lledroid/root/ShellCommand;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 266
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    throw v2

    .line 258
    .restart local v1    # "line":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lledroid/root/ShellCommand$a;->b:Lledroid/root/ShellCommand;

    iget v3, p0, Lledroid/root/ShellCommand$a;->c:I

    invoke-static {v2, v3, v1}, Lledroid/root/ShellCommand;->a(Lledroid/root/ShellCommand;ILjava/lang/String;)V

    .line 260
    iget-object v2, p0, Lledroid/root/ShellCommand$a;->a:Lledroid/root/ShellCommand;

    invoke-static {v2}, Lledroid/root/ShellCommand;->b(Lledroid/root/ShellCommand;)Lledroid/root/ICommandTransport;

    move-result-object v2

    invoke-interface {v2}, Lledroid/root/ICommandTransport;->onlyAsScriptBatchExec()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1
.end method
