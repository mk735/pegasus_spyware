.class final Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;
.super Ljava/lang/Thread;
.source "LeSafeDownLoadApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    .line 62
    :try_start_0
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-virtual {v9}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-virtual {v10}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 64
    .local v7, "packageinfo":Landroid/content/pm/PackageInfo;
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    iget v10, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v9, v10}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->a(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;I)I

    .line 66
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-virtual {v9}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 67
    .local v0, "apks":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 69
    .local v3, "f":[Ljava/io/File;
    move-object v1, v3

    .local v1, "arr$":[Ljava/io/File;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v4, v1, v5

    .line 70
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 71
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v9}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->a(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 74
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    if-nez v8, :cond_1

    .line 69
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    .restart local v8    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-virtual {v10}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    iget v9, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v10, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v10}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->b(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)I

    move-result v10

    if-le v9, v10, :cond_4

    .line 81
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    iget v10, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v9, v10}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->a(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;I)I

    .line 82
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v9}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->c(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Z

    .line 83
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v9}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->d(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "update_apk_path"

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    const-string v9, "ydp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "haveUpdateFile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v11}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->b(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v9}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->e(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v10}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->e(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    .end local v0    # "apks":Ljava/io/File;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "f":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "packageinfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_2
    return-void

    .line 90
    .restart local v0    # "apks":Ljava/io/File;
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v3    # "f":[Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "packageinfo":Landroid/content/pm/PackageInfo;
    .restart local v8    # "pi":Landroid/content/pm/PackageInfo;
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 91
    const-string v9, "ydp"

    const-string v10, "delete low version file"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    .end local v0    # "apks":Ljava/io/File;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "f":[Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "packageinfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method
