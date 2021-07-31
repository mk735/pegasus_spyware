.class public Lcom/lenovo/safecenter/support/SHAUtil;
.super Ljava/lang/Object;
.source "SHAUtil.java"


# static fields
.field protected static hexDigits:[C

.field protected static messagedigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/lenovo/safecenter/support/SHAUtil;->hexDigits:[C

    .line 14
    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/safecenter/support/SHAUtil;->messagedigest:Ljava/security/MessageDigest;

    .line 17
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/lenovo/safecenter/support/SHAUtil;->messagedigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .local v0, "nsaex":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void

    .line 18
    .end local v0    # "nsaex":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 19
    .restart local v0    # "nsaex":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/lenovo/safecenter/support/SHAUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25\uff0cMessageDigest\u4e0d\u652f\u6301SHA1\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 13
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 49
    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/lit8 v2, v0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    sget-object v4, Lcom/lenovo/safecenter/support/SHAUtil;->hexDigits:[C

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    sget-object v5, Lcom/lenovo/safecenter/support/SHAUtil;->hexDigits:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHAString(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 32
    .local v7, "in":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 33
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 34
    .local v6, "byteBuffer":Ljava/nio/MappedByteBuffer;
    sget-object v1, Lcom/lenovo/safecenter/support/SHAUtil;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 35
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 36
    sget-object v1, Lcom/lenovo/safecenter/support/SHAUtil;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SHAUtil;->a([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSHAString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SHAUtil;->getSHAString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHAString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/safecenter/support/SHAUtil;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    sget-object v0, Lcom/lenovo/safecenter/support/SHAUtil;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SHAUtil;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
