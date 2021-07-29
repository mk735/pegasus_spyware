.class public Lcom/lenovo/safecenter/antivirus/utils/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field public static final SDCARD2_PATH:Ljava/lang/String; = "/mnt/sdcard2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Ljava/io/File;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 10
    .param p0, "files"    # [Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/CommonFile;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/antivirus/domain/CommonFile;>;"
    const/4 v9, 0x1

    .line 230
    if-nez p0, :cond_1

    .line 271
    :cond_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 237
    .local v6, "pm":Landroid/content/pm/PackageManager;
    move-object v0, p0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    .line 238
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 240
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    invoke-static {v7, p1, p2}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->a([Ljava/io/File;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 237
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 245
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 249
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_2

    .line 252
    new-instance v1, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;

    invoke-direct {v1}, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;-><init>()V

    .line 253
    .local v1, "cf":Lcom/lenovo/safecenter/antivirus/domain/CommonFile;
    invoke-virtual {v1, v9}, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->setApk(Z)V

    .line 254
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v7}, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 255
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->setFilePath(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1, v9}, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->setSD(Z)V

    .line 257
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static checkVirus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.lenovo.antivirus.AppinfoProvider/check"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "pkgname=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 385
    invoke-static {p1, p0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->markVirus(Ljava/lang/String;Landroid/content/Context;)V

    .line 387
    :cond_0
    if-eqz v6, :cond_1

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_1
    return-void
.end method

.method public static execLocalResult(Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;Landroid/content/Context;)V
    .locals 2
    .param p0, "result"    # Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 396
    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->markVirus(Ljava/lang/String;Landroid/content/Context;)V

    .line 398
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 402
    :cond_0
    return-void
.end method

.method public static execNetResult(Ljava/util/List;Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    const/4 v11, 0x0

    .line 405
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 406
    .local v8, "virusPackageNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "viruspkgname"

    invoke-static {v10, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 407
    .local v9, "virus_pkgname":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 408
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v7, v0, v1

    .line 409
    .local v7, "vir":Ljava/lang/String;
    invoke-virtual {v8, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v7    # "vir":Ljava/lang/String;
    :cond_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 415
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    .line 416
    .local v6, "v_str":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 417
    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 424
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "v_str":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 427
    .local v4, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 429
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 433
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 434
    const-string v10, "viruspkgname"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 437
    :cond_4
    return-void
.end method

.method public static getAllFiles(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/CommonFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 172
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "allFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/antivirus/domain/CommonFile;>;"
    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 174
    .local v4, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v4, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 197
    .end local v0    # "allFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/antivirus/domain/CommonFile;>;"
    :goto_0
    return-object v0

    .line 180
    .restart local v0    # "allFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/antivirus/domain/CommonFile;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 182
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.lenovo.safecenter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    new-instance v2, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;

    invoke-direct {v2}, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;-><init>()V

    .line 185
    .local v2, "cf":Lcom/lenovo/safecenter/antivirus/domain/CommonFile;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->setApk(Z)V

    .line 186
    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 187
    invoke-virtual {v2, v8}, Lcom/lenovo/safecenter/antivirus/domain/CommonFile;->setSD(Z)V

    .line 188
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "cf":Lcom/lenovo/safecenter/antivirus/domain/CommonFile;
    :cond_2
    invoke-static {p0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getSDcardFiles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 289
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/16 v0, 0x40

    invoke-virtual {v11, p0, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 291
    .local v10, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getCretMD5([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "md5":Ljava/lang/String;
    const-string v3, "preload"

    .line 293
    .local v3, "sha1":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 295
    .local v8, "filesize":J
    const-wide/32 v0, 0x1400000

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    .line 297
    invoke-static {v7}, Lcom/lenovo/safecenter/antivirus/utils/SHA1Util;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 299
    :cond_0
    move-object v5, p0

    .line 301
    .local v5, "app_name":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "sha1":Ljava/lang/String;
    .end local v5    # "app_name":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filesize":J
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 303
    :catch_0
    move-exception v6

    .line 304
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAppSInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Appinfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "nn":Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getAppsInfo()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getAppsCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 114
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method public static getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "Context"    # Landroid/content/Context;
    .param p1, "packName"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, "sigs":[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .line 128
    .local v2, "md5":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 132
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "str1":Ljava/lang/String;
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/utils/MD5Util;->getMD5String([B)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v5, "info"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "str1=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">>>>>>>>str==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    .end local v4    # "str1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 139
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 143
    .end local v2    # "md5":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static getCretMD5([Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 3
    .param p0, "sigs"    # [Landroid/content/pm/Signature;

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 277
    .local v1, "md5":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 279
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 280
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/utils/MD5Util;->getMD5String([B)Ljava/lang/String;

    move-result-object v1

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstalledApps(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 61
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v4, "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v2, :cond_1

    .line 64
    const/4 v4, 0x0

    .line 72
    .end local v4    # "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    return-object v4

    .line 66
    .restart local v4    # "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 67
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.lenovo.safecenter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 69
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstalledSystemApps(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 96
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v6, "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v3, :cond_0

    .line 99
    const/4 v6, 0x0

    .line 109
    .end local v6    # "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v6

    .line 101
    .restart local v6    # "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 102
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 103
    .local v1, "flag":Z
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    const/high16 v7, 0x7f0d0000

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    :cond_2
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "flag":Z
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    const-string v7, "mes"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "third_apps="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstalledThirdApps(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 76
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v5, "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 78
    .local v3, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v3, :cond_0

    .line 79
    const/4 v5, 0x0

    .line 91
    .end local v5    # "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    :goto_0
    return-object v5

    .line 81
    .restart local v5    # "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 82
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 84
    .local v1, "flag":Z
    if-eqz v1, :cond_1

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.lenovo.safecenter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 85
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "flag":Z
    :cond_2
    const-string v6, "mes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "third_apps="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSDcardFiles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/CommonFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/antivirus/domain/CommonFile;>;"
    const-string v3, ""

    .line 208
    .local v3, "sdpath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 209
    .local v1, "sdCardExist":Z
    if-eqz v1, :cond_0

    .line 210
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 212
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, "sdf":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v0, p0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->a([Ljava/io/File;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 219
    .end local v2    # "sdf":Ljava/io/File;
    :cond_0
    const-string v4, "/mnt/sdcard2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    new-instance v2, Ljava/io/File;

    const-string v4, "/mnt/sdcard2"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v2    # "sdf":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v0, p0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->a([Ljava/io/File;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 227
    .end local v2    # "sdf":Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method public static getUninstallAPKIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    :try_start_0
    new-instance v6, Landroid/content/pm/PackageParser;

    invoke-direct {v6, p0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 319
    .local v6, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 320
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 322
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v8, p0, v4, v9}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 325
    .local v3, "mPkgInfo":Landroid/content/pm/PackageParser$Package;
    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 329
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 330
    .local v5, "pRes":Landroid/content/res/Resources;
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 331
    .local v0, "assmgr":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 332
    new-instance v7, Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v7, v0, v8, v9}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 337
    .local v7, "res":Landroid/content/res/Resources;
    iget v8, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 344
    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "mPkgInfo":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "pRes":Landroid/content/res/Resources;
    .end local v6    # "packageParser":Landroid/content/pm/PackageParser;
    .end local v7    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v8

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNeedScan(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    const/4 v0, 0x1

    return v0
.end method

.method public static isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "flag":Z
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 45
    const/4 v0, 0x1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 47
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static markVirus(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    const-string v6, "viruspkgname"

    invoke-static {v6, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "virus_pkgname":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 357
    const/4 v2, 0x0

    .line 358
    .local v2, "isexist":Z
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 360
    .local v4, "vir":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 362
    const/4 v2, 0x1

    .line 366
    .end local v4    # "vir":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 374
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "isexist":Z
    .end local v3    # "len$":I
    :cond_1
    :goto_1
    const-string v6, "viruspkgname"

    invoke-static {v6, v5, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 376
    return-void

    .line 358
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "isexist":Z
    .restart local v3    # "len$":I
    .restart local v4    # "vir":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "isexist":Z
    .end local v3    # "len$":I
    .end local v4    # "vir":Ljava/lang/String;
    :cond_3
    move-object v5, p0

    goto :goto_1
.end method


# virtual methods
.method public ScanVirus_MD5(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;

    invoke-direct {v0, p3}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "service":Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;->getVirus_md5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public ScanVirus_SHA1(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    :try_start_0
    new-instance v2, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;

    invoke-direct {v2, p2}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;-><init>(Landroid/content/Context;)V

    .line 151
    .local v2, "service":Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;
    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;->getVirus_SHA1()Ljava/util/List;

    move-result-object v3

    .line 152
    .local v3, "shalist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 153
    .local v4, "virus_sha1":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    const/4 v5, 0x1

    .line 160
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "service":Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;
    .end local v3    # "shalist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "virus_sha1":Ljava/lang/String;
    :goto_0
    return v5

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
