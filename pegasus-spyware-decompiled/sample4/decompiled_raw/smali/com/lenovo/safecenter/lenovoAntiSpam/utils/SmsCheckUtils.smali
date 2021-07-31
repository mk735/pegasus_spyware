.class public Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SmsCheckUtils;
.super Ljava/lang/Object;
.source "SmsCheckUtils.java"


# static fields
.field public static final CHECK_ERROR:I = 0x0

.field public static final CHECK_GOOD:I = 0x1

.field public static final CHECK_SPAM:I = 0x3

.field public static final CHECK_UNSURE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChargeChecker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "smsContent"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public static checkSmsAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "smsContent"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v4, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v4}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    .line 72
    .local v1, "mAresEnginManager":Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;
    new-instance v4, Lcom/lenovo/safecenter/sdksys/DemoAresEngineFactor;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/sdksys/DemoAresEngineFactor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->setAresEngineFactor(Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;)V

    .line 73
    new-instance v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    .line 74
    .local v2, "sms":Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    const-string v4, ""

    iput-object v4, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->name:Ljava/lang/String;

    .line 75
    iput-object p1, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 76
    iput-object p2, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 81
    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v3

    .line 82
    .local v3, "smschecker":Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
    invoke-interface {v3, v2}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;->check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    move-result-object v0

    .line 83
    .local v0, "checkresult":Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;
    const-string v4, "demo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smschecktype=: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v4, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 92
    :cond_0
    const/4 v4, 0x1

    .line 95
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getFiletime(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "rule_store.sys"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "rulePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 210
    .local v2, "time":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getSysVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    const-string v0, ""

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v5, 0x0

    .line 29
    .local v5, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 31
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "rule_store.sys"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "rule_store.sys"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 33
    .local v7, "rulePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 38
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 39
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v0, v8, [B

    .line 41
    .local v0, "buf":[B
    const/4 v6, 0x0

    .line 42
    .local v6, "len":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    .line 43
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 45
    .end local v0    # "buf":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 46
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "rulePath":Ljava/lang/String;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    if-eqz v5, :cond_1

    .line 50
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 55
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 57
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 64
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void

    .line 48
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    .restart local v7    # "rulePath":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    .line 50
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 55
    :cond_4
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v4

    .line 60
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 51
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 52
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 59
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 60
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 51
    .end local v0    # "buf":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "len":I
    .end local v7    # "rulePath":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 58
    :catch_4
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 48
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v5, :cond_5

    .line 50
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 55
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 57
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 60
    :cond_6
    :goto_7
    throw v8

    .line 51
    :catch_5
    move-exception v1

    .line 52
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 59
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 48
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "rulePath":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 45
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "rulePath":Ljava/lang/String;
    :catch_7
    move-exception v1

    goto :goto_1
.end method
