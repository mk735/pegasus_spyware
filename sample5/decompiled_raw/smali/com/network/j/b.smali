.class public final Lcom/network/j/b;
.super Ljava/lang/Object;


# static fields
.field private static a:C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3d

    sput-char v0, Lcom/network/j/b;->a:C

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/network/j/b;->b:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v2, v1, [C

    move v1, v0

    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ge v0, v3, :cond_1

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/network/j/b;->b:[C

    shr-int/lit8 v6, v3, 0x12

    aget-char v5, v5, v6

    aput-char v5, v2, v1

    add-int/lit8 v1, v4, 0x1

    sget-object v5, Lcom/network/j/b;->b:[C

    shr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/network/j/b;->b:[C

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v2, v1

    add-int/lit8 v1, v4, 0x1

    sget-object v5, Lcom/network/j/b;->b:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :pswitch_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/network/j/b;->b:[C

    shr-int/lit8 v5, v0, 0x12

    aget-char v4, v4, v5

    aput-char v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    sget-object v4, Lcom/network/j/b;->b:[C

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v4, v0

    aput-char v0, v2, v3

    add-int/lit8 v0, v1, 0x1

    sget-char v3, Lcom/network/j/b;->a:C

    aput-char v3, v2, v1

    sget-char v1, Lcom/network/j/b;->a:C

    aput-char v1, v2, v0

    goto :goto_2

    :pswitch_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/network/j/b;->b:[C

    shr-int/lit8 v5, v0, 0x12

    aget-char v4, v4, v5

    aput-char v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    sget-object v4, Lcom/network/j/b;->b:[C

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v2, v3

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/network/j/b;->b:[C

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v4, v0

    aput-char v0, v2, v1

    sget-char v0, Lcom/network/j/b;->a:C

    aput-char v0, v2, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
