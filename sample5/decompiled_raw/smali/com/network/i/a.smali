.class public final Lcom/network/i/a;
.super Ljava/lang/Object;


# static fields
.field static a:[B

.field static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x40

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sput-object v0, Lcom/network/i/a;->b:Ljava/lang/String;

    new-array v0, v3, [B

    sput-object v0, Lcom/network/i/a;->a:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcom/network/i/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    sget-object v2, Lcom/network/i/a;->a:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/network/i/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/network/i/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 13

    const/16 v12, 0x3d

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v2, p1, 0x48

    add-int/2addr v0, v2

    new-array v8, v0, [B

    add-int/lit8 v9, p1, 0x0

    move v4, v1

    move v5, v1

    move v6, v1

    move v0, v1

    move v3, v1

    :goto_0
    if-ge v4, v9, :cond_1

    aget-byte v7, p0, v4

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    move v2, v3

    move v3, v0

    :goto_1
    add-int/lit8 v0, v5, 0x1

    const/16 v5, 0x48

    if-lt v0, v5, :cond_0

    add-int/lit8 v0, v2, 0x1

    const/16 v5, 0xa

    aput-byte v5, v8, v2

    move v2, v0

    move v0, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    move v6, v7

    move v0, v3

    move v3, v2

    goto :goto_0

    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    sget-object v6, Lcom/network/i/a;->a:[B

    shr-int/lit8 v10, v7, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-byte v6, v6, v10

    aput-byte v6, v8, v3

    move v3, v0

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    sget-object v10, Lcom/network/i/a;->a:[B

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x30

    shr-int/lit8 v11, v7, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v6, v11

    aget-byte v6, v10, v6

    aput-byte v6, v8, v3

    move v3, v0

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v3, 0x1

    sget-object v2, Lcom/network/i/a;->a:[B

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3c

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v6, v10

    aget-byte v2, v2, v6

    aput-byte v2, v8, v3

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/network/i/a;->a:[B

    and-int/lit8 v6, v7, 0x3f

    aget-byte v3, v3, v6

    aput-byte v3, v8, v0

    move v3, v1

    goto :goto_1

    :cond_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :pswitch_3
    add-int/lit8 v0, v3, 0x1

    sget-object v1, Lcom/network/i/a;->a:[B

    shl-int/lit8 v2, v6, 0x4

    and-int/lit8 v2, v2, 0x30

    aget-byte v1, v1, v2

    aput-byte v1, v8, v3

    add-int/lit8 v1, v0, 0x1

    aput-byte v12, v8, v0

    aput-byte v12, v8, v1

    goto :goto_2

    :pswitch_4
    add-int/lit8 v0, v3, 0x1

    sget-object v1, Lcom/network/i/a;->a:[B

    shl-int/lit8 v2, v6, 0x2

    and-int/lit8 v2, v2, 0x3c

    aget-byte v1, v1, v2

    aput-byte v1, v8, v3

    aput-byte v12, v8, v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 7

    const/4 v1, 0x0

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v2, "=="

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    sub-int v0, v2, v0

    new-array v3, v0, [B

    move v2, v1

    move v0, v1

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    sget-object v1, Lcom/network/i/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_1

    rem-int/lit8 v1, v2, 0x4

    packed-switch v1, :pswitch_data_0

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :pswitch_0
    shl-int/lit8 v1, v4, 0x2

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_1
    return-object v3

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    aget-byte v5, v3, v0

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    shl-int/lit8 v0, v4, 0x4

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    move v0, v1

    goto :goto_2

    :pswitch_2
    add-int/lit8 v1, v0, 0x1

    aget-byte v5, v3, v0

    shr-int/lit8 v6, v4, 0x2

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    shl-int/lit8 v0, v4, 0x6

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    move v0, v1

    goto :goto_2

    :pswitch_3
    add-int/lit8 v1, v0, 0x1

    aget-byte v5, v3, v0

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
