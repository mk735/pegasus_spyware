.class final Lorg/apache/commons/httpclient/auth/a;
.super Ljava/lang/Object;
.source "NTLM.java"


# instance fields
.field private a:[B

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    .line 79
    const-string v0, "ASCII"

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/a;->c:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 212
    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/a;->a:[B

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    if-le v3, v4, :cond_1

    .line 213
    iget v3, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    new-array v2, v3, [B

    .line 214
    .local v2, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    if-ge v0, v3, :cond_0

    .line 215
    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/a;->a:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    move-object v1, v2

    .line 221
    .end local v0    # "i":I
    .end local v2    # "tmp":[B
    .local v1, "resp":[B
    :goto_1
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 219
    .end local v1    # "resp":[B
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/a;->a:[B

    .restart local v1    # "resp":[B
    goto :goto_1
.end method

.method private static a([B)Ljavax/crypto/Cipher;
    .locals 7
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 114
    :try_start_0
    const-string v4, "DES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 115
    .local v1, "ecipher":Ljavax/crypto/Cipher;
    const/16 v4, 0x8

    new-array v2, v4, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, p0, v5

    shr-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x6

    const/4 v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x5

    const/4 v6, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x4

    const/4 v6, 0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    const/4 v4, 0x4

    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x3

    const/4 v6, 0x4

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    const/4 v4, 0x5

    const/4 v5, 0x4

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x2

    const/4 v6, 0x5

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    const/4 v4, 0x6

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x1

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    const/4 v4, 0x7

    const/4 v5, 0x6

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-byte v4, v2, v3

    shl-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local p0    # "key":[B
    .local v2, "key":[B
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "DES"

    invoke-direct {v4, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 117
    return-object v1

    .line 118
    .end local v1    # "ecipher":Ljavax/crypto/Cipher;
    .end local v2    # "key":[B
    .restart local p0    # "key":[B
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v4, "DES encryption is not available."

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 120
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/security/InvalidKeyException;
    :goto_2
    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v4, "Invalid key for DES encryption."

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 122
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 123
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    :goto_3
    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v4, "NoPadding option for DES is not available."

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 122
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    .end local p0    # "key":[B
    .restart local v1    # "ecipher":Ljavax/crypto/Cipher;
    .restart local v2    # "key":[B
    :catch_3
    move-exception v0

    move-object p0, v2

    .end local v2    # "key":[B
    .restart local p0    # "key":[B
    goto :goto_3

    .line 120
    .end local p0    # "key":[B
    .restart local v2    # "key":[B
    :catch_4
    move-exception v0

    move-object p0, v2

    .end local v2    # "key":[B
    .restart local p0    # "key":[B
    goto :goto_2

    .line 118
    .end local p0    # "key":[B
    .restart local v2    # "key":[B
    :catch_5
    move-exception v0

    move-object p0, v2

    .end local v2    # "key":[B
    .restart local p0    # "key":[B
    goto :goto_1
.end method

.method private a(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/a;->a:[B

    iget v1, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    aput-byte p1, v0, v1

    .line 191
    iget v0, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    .line 192
    return-void
.end method

.method private a(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 181
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/a;->a:[B

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    .line 183
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 309
    const-string v3, "ASCII"

    invoke-static {p0, v3}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 310
    .local v1, "msg":[B
    new-array v2, v4, [B

    .line 312
    .local v2, "nonce":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 313
    add-int/lit8 v3, v0, 0x18

    aget-byte v3, v1, v3

    aput-byte v3, v2, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-object v2
.end method

.method private static a([B[B)[B
    .locals 5
    .param p0, "key"    # [B
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {p0}, Lorg/apache/commons/httpclient/auth/a;->a([B)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 167
    .local v1, "ecipher":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 168
    .local v2, "enc":[B
    return-object v2

    .line 169
    .end local v2    # "enc":[B
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v4, "Invalid block size for DES encryption."

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 171
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v4, "Data not padded correctly for DES encryption."

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private b([B)V
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/a;->a:[B

    iget v2, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 201
    iget v1, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/httpclient/auth/a;->b:I

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method private static b(I)[B
    .locals 10
    .param p0, "num"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/16 v7, 0x10

    const/4 v6, 0x2

    .line 538
    new-array v3, v6, [B

    .line 539
    .local v3, "val":[B
    invoke-static {p0, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "hex":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_0

    .line 541
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "low":Ljava/lang/String;
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "high":Ljava/lang/String;
    invoke-static {v2, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    .line 547
    const/4 v4, 0x1

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 548
    return-object v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 235
    const-string v9, "ASCII"

    invoke-static {p1, v9}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 236
    .local v4, "hostBytes":[B
    const-string v9, "ASCII"

    invoke-static {p2, v9}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 238
    .local v2, "domainBytes":[B
    array-length v9, v4

    add-int/lit8 v9, v9, 0x20

    array-length v10, v2

    add-int v3, v9, v10

    .line 239
    .local v3, "finalLength":I
    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/a;->a(I)V

    .line 242
    const-string v9, "NTLMSSP"

    const-string v10, "ASCII"

    invoke-static {v9, v10}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .line 243
    .local v8, "protocol":[B
    invoke-direct {p0, v8}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 244
    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 247
    invoke-direct {p0, v12}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 248
    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 249
    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 250
    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 253
    const/4 v9, 0x6

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 254
    const/16 v9, 0x52

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 255
    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 256
    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 259
    array-length v7, v2

    .line 260
    .local v7, "iDomLen":I
    invoke-static {v7}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v0

    .line 261
    .local v0, "domLen":[B
    aget-byte v9, v0, v11

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 262
    aget-byte v9, v0, v12

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 265
    aget-byte v9, v0, v11

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 266
    aget-byte v9, v0, v12

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 269
    array-length v9, v4

    add-int/lit8 v9, v9, 0x20

    invoke-static {v9}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v1

    .line 270
    .local v1, "domOff":[B
    aget-byte v9, v1, v11

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 271
    aget-byte v9, v1, v12

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 272
    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 273
    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 276
    array-length v9, v4

    invoke-static {v9}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v5

    .line 277
    .local v5, "hostLen":[B
    aget-byte v9, v5, v11

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 278
    aget-byte v9, v5, v12

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 281
    aget-byte v9, v5, v11

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 282
    aget-byte v9, v5, v12

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 285
    const/16 v9, 0x20

    invoke-static {v9}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v6

    .line 286
    .local v6, "hostOff":[B
    aget-byte v9, v6, v11

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 287
    aget-byte v9, v6, v12

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 288
    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 289
    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 292
    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 295
    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 297
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/a;->a()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0, p4, p5}, Lorg/apache/commons/httpclient/auth/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "response":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 100
    .end local v6    # "response":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/httpclient/auth/a;->a(Ljava/lang/String;)[B

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/auth/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "response":Ljava/lang/String;
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 17
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "nonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    .line 338
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 339
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 340
    const-string v10, "ASCII"

    move-object/from16 v0, p4

    invoke-static {v0, v10}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 341
    .local v1, "domainBytes":[B
    const-string v10, "ASCII"

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 342
    .local v4, "hostBytes":[B
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/httpclient/auth/a;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .line 343
    .local v8, "userBytes":[B
    array-length v2, v1

    .line 344
    .local v2, "domainLen":I
    array-length v5, v4

    .line 345
    .local v5, "hostLen":I
    array-length v9, v8

    .line 346
    .local v9, "userLen":I
    add-int/lit8 v10, v2, 0x58

    add-int/2addr v10, v9

    add-int v3, v10, v5

    .line 348
    .local v3, "finalLength":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/commons/httpclient/auth/a;->a(I)V

    .line 349
    const-string v10, "NTLMSSP"

    const-string v11, "ASCII"

    invoke-static {v10, v11}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 350
    .local v7, "ntlmssp":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 351
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 352
    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 353
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 354
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 355
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 358
    const/16 v10, 0x18

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 359
    const/16 v10, 0x18

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 362
    add-int/lit8 v10, v3, -0x18

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 363
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 364
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 367
    const/4 v10, 0x0

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 368
    const/4 v10, 0x0

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 371
    invoke-static {v3}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 372
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 373
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 376
    invoke-static {v2}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 377
    invoke-static {v2}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 380
    const/16 v10, 0x40

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 381
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 382
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 385
    invoke-static {v9}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 386
    invoke-static {v9}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 389
    add-int/lit8 v10, v2, 0x40

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 390
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 391
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 394
    invoke-static {v5}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 395
    invoke-static {v5}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 398
    add-int/lit8 v10, v2, 0x40

    add-int/2addr v10, v9

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 400
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v10, 0x6

    if-ge v6, v10, :cond_0

    .line 401
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 400
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 405
    :cond_0
    invoke-static {v3}, Lorg/apache/commons/httpclient/auth/a;->b(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 406
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 407
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 410
    const/4 v10, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 411
    const/16 v10, 0x52

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 412
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 413
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/a;->a(B)V

    .line 415
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 416
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 417
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/httpclient/auth/a;->c:Ljava/lang/String;

    invoke-static {v10, v11}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v12

    const/4 v10, 0x7

    new-array v13, v10, [B

    const/4 v10, 0x7

    new-array v14, v10, [B

    array-length v10, v12

    const/4 v11, 0x7

    if-le v10, v11, :cond_1

    const/4 v10, 0x7

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_f

    aget-byte v15, v12, v11

    aput-byte v15, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :goto_2
    const/4 v11, 0x7

    if-ge v10, v11, :cond_2

    const/4 v11, 0x0

    aput-byte v11, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    array-length v10, v12

    const/16 v11, 0xe

    if-le v10, v11, :cond_3

    const/16 v10, 0xe

    :cond_3
    const/4 v11, 0x7

    :goto_3
    if-ge v11, v10, :cond_e

    add-int/lit8 v15, v11, -0x7

    aget-byte v16, v12, v11

    aput-byte v16, v14, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :goto_4
    const/16 v11, 0xe

    if-ge v10, v11, :cond_4

    add-int/lit8 v11, v10, -0x7

    const/4 v12, 0x0

    aput-byte v12, v14, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    const/16 v10, 0x8

    new-array v10, v10, [B

    fill-array-data v10, :array_0

    invoke-static {v13, v10}, Lorg/apache/commons/httpclient/auth/a;->a([B[B)[B

    move-result-object v11

    invoke-static {v14, v10}, Lorg/apache/commons/httpclient/auth/a;->a([B[B)[B

    move-result-object v12

    const/16 v10, 0x15

    new-array v13, v10, [B

    const/4 v10, 0x0

    :goto_5
    array-length v14, v11

    if-ge v10, v14, :cond_5

    aget-byte v14, v11, v10

    aput-byte v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_6
    array-length v11, v12

    if-ge v10, v11, :cond_6

    add-int/lit8 v11, v10, 0x8

    aget-byte v14, v12, v10

    aput-byte v14, v13, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_7
    const/4 v11, 0x5

    if-ge v10, v11, :cond_7

    add-int/lit8 v11, v10, 0x10

    const/4 v12, 0x0

    aput-byte v12, v13, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_7
    const/16 v10, 0x18

    new-array v11, v10, [B

    const/4 v10, 0x7

    new-array v12, v10, [B

    const/4 v10, 0x7

    new-array v14, v10, [B

    const/4 v10, 0x7

    new-array v15, v10, [B

    const/4 v10, 0x0

    :goto_8
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v10, v0, :cond_8

    aget-byte v16, v13, v10

    aput-byte v16, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    :goto_9
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v10, v0, :cond_9

    add-int/lit8 v16, v10, 0x7

    aget-byte v16, v13, v16

    aput-byte v16, v14, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    :goto_a
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v10, v0, :cond_a

    add-int/lit8 v16, v10, 0xe

    aget-byte v16, v13, v16

    aput-byte v16, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_a
    move-object/from16 v0, p5

    invoke-static {v12, v0}, Lorg/apache/commons/httpclient/auth/a;->a([B[B)[B

    move-result-object v12

    move-object/from16 v0, p5

    invoke-static {v14, v0}, Lorg/apache/commons/httpclient/auth/a;->a([B[B)[B

    move-result-object v13

    move-object/from16 v0, p5

    invoke-static {v15, v0}, Lorg/apache/commons/httpclient/auth/a;->a([B[B)[B

    move-result-object v14

    const/4 v10, 0x0

    :goto_b
    const/16 v15, 0x8

    if-ge v10, v15, :cond_b

    aget-byte v15, v12, v10

    aput-byte v15, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_b
    const/4 v10, 0x0

    :goto_c
    const/16 v12, 0x8

    if-ge v10, v12, :cond_c

    add-int/lit8 v12, v10, 0x8

    aget-byte v15, v13, v10

    aput-byte v15, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_c
    const/4 v10, 0x0

    :goto_d
    const/16 v12, 0x8

    if-ge v10, v12, :cond_d

    add-int/lit8 v12, v10, 0x10

    aget-byte v13, v14, v10

    aput-byte v13, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/commons/httpclient/auth/a;->b([B)V

    .line 419
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/httpclient/auth/a;->a()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_e
    move v10, v11

    goto/16 :goto_4

    :cond_f
    move v10, v11

    goto/16 :goto_2

    .line 418
    nop

    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "credentialCharset"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lorg/apache/commons/httpclient/auth/a;->c:Ljava/lang/String;

    .line 563
    return-void
.end method
