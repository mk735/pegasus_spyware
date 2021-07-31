.class public final Ltms/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/f$a;
    }
.end annotation


# static fields
.field private static volatile a:Ltms/f;


# instance fields
.field private b:Ltms/bo;

.field private c:Ljava/util/Calendar;

.field private d:Ltms/dg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ltms/f;->a:Ltms/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltms/f;->c:Ljava/util/Calendar;

    invoke-direct {p0}, Ltms/f;->g()V

    return-void
.end method

.method public static declared-synchronized a()Ltms/f;
    .locals 2

    const-class v1, Ltms/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltms/f;->a:Ltms/f;

    if-nez v0, :cond_0

    new-instance v0, Ltms/f;

    invoke-direct {v0}, Ltms/f;-><init>()V

    sput-object v0, Ltms/f;->a:Ltms/f;

    :cond_0
    sget-object v0, Ltms/f;->a:Ltms/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(I)[B
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    if-nez p0, :cond_0

    const-string v0, "licence.conf"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "licence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".conf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([B[B)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    const-string v2, "DES/ECB/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private g()V
    .locals 7

    const/16 v6, 0x80

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    :try_start_0
    invoke-static {v0}, Ltms/f;->a(I)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Certification file is missing! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invaild signature! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getSecureServiceClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Licence authentication needs a backgroundservice, you must pass a Service\'Class while calling TMSApplication.init method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Ltms/f;->i()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    new-array v4, v6, [B

    array-length v5, v4

    invoke-static {v2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v3}, Ltms/cj;->a([BLjava/security/interfaces/RSAPublicKey;)[B

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RSA decrypt error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v4, v2

    add-int/lit8 v4, v4, -0x80

    new-array v4, v4, [B

    array-length v5, v4

    invoke-static {v2, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {v4, v3}, Ltms/f;->a([B[B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v2, Ltms/dg;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltms/dg;-><init>(Ljava/util/Properties;Landroid/content/Context;)V

    iput-object v2, p0, Ltms/f;->d:Ltms/dg;

    iget-object v2, p0, Ltms/f;->d:Ltms/dg;

    invoke-virtual {v2}, Ltms/dg;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Ltms/f;->h()V

    iget-object v0, p0, Ltms/f;->c:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final h()V
    .locals 12

    const-wide/16 v10, 0x3e8

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x2

    new-instance v0, Ltms/af;

    const-string v1, "licence"

    invoke-direct {v0, v1}, Ltms/af;-><init>(Ljava/lang/String;)V

    const-string v1, "expiry.enc_seconds"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Ltms/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ltms/f;->i()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v0, v6}, Lcom/tencent/tmsecure/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const-string v7, "RSA/ECB/PKCS1Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v1, 0x4

    invoke-virtual {v7, v0, v1, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    const-string v7, "DES/ECB/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    new-instance v8, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v8, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    add-int/lit8 v1, v6, 0x4

    array-length v8, v0

    add-int/lit8 v8, v8, -0x4

    sub-int v6, v8, v6

    invoke-virtual {v7, v0, v1, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/16 v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    iget-object v0, p0, Ltms/f;->d:Ltms/dg;

    invoke-virtual {v0}, Ltms/dg;->d()J

    move-result-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v10

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    move v2, v3

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    mul-long v5, v0, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v5, "LicMan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expirySeconds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") expired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ltms/bo;

    invoke-direct {v0, v2}, Ltms/bo;-><init>(Z)V

    iput-object v0, p0, Ltms/f;->b:Ltms/bo;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-wide v0, v4

    goto :goto_0
.end method

.method private static i()Ljava/security/interfaces/RSAPublicKey;
    .locals 2

    const-string v0, "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM5ekNDQWQ4Q0NRRGlsbUFjTWxiczVEQU5C\nZ2txaGtpRzl3MEJBUVVGQURCK01Rc3dDUVlEVlFRR0V3SkQKVGpFTE1Ba0dBMVVFQ0JNQ1IwUXhD\nekFKQmdOVkJBY1RBa2RhTVJJd0VBWURWUVFLRkFsMFpXTUlibU5sYm5ReApDekFKQmdOVkJBc1RB\nak5ITVE0d0RBWURWUVFERXdWdlltRnRZVEVrTUNJR0NTcUdTSWIzRFFFSkFSWVZiMkpoCmJXRjZa\nVzVuUUhSbGJtTmxiblF1WTI5dE1CNFhEVEV4TVRFeE5qRXhNVGN4TjFvWERURXlNREl5TkRFeE1U\nY3gKTjFvd2dZQXhDekFKQmdOVkJBWVRBa05PTVFzd0NRWURWUVFJRXdKSFJERUxNQWtHQTFVRUJ4\nTUNSMW94RURBTwpCZ05WQkFvVEIzUmxibU5sYm5ReEN6QUpCZ05WQkFzVEFqTkhNUkl3RUFZRFZR\nUURFd2x2WW1GdFlYcGxibWN4CkpEQWlCZ2txaGtpRzl3MEJDUUVXRlc5aVlXMWhlbVZ1WjBCMFpX\nNWpaVzUwTG1OdmJUQ0JuekFOQmdrcWhraUcKOXcwQkFRRUZBQU9CalFBd2dZa0NnWUVBd1kvV3FI\nV2NlRERkSm16anI3TlpSeS9qTllwS1NzVzExZngxaTIrQwpxTUE3NTJXb1d1bDZuSTB1MGZkWitk\nUzVUandRNkU0Qm13dXduVTVnQmJYK1VzQ2VHRHZaQVhQc045UEVWYnZTCkcvR25YclQrcTI2VUpP\nNHcrd3VNdmk5YWxkZHhhbkNKeXJ2ZWQ2NUdvMXhXUEErWGNHaVQxMndubjZtUHhyMnUKcVEwQ0F3\nRUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBUUVBblpzV3FpSmV5SC9sT0prSWN6L2ZidDN3MXFL\nRApGTXJ5cFVHVFN6Z3NONWNaMW9yOGlvVG5ENGRLaDdJN2ttbDRpcGNvMDF0enc2MGhLYUtwNG9G\nMnYrMEs2NGZDCnBEMG9EUlkrOGoyK2RsMmNxeHBsT0FYdDc1RWFKNW40MG1DZDdTN0VBS0d2Z2Na\naVhyV0Z1eUtCL2QvNTh3Qm4KOEFGUVJhTnBySXNOSHpxMkMwL0JXR1pTSnJicmhOWExFY0ZtL0Ru\nTG14ZEVNYWxPSXhnSkhGcEFOS2tadXBzdgo0L0lDVFhSL0RJaURjbXJjbDFkNkc2VmgyaUcwaS9v\nRDBHQnBMZlFPcEF0Vmx6Y2lxZnBsTkphcnpRUTZUVXRyCm5GRmVNVDNDc2t5VGJwYnp1R2dDdUxj\nQVR3cnRQd1BOOWZzQXYrSjRJZm0rZUNVVDVnZlorMSsyNHc9PQotLS0tLUVORCBDRVJUSUZJQ0FU\nRS0tLS0tCg==\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Base64;->decode([BI)[B

    move-result-object v0

    invoke-static {v0}, Ltms/cj;->a([B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "LicMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strTimeSec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltms/o;->a([Ljava/lang/Class;)V

    new-instance v0, Ltms/af;

    const-string v1, "licence"

    invoke-direct {v0, v1}, Ltms/af;-><init>(Ljava/lang/String;)V

    const-string v1, "expiry.enc_seconds"

    invoke-virtual {v0, v1, p1, v3}, Ltms/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Ltms/f;->h()V

    return-void
.end method

.method public final a(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/tmsecure/common/BaseManager;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/f;->d:Ltms/dg;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ltms/f;->d:Ltms/dg;

    invoke-virtual {v0, p1}, Ltms/dg;->a(Ljava/lang/Class;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final b()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, LQQPIM/LicenceCheckResult;

    invoke-direct {v2}, LQQPIM/LicenceCheckResult;-><init>()V

    iget-object v3, p0, Ltms/f;->d:Ltms/dg;

    invoke-virtual {v3, v2}, Ltms/dg;->a(LQQPIM/LicenceCheckResult;)I

    move-result v3

    iget-object v4, v2, LQQPIM/LicenceCheckResult;->value:LQQPIM/RetInfo;

    if-eqz v4, :cond_0

    iget-object v4, v2, LQQPIM/LicenceCheckResult;->value:LQQPIM/RetInfo;

    iget-object v4, v4, LQQPIM/RetInfo;->strtime_sec:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, LQQPIM/LicenceCheckResult;->value:LQQPIM/RetInfo;

    iget-object v4, v4, LQQPIM/RetInfo;->strtime_sec:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Ltms/f;->e()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    packed-switch v3, :pswitch_data_1

    invoke-virtual {p0}, Ltms/f;->e()Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v2, v2, LQQPIM/LicenceCheckResult;->value:LQQPIM/RetInfo;

    iget-object v2, v2, LQQPIM/RetInfo;->strtime_sec:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ltms/f;->a(Ljava/lang/String;)V

    move v2, v1

    goto :goto_1

    :pswitch_4
    iget-object v2, v2, LQQPIM/LicenceCheckResult;->value:LQQPIM/RetInfo;

    iget-object v2, v2, LQQPIM/RetInfo;->strtime_sec:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ltms/f;->a(Ljava/lang/String;)V

    move v2, v0

    goto :goto_1

    :pswitch_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown licence! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/f;->d:Ltms/dg;

    invoke-virtual {v0}, Ltms/dg;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/f;->d:Ltms/dg;

    invoke-virtual {v0}, Ltms/dg;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Ltms/f;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Ltms/f;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Ltms/f;->h()V

    :cond_1
    iget-object v0, p0, Ltms/f;->c:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Ltms/f;->b:Ltms/bo;

    invoke-virtual {v0}, Ltms/bo;->a()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Ltms/f;->d:Ltms/dg;

    invoke-virtual {v0}, Ltms/dg;->a()Z

    move-result v0

    return v0
.end method
