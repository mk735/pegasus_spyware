.class public Lcom/lenovo/safecenter/mmsutils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final ERR_TAG:Ljava/lang/String; = "Base64.java"

.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 38
    new-array v1, v3, [B

    sput-object v1, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 43
    sget-object v1, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 46
    sget-object v1, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 48
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    .line 49
    sget-object v1, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 51
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    .line 52
    sget-object v1, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 55
    :cond_3
    sget-object v1, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 56
    sget-object v1, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 22
    .param p0, "base64Data"    # [B

    .prologue
    .line 67
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/16 v18, 0x0

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-byte v19, p0, v17

    const/16 v21, 0x3d

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v19, 0x1

    :goto_1
    if-eqz v19, :cond_0

    add-int/lit8 v19, v18, 0x1

    aget-byte v21, p0, v17

    aput-byte v21, v20, v18

    move/from16 v18, v19

    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_1
    sget-object v21, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    aget-byte v19, v21, v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v19, 0x0

    goto :goto_1

    :cond_2
    const/16 v19, 0x1

    goto :goto_1

    :cond_3
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 p0, v0

    .end local p0    # "base64Data":[B
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v3, v19

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .restart local p0    # "base64Data":[B
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 71
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v10, v0, [B

    .line 124
    :cond_4
    :goto_2
    return-object v10

    .line 74
    :cond_5
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    div-int/lit8 v16, v17, 0x4

    .line 75
    .local v16, "numberQuadruple":I
    const/4 v5, 0x0

    .local v5, "b1":B
    const/4 v6, 0x0

    .local v6, "b2":B
    const/4 v7, 0x0

    .local v7, "b3":B
    const/4 v8, 0x0

    .local v8, "b4":B
    const/4 v14, 0x0

    .local v14, "marker0":B
    const/4 v15, 0x0

    .line 80
    .local v15, "marker1":B
    const/4 v11, 0x0

    .line 81
    .local v11, "encodedIndex":I
    const/4 v9, 0x0

    .line 84
    .local v9, "dataIndex":I
    move-object/from16 v0, p0

    array-length v13, v0

    .line 86
    .local v13, "lastData":I
    :cond_6
    add-int/lit8 v17, v13, -0x1

    aget-byte v17, p0, v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 87
    add-int/lit8 v13, v13, -0x1

    if-nez v13, :cond_6

    .line 88
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v10, v0, [B

    goto :goto_2

    .line 91
    :cond_7
    sub-int v17, v13, v16

    move/from16 v0, v17

    new-array v10, v0, [B

    .line 94
    .local v10, "decodedData":[B
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 95
    mul-int/lit8 v9, v12, 0x4

    .line 96
    add-int/lit8 v17, v9, 0x2

    aget-byte v14, p0, v17

    .line 97
    add-int/lit8 v17, v9, 0x3

    aget-byte v15, p0, v17

    .line 99
    sget-object v17, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    aget-byte v18, p0, v9

    aget-byte v5, v17, v18

    .line 100
    sget-object v17, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    add-int/lit8 v18, v9, 0x1

    aget-byte v18, p0, v18

    aget-byte v6, v17, v18

    .line 102
    const/16 v17, 0x3d

    move/from16 v0, v17

    if-eq v14, v0, :cond_9

    const/16 v17, 0x3d

    move/from16 v0, v17

    if-eq v15, v0, :cond_9

    .line 104
    sget-object v17, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    aget-byte v7, v17, v14

    .line 105
    sget-object v17, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    aget-byte v8, v17, v15

    .line 107
    shl-int/lit8 v17, v5, 0x2

    shr-int/lit8 v18, v6, 0x4

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v10, v11

    .line 108
    add-int/lit8 v17, v11, 0x1

    and-int/lit8 v18, v6, 0xf

    shl-int/lit8 v18, v18, 0x4

    shr-int/lit8 v19, v7, 0x2

    and-int/lit8 v19, v19, 0xf

    or-int v18, v18, v19

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v10, v17

    .line 110
    add-int/lit8 v17, v11, 0x2

    shl-int/lit8 v18, v7, 0x6

    or-int v18, v18, v8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v10, v17

    .line 122
    :cond_8
    :goto_4
    add-int/lit8 v11, v11, 0x3

    .line 94
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 111
    :cond_9
    const/16 v17, 0x3d

    move/from16 v0, v17

    if-ne v14, v0, :cond_a

    .line 113
    shl-int/lit8 v17, v5, 0x2

    shr-int/lit8 v18, v6, 0x4

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v10, v11

    goto :goto_4

    .line 114
    :cond_a
    const/16 v17, 0x3d

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    .line 116
    sget-object v17, Lcom/lenovo/safecenter/mmsutils/Base64;->a:[B

    aget-byte v7, v17, v14

    .line 118
    shl-int/lit8 v17, v5, 0x2

    shr-int/lit8 v18, v6, 0x4

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v10, v11

    .line 119
    add-int/lit8 v17, v11, 0x1

    and-int/lit8 v18, v6, 0xf

    shl-int/lit8 v18, v18, 0x4

    shr-int/lit8 v19, v7, 0x2

    and-int/lit8 v19, v19, 0xf

    or-int v18, v18, v19

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v10, v17

    goto :goto_4
.end method
