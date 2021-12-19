.class public final Lcom/network/android/f;
.super Ljava/lang/Object;


# static fields
.field static a:[B

.field public static b:[B

.field public static c:[B

.field static final d:Ljavax/crypto/spec/IvParameterSpec;

.field private static e:I

.field private static final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x20

    const/4 v0, 0x0

    sput v0, Lcom/network/android/f;->e:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/network/android/f;->f:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/network/android/f;->a:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/network/android/f;->b:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/network/android/f;->c:[B

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/network/android/f;->a:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/network/android/f;->d:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    nop

    :array_0
    .array-data 1
        -0x4at
        0x27t
        -0x25t
        0x21t
        0x5ct
        0x7dt
        0x35t
        -0x1ct
    .end array-data

    :array_1
    .array-data 1
        0x22t
        -0x7bt
        0x4ft
        -0x5at
        0x66t
        0x79t
        0x7t
        -0x5at
        -0x52t
        0x5bt
        -0x75t
        0x1et
        0x3at
        0x5t
        -0x65t
        -0x41t
    .end array-data

    :array_2
    .array-data 1
        0x56t
        0x40t
        0x7et
        0x44t
        -0x16t
        0x2t
        -0x3t
        0x1t
        0x7t
        -0x67t
        0x78t
        -0x5ct
        0x60t
        -0x6dt
        0x38t
        0x58t
        -0xdt
        0x59t
        -0x31t
        -0x70t
        -0x79t
        0x40t
        -0x29t
        0x67t
        -0x11t
        -0x52t
        -0x6ft
        0x19t
        -0x31t
        0x11t
        0x58t
        0x4at
    .end array-data

    :array_3
    .array-data 1
        0x50t
        0x49t
        0x7et
        0x41t
        0x2t
        0x12t
        -0x3t
        0x21t
        0x2t
        0x39t
        0x71t
        -0x5ft
        0x66t
        0x23t
        0x21t
        0x11t
        -0xdt
        0x4t
        -0x36t
        0x32t
        0x11t
        0x2t
        -0x2et
        0x37t
        -0x11t
        -0x52t
        0x41t
        0x13t
        -0x31t
        0x6t
        0x42t
        0x1bt
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/network/android/f;->b:[B

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/f;->a([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/network/i/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/network/android/f;->f:[B

    invoke-static {v1, v0}, Lcom/network/android/f;->b([B[B)[B

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0, v0}, Lcom/network/android/f;->b([B[B)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    sget-object v3, Lcom/network/android/f;->d:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string v2, "utf8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget v0, Lcom/network/android/f;->e:I

    if-ge v0, v4, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x7d1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :cond_0
    sget v0, Lcom/network/android/f;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/network/android/f;->e:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 1

    sget-object v0, Lcom/network/android/f;->b:[B

    invoke-static {p0, v0}, Lcom/network/android/f;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B)[B
    .locals 5

    const/4 v4, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/network/android/f;->d:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v0, Lcom/network/android/f;->e:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/16 v0, 0x7d0

    const-string v1, ""

    invoke-static {v4, v0, v1}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :cond_1
    sget v0, Lcom/network/android/f;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/network/android/f;->e:I

    goto :goto_0
.end method

.method private static b([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
