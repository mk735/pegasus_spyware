.class public final Lledroid/utils/MountPoint;
.super Ljava/lang/Object;
.source "MountPoint.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lledroid/utils/MountPoint;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 v4, 0x0

    .line 39
    :goto_0
    return-object v4

    .line 19
    :cond_0
    sget-object v4, Lledroid/utils/MountPoint;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    sget-object v4, Lledroid/utils/MountPoint;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    .local v1, "deviceName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 26
    .local v2, "mountPointReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "/proc/mounts"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v2    # "mountPointReader":Ljava/io/BufferedReader;
    .local v3, "mountPointReader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 28
    .local v0, "buffer":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 30
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 31
    sget-object v4, Lledroid/utils/MountPoint;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :cond_3
    invoke-static {v3}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v0    # "buffer":Ljava/lang/String;
    .end local v3    # "mountPointReader":Ljava/io/BufferedReader;
    .restart local v2    # "mountPointReader":Ljava/io/BufferedReader;
    :goto_1
    move-object v4, v1

    .line 39
    goto :goto_0

    .line 35
    :catch_0
    move-exception v4

    .line 37
    :goto_2
    invoke-static {v2}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v2}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "mountPointReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/String;
    .restart local v3    # "mountPointReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "mountPointReader":Ljava/io/BufferedReader;
    .restart local v2    # "mountPointReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 35
    .end local v2    # "mountPointReader":Ljava/io/BufferedReader;
    .restart local v3    # "mountPointReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "mountPointReader":Ljava/io/BufferedReader;
    .restart local v2    # "mountPointReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method
