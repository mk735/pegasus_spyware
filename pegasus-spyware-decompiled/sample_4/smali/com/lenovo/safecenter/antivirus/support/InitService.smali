.class public Lcom/lenovo/safecenter/antivirus/support/InitService;
.super Landroid/app/Service;
.source "InitService.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/InitService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/InitService$1;-><init>(Lcom/lenovo/safecenter/antivirus/support/InitService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/InitService;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/support/InitService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/InitService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/InitService;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 12

    .prologue
    .line 57
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "antiVirusDBHelper":Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 59
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 60
    const/4 v8, 0x0

    .line 61
    .local v8, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 65
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/InitService;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/qv_base.amf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "dataPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/InitService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "qv_base.amf"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 71
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 72
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    :try_start_1
    new-array v1, v10, [B

    .line 74
    .local v1, "buf":[B
    const/4 v9, 0x0

    .line 75
    .local v9, "len":I
    :goto_0
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 76
    const/4 v10, 0x0

    invoke-virtual {v7, v1, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 80
    .end local v1    # "buf":[B
    .end local v9    # "len":I
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 81
    .end local v2    # "dataPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    if-eqz v8, :cond_0

    .line 85
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 90
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    .line 92
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 99
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-void

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "dataPath":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "len":I
    :cond_2
    move-object v6, v7

    .line 83
    .end local v1    # "buf":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "len":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    if-eqz v8, :cond_4

    .line 85
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 90
    :cond_4
    :goto_4
    if-eqz v6, :cond_1

    .line 92
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 93
    :catch_1
    move-exception v4

    .line 94
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 86
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 87
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 86
    .end local v2    # "dataPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :catch_3
    move-exception v4

    .line 87
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 93
    :catch_4
    move-exception v4

    .line 94
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 83
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v8, :cond_5

    .line 85
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 90
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    .line 92
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 95
    :cond_6
    :goto_7
    throw v10

    .line 86
    :catch_5
    move-exception v4

    .line 87
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 93
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 94
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 83
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "dataPath":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 80
    .end local v2    # "dataPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :catch_7
    move-exception v4

    goto :goto_1
.end method

.method public initDatebase()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/InitService$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/InitService$2;-><init>(Lcom/lenovo/safecenter/antivirus/support/InitService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/InitService$2;->start()V

    .line 124
    return-void
.end method

.method public insertMd5_sha1()V
    .locals 14

    .prologue
    .line 129
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getInstalledThirdApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 130
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v7, "applist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 137
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "MD5":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 140
    const-string v2, "preload"

    .line 142
    :cond_0
    const-string v3, "preload"

    .line 143
    .local v3, "SHA1":Ljava/lang/String;
    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 144
    .local v1, "pName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "filesize":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/InitService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v0, "shal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pName=="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "MD5=="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "Shai=="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v1    # "pName":Ljava/lang/String;
    .end local v2    # "MD5":Ljava/lang/String;
    .end local v3    # "SHA1":Ljava/lang/String;
    .end local v4    # "filesize":Ljava/lang/String;
    .end local v7    # "applist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v8

    .line 156
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 148
    .restart local v7    # "applist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 150
    new-instance v6, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    .line 151
    .local v6, "antiVirus_DBHelper":Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->addApp(Ljava/util/List;)V

    .line 152
    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v4, 0x0

    .line 161
    const-string v2, "virus"

    const-string v3, "onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 164
    const-string v2, "antivirus"

    invoke-virtual {p0, v2, v4}, Lcom/lenovo/safecenter/antivirus/support/InitService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "hasInitialized"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 166
    .local v0, "isFirst":Z
    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/InitService;->initDatebase()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/InitService;->stopSelf()V

    goto :goto_0
.end method
