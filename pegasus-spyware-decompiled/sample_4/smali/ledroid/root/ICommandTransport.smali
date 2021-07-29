.class public interface abstract Lledroid/root/ICommandTransport;
.super Ljava/lang/Object;
.source "ICommandTransport.java"


# virtual methods
.method public abstract destory()V
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getType()Lledroid/root/ShellTerminalController$TransportType;
.end method

.method public abstract isRootTransport()Z
.end method

.method public abstract onAfterExec()V
.end method

.method public abstract onBeforeExec()V
.end method

.method public abstract onlyAsScriptBatchExec()Z
.end method

.method public abstract prepare()Z
.end method

.method public abstract readLine()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
