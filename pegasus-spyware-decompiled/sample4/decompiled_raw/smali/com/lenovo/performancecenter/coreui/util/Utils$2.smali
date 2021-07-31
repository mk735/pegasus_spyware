.class final Lcom/lenovo/performancecenter/coreui/util/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/coreui/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 280
    const/4 v6, 0x0

    .line 281
    .local v6, "mProcess":Ljava/lang/Process;
    const/4 v4, 0x0

    .line 282
    .local v4, "mOutputStream":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .line 284
    .local v3, "mInputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "su"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 285
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v4    # "mOutputStream":Ljava/io/DataOutputStream;
    .local v5, "mOutputStream":Ljava/io/DataOutputStream;
    :try_start_1
    const-string v8, "ls data\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 288
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 289
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 290
    .local v1, "in":Ljava/io/BufferedReader;
    const-string v7, "denied"

    .line 292
    .local v7, "readStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 294
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/lenovo/performancecenter/coreui/util/Utils;->a(Z)Z

    .line 295
    const-string v8, "ROOT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retrie permission"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 299
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    if-eqz v6, :cond_3

    .line 305
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    move-object v4, v5

    .line 308
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "mOutputStream":Ljava/io/DataOutputStream;
    .end local v7    # "readStr":Ljava/lang/String;
    .restart local v4    # "mOutputStream":Ljava/io/DataOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v8, "ROOT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/lenovo/performancecenter/coreui/util/Utils;->a(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    if-eqz v6, :cond_1

    .line 305
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_2

    .line 305
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_2
    throw v8

    .line 304
    .end local v4    # "mOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "mOutputStream":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "mOutputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "mOutputStream":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 300
    .end local v4    # "mOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "mOutputStream":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "mOutputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "mOutputStream":Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v4    # "mOutputStream":Ljava/io/DataOutputStream;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "mOutputStream":Ljava/io/DataOutputStream;
    .restart local v7    # "readStr":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    .end local v5    # "mOutputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "mOutputStream":Ljava/io/DataOutputStream;
    goto :goto_0
.end method
