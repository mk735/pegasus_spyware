.class public Lcom/lenovo/safecenter/encoders/MD5UtilWFL;
.super Ljava/lang/Object;
.source "MD5UtilWFL.java"


# static fields
.field static final a:[B


# instance fields
.field private b:[J

.field private c:[J

.field private d:[B

.field public digestHexStr:Ljava/lang/String;

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c:[J

    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d:[B

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->e:[B

    .line 70
    invoke-direct {p0}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a()V

    .line 72
    return-void
.end method

.method private static a(JJJJJJJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J
    .param p6, "d"    # J
    .param p8, "x"    # J
    .param p10, "s"    # J
    .param p12, "ac"    # J

    .prologue
    .line 119
    and-long v0, p2, p4

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p2

    and-long/2addr v2, p6

    or-long/2addr v0, v2

    add-long/2addr v0, p8

    add-long v0, v0, p12

    add-long/2addr p0, v0

    .line 120
    long-to-int v0, p0

    long-to-int v1, p10

    shl-int/2addr v0, v1

    long-to-int v1, p0

    const-wide/16 v2, 0x20

    sub-long/2addr v2, p10

    long-to-int v2, v2

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-long p0, v0

    .line 121
    add-long/2addr p0, p2

    .line 122
    return-wide p0
.end method

.method private a()V
    .locals 5

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c:[J

    aput-wide v1, v0, v3

    .line 78
    iget-object v0, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c:[J

    aput-wide v1, v0, v4

    .line 81
    iget-object v0, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const-wide/32 v1, 0x67452301

    aput-wide v1, v0, v3

    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const-wide v1, 0xefcdab89L

    aput-wide v1, v0, v4

    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const/4 v1, 0x2

    const-wide v2, 0x98badcfeL

    aput-wide v2, v0, v1

    .line 84
    iget-object v0, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const/4 v1, 0x3

    const-wide/32 v2, 0x10325476

    aput-wide v2, v0, v1

    .line 86
    return-void
.end method

.method private a([B)V
    .locals 22
    .param p1, "block"    # [B

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const/4 v10, 0x0

    aget-wide v1, v9, v10

    .local v1, "a":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const/4 v10, 0x1

    aget-wide v3, v9, v10

    .local v3, "b":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const/4 v10, 0x2

    aget-wide v5, v9, v10

    .local v5, "c":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const/4 v10, 0x3

    aget-wide v7, v9, v10

    .line 224
    .local v7, "d":J
    const/16 v9, 0x10

    new-array v0, v9, [J

    move-object/from16 v21, v0

    .line 226
    .local v21, "x":[J
    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v11, 0x40

    if-ge v9, v11, :cond_0

    aget-byte v11, p1, v9

    invoke-static {v11}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b2iu(B)J

    move-result-wide v11

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, p1, v13

    invoke-static {v13}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b2iu(B)J

    move-result-wide v13

    const/16 v15, 0x8

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    add-int/lit8 v13, v9, 0x2

    aget-byte v13, p1, v13

    invoke-static {v13}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b2iu(B)J

    move-result-wide v13

    const/16 v15, 0x10

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    add-int/lit8 v13, v9, 0x3

    aget-byte v13, p1, v13

    invoke-static {v13}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b2iu(B)J

    move-result-wide v13

    const/16 v15, 0x18

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    aput-wide v11, v21, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x4

    goto :goto_0

    .line 229
    :cond_0
    const/4 v9, 0x0

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x7

    const-wide v13, 0xd76aa478L

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v1

    .line 230
    const/4 v9, 0x1

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xc

    const-wide v19, 0xe8c7b756L

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v7

    .line 231
    const/4 v9, 0x2

    aget-wide v13, v21, v9

    const-wide/16 v15, 0x11

    const-wide/32 v17, 0x242070db

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v5

    .line 232
    const/4 v9, 0x3

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x16

    const-wide v15, 0xc1bdceeeL

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v3

    .line 233
    const/4 v9, 0x4

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x7

    const-wide v13, 0xf57c0fafL

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v1

    .line 234
    const/4 v9, 0x5

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xc

    const-wide/32 v19, 0x4787c62a

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v7

    .line 235
    const/4 v9, 0x6

    aget-wide v13, v21, v9

    const-wide/16 v15, 0x11

    const-wide v17, 0xa8304613L

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v5

    .line 236
    const/4 v9, 0x7

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x16

    const-wide v15, 0xfd469501L

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v3

    .line 237
    const/16 v9, 0x8

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x7

    const-wide/32 v13, 0x698098d8

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v1

    .line 238
    const/16 v9, 0x9

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xc

    const-wide v19, 0x8b44f7afL

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v7

    .line 239
    const/16 v9, 0xa

    aget-wide v13, v21, v9

    const-wide/16 v15, 0x11

    const-wide v17, 0xffff5bb1L

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v5

    .line 240
    const/16 v9, 0xb

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x16

    const-wide v15, 0x895cd7beL

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v3

    .line 241
    const/16 v9, 0xc

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x7

    const-wide/32 v13, 0x6b901122

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v1

    .line 242
    const/16 v9, 0xd

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xc

    const-wide v19, 0xfd987193L

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v7

    .line 243
    const/16 v9, 0xe

    aget-wide v13, v21, v9

    const-wide/16 v15, 0x11

    const-wide v17, 0xa679438eL

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v5

    .line 244
    const/16 v9, 0xf

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x16

    const-wide/32 v15, 0x49b40821

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a(JJJJJJJ)J

    move-result-wide v3

    .line 247
    const/4 v9, 0x1

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x5

    const-wide v13, 0xf61e2562L

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v1

    .line 248
    const/4 v9, 0x6

    aget-wide v15, v21, v9

    const-wide/16 v17, 0x9

    const-wide v19, 0xc040b340L

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v7

    .line 249
    const/16 v9, 0xb

    aget-wide v13, v21, v9

    const-wide/16 v15, 0xe

    const-wide/32 v17, 0x265e5a51

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v5

    .line 250
    const/4 v9, 0x0

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x14

    const-wide v15, 0xe9b6c7aaL

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v3

    .line 251
    const/4 v9, 0x5

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x5

    const-wide v13, 0xd62f105dL

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v1

    .line 252
    const/16 v9, 0xa

    aget-wide v15, v21, v9

    const-wide/16 v17, 0x9

    const-wide/32 v19, 0x2441453

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v7

    .line 253
    const/16 v9, 0xf

    aget-wide v13, v21, v9

    const-wide/16 v15, 0xe

    const-wide v17, 0xd8a1e681L

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v5

    .line 254
    const/4 v9, 0x4

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x14

    const-wide v15, 0xe7d3fbc8L

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v3

    .line 255
    const/16 v9, 0x9

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x5

    const-wide/32 v13, 0x21e1cde6

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v1

    .line 256
    const/16 v9, 0xe

    aget-wide v15, v21, v9

    const-wide/16 v17, 0x9

    const-wide v19, 0xc33707d6L

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v7

    .line 257
    const/4 v9, 0x3

    aget-wide v13, v21, v9

    const-wide/16 v15, 0xe

    const-wide v17, 0xf4d50d87L

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v5

    .line 258
    const/16 v9, 0x8

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x14

    const-wide/32 v15, 0x455a14ed

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v3

    .line 259
    const/16 v9, 0xd

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x5

    const-wide v13, 0xa9e3e905L

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v1

    .line 260
    const/4 v9, 0x2

    aget-wide v15, v21, v9

    const-wide/16 v17, 0x9

    const-wide v19, 0xfcefa3f8L

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v7

    .line 261
    const/4 v9, 0x7

    aget-wide v13, v21, v9

    const-wide/16 v15, 0xe

    const-wide/32 v17, 0x676f02d9

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v5

    .line 262
    const/16 v9, 0xc

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x14

    const-wide v15, 0x8d2a4c8aL

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b(JJJJJJJ)J

    move-result-wide v3

    .line 265
    const/4 v9, 0x5

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x4

    const-wide v13, 0xfffa3942L

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v1

    .line 266
    const/16 v9, 0x8

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xb

    const-wide v19, 0x8771f681L

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v7

    .line 267
    const/16 v9, 0xb

    aget-wide v13, v21, v9

    const-wide/16 v15, 0x10

    const-wide/32 v17, 0x6d9d6122

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v5

    .line 268
    const/16 v9, 0xe

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x17

    const-wide v15, 0xfde5380cL

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v3

    .line 269
    const/4 v9, 0x1

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x4

    const-wide v13, 0xa4beea44L

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v1

    .line 270
    const/4 v9, 0x4

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xb

    const-wide/32 v19, 0x4bdecfa9

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v7

    .line 271
    const/4 v9, 0x7

    aget-wide v13, v21, v9

    const-wide/16 v15, 0x10

    const-wide v17, 0xf6bb4b60L

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v5

    .line 272
    const/16 v9, 0xa

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x17

    const-wide v15, 0xbebfbc70L

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v3

    .line 273
    const/16 v9, 0xd

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x4

    const-wide/32 v13, 0x289b7ec6

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v1

    .line 274
    const/4 v9, 0x0

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xb

    const-wide v19, 0xeaa127faL

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v7

    .line 275
    const/4 v9, 0x3

    aget-wide v13, v21, v9

    const-wide/16 v15, 0x10

    const-wide v17, 0xd4ef3085L

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v5

    .line 276
    const/4 v9, 0x6

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x17

    const-wide/32 v15, 0x4881d05

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v3

    .line 277
    const/16 v9, 0x9

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x4

    const-wide v13, 0xd9d4d039L

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v1

    .line 278
    const/16 v9, 0xc

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xb

    const-wide v19, 0xe6db99e5L

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v7

    .line 279
    const/16 v9, 0xf

    aget-wide v13, v21, v9

    const-wide/16 v15, 0x10

    const-wide/32 v17, 0x1fa27cf8

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v5

    .line 280
    const/4 v9, 0x2

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x17

    const-wide v15, 0xc4ac5665L

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c(JJJJJJJ)J

    move-result-wide v3

    .line 283
    const/4 v9, 0x0

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x6

    const-wide v13, 0xf4292244L

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v1

    .line 284
    const/4 v9, 0x7

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xa

    const-wide/32 v19, 0x432aff97

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v7

    .line 285
    const/16 v9, 0xe

    aget-wide v13, v21, v9

    const-wide/16 v15, 0xf

    const-wide v17, 0xab9423a7L

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v5

    .line 286
    const/4 v9, 0x5

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x15

    const-wide v15, 0xfc93a039L

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v3

    .line 287
    const/16 v9, 0xc

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x6

    const-wide/32 v13, 0x655b59c3

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v1

    .line 288
    const/4 v9, 0x3

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xa

    const-wide v19, 0x8f0ccc92L

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v7

    .line 289
    const/16 v9, 0xa

    aget-wide v13, v21, v9

    const-wide/16 v15, 0xf

    const-wide v17, 0xffeff47dL

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v5

    .line 290
    const/4 v9, 0x1

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x15

    const-wide v15, 0x85845dd1L

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v3

    .line 291
    const/16 v9, 0x8

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x6

    const-wide/32 v13, 0x6fa87e4f

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v1

    .line 292
    const/16 v9, 0xf

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xa

    const-wide v19, 0xfe2ce6e0L

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v7

    .line 293
    const/4 v9, 0x6

    aget-wide v13, v21, v9

    const-wide/16 v15, 0xf

    const-wide v17, 0xa3014314L

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v5

    .line 294
    const/16 v9, 0xd

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x15

    const-wide/32 v15, 0x4e0811a1

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v3

    .line 295
    const/4 v9, 0x4

    aget-wide v9, v21, v9

    const-wide/16 v11, 0x6

    const-wide v13, 0xf7537e82L

    invoke-static/range {v1 .. v14}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v1

    .line 296
    const/16 v9, 0xb

    aget-wide v15, v21, v9

    const-wide/16 v17, 0xa

    const-wide v19, 0xbd3af235L

    move-wide v9, v1

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v20}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v7

    .line 297
    const/4 v9, 0x2

    aget-wide v13, v21, v9

    const-wide/16 v15, 0xf

    const-wide/32 v17, 0x2ad7d2bb

    move-wide v9, v1

    move-wide v11, v3

    invoke-static/range {v5 .. v18}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v5

    .line 298
    const/16 v9, 0x9

    aget-wide v11, v21, v9

    const-wide/16 v13, 0x15

    const-wide v15, 0xeb86d391L

    move-wide v9, v1

    invoke-static/range {v3 .. v16}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d(JJJJJJJ)J

    move-result-wide v3

    .line 300
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const/4 v10, 0x0

    aget-wide v11, v9, v10

    add-long/2addr v11, v1

    aput-wide v11, v9, v10

    .line 301
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const/4 v10, 0x1

    aget-wide v11, v9, v10

    add-long/2addr v11, v3

    aput-wide v11, v9, v10

    .line 302
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const/4 v10, 0x2

    aget-wide v11, v9, v10

    add-long/2addr v11, v5

    aput-wide v11, v9, v10

    .line 303
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    const/4 v10, 0x3

    aget-wide v11, v9, v10

    add-long/2addr v11, v7

    aput-wide v11, v9, v10

    .line 305
    return-void
.end method

.method private a([BI)V
    .locals 12
    .param p1, "inbuf"    # [B
    .param p2, "inputLen"    # I

    .prologue
    const/16 v11, 0x40

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 153
    new-array v0, v11, [B

    .line 154
    .local v0, "block":[B
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c:[J

    aget-wide v4, v4, v9

    const/4 v6, 0x3

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit8 v2, v4, 0x3f

    .line 156
    .local v2, "index":I
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c:[J

    aget-wide v5, v4, v9

    shl-int/lit8 v7, p2, 0x3

    int-to-long v7, v7

    add-long/2addr v5, v7

    aput-wide v5, v4, v9

    shl-int/lit8 v4, p2, 0x3

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gez v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c:[J

    aget-wide v5, v4, v10

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    aput-wide v5, v4, v10

    .line 158
    :cond_0
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c:[J

    aget-wide v5, v4, v10

    ushr-int/lit8 v7, p2, 0x1d

    int-to-long v7, v7

    add-long/2addr v5, v7

    aput-wide v5, v4, v10

    .line 160
    rsub-int/lit8 v3, v2, 0x40

    .line 163
    .local v3, "partLen":I
    if-lt p2, v3, :cond_2

    .line 164
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d:[B

    invoke-static {v4, p1, v2, v9, v3}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a([B[BIII)V

    .line 165
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d:[B

    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a([B)V

    .line 167
    move v1, v3

    .local v1, "i":I
    :goto_0
    add-int/lit8 v4, v1, 0x3f

    if-ge v4, p2, :cond_1

    .line 169
    invoke-static {v0, p1, v9, v1, v11}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a([B[BIII)V

    .line 170
    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a([B)V

    .line 167
    add-int/lit8 v1, v1, 0x40

    goto :goto_0

    .line 172
    :cond_1
    const/4 v2, 0x0

    .line 179
    :goto_1
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->d:[B

    sub-int v5, p2, v1

    invoke-static {v4, p1, v2, v1, v5}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a([B[BIII)V

    .line 181
    return-void

    .line 176
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    goto :goto_1
.end method

.method private static a([B[BIII)V
    .locals 3
    .param p0, "output"    # [B
    .param p1, "input"    # [B
    .param p2, "outpos"    # I
    .param p3, "inpos"    # I
    .param p4, "len"    # I

    .prologue
    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 216
    add-int v1, p2, v0

    add-int v2, p3, v0

    aget-byte v2, p1, v2

    aput-byte v2, p0, v1

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method private static a([B[JI)V
    .locals 8
    .param p0, "output"    # [B
    .param p1, "input"    # [J
    .param p2, "len"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 314
    aget-wide v2, p1, v0

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 315
    add-int/lit8 v2, v1, 0x1

    aget-wide v3, p1, v0

    const/16 v5, 0x8

    ushr-long/2addr v3, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 316
    add-int/lit8 v2, v1, 0x2

    aget-wide v3, p1, v0

    const/16 v5, 0x10

    ushr-long/2addr v3, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 317
    add-int/lit8 v2, v1, 0x3

    aget-wide v3, p1, v0

    const/16 v5, 0x18

    ushr-long/2addr v3, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 313
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method private static b(JJJJJJJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J
    .param p6, "d"    # J
    .param p8, "x"    # J
    .param p10, "s"    # J
    .param p12, "ac"    # J

    .prologue
    .line 126
    and-long v0, p2, p6

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p6

    and-long/2addr v2, p4

    or-long/2addr v0, v2

    add-long/2addr v0, p8

    add-long v0, v0, p12

    add-long/2addr p0, v0

    .line 127
    long-to-int v0, p0

    long-to-int v1, p10

    shl-int/2addr v0, v1

    long-to-int v1, p0

    const-wide/16 v2, 0x20

    sub-long/2addr v2, p10

    long-to-int v2, v2

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-long p0, v0

    .line 128
    add-long/2addr p0, p2

    .line 129
    return-wide p0
.end method

.method public static b2iu(B)J
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 339
    if-gez p0, :cond_0

    and-int/lit16 v0, p0, 0xff

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p0

    goto :goto_0
.end method

.method public static byteHEX(B)Ljava/lang/String;
    .locals 5
    .param p0, "ib"    # B

    .prologue
    .line 347
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 349
    .local v0, "Digit":[C
    const/4 v3, 0x2

    new-array v1, v3, [C

    .line 350
    .local v1, "ob":[C
    const/4 v3, 0x0

    ushr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 351
    const/4 v3, 0x1

    and-int/lit8 v4, p0, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 352
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 353
    .local v2, "s":Ljava/lang/String;
    return-object v2

    .line 347
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private static c(JJJJJJJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J
    .param p6, "d"    # J
    .param p8, "x"    # J
    .param p10, "s"    # J
    .param p12, "ac"    # J

    .prologue
    .line 133
    xor-long v0, p2, p4

    xor-long/2addr v0, p6

    add-long/2addr v0, p8

    add-long v0, v0, p12

    add-long/2addr p0, v0

    .line 134
    long-to-int v0, p0

    long-to-int v1, p10

    shl-int/2addr v0, v1

    long-to-int v1, p0

    const-wide/16 v2, 0x20

    sub-long/2addr v2, p10

    long-to-int v2, v2

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-long p0, v0

    .line 135
    add-long/2addr p0, p2

    .line 136
    return-wide p0
.end method

.method private static d(JJJJJJJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J
    .param p6, "d"    # J
    .param p8, "x"    # J
    .param p10, "s"    # J
    .param p12, "ac"    # J

    .prologue
    .line 140
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p6

    or-long/2addr v0, p2

    xor-long/2addr v0, p4

    add-long/2addr v0, p8

    add-long v0, v0, p12

    add-long/2addr p0, v0

    .line 141
    long-to-int v0, p0

    long-to-int v1, p10

    shl-int/2addr v0, v1

    long-to-int v1, p0

    const-wide/16 v2, 0x20

    sub-long/2addr v2, p10

    long-to-int v2, v2

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-long p0, v0

    .line 142
    add-long/2addr p0, p2

    .line 143
    return-wide p0
.end method


# virtual methods
.method public getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "inbuf"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    .line 57
    invoke-direct {p0}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a()V

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a([BI)V

    .line 59
    new-array v2, v5, [B

    iget-object v1, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c:[J

    invoke-static {v2, v1, v5}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a([B[JI)V

    iget-object v1, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->c:[J

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    const/4 v1, 0x3

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    and-int/lit8 v1, v1, 0x3f

    const/16 v3, 0x38

    if-ge v1, v3, :cond_0

    rsub-int/lit8 v1, v1, 0x38

    :goto_0
    sget-object v3, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a:[B

    invoke-direct {p0, v3, v1}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a([BI)V

    invoke-direct {p0, v2, v5}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a([BI)V

    iget-object v1, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->e:[B

    iget-object v2, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->b:[J

    invoke-static {v1, v2, v6}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->a([B[JI)V

    .line 60
    const-string v1, ""

    iput-object v1, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->digestHexStr:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_1

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->digestHexStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->e:[B

    aget-byte v2, v2, v0

    invoke-static {v2}, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->byteHEX(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->digestHexStr:Ljava/lang/String;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "i":I
    :cond_0
    rsub-int/lit8 v1, v1, 0x78

    goto :goto_0

    .line 64
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/encoders/MD5UtilWFL;->digestHexStr:Ljava/lang/String;

    return-object v1
.end method
