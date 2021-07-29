.class public Lcom/lenovo/safecenter/mmsutils/QuotedPrintable;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static a:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x3d

    sput-byte v0, Lcom/lenovo/safecenter/mmsutils/QuotedPrintable;->a:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 40
    if-nez p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v5

    .line 43
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, p0

    if-ge v2, v6, :cond_4

    .line 45
    aget-byte v0, p0, v2

    .line 46
    .local v0, "b":I
    sget-byte v6, Lcom/lenovo/safecenter/mmsutils/QuotedPrintable;->a:B

    if-ne v0, v6, :cond_3

    .line 48
    const/16 v6, 0xd

    add-int/lit8 v7, v2, 0x1

    :try_start_0
    aget-byte v7, p0, v7

    int-to-char v7, v7

    if-ne v6, v7, :cond_2

    const/16 v6, 0xa

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    int-to-char v7, v7

    if-ne v6, v7, :cond_2

    .line 50
    add-int/lit8 v2, v2, 0x2

    .line 44
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    :cond_2
    add-int/lit8 v2, v2, 0x1

    aget-byte v6, p0, v2

    int-to-char v6, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 54
    .local v4, "u":I
    add-int/lit8 v2, v2, 0x1

    aget-byte v6, p0, v2

    int-to-char v6, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 55
    .local v3, "l":I
    if-eq v4, v8, :cond_0

    if-eq v3, v8, :cond_0

    .line 58
    shl-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v3

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 60
    .end local v3    # "l":I
    .end local v4    # "u":I
    :catch_0
    move-exception v6

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 66
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_0
.end method
