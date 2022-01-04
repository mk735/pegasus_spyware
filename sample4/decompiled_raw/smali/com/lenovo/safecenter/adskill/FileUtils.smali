.class public Lcom/lenovo/safecenter/adskill/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final MD5:Ljava/lang/String; = ".md5"

.field public static final XML:Ljava/lang/String; = ".xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized CopyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v7, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v7

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v3, "emptyFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-gtz v6, :cond_0

    .line 45
    const-string v6, "CopyFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "emptyFile.length==="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 47
    .local v0, "bool":Z
    const-string v6, "CopyFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "emptyFile.length  bool==="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v0    # "bool":Z
    .end local v3    # "emptyFile":Ljava/io/File;
    :goto_0
    monitor-exit v7

    return-void

    .line 50
    .restart local v3    # "emptyFile":Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    .local v4, "fin":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v5, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v1, v6, [B

    .line 54
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 55
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 59
    .end local v1    # "buffer":[B
    .end local v3    # "emptyFile":Ljava/io/File;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 42
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 57
    .restart local v1    # "buffer":[B
    .restart local v3    # "emptyFile":Ljava/io/File;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 58
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized cpAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "isReplace"    # Z

    .prologue
    const/4 v8, 0x0

    .line 79
    const-class v9, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v9

    const/4 v6, 0x0

    .line 80
    .local v6, "res":Z
    const/4 v10, 0x0

    :try_start_0
    const-string v11, "/"

    invoke-virtual {p2, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/safecenter/adskill/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 83
    invoke-static {v5}, Lcom/lenovo/safecenter/adskill/FileUtils;->mkdirs(Ljava/lang/String;)Z

    .line 84
    :cond_0
    if-nez p3, :cond_1

    .line 85
    invoke-static {p2}, Lcom/lenovo/safecenter/adskill/FileUtils;->isExist(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 115
    :goto_0
    monitor-exit v9

    return v8

    .line 88
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 89
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 92
    .local v1, "bw":Ljava/io/BufferedWriter;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v7, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 95
    .local v2, "fistLine":Z
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 96
    if-eqz v2, :cond_2

    .line 97
    const/4 v2, 0x0

    .line 103
    :goto_2
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 112
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "fistLine":Z
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v8

    :goto_3
    move v8, v6

    .line 115
    goto :goto_0

    .line 99
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "fistLine":Z
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 100
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 79
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "fistLine":Z
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 106
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "fistLine":Z
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 108
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 109
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 110
    invoke-static {p2}, Lcom/lenovo/safecenter/adskill/FileUtils;->isExist(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    goto :goto_3
.end method

.method public static declared-synchronized cpAssetsFileBySocketClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "shPath"    # Ljava/lang/String;
    .param p4, "isReplace"    # Z

    .prologue
    .line 243
    const-class v5, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v5

    const/4 v2, 0x0

    .line 245
    .local v2, "res":Z
    if-nez p4, :cond_0

    .line 246
    :try_start_0
    invoke-static {p2}, Lcom/lenovo/safecenter/adskill/FileUtils;->isExist(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    const/4 v4, 0x0

    .line 274
    :goto_0
    monitor-exit v5

    return v4

    .line 252
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/lenovo/safecenter/support/CMDHelper;->getMountDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "systemDev":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mount -o remount,rw "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " /system \n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 666 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    invoke-static {p0, p3}, Lcom/lenovo/safecenter/support/CMDHelper;->exeCmd(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "systemDev":Ljava/lang/String;
    :goto_1
    move v4, v2

    .line 274
    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 238
    const-class v1, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getListLenght(Ljava/lang/String;)I
    .locals 2
    .param p0, "root"    # Ljava/lang/String;

    .prologue
    .line 198
    const-class v1, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMD5Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 168
    const-class v5, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v5

    const/4 v3, 0x0

    .line 169
    .local v3, "messageDigest":Ljava/security/MessageDigest;
    const/4 v0, 0x0

    .line 171
    .local v0, "byteArray":[B
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 173
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 174
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 181
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v2, "md5StrBuff":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_1

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 185
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 186
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :cond_0
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 168
    .end local v1    # "i":I
    .end local v2    # "md5StrBuff":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 193
    .restart local v2    # "md5StrBuff":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .end local v2    # "md5StrBuff":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 179
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static declared-synchronized isExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v1, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized mkMD5File(Ljava/lang/String;)Z
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    const-class v6, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v6

    const/4 v3, 0x0

    .line 214
    .local v3, "res":Z
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".xml"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 217
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-static {v2}, Lcom/lenovo/safecenter/adskill/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "text":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".md5"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "md5Name":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/safecenter/adskill/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    invoke-static {v1}, Lcom/lenovo/safecenter/adskill/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 221
    :cond_0
    invoke-static {v4}, Lcom/lenovo/safecenter/adskill/FileUtils;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/lenovo/safecenter/adskill/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 222
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "md5Name":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :goto_0
    monitor-exit v6

    return v3

    .line 212
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 225
    :catch_0
    move-exception v5

    goto :goto_0

    .line 223
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static declared-synchronized mkdirs(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v1, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 149
    const-class v6, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v6

    const/4 v3, 0x0

    .line 150
    .local v3, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/safecenter/adskill/FileUtils;->isExist(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 154
    .local v0, "bf":Ljava/io/BufferedInputStream;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v5

    new-array v1, v5, [B

    .line 155
    .local v1, "data":[B
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 156
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "res":Ljava/lang/String;
    .local v4, "res":Ljava/lang/String;
    move-object v3, v4

    .line 161
    .end local v0    # "bf":Ljava/io/BufferedInputStream;
    .end local v1    # "data":[B
    .end local v4    # "res":Ljava/lang/String;
    .restart local v3    # "res":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v3

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 149
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v2, Lcom/lenovo/safecenter/adskill/FileUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/safecenter/adskill/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {p0}, Lcom/lenovo/safecenter/adskill/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 131
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 132
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/lenovo/safecenter/adskill/FileUtils;->isExist(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 134
    :catch_0
    move-exception v1

    goto :goto_0
.end method
