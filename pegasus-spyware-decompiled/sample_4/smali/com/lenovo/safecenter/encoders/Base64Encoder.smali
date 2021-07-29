.class public Lcom/lenovo/safecenter/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/lenovo/safecenter/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B

.field protected padding:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    .line 25
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->padding:B

    .line 30
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    .line 42
    invoke-virtual {p0}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->initialiseDecodingTable()V

    .line 43
    return-void

    .line 9
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private a(Ljava/io/OutputStream;CCCC)I
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "c1"    # C
    .param p3, "c2"    # C
    .param p4, "c3"    # C
    .param p5, "c4"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-byte v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->padding:B

    if-ne p4, v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    .line 258
    .local v0, "b1":B
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    .line 260
    .local v1, "b2":B
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 262
    const/4 v4, 0x1

    .line 286
    :goto_0
    return v4

    .line 264
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :cond_0
    iget-byte v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->padding:B

    if-ne p5, v4, :cond_1

    .line 266
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    .line 267
    .restart local v0    # "b1":B
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    .line 268
    .restart local v1    # "b2":B
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v4, p4

    .line 270
    .local v2, "b3":B
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 271
    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v5, v2, 0x2

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 273
    const/4 v4, 0x2

    goto :goto_0

    .line 277
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    .line 278
    .restart local v0    # "b1":B
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    .line 279
    .restart local v1    # "b2":B
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v4, p4

    .line 280
    .restart local v2    # "b3":B
    iget-object v4, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v3, v4, p5

    .line 282
    .local v3, "b4":B
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 283
    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v5, v2, 0x2

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 284
    shl-int/lit8 v4, v2, 0x6

    or-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 286
    const/4 v4, 0x3

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "finish"    # I

    .prologue
    .line 292
    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return p1
.end method

.method private static a([BII)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "i"    # I
    .param p2, "finish"    # I

    .prologue
    .line 182
    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    int-to-char v0, v0

    invoke-static {v0}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return p1
.end method

.method private static a(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 114
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 16
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v15, 0x0

    .line 203
    .local v15, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 205
    .local v11, "end":I
    :goto_0
    if-lez v11, :cond_0

    .line 207
    add-int/lit8 v1, v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    add-int/lit8 v12, v11, -0x4

    .line 218
    .local v12, "finish":I
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v12}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v13

    .local v13, "i":I
    move v14, v13

    .line 220
    .end local v13    # "i":I
    .local v14, "i":I
    :goto_1
    if-ge v14, v12, :cond_2

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "i":I
    .restart local v13    # "i":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v7, v1, v2

    .line 224
    .local v7, "b1":B
    move-object/from16 v0, p1

    invoke-static {v0, v13, v12}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v13

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v8, v1, v2

    .line 228
    .local v8, "b2":B
    move-object/from16 v0, p1

    invoke-static {v0, v14, v12}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v13

    .line 230
    .end local v14    # "i":I
    .restart local v13    # "i":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v9, v1, v2

    .line 232
    .local v9, "b3":B
    move-object/from16 v0, p1

    invoke-static {v0, v14, v12}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v13

    .line 234
    .end local v14    # "i":I
    .restart local v13    # "i":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v10, v1, v2

    .line 236
    .local v10, "b4":B
    shl-int/lit8 v1, v7, 0x2

    shr-int/lit8 v2, v8, 0x4

    or-int/2addr v1, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 237
    shl-int/lit8 v1, v8, 0x4

    shr-int/lit8 v2, v9, 0x2

    or-int/2addr v1, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 238
    shl-int/lit8 v1, v9, 0x6

    or-int/2addr v1, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 240
    add-int/lit8 v15, v15, 0x3

    .line 242
    move-object/from16 v0, p1

    invoke-static {v0, v14, v12}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v13

    .end local v14    # "i":I
    .restart local v13    # "i":I
    move v14, v13

    .end local v13    # "i":I
    .restart local v14    # "i":I
    goto :goto_1

    .line 212
    .end local v7    # "b1":B
    .end local v8    # "b2":B
    .end local v9    # "b3":B
    .end local v10    # "b4":B
    .end local v12    # "finish":I
    .end local v14    # "i":I
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    .line 245
    .restart local v12    # "finish":I
    .restart local v14    # "i":I
    :cond_2
    add-int/lit8 v1, v11, -0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v1, v11, -0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v1, v11, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v1, v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(Ljava/io/OutputStream;CCCC)I

    move-result v1

    add-int/2addr v15, v1

    .line 247
    return v15
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 17
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/16 v16, 0x0

    .line 133
    .local v16, "outLen":I
    add-int v12, p2, p3

    .line 135
    .local v12, "end":I
    :goto_0
    move/from16 v0, p2

    if-le v12, v0, :cond_0

    .line 137
    add-int/lit8 v2, v12, -0x1

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-static {v2}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    :cond_0
    add-int/lit8 v13, v12, -0x4

    .line 148
    .local v13, "finish":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a([BII)I

    move-result v14

    .local v14, "i":I
    move v15, v14

    .line 150
    .end local v14    # "i":I
    .local v15, "i":I
    :goto_1
    if-ge v15, v13, :cond_2

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    aget-byte v3, p1, v15

    aget-byte v8, v2, v3

    .line 154
    .local v8, "b1":B
    move-object/from16 v0, p1

    invoke-static {v0, v14, v13}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a([BII)I

    move-result v14

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    aget-byte v3, p1, v14

    aget-byte v9, v2, v3

    .line 158
    .local v9, "b2":B
    move-object/from16 v0, p1

    invoke-static {v0, v15, v13}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a([BII)I

    move-result v14

    .line 160
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    aget-byte v3, p1, v14

    aget-byte v10, v2, v3

    .line 162
    .local v10, "b3":B
    move-object/from16 v0, p1

    invoke-static {v0, v15, v13}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a([BII)I

    move-result v14

    .line 164
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    aget-byte v3, p1, v14

    aget-byte v11, v2, v3

    .line 166
    .local v11, "b4":B
    shl-int/lit8 v2, v8, 0x2

    shr-int/lit8 v3, v9, 0x4

    or-int/2addr v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 167
    shl-int/lit8 v2, v9, 0x4

    shr-int/lit8 v3, v10, 0x2

    or-int/2addr v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 168
    shl-int/lit8 v2, v10, 0x6

    or-int/2addr v2, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 170
    add-int/lit8 v16, v16, 0x3

    .line 172
    move-object/from16 v0, p1

    invoke-static {v0, v15, v13}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a([BII)I

    move-result v14

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move v15, v14

    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto :goto_1

    .line 142
    .end local v8    # "b1":B
    .end local v9    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    .end local v13    # "finish":I
    .end local v15    # "i":I
    :cond_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 175
    .restart local v13    # "finish":I
    .restart local v15    # "i":I
    :cond_2
    add-int/lit8 v2, v12, -0x4

    aget-byte v2, p1, v2

    int-to-char v4, v2

    add-int/lit8 v2, v12, -0x3

    aget-byte v2, p1, v2

    int-to-char v5, v2

    add-int/lit8 v2, v12, -0x2

    aget-byte v2, p1, v2

    int-to-char v6, v2

    add-int/lit8 v2, v12, -0x1

    aget-byte v2, p1, v2

    int-to-char v7, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/safecenter/encoders/Base64Encoder;->a(Ljava/io/OutputStream;CCCC)I

    move-result v2

    add-int v16, v16, v2

    .line 177
    return v16
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 15
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    rem-int/lit8 v11, p3, 0x3

    .line 58
    .local v11, "modulus":I
    sub-int v9, p3, v11

    .line 61
    .local v9, "dataLength":I
    move/from16 v10, p2

    .local v10, "i":I
    :goto_0
    add-int v12, p2, v9

    if-ge v10, v12, :cond_0

    .line 63
    aget-byte v12, p1, v10

    and-int/lit16 v1, v12, 0xff

    .line 64
    .local v1, "a1":I
    add-int/lit8 v12, v10, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v2, v12, 0xff

    .line 65
    .local v2, "a2":I
    add-int/lit8 v12, v10, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v3, v12, 0xff

    .line 67
    .local v3, "a3":I
    iget-object v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v13, v1, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 68
    iget-object v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v13, v1, 0x4

    ushr-int/lit8 v14, v2, 0x4

    or-int/2addr v13, v14

    and-int/lit8 v13, v13, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 69
    iget-object v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v13, v2, 0x2

    ushr-int/lit8 v14, v3, 0x6

    or-int/2addr v13, v14

    and-int/lit8 v13, v13, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 70
    iget-object v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    and-int/lit8 v13, v3, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 61
    add-int/lit8 v10, v10, 0x3

    goto :goto_0

    .line 79
    .end local v1    # "a1":I
    .end local v2    # "a2":I
    .end local v3    # "a3":I
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 108
    :goto_1
    :pswitch_0
    div-int/lit8 v12, v9, 0x3

    mul-int/lit8 v13, v12, 0x4

    if-nez v11, :cond_1

    const/4 v12, 0x0

    :goto_2
    add-int/2addr v12, v13

    return v12

    .line 84
    :pswitch_1
    add-int v12, p2, v9

    aget-byte v12, p1, v12

    and-int/lit16 v7, v12, 0xff

    .line 85
    .local v7, "d1":I
    ushr-int/lit8 v12, v7, 0x2

    and-int/lit8 v4, v12, 0x3f

    .line 86
    .local v4, "b1":I
    shl-int/lit8 v12, v7, 0x4

    and-int/lit8 v5, v12, 0x3f

    .line 88
    .local v5, "b2":I
    iget-object v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 89
    iget-object v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 90
    iget-byte v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->padding:B

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 91
    iget-byte v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->padding:B

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 94
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v7    # "d1":I
    :pswitch_2
    add-int v12, p2, v9

    aget-byte v12, p1, v12

    and-int/lit16 v7, v12, 0xff

    .line 95
    .restart local v7    # "d1":I
    add-int v12, p2, v9

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v8, v12, 0xff

    .line 97
    .local v8, "d2":I
    ushr-int/lit8 v12, v7, 0x2

    and-int/lit8 v4, v12, 0x3f

    .line 98
    .restart local v4    # "b1":I
    shl-int/lit8 v12, v7, 0x4

    ushr-int/lit8 v13, v8, 0x4

    or-int/2addr v12, v13

    and-int/lit8 v5, v12, 0x3f

    .line 99
    .restart local v5    # "b2":I
    shl-int/lit8 v12, v8, 0x2

    and-int/lit8 v6, v12, 0x3f

    .line 101
    .local v6, "b3":I
    iget-object v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 102
    iget-object v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 103
    iget-object v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 104
    iget-byte v12, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->padding:B

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 108
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v6    # "b3":I
    .end local v7    # "d1":I
    .end local v8    # "d2":I
    :cond_1
    const/4 v12, 0x4

    goto :goto_2

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final initialiseDecodingTable()V
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->decodingTable:[B

    iget-object v2, p0, Lcom/lenovo/safecenter/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
