.class public Lcom/lenovo/lps/reaper/sdk/util/CompressUtil;
.super Ljava/lang/Object;
.source "CompressUtil.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/lenovo/lps/reaper/sdk/util/CompressUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/CompressUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final compress([B)[B
    .locals 8
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v5, 0x0

    .line 50
    :goto_0
    return-object v5

    .line 29
    :cond_0
    array-length v5, p0

    if-nez v5, :cond_1

    .line 30
    new-array v5, v6, [B

    goto :goto_0

    .line 32
    :cond_1
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 33
    .local v2, "compressor":Ljava/util/zip/Deflater;
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 34
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 35
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 37
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v5, p0

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 38
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 39
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    .line 41
    .local v3, "count":I
    invoke-virtual {v0, v1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 44
    .end local v3    # "count":I
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_0

    .line 45
    :catch_0
    move-exception v4

    .line 46
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/CompressUtil;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception when close output stream. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
