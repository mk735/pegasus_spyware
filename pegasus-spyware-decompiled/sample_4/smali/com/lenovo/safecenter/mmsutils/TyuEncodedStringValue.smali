.class public Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
.super Ljava/lang/Object;
.source "TyuEncodedStringValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "charset"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p2, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput p1, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->a:I

    .line 42
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    .line 59
    const/16 v1, 0x6a

    iput v1, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->a:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "EncodedStringValue"

    const-string v2, "Default encoding must be supported."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 53
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;-><init>(I[B)V

    .line 54
    return-void
.end method

.method public static concat([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 237
    .local v1, "maxIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 238
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    if-ge v0, v1, :cond_0

    .line 240
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static copy(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 3
    .param p0, "value"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    iget v1, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->a:I

    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    invoke-direct {v0, v1, v2}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;-><init>(I[B)V

    goto :goto_0
.end method

.method public static encodeStrings([Ljava/lang/String;)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 5
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 256
    array-length v0, p0

    .line 257
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 258
    new-array v1, v0, [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .line 259
    .local v1, "encodedArray":[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 260
    new-instance v3, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "encodedArray":[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static extract(Ljava/lang/String;)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "values":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 218
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 219
    new-instance v4, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    aget-object v5, v3, v0

    invoke-direct {v4, v5}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 224
    .local v1, "len":I
    if-lez v1, :cond_2

    .line 225
    new-array v4, v1, [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .line 227
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public appendTextString([B)V
    .locals 5
    .param p1, "textString"    # [B

    .prologue
    const/4 v4, 0x0

    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Text-string is null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    if-nez v2, :cond_1

    .line 151
    array-length v2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    .line 152
    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    array-length v3, p1

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    :goto_0
    return-void

    .line 154
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 156
    .local v1, "newTextString":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 157
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "appendTextString: failed when write a new Text-string"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clone()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 175
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    array-length v2, v3

    .line 176
    .local v2, "len":I
    new-array v0, v2, [B

    .line 177
    .local v0, "dstBytes":[B
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    :try_start_0
    new-instance v3, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->a:I

    invoke-direct {v3, v4, v0}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;-><init>(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EncodedStringValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to clone an EncodedStringValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    new-instance v3, Ljava/lang/CloneNotSupportedException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCharacterSet()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->a:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    iget v1, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->a:I

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 132
    :goto_0
    return-object v1

    .line 123
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->a:I

    invoke-static {v1}, Lcom/lenovo/safecenter/mmsutils/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 130
    :try_start_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    const-string v3, "iso-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 132
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getTextString()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 92
    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    return-object v0
.end method

.method public setCharacterSet(I)V
    .locals 0
    .param p1, "charset"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->a:I

    .line 82
    return-void
.end method

.method public setTextString([B)V
    .locals 3
    .param p1, "textString"    # [B

    .prologue
    const/4 v2, 0x0

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    .line 108
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->b:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    return-void
.end method

.method public split(Ljava/lang/String;)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "temp":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .line 198
    .local v1, "ret":[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 200
    :try_start_0
    new-instance v3, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->a:I

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;-><init>(I[B)V

    aput-object v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v3

    const/4 v1, 0x0

    .line 207
    .end local v1    # "ret":[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :cond_0
    return-object v1
.end method
