.class public Lcom/lenovo/safecenter/utils/XZip;
.super Ljava/lang/Object;
.source "XZip.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static ZipFolder([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "srcFileString"    # [Ljava/lang/String;
    .param p1, "zipFileString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    const-string v3, "XZip"

    const-string v4, "ZipFolder(String, String)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    .local v2, "outZip":Ljava/util/zip/ZipOutputStream;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(I)V

    .line 17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 19
    new-instance v0, Ljava/io/File;

    aget-object v3, p0, v1

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/lenovo/safecenter/utils/XZip;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 26
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 28
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 9
    .param p0, "folderString"    # Ljava/lang/String;
    .param p1, "fileString"    # Ljava/lang/String;
    .param p2, "zipOutputSteam"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    const-string v7, "XZip"

    const-string v8, "ZipFiles(String, String, ZipOutputStream)"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    if-nez p2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 41
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 42
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 43
    .local v4, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 46
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 48
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 50
    const/4 v7, 0x0

    invoke-virtual {p2, v0, v7, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    .line 58
    .end local v0    # "buffer":[B
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "fileList":[Ljava/lang/String;
    array-length v7, v2

    if-gtz v7, :cond_4

    .line 62
    new-instance v6, Ljava/util/zip/ZipEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 63
    .restart local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 64
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 67
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lcom/lenovo/safecenter/utils/XZip;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
