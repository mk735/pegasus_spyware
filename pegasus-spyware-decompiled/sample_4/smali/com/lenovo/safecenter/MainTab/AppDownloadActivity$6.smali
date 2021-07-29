.class final Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;
.super Ljava/lang/Object;
.source "AppDownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->copyAssetsFilesInstallAtBackgroud(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    .line 577
    const/4 v5, 0x0

    .line 578
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 579
    .local v4, "filePath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 581
    .local v7, "nbFile":Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 582
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    .end local v7    # "nbFile":Ljava/io/File;
    .local v8, "nbFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 584
    iget-object v11, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 586
    .local v9, "open":Ljava/io/InputStream;
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v11

    new-array v0, v11, [B

    .line 587
    .local v0, "buffer":[B
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    .line 588
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 589
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v6

    .line 595
    .end local v0    # "buffer":[B
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "open":Ljava/io/InputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v5, :cond_1

    .line 596
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v7, v8

    .line 602
    .end local v8    # "nbFile":Ljava/io/File;
    .restart local v7    # "nbFile":Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 777 /data/data/com.lenovo.safecenter/cache/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "command":Ljava/lang/String;
    const-string v2, "chmod 777 /data/data/com.lenovo.safecenter/cache"

    .line 606
    .local v2, "command1":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    .line 608
    .local v10, "runtime":Ljava/lang/Runtime;
    :try_start_4
    invoke-virtual {v10, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 609
    invoke-virtual {v10, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 610
    const-wide/16 v11, 0x3e8

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 615
    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 616
    iget-object v11, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->a:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/data/com.lenovo.safecenter/cache/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->c:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/lenovo/safecenter/support/CMDHelper;->installAPK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 621
    const-string v11, "i"

    const-string v12, "wu0wu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "install at backgroud fileName="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_3
    :goto_2
    return-void

    .line 598
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "command1":Ljava/lang/String;
    .end local v7    # "nbFile":Ljava/io/File;
    .end local v10    # "runtime":Ljava/lang/Runtime;
    .restart local v8    # "nbFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 599
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 601
    .end local v8    # "nbFile":Ljava/io/File;
    .restart local v7    # "nbFile":Ljava/io/File;
    goto :goto_0

    .line 591
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 592
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 595
    if-eqz v5, :cond_2

    .line 596
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 598
    :catch_2
    move-exception v3

    .line 599
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 594
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 595
    :goto_4
    if-eqz v5, :cond_4

    .line 596
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 600
    :cond_4
    :goto_5
    throw v11

    .line 598
    :catch_3
    move-exception v3

    .line 599
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 624
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v2    # "command1":Ljava/lang/String;
    .restart local v10    # "runtime":Ljava/lang/Runtime;
    :cond_5
    const-string v11, "i"

    const-string v12, "wu0wu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "install at backgroud fileName="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "is error"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move-exception v11

    goto/16 :goto_1

    .line 594
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "command1":Ljava/lang/String;
    .end local v7    # "nbFile":Ljava/io/File;
    .end local v10    # "runtime":Ljava/lang/Runtime;
    .restart local v8    # "nbFile":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "nbFile":Ljava/io/File;
    .restart local v7    # "nbFile":Ljava/io/File;
    goto :goto_4

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "nbFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "nbFile":Ljava/io/File;
    .restart local v9    # "open":Ljava/io/InputStream;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8    # "nbFile":Ljava/io/File;
    .restart local v7    # "nbFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 591
    .end local v0    # "buffer":[B
    .end local v7    # "nbFile":Ljava/io/File;
    .end local v9    # "open":Ljava/io/InputStream;
    .restart local v8    # "nbFile":Ljava/io/File;
    :catch_5
    move-exception v3

    move-object v7, v8

    .end local v8    # "nbFile":Ljava/io/File;
    .restart local v7    # "nbFile":Ljava/io/File;
    goto :goto_3

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "nbFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "nbFile":Ljava/io/File;
    .restart local v9    # "open":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v7, v8

    .end local v8    # "nbFile":Ljava/io/File;
    .restart local v7    # "nbFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method
