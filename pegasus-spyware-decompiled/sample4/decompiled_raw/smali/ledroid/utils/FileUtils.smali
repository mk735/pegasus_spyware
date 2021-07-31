.class public final Lledroid/utils/FileUtils;
.super Landroid/os/FileUtils;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/FileUtils;-><init>()V

    return-void
.end method

.method public static closeIOCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyFileByPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lledroid/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    :cond_0
    const/4 v2, 0x1

    .line 89
    :goto_0
    return v2

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 83
    aget-object v2, v0, v1

    invoke-static {v2}, Lledroid/utils/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    const-string v2, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Failed] Deleted folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    .end local v0    # "childFiles":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static fileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1

    .line 24
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 6
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 36
    const-wide/16 v2, 0x0

    .line 38
    .local v2, "sumSize":J
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lledroid/utils/FileUtils;->isEmptryDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    :cond_1
    move-wide v4, v2

    .line 50
    :goto_0
    return-wide v4

    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 42
    .local v1, "listFiles":[Ljava/io/File;
    if-nez v1, :cond_3

    .line 43
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 45
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 46
    aget-object v4, v1, v0

    invoke-static {v4}, Lledroid/utils/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getShieldProcessesList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v4, "shieldProcessesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 96
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 99
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "str":[Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "str":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 104
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static isEmptryDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShieldItem(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p0, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 112
    if-nez p1, :cond_0

    move v1, v2

    .line 121
    :goto_0
    return v1

    .line 116
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 121
    goto :goto_0
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "out":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 70
    return-void

    .line 68
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method
