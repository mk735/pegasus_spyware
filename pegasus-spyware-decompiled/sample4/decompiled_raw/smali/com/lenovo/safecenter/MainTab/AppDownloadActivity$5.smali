.class final Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;
.super Ljava/lang/Object;
.source "AppDownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->copyAssetsFilesInstall(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 504
    iput p1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->a:I

    iput-object p2, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    .line 509
    iget v12, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->a:I

    iget-object v13, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->b:Landroid/content/Context;

    const v14, 0x7f0d05f9

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->c:Landroid/os/Handler;

    invoke-static {v12, v13, v14}, Lcom/lenovo/safecenter/utils/WflUtils;->sendMessageToHandler(ILjava/lang/Object;Landroid/os/Handler;)V

    .line 512
    const/4 v5, 0x0

    .line 513
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 514
    .local v4, "filePath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 516
    .local v8, "nbFile":Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->b:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->d:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 517
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .end local v8    # "nbFile":Ljava/io/File;
    .local v9, "nbFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 519
    iget-object v12, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->b:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->d:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 521
    .local v10, "open":Ljava/io/InputStream;
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v12

    new-array v0, v12, [B

    .line 522
    .local v0, "buffer":[B
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    .line 523
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 524
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v6

    .line 530
    .end local v0    # "buffer":[B
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "open":Ljava/io/InputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v5, :cond_1

    .line 531
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v8, v9

    .line 538
    .end local v9    # "nbFile":Ljava/io/File;
    .restart local v8    # "nbFile":Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "chmod 777 /data/data/com.lenovo.safecenter/cache/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->d:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "command":Ljava/lang/String;
    const-string v2, "chmod 777 /data/data/com.lenovo.safecenter/cache"

    .line 542
    .local v2, "command1":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    .line 544
    .local v11, "runtime":Ljava/lang/Runtime;
    :try_start_4
    invoke-virtual {v11, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 545
    invoke-virtual {v11, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 546
    const-wide/16 v12, 0x3e8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 551
    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 552
    iget-object v12, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->b:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/data/data/com.lenovo.safecenter/cache/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->d:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->e:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/lenovo/safecenter/support/CMDHelper;->installAPK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 557
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v7, "intent":Landroid/content/Intent;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file:///data/data/com.lenovo.safecenter/cache/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->d:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string v13, "application/vnd.android.package-archive"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 563
    iget-object v12, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;->b:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 567
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 533
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "command1":Ljava/lang/String;
    .end local v8    # "nbFile":Ljava/io/File;
    .end local v11    # "runtime":Ljava/lang/Runtime;
    .restart local v9    # "nbFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 534
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 536
    .end local v9    # "nbFile":Ljava/io/File;
    .restart local v8    # "nbFile":Ljava/io/File;
    goto/16 :goto_0

    .line 526
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 527
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 530
    if-eqz v5, :cond_2

    .line 531
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 533
    :catch_2
    move-exception v3

    .line 534
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 529
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 530
    :goto_3
    if-eqz v5, :cond_4

    .line 531
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 535
    :cond_4
    :goto_4
    throw v12

    .line 533
    :catch_3
    move-exception v3

    .line 534
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v2    # "command1":Ljava/lang/String;
    .restart local v11    # "runtime":Ljava/lang/Runtime;
    :catch_4
    move-exception v12

    goto :goto_1

    .line 529
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "command1":Ljava/lang/String;
    .end local v8    # "nbFile":Ljava/io/File;
    .end local v11    # "runtime":Ljava/lang/Runtime;
    .restart local v9    # "nbFile":Ljava/io/File;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "nbFile":Ljava/io/File;
    .restart local v8    # "nbFile":Ljava/io/File;
    goto :goto_3

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "nbFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "nbFile":Ljava/io/File;
    .restart local v10    # "open":Ljava/io/InputStream;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9    # "nbFile":Ljava/io/File;
    .restart local v8    # "nbFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 526
    .end local v0    # "buffer":[B
    .end local v8    # "nbFile":Ljava/io/File;
    .end local v10    # "open":Ljava/io/InputStream;
    .restart local v9    # "nbFile":Ljava/io/File;
    :catch_5
    move-exception v3

    move-object v8, v9

    .end local v9    # "nbFile":Ljava/io/File;
    .restart local v8    # "nbFile":Ljava/io/File;
    goto :goto_2

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "nbFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "nbFile":Ljava/io/File;
    .restart local v10    # "open":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v8, v9

    .end local v9    # "nbFile":Ljava/io/File;
    .restart local v8    # "nbFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
