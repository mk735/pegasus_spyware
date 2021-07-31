.class public Lcom/lenovo/safecenter/support/WhiteAppsList;
.super Ljava/lang/Object;
.source "WhiteAppsList.java"


# static fields
.field public static md5s:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "5ABDF9B649C2B8AC6026B88313C3C332"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EBAA529685AAE3A1D299AC15F7710AEA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B4BDCC6C9886781D05FB601649D02801"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "B78A0EE7E80045B4F9A0C425703D0CA4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "388CF508552BC50ED26A8715D33312BA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6B861FD954CE40EE4C560992DCCB35F0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "49FF2FEA9A214DCC2F7EF229488B1A54"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "56B44C8B44C3A4064FE0667DC91E01AA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CEA942B20A36347B3BF793BFF50F737D"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/safecenter/support/WhiteAppsList;->md5s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 173
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 177
    :goto_1
    return v1

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "packages"    # [Ljava/lang/String;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 100
    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 102
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x1

    .line 107
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 101
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static equals(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 164
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x1

    .line 168
    :goto_1
    return v1

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getCpuInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 362
    .local v7, "resolver":Landroid/content/ContentResolver;
    sget-object v9, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v10, "cpuinfo"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "info":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 364
    const-string v5, "armv6"

    .line 366
    :try_start_0
    const-string v9, "cputest"

    const-string v10, "cputest"

    invoke-static {p0, v9, v10}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v1, "chmod 555 /data/data/com.lenovo.safecenter/files/cputest \n"

    .line 368
    .local v1, "cmd":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/data/data/com.lenovo.safecenter/files/cputest \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "echo $? > /data/data/com.lenovo.safecenter/files/cpuinfo \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "chmod 666 /data/data/com.lenovo.safecenter/files/cpuinfo \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {p0, v1}, Lcom/lenovo/safecenter/support/CMDHelper;->exeCmd(Landroid/content/Context;Ljava/lang/String;)Z

    .line 374
    new-instance v3, Ljava/io/FileInputStream;

    const-string v9, "/data/data/com.lenovo.safecenter/files/cpuinfo"

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 375
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 376
    .local v4, "in":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 377
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 378
    const-string v9, "dcy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===========>test cpu result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_1

    .line 380
    const-string v5, "intel"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v8    # "str":Ljava/lang/String;
    :goto_0
    sget-object v9, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "cpuinfo"

    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 403
    const-string v9, "cpuinfo"

    invoke-static {v7, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 406
    :cond_0
    const-string v9, "dcy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===========>cpu: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v5

    .line 382
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "str":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "/proc/cpuinfo"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 384
    .local v0, "bu":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 385
    .local v6, "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 386
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "armv7"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 387
    const-string v5, "armv7"

    .line 388
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 389
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 395
    .end local v0    # "bu":Ljava/io/BufferedReader;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 396
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileId"    # I

    .prologue
    .line 44
    const-string v4, ""

    .line 47
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v2, "inputReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    .local v0, "bufReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 51
    .local v3, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 53
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v2    # "inputReader":Ljava/io/InputStreamReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static getLibsFromAssets(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    const-string v0, "libsmschecker-1.0.1.so"

    const-string v1, "libsmschecker-1.0.1.so"

    invoke-static {p0, v0, v1}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "libcryptor-1.0.0.so"

    const-string v1, "libcryptor-1.0.0.so"

    invoke-static {p0, v0, v1}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "libams-1.1.0.so"

    const-string v1, "libams-1.1.0.so"

    invoke-static {p0, v0, v1}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "liblocation-1.0.0.so"

    const-string v1, "liblocation-1.0.0.so"

    invoke-static {p0, v0, v1}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public static getRunningApps(Landroid/content/Context;)Ljava/util/List;
    .locals 13
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
    const/16 v11, 0x2000

    .line 127
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 128
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 129
    .local v7, "mPm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 130
    .local v6, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v6, :cond_1

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :cond_0
    return-object v2

    .line 133
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 135
    .local v8, "procList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 139
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 140
    .local v3, "appProcInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v3, :cond_2

    iget-object v10, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 141
    iget-object v10, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v10

    .line 142
    .local v9, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_2

    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v10, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v10, v10, v4

    const/16 v11, 0x2000

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    if-eqz v1, :cond_3

    .line 151
    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v11, "android.process.letaskmenu"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v11, "android.process.launcher"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v11, "android.process.acore"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 154
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v10

    const-string v10, "test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error retrieving ApplicationInfo for pkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getSystemPkgs(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 111
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 113
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 115
    .local v4, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 116
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0}, Lcom/lenovo/safecenter/database/AppUtil;->isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 117
    .local v2, "flag":Z
    if-nez v2, :cond_0

    const-string v6, "android.permission.SEND_SMS"

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 119
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 123
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "flag":Z
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v1, v8, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getThirdWhiteAppsList(Landroid/content/Context;)Ljava/util/List;
    .locals 7
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
    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v5, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 66
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v6, "/etc/trustapp"

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 68
    .local v0, "bufReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 69
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 70
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 74
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 75
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    const-string v6, "com.tencent.mobileqq"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v6, "com.tencent.qq"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v6, "com.tencent.qqphonebook"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v6, "com.baidu.BaiduMap"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v6, "com.wd.AndroidDaemon"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v6, "com.qq.AppService"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v6, "com.nd.assistance"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v6, "com.qihoo.appstore"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v6, "com.lakala.android"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v6, "com.lenovo.assistqy"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v6, "com.lenovo.safecenter.update"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v5

    .line 78
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 81
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 79
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 80
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 82
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 79
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 78
    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 81
    :cond_2
    :goto_4
    throw v6

    .line 79
    :catch_3
    move-exception v1

    .line 80
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 74
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static getWhiteList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 271
    const-string v1, ""

    .line 272
    .local v1, "data":Ljava/lang/String;
    const/4 v3, 0x0

    .line 275
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 276
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 277
    .local v0, "bufReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 278
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 286
    :cond_0
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 287
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 282
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 287
    :catch_2
    move-exception v2

    .line 288
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 285
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 286
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 289
    :cond_2
    :goto_2
    throw v5

    .line 287
    :catch_3
    move-exception v2

    .line 288
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static killAllProgress(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 182
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {p0}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getRunningApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 184
    .local v3, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 185
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v2, v4, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 186
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Lcom/lenovo/safecenter/support/WhiteAppsList;->equals(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.android.stk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 188
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kill: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 194
    :cond_1
    return-void
.end method

.method public static killAllProgress(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgnames"    # [Ljava/lang/String;

    .prologue
    .line 197
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 198
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {p0}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getRunningApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 200
    .local v3, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz p1, :cond_1

    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 202
    aget-object v2, p1, v1

    .line 203
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/lenovo/safecenter/support/WhiteAppsList;->equals(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.android.stk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 204
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 205
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kill: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 212
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static updateHookLibsFromAssets(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    invoke-static {p0}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getCpuInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "cpuinfo":Ljava/lang/String;
    const-string v3, "intel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 311
    .local v2, "intel":Z
    const-string v3, "armv7"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 313
    .local v0, "armv7":Z
    if-eqz v2, :cond_0

    .line 314
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpuInfo intel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v3, "injectso_x86"

    const-string v4, "injectso"

    invoke-static {p0, v3, v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v3, "libphonehook_x86.so"

    const-string v4, "libphonehook-13.so"

    invoke-static {p0, v3, v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v3, "libsystemhook_x86.so"

    const-string v4, "libsystemhook-13.so"

    invoke-static {p0, v3, v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 319
    :cond_0
    if-eqz v0, :cond_1

    .line 320
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpuInfo armv7: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v3, "injectso_arm"

    const-string v4, "injectso"

    invoke-static {p0, v3, v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v3, "libphonehook_armv7.so"

    const-string v4, "libphonehook-13.so"

    invoke-static {p0, v3, v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v3, "libsystemhook_armv7.so"

    const-string v4, "libsystemhook-13.so"

    invoke-static {p0, v3, v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_1
    const-string v3, "test"

    const-string v4, "cpuInfo other "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v3, "injectso_arm"

    const-string v4, "injectso"

    invoke-static {p0, v3, v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v3, "libphonehook_armv6.so"

    const-string v4, "libphonehook-13.so"

    invoke-static {p0, v3, v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v3, "libsystemhook_armv6.so"

    const-string v4, "libsystemhook-13.so"

    invoke-static {p0, v3, v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 338
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 340
    .local v3, "is":Ljava/io/InputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 341
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 342
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 343
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 346
    .end local v0    # "buf":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    if-eqz v2, :cond_0

    .line 351
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 349
    .restart local v0    # "buf":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "len":I
    :cond_1
    if-eqz v2, :cond_0

    .line 351
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 352
    :catch_1
    move-exception v1

    .line 353
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 352
    .end local v0    # "buf":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len":I
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 353
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 349
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    .line 351
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 354
    :cond_2
    :goto_2
    throw v5

    .line 352
    :catch_3
    move-exception v1

    .line 353
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static writeWhiteApksToFile(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 218
    const-string v7, "com.lenovo.safecenter\n"

    .line 219
    .local v7, "pkgs":Ljava/lang/String;
    const-string v9, ""

    .line 220
    .local v9, "uids":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 221
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 224
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    invoke-static {v1}, Lcom/lenovo/safecenter/database/AppUtil;->isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 225
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 226
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 227
    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v11, 0x2710

    if-le v10, v11, :cond_1

    .line 228
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 229
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 240
    :cond_1
    :goto_1
    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.lenovo.ideafriend"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.lenovo.safecenter.update"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 242
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 243
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 244
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 245
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 232
    :cond_3
    sget-object v10, Lcom/lenovo/safecenter/support/WhiteAppsList;->md5s:[Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v11}, Lcom/lenovo/safecenter/database/AppUtil;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/safecenter/support/WhiteAppsList;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 233
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 249
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_4
    const/4 v4, 0x0

    .line 250
    .local v4, "fos1":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 253
    .local v5, "fos2":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v10, "lenovoapks"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 254
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 256
    const-string v10, "whitelist"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 257
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    if-eqz v4, :cond_5

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 263
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    :cond_6
    :goto_2
    return-void

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 258
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 259
    .local v3, "e1":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    if-eqz v4, :cond_7

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 263
    :cond_7
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 264
    :catch_2
    move-exception v2

    .line 265
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 261
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 262
    if-eqz v4, :cond_8

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 263
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 266
    :cond_9
    :goto_3
    throw v10

    .line 264
    :catch_3
    move-exception v2

    .line 265
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
