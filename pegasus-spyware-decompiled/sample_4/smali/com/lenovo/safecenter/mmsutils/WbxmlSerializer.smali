.class public Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;
.super Ljava/lang/Object;
.source "WbxmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field public static final ERR_TAG:Ljava/lang/String; = "WbxmlSerializer.java"


# instance fields
.field a:Ljava/util/Hashtable;

.field b:Ljava/io/OutputStream;

.field c:Ljava/io/ByteArrayOutputStream;

.field d:Ljava/io/ByteArrayOutputStream;

.field e:Ljava/lang/String;

.field f:I

.field g:Ljava/util/Vector;

.field h:Ljava/util/Hashtable;

.field i:Ljava/util/Hashtable;

.field j:Ljava/util/Hashtable;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->d:Ljava/io/ByteArrayOutputStream;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->g:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->h:Ljava/util/Hashtable;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->i:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->j:Ljava/util/Hashtable;

    return-void
.end method

.method private static a(Ljava/io/OutputStream;I)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 394
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 397
    .local v1, "idx":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 398
    shr-int/lit8 p1, p1, 0x7

    .line 400
    if-nez p1, :cond_1

    move v1, v2

    .line 402
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    :goto_1
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 403
    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v0, v1

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 405
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 406
    return-void

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    :cond_1
    move v1, v2

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    goto :goto_0
.end method

.method private a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->m:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 410
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 411
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 412
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x41

    const/16 v8, 0x20

    const/4 v7, 0x0

    const/16 v6, 0x83

    .line 294
    const/4 v2, 0x0

    .line 295
    .local v2, "p0":I
    const/4 v0, 0x0

    .line 296
    .local v0, "lastCut":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 298
    .local v1, "len":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 299
    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v9, :cond_0

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    :cond_0
    move v3, v2

    .line 303
    .local v3, "p1":I
    :goto_2
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v9, :cond_1

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 307
    :cond_1
    sub-int v4, v3, v2

    const/16 v5, 0xa

    if-le v4, v5, :cond_2

    .line 309
    if-le v2, v0, :cond_3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a:Ljava/util/Hashtable;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 312
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 313
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/lang/String;Z)V

    .line 328
    :goto_3
    move v0, v3

    .line 330
    :cond_2
    move v2, v3

    .line 331
    goto :goto_0

    .line 317
    :cond_3
    if-le v2, v0, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_4

    .line 318
    add-int/lit8 v2, v2, -0x1

    .line 321
    :cond_4
    if-le v2, v0, :cond_5

    .line 322
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/lang/String;Z)V

    .line 325
    :cond_5
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 326
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/lang/String;Z)V

    goto :goto_3

    .line 333
    .end local v3    # "p1":I
    :cond_6
    if-ge v0, v1, :cond_7

    .line 334
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/lang/String;Z)V

    .line 337
    :cond_7
    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "mayPrependSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x20

    .line 416
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 418
    .local v1, "idx":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 419
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/io/OutputStream;I)V

    .line 445
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 423
    .local v0, "i":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    if-eqz p2, :cond_3

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 425
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/io/OutputStream;I)V

    .line 431
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_1

    .line 433
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a:Ljava/util/Hashtable;

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 436
    .local v2, "j":I
    if-le v2, v8, :cond_2

    .line 437
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int v6, v0, v2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a:Ljava/util/Hashtable;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int v6, v0, v2

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->d:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, p1}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 428
    .end local v2    # "j":I
    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-static {v3, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/io/OutputStream;I)V

    goto :goto_1
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->g:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->g:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 51
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .param p1, "cdsect"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    return-void
.end method

.method public checkPending(Z)V
    .locals 8
    .param p1, "degenerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->e:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 198
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->g:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 136
    .local v2, "len":I
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->j:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 139
    .local v1, "idx":[I
    if-nez v1, :cond_4

    .line 140
    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->e:Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/lang/String;Z)V

    .line 163
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_d

    .line 164
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->h:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->g:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 166
    if-nez v1, :cond_9

    .line 167
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 168
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->g:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/lang/String;Z)V

    .line 178
    :goto_4
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->i:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->g:Ljava/util/Vector;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 179
    if-nez v1, :cond_b

    .line 180
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->g:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/lang/String;)V

    .line 190
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 140
    .end local v0    # "i":I
    :cond_1
    const/16 v3, 0x44

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const/16 v3, 0x84

    goto :goto_1

    :cond_3
    const/16 v3, 0xc4

    goto :goto_1

    .line 148
    :cond_4
    aget v3, v1, v6

    iget v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->l:I

    if-eq v3, v5, :cond_5

    .line 149
    aget v3, v1, v6

    iput v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->l:I

    .line 150
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 151
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->l:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 154
    :cond_5
    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_7

    if-eqz p1, :cond_6

    aget v3, v1, v7

    :goto_6
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_6
    aget v3, v1, v7

    or-int/lit8 v3, v3, 0x40

    goto :goto_6

    :cond_7
    if-eqz p1, :cond_8

    aget v3, v1, v7

    or-int/lit16 v3, v3, 0x80

    goto :goto_6

    :cond_8
    aget v3, v1, v7

    or-int/lit16 v3, v3, 0xc0

    goto :goto_6

    .line 171
    .restart local v0    # "i":I
    :cond_9
    aget v3, v1, v6

    iget v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->k:I

    if-eq v3, v5, :cond_a

    .line 172
    aget v3, v1, v6

    iput v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->k:I

    .line 173
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 174
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->k:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 176
    :cond_a
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    aget v5, v1, v7

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 183
    :cond_b
    aget v3, v1, v6

    iget v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->k:I

    if-eq v3, v5, :cond_c

    .line 184
    aget v3, v1, v6

    iput v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->k:I

    .line 185
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 186
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->k:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 188
    :cond_c
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    aget v5, v1, v7

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 193
    :cond_d
    if-lez v2, :cond_e

    .line 194
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 196
    :cond_e
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->e:Ljava/lang/String;

    .line 197
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->g:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 64
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .param p1, "docdecl"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot write docdecl for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/io/OutputStream;I)V

    .line 111
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 119
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 120
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 345
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->checkPending(Z)V

    .line 350
    :goto_0
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->f:I

    .line 352
    return-object p0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .param p1, "er"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EntityReference not supported for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->f:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "nsp"    # Ljava/lang/String;
    .param p2, "create"    # Z

    .prologue
    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "sp"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .param p1, "pi"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PI NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "attrStartTable"    # [Ljava/lang/String;

    .prologue
    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 474
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 475
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x5

    aput v3, v1, v2

    .line 476
    .local v1, "idx":[I
    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->h:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .end local v1    # "idx":[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "attrValueTable"    # [Ljava/lang/String;

    .prologue
    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 489
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 490
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit16 v3, v0, 0x85

    aput v3, v1, v2

    .line 491
    .local v1, "idx":[I
    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->i:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .end local v1    # "idx":[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_1
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p2, :cond_0

    const-string p2, "UTF-8"

    .end local p2    # "encoding":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->m:Ljava/lang/String;

    .line 219
    iput-object p1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->b:Ljava/io/OutputStream;

    .line 221
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    .line 222
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->d:Ljava/io/ByteArrayOutputStream;

    .line 225
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 213
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wbxml requires an OutputStream!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "nsp"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "tagTable"    # [Ljava/lang/String;

    .prologue
    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 456
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 457
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x5

    aput v3, v1, v2

    .line 458
    .local v1, "idx":[I
    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->j:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .end local v1    # "idx":[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_1
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->b:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 240
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->b:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 244
    if-eqz p1, :cond_0

    .line 245
    iput-object p1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->m:Ljava/lang/String;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->b:Ljava/io/OutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->b:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 253
    :cond_2
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NSP NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->checkPending(Z)V

    .line 266
    iput-object p2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->e:Ljava/lang/String;

    .line 267
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->f:I

    .line 269
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->checkPending(Z)V

    .line 285
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/lang/String;)V

    .line 287
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->checkPending(Z)V

    .line 276
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/lang/String;)V

    .line 278
    return-object p0
.end method

.method public writeWapExtension(ILjava/lang/Object;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->checkPending(Z)V

    .line 360
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 361
    sparse-switch p1, :sswitch_data_0

    .line 386
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 368
    :sswitch_0
    check-cast p2, [B

    .end local p2    # "data":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 369
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/io/OutputStream;I)V

    .line 370
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 388
    .end local v0    # "bytes":[B
    :goto_0
    :sswitch_1
    return-void

    .line 376
    .restart local p2    # "data":Ljava/lang/Object;
    :sswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->c:Ljava/io/ByteArrayOutputStream;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, v1, p2}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    .restart local p2    # "data":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2, v2}, Lcom/lenovo/safecenter/mmsutils/WbxmlSerializer;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 361
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x82 -> :sswitch_3
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_0
    .end sparse-switch
.end method
