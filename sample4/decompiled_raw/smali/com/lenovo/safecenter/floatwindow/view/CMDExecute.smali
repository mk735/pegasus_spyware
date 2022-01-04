.class public Lcom/lenovo/safecenter/floatwindow/view/CMDExecute;
.super Ljava/lang/Object;
.source "CMDExecute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cmd"    # [Ljava/lang/String;
    .param p2, "workdirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    monitor-enter p0

    :try_start_0
    const-string v5, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .local v5, "result":Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 16
    .local v0, "builder":Ljava/lang/ProcessBuilder;
    if-eqz p2, :cond_0

    .line 17
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 18
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 20
    .local v3, "process":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 21
    .local v2, "in":Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v4, v6, [B

    .line 22
    .local v4, "re":[B
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .end local v0    # "builder":Ljava/lang/ProcessBuilder;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "re":[B
    :goto_1
    monitor-exit p0

    return-object v5

    .line 26
    :catch_0
    move-exception v1

    .line 27
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 11
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
