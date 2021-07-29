.class public Lcom/lenovo/lps/sus/d/f;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Lcom/lenovo/lps/sus/d/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/io/File;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/io/File;Ljava/lang/String;Lcom/lenovo/lps/sus/d/a;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/d/f;->b:Z

    iput-object v3, p0, Lcom/lenovo/lps/sus/d/f;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lenovo/lps/sus/d/f;->f:J

    iput-object v3, p0, Lcom/lenovo/lps/sus/d/f;->g:Ljava/io/File;

    iput-object v3, p0, Lcom/lenovo/lps/sus/d/f;->h:Ljava/lang/String;

    iput-object v3, p0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    iput v0, p0, Lcom/lenovo/lps/sus/d/f;->j:I

    iput-object p1, p0, Lcom/lenovo/lps/sus/d/f;->a:Landroid/content/Context;

    iput-object p9, p0, Lcom/lenovo/lps/sus/d/f;->c:Lcom/lenovo/lps/sus/d/a;

    if-ltz p2, :cond_1

    const/4 v1, 0x2

    if-gt p2, v1, :cond_1

    :goto_0
    iput p2, p0, Lcom/lenovo/lps/sus/d/f;->j:I

    iput-object p3, p0, Lcom/lenovo/lps/sus/d/f;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/f;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "SUSDownloadManager"

    iput-object v0, p0, Lcom/lenovo/lps/sus/d/f;->d:Ljava/lang/String;

    :cond_0
    iput-object p4, p0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    iput-wide p5, p0, Lcom/lenovo/lps/sus/d/f;->f:J

    iput-object p7, p0, Lcom/lenovo/lps/sus/d/f;->g:Ljava/io/File;

    iput-object p8, p0, Lcom/lenovo/lps/sus/d/f;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/sus/d/f;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/d/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    return-void

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/f;->c:Lcom/lenovo/lps/sus/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/f;->c:Lcom/lenovo/lps/sus/d/a;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/sus/d/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/d/f;->b:Z

    return-void
.end method

.method public a(Lcom/lenovo/lps/sus/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/d/f;->c:Lcom/lenovo/lps/sus/d/a;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/d/f;->b:Z

    return-void
.end method

.method public run()V
    .locals 23

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v11, 0x1eb

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/d/f;->a:Landroid/content/Context;

    const-string v4, "SUS_IDENTIFICATIONFILE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v2, "SUS_IDENTIFICATIONFILE_DOWNLOADURL"

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "SUS_DOWNLOAD_FAIL_NUM"

    const/4 v9, 0x0

    invoke-interface {v4, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    if-eqz v5, :cond_4

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/lps/sus/d/f;->f:J

    move-wide/from16 v16, v0

    cmp-long v9, v14, v16

    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/lps/sus/d/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/lps/sus/d/f;->f:J

    move-wide/from16 v16, v0

    cmp-long v9, v14, v16

    if-gtz v9, :cond_3

    const/4 v9, 0x6

    if-le v2, v9, :cond_8

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    :cond_4
    :goto_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "SUS_IDENTIFICATIONFILE_DOWNLOADURL"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "SUS_DOWNLOAD_FAIL_NUM"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x800

    :try_start_0
    new-array v14, v4, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    if-eqz v4, :cond_25

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v15, 0x0

    cmp-long v15, v15, v4

    if-gez v15, :cond_25

    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v10, 0x0

    move-object v9, v10

    move-wide/from16 v19, v4

    move v4, v6

    move-wide/from16 v5, v19

    :goto_2
    :try_start_2
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/lps/sus/d/f;->j:I

    mul-int/lit16 v10, v10, 0x7d0

    add-int/lit16 v10, v10, 0x1770

    invoke-static {v7, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v10, 0x2710

    invoke-static {v7, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/lenovo/lps/sus/d/f;->b:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_16
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_b

    move-object v7, v8

    move v4, v11

    move-object/from16 v19, v3

    move-wide v2, v5

    move-object/from16 v5, v19

    :goto_3
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_5
    if-eqz v5, :cond_6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13

    :cond_6
    :goto_4
    if-eqz v9, :cond_7

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/lps/sus/d/f;->f:J

    cmp-long v2, v2, v5

    if-ltz v2, :cond_22

    const/16 v2, 0xc8

    if-ne v2, v4, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/lps/sus/d/f;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    if-eqz v2, :cond_a

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v7

    :try_start_5
    const-string v10, "SUS"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "exception when closing the file before download : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v19, v6

    move-wide/from16 v20, v4

    move-wide/from16 v5, v20

    move/from16 v4, v19

    goto/16 :goto_2

    :cond_b
    :try_start_6
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-direct {v7, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_16
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_c

    :try_start_7
    const-string v8, "Range"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bytes="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_c
    :try_start_8
    invoke-interface {v10, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v8

    :try_start_9
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v15, 0x1f7

    if-ne v10, v15, :cond_10

    const-string v2, "SUS"

    const-string v4, "got HTTP response code 503"

    invoke-static {v2, v4}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc1

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v7, 0x0

    move-object/from16 v19, v3

    move-wide v2, v5

    move-object/from16 v5, v19

    goto/16 :goto_3

    :catch_1
    move-exception v2

    const-string v4, "SUS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "timeout exception trying to execute request for "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1eb

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v7, 0x0

    move-object/from16 v19, v3

    move-wide v2, v5

    move-object/from16 v5, v19

    goto/16 :goto_3

    :catch_2
    move-exception v2

    const-string v4, "SUS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Arg exception trying to execute request for "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x190

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v7, 0x0

    move-object/from16 v19, v3

    move-wide v2, v5

    move-object/from16 v5, v19

    goto/16 :goto_3

    :catch_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/d/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/c;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "SUS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Execute Failed "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", Net Up"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v7, 0x0

    move v4, v11

    move-wide/from16 v19, v5

    move-object v5, v3

    move-wide/from16 v2, v19

    goto/16 :goto_3

    :cond_d
    const-string v2, "SUS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Execute Failed "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", Net Down"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    :catch_4
    move-exception v2

    move-object v4, v2

    move-object/from16 v19, v3

    move-wide v2, v5

    move-object/from16 v5, v19

    move-object v6, v7

    move-object v7, v9

    :goto_7
    :try_start_a
    const-string v8, "SUS"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FileNotFoundException for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/16 v4, 0x1ec

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_e
    if-eqz v5, :cond_f

    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    :cond_f
    :goto_8
    if-eqz v7, :cond_7

    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v5

    const-string v6, "SUS"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "exception when closing the file after download : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    if-nez v4, :cond_11

    const/16 v15, 0xc8

    if-ne v10, v15, :cond_12

    :cond_11
    if-eqz v4, :cond_14

    const/16 v4, 0xce

    if-eq v10, v4, :cond_14

    :cond_12
    :try_start_d
    const-string v2, "SUS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "http error "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " for download "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    invoke-interface {v8, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    :cond_13
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v7, 0x0

    move v4, v11

    move-wide/from16 v19, v5

    move-object v5, v3

    move-wide/from16 v2, v19

    goto/16 :goto_3

    :cond_14
    const-string v4, "SUS"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "received response for "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    invoke-interface {v8, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v15, v4

    add-long/2addr v15, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/lps/sus/d/f;->f:J

    move-wide/from16 v17, v0

    cmp-long v10, v15, v17

    if-eqz v10, :cond_15

    const-string v10, "SUS"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "fileSize error!!! fileSize=%d"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/lps/sus/d/f;->f:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; contentLength=%d"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/lenovo/lps/sus/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_15
    move-object v10, v2

    :goto_9
    :try_start_e
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v4

    move-object v2, v9

    move-wide v8, v12

    :cond_16
    :goto_a
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/lps/sus/d/f;->b:Z

    if-eqz v3, :cond_1a

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const/4 v7, 0x0

    move-object v9, v2

    move-wide v2, v5

    move-object v5, v4

    move v4, v11

    goto/16 :goto_3

    :catch_6
    move-exception v2

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/d/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/c;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "SUS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Get Failed "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", Net Up"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v7, 0x0

    move v4, v11

    move-wide/from16 v19, v5

    move-object v5, v3

    move-wide/from16 v2, v19

    goto/16 :goto_3

    :cond_17
    const-string v2, "SUS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Get Failed "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", Net Down"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_b

    :catch_7
    move-exception v2

    move-object v4, v2

    move-object/from16 v19, v3

    move-wide v2, v5

    move-object/from16 v5, v19

    :goto_c
    :try_start_11
    const-string v6, "SUS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Exception for "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    const/16 v4, 0x1eb

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_18
    if-eqz v5, :cond_19

    :try_start_12
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11

    :cond_19
    :goto_d
    if-eqz v9, :cond_7

    :try_start_13
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_5

    :catch_8
    move-exception v5

    const-string v6, "SUS"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "exception when closing the file after download : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1a
    :try_start_14
    invoke-virtual {v4, v14}, Ljava/io/InputStream;->read([B)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-result v12

    const/4 v3, -0x1

    if-ne v12, v3, :cond_1d

    if-eqz v10, :cond_1c

    :try_start_15
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v5, v8

    if-eqz v3, :cond_1c

    const-string v3, "SUS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mismatched content length "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/lps/sus/d/f;->f:J

    cmp-long v3, v5, v8

    if-ltz v3, :cond_23

    const-string v3, "SUS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "download completed for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    move-object v9, v2

    move-wide/from16 v19, v5

    move-object v5, v4

    move v4, v3

    move-wide/from16 v2, v19

    goto/16 :goto_3

    :catch_9
    move-exception v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/d/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/lps/sus/c/c;->l(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "SUS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Read Failed "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Net Up"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v7, 0x0

    move-object v9, v2

    move-wide v2, v5

    move-object v5, v4

    move v4, v11

    goto/16 :goto_3

    :cond_1b
    const-string v3, "SUS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Read Failed "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Net Down"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_a
    move-exception v3

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    move-wide/from16 v21, v5

    move-object/from16 v5, v20

    move-object v6, v7

    move-object v7, v2

    move-wide/from16 v2, v21

    goto/16 :goto_7

    :cond_1c
    const-string v3, "SUS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mismatched content length for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/d/f;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto/16 :goto_e

    :catch_b
    move-exception v3

    move-object v9, v2

    move-object/from16 v19, v4

    move-object v4, v3

    move-wide v2, v5

    move-object/from16 v5, v19

    goto/16 :goto_c

    :cond_1d
    if-nez v2, :cond_1e

    :try_start_16
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/lps/sus/d/f;->i:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-direct {v3, v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v2, v3

    :cond_1e
    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    int-to-long v12, v12

    add-long/2addr v5, v12

    :try_start_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/d/f;->c:Lcom/lenovo/lps/sus/d/a;

    if-eqz v3, :cond_16

    sub-long v12, v5, v8

    const-wide/16 v15, 0x0

    cmp-long v3, v12, v15

    if-ltz v3, :cond_16

    const/4 v3, 0x7

    shl-long/2addr v12, v3

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/lenovo/lps/sus/d/f;->f:J

    cmp-long v3, v12, v15

    if-lez v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/d/f;->c:Lcom/lenovo/lps/sus/d/a;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/lps/sus/d/f;->f:J

    invoke-interface {v3, v5, v6, v8, v9}, Lcom/lenovo/lps/sus/d/a;->a(JJ)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-wide v8, v5

    goto/16 :goto_a

    :catch_c
    move-exception v3

    move-object v9, v2

    move-wide v2, v5

    move-object v5, v4

    move v4, v11

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    move-object v7, v8

    move-object v9, v10

    :goto_10
    if-eqz v7, :cond_1f

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_1f
    if-eqz v3, :cond_20

    :try_start_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_12

    :cond_20
    :goto_11
    if-eqz v9, :cond_21

    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    :cond_21
    :goto_12
    throw v2

    :catch_d
    move-exception v3

    const-string v4, "SUS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exception when closing the file after download : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_e
    move-exception v5

    const-string v6, "SUS"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "exception when closing the file after download : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_22
    const-wide/16 v2, 0xbb8

    :try_start_1a
    invoke-static {v2, v3}, Lcom/lenovo/lps/sus/d/f;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_f

    :goto_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/lps/sus/d/f;->b:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/d/f;->c:Lcom/lenovo/lps/sus/d/a;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/d/f;->c:Lcom/lenovo/lps/sus/d/a;

    invoke-interface {v3, v2}, Lcom/lenovo/lps/sus/d/a;->a(Z)V

    goto/16 :goto_0

    :catch_f
    move-exception v2

    const-string v3, "SUS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception when sleeping the thread : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lenovo/lps/sus/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_10
    move-exception v5

    goto/16 :goto_8

    :catch_11
    move-exception v5

    goto/16 :goto_d

    :catch_12
    move-exception v3

    goto :goto_11

    :catch_13
    move-exception v5

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    move-object v7, v8

    goto :goto_10

    :catchall_2
    move-exception v2

    goto :goto_10

    :catchall_3
    move-exception v3

    move-object v9, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_10

    :catchall_4
    move-exception v2

    move-object v3, v5

    move-object v9, v7

    move-object v7, v6

    goto/16 :goto_10

    :catchall_5
    move-exception v2

    move-object v3, v5

    goto/16 :goto_10

    :catch_14
    move-exception v2

    move-object v4, v2

    move-object v5, v3

    move-object v9, v10

    move-wide v2, v6

    move-object v7, v8

    goto/16 :goto_c

    :catch_15
    move-exception v2

    move-object v7, v8

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-object/from16 v5, v19

    move-object v4, v2

    move-wide/from16 v2, v20

    goto/16 :goto_c

    :catch_16
    move-exception v2

    move-object v4, v2

    move-object v7, v8

    move-wide/from16 v19, v5

    move-object v5, v3

    move-wide/from16 v2, v19

    goto/16 :goto_c

    :catch_17
    move-exception v2

    move-object v4, v2

    move-object v5, v3

    move-wide v2, v6

    move-object v6, v8

    move-object v7, v10

    goto/16 :goto_7

    :catch_18
    move-exception v2

    move-object v6, v8

    move-object v7, v9

    move-wide/from16 v19, v4

    move-object v4, v2

    move-object v5, v3

    move-wide/from16 v2, v19

    goto/16 :goto_7

    :catch_19
    move-exception v2

    move-object v4, v2

    move-object v7, v9

    move-wide/from16 v19, v5

    move-object v6, v8

    move-object v5, v3

    move-wide/from16 v2, v19

    goto/16 :goto_7

    :cond_23
    move-object v9, v2

    move-wide v2, v5

    move-object v5, v4

    move v4, v11

    goto/16 :goto_3

    :cond_24
    move-object v10, v2

    goto/16 :goto_9

    :cond_25
    move v4, v9

    move-object v9, v10

    move-wide/from16 v19, v6

    move-wide/from16 v5, v19

    goto/16 :goto_2
.end method
