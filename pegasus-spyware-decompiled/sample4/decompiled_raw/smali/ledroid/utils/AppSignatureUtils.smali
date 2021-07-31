.class public final Lledroid/utils/AppSignatureUtils;
.super Ljava/lang/Object;
.source "AppSignatureUtils.java"


# static fields
.field public static final SIGNATURE_MD5S:[Ljava/lang/String;

.field private static a:Ljava/security/MessageDigest;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lledroid/utils/AppSignatureUtils;->b:Ljava/util/List;

    .line 18
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lledroid/utils/AppSignatureUtils;->c:[C

    .line 20
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EBAA529685AAE3A1D299AC15F7710AEA"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "B78A0EE7E80045B4F9A0C425703D0CA4"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "388CF508552BC50ED26A8715D33312BA"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "49FF2FEA9A214DCC2F7EF229488B1A54"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "56B44C8B44C3A4064FE0667DC91E01AA"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "CEA942B20A36347B3BF793BFF50F737D"

    aput-object v3, v1, v2

    sput-object v1, Lledroid/utils/AppSignatureUtils;->SIGNATURE_MD5S:[Ljava/lang/String;

    .line 31
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lledroid/utils/AppSignatureUtils;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .local v0, "nsaex":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void

    .line 32
    .end local v0    # "nsaex":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 33
    .restart local v0    # "nsaex":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 18
    nop

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

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packName"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v3, 0x0

    .line 39
    .local v3, "sigs":[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .line 41
    .local v2, "md5":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 44
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lledroid/utils/AppSignatureUtils;->getMD5String([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 49
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getMD5String([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 53
    sget-object v0, Lledroid/utils/AppSignatureUtils;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 54
    sget-object v0, Lledroid/utils/AppSignatureUtils;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    array-length v0, v1

    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, v0, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/lit8 v3, v0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v1, v0

    sget-object v5, Lledroid/utils/AppSignatureUtils;->c:[C

    and-int/lit16 v6, v4, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    sget-object v6, Lledroid/utils/AppSignatureUtils;->c:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getsignatureMd5sList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const-string v2, "com.android.settings"

    invoke-static {p0, v2}, Lledroid/utils/AppSignatureUtils;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "platformKey":Ljava/lang/String;
    sget-object v2, Lledroid/utils/AppSignatureUtils;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v2, "com.android.contacts"

    invoke-static {p0, v2}, Lledroid/utils/AppSignatureUtils;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "sharedKey":Ljava/lang/String;
    sget-object v2, Lledroid/utils/AppSignatureUtils;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v2, Lledroid/utils/AppSignatureUtils;->b:Ljava/util/List;

    return-object v2
.end method
