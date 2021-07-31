.class public Lcom/lenovo/safecenter/broadcast/FormatSDService;
.super Landroid/app/Service;
.source "FormatSDService.java"


# instance fields
.field private a:Landroid/os/storage/IMountService;

.field private b:Z

.field private c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->b:Z

    return-void
.end method

.method private static a()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, "extendStorageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 83
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 85
    .local v6, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    const-string v9, "/proc/mounts"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v7, "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "buffer":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 91
    const-string v8, "uid=1000"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "user_id=1023"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_1
    const-string v8, "gid=1015"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "gid=1023"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "group_id=1023"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    const-string v8, "asec"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 94
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "arrayOfString":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x4

    if-lt v8, v9, :cond_0

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 97
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 101
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 102
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    if-eqz v4, :cond_3

    .line 106
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 108
    :cond_3
    if-eqz v6, :cond_4

    .line 109
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 116
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-object v3

    .line 105
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/lang/String;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 108
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, v7

    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 114
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 111
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 113
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 115
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 111
    .end local v1    # "buffer":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 113
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 104
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 105
    :goto_3
    if-eqz v4, :cond_6

    .line 106
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 108
    :cond_6
    if-eqz v6, :cond_7

    .line 109
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 114
    :cond_7
    :goto_4
    throw v8

    .line 111
    :catch_3
    move-exception v2

    .line 113
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 104
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 101
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    .line 122
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, "f":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unmountVolume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    invoke-interface {v3, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "removed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 136
    const-string v3, "ydp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extra_sd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    invoke-interface {v5, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, "ydp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-ne v3, v8, :cond_1

    .line 140
    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->c:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v3, "ydp"

    const-string v4, "unmountVolume:  3"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_1
    const/4 v0, 0x0

    .line 149
    .local v0, "count":I
    :goto_2
    iget-boolean v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->b:Z

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    invoke-interface {v3, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unmounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    :cond_0
    :goto_3
    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    invoke-interface {v3, p1}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 164
    const-string v3, "ydp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over-----------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    .line 186
    .end local v0    # "count":I
    :goto_4
    return-void

    :catch_0
    move-exception v3

    .line 128
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unmountVolume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->c:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 129
    :catch_1
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    .line 143
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->c:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v3, "ydp"

    const-string v4, "unmountVolume:  2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_1

    .line 168
    :catch_2
    move-exception v1

    .line 170
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 154
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "count":I
    :cond_2
    const-wide/16 v3, 0x3e8

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 155
    const/16 v3, 0x1e

    if-le v0, v3, :cond_3

    .line 156
    const-string v3, "ydp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unmountVolume time out break "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_3

    .line 171
    .end local v0    # "count":I
    :catch_3
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 159
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "count":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 166
    .end local v0    # "count":I
    :cond_4
    :try_start_5
    const-string v3, "ydp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_4

    .line 174
    :catch_4
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_4

    .line 177
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_4

    .line 180
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method private declared-synchronized b()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 189
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 190
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 191
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    .line 196
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 193
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "ydp"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public formatSDcard(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 41
    .local v1, "extendStorageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 42
    .local v2, "extraExtendStorage":Ljava/lang/String;
    const/4 v3, 0x0

    .line 43
    .local v3, "innerExtendStorage":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 44
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "extraExtendStorage":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 55
    .restart local v2    # "extraExtendStorage":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v4, "ydp"

    const-string v5, "format sdcard"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v4, "ydp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extraExtendStorage sdcard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v4, "ydp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "innerExtendStorage sdcard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v2, :cond_1

    .line 59
    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a(Ljava/lang/String;)V

    .line 61
    :cond_1
    if-eqz v3, :cond_2

    .line 62
    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a(Ljava/lang/String;)V

    .line 66
    :cond_2
    if-eqz v3, :cond_3

    .line 67
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    invoke-interface {v4, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 69
    :cond_3
    if-eqz v2, :cond_4

    .line 70
    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    invoke-interface {v4, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/FormatSDService;->stopSelf()V

    .line 77
    return-void

    .line 48
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "extraExtendStorage":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "extraExtendStorage":Ljava/lang/String;
    goto :goto_0

    .line 51
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ydp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mount error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->b:Z

    .line 33
    const-string v0, "ydp"

    const-string v1, "in FormatSDService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0}, Lcom/lenovo/safecenter/broadcast/FormatSDService;->b()Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService;->a:Landroid/os/storage/IMountService;

    .line 35
    new-instance v0, Lcom/lenovo/safecenter/broadcast/FormatSDService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/broadcast/FormatSDService$1;-><init>(Lcom/lenovo/safecenter/broadcast/FormatSDService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/broadcast/FormatSDService$1;->start()V

    .line 38
    return-void
.end method
