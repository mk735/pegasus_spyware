.class public final Lcom/network/c/a;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field private static final d:[B

.field private static final e:Ljavax/crypto/spec/IvParameterSpec;

.field private static final f:[C


# instance fields
.field private g:[B

.field private h:Ljavax/crypto/Cipher;

.field private i:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/16 v3, 0x8

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/16 v1, 0xf

    aput-byte v1, v0, v5

    aput-byte v3, v0, v6

    aput-byte v6, v0, v7

    aput-byte v5, v0, v4

    const/4 v1, 0x4

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    aput-byte v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    sput-object v0, Lcom/network/c/a;->d:[B

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x16

    aput-char v1, v0, v5

    aput-char v3, v0, v6

    const/16 v1, 0x9

    aput-char v1, v0, v7

    const/16 v1, 0x6f

    aput-char v1, v0, v4

    const/4 v1, 0x4

    aput-char v7, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x17

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    const/4 v1, 0x7

    aput-char v3, v0, v1

    const/16 v1, 0x21

    aput-char v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0x21

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x10

    aput-char v2, v0, v1

    const/16 v1, 0xc

    aput-char v4, v0, v1

    const/16 v1, 0xd

    aput-char v4, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x7

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x6

    aput-char v2, v0, v1

    sput-object v0, Lcom/network/c/a;->f:[C

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/network/c/a;->d:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/network/c/a;->e:Ljavax/crypto/spec/IvParameterSpec;

    const-string v0, "7e29243c283b6630272c6f25255954596c2a3b2c6b384c28232c03212c"

    invoke-static {v0}, Lcom/network/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/network/c/a;->a:Ljava/lang/String;

    const-string v0, "7e29243c283b6630272c6f25255954596c2a3b2c6b384c28232c03212c"

    invoke-static {v0}, Lcom/network/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/network/c/a;->a:Ljava/lang/String;

    const-string v0, "6f2e3244222d6d4c3f266d38543b000b4a0a010a"

    invoke-static {v0}, Lcom/network/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/network/c/a;->b:Ljava/lang/String;

    const-string v0, "6f2e32"

    invoke-static {v0}, Lcom/network/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/network/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    aput-byte v2, v0, v7

    aput-byte v2, v0, v6

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/network/c/a;->g:[B

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "userId is not ready."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p2}, Lcom/network/c/a;->a(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/network/c/a;->g:[B

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/network/c/a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v3, Lcom/network/c/a;->f:[C

    iget-object v4, p0, Lcom/network/c/a;->g:[B

    const/16 v5, 0x100

    invoke-direct {v2, v3, v4, v6, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    sget-object v2, Lcom/network/c/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v1, Lcom/network/c/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/network/c/a;->h:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/network/c/a;->h:Ljavax/crypto/Cipher;

    sget-object v2, Lcom/network/c/a;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v7, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v1, Lcom/network/c/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/network/c/a;->i:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/network/c/a;->i:Ljavax/crypto/Cipher;

    sget-object v2, Lcom/network/c/a;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v6, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    array-length v4, v1

    new-array v5, v3, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-char v6, v2, v0

    rem-int v7, v0, v4

    aget-char v7, v1, v7

    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(J)[B
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x10

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    const/16 v2, 0x8

    aput-byte v0, v1, v2

    const/16 v2, 0x9

    aput-byte v0, v1, v2

    const/16 v2, 0xa

    aput-byte v0, v1, v2

    const/16 v2, 0xb

    aput-byte v0, v1, v2

    const/16 v2, 0xc

    aput-byte v0, v1, v2

    const/16 v2, 0xd

    aput-byte v0, v1, v2

    const/16 v2, 0xe

    aput-byte v0, v1, v2

    const/16 v2, 0xf

    aput-byte v0, v1, v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    array-length v3, v2

    if-le v3, v0, :cond_0

    aget-byte v3, v2, v0

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 6

    const/16 v5, 0x10

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    move v1, v0

    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    aget-byte v3, v2, v0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    int-to-byte v4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/network/c/a;->b(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, ".kakao.com"

    invoke-static {v0, v1}, Lcom/network/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/network/c/a;->i:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kakaoGetContentIM addImSingleEntryKaKao decryptKaKao Throwable- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/16 v1, 0x3fe

    const-string v2, "kakao"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method
