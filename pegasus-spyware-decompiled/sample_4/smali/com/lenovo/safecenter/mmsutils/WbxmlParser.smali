.class public Lcom/lenovo/safecenter/mmsutils/WbxmlParser;
.super Ljava/lang/Object;
.source "WbxmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field public static final ERR_TAG:Ljava/lang/String; = "WbxmlParser.java"

.field public static final WAP_EXTENSION:I = 0x40


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private a:Ljava/io/InputStream;

.field private b:I

.field private c:I

.field private d:I

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[B

.field private i:Ljava/util/Hashtable;

.field private j:Z

.field private k:I

.field private l:[Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:[I

.field private o:I

.field private p:[Ljava/lang/String;

.field private q:I

.field private r:Ljava/util/Vector;

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/Object;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->b:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->c:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->i:Ljava/util/Hashtable;

    .line 44
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->l:[Ljava/lang/String;

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->n:[I

    .line 49
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    .line 50
    const/4 v0, -0x2

    iput v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->q:I

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->r:Ljava/util/Vector;

    return-void
.end method

.method private a([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "tab"    # [Ljava/lang/String;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 868
    and-int/lit8 v1, p2, 0x7f

    add-int/lit8 v0, v1, -0x5

    .line 869
    .local v0, "idx":I
    if-ne v0, v2, :cond_0

    .line 870
    iput v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->z:I

    .line 871
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 881
    :goto_0
    return-object v1

    .line 873
    :cond_0
    if-ltz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 877
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undef."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 879
    :cond_2
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->z:I

    .line 881
    aget-object v1, p1, v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 8
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 887
    const/4 v4, 0x2

    iput v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    .line 888
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->g:[Ljava/lang/String;

    and-int/lit8 v6, p1, 0x3f

    invoke-direct {p0, v4, v6}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    .line 890
    iput v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    .line 891
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->readAttr()V

    .line 895
    :cond_0
    and-int/lit8 v4, p1, 0x40

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->B:Z

    .line 897
    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    shl-int/lit8 v3, v4, 0x2

    .line 901
    .local v3, "sp":I
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->l:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-static {v4, v6}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->b([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->l:[Ljava/lang/String;

    .line 902
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->l:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x3

    iget-object v7, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 904
    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->n:[I

    array-length v6, v6

    if-lt v4, v6, :cond_1

    .line 905
    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    add-int/lit8 v4, v4, 0x4

    new-array v0, v4, [I

    .line 906
    .local v0, "bigger":[I
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->n:[I

    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->n:[I

    array-length v6, v6

    invoke-static {v4, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->n:[I

    .line 910
    .end local v0    # "bigger":[I
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->n:[I

    iget v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->n:[I

    iget v7, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 912
    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_5

    .line 913
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 914
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 916
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate Attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 913
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "sp":I
    :cond_3
    move v4, v5

    .line 895
    goto :goto_0

    .line 912
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "sp":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 922
    .end local v2    # "j":I
    :cond_5
    iget-boolean v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->j:Z

    if-eqz v4, :cond_6

    .line 923
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a()Z

    .line 927
    :goto_3
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->l:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->v:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 928
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->l:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->u:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 929
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->l:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 931
    return-void

    .line 925
    :cond_6
    const-string v4, ""

    iput-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->v:Ljava/lang/String;

    goto :goto_3
.end method

.method private final a(II[Ljava/lang/String;)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "type"    # I
    .param p3, "table"    # [Ljava/lang/String;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->h:[B

    if-eqz v0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setXxxTable must be called before setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->r:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_1

    .line 594
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->r:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->r:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    invoke-virtual {v0, p3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 597
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .param p1, "nr"    # I
    .param p2, "tags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->r:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 622
    :goto_0
    return-void

    .line 613
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->r:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Code Page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " undefined!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 616
    :cond_1
    if-eqz p2, :cond_2

    .line 617
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->r:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->b:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->g:[Ljava/lang/String;

    goto :goto_0

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->r:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->c:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e:[Ljava/lang/String;

    .line 620
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->r:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->f:[Ljava/lang/String;

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 605
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final a()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3a

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 472
    const/4 v0, 0x0

    .line 474
    .local v0, "any":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    shl-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_4

    .line 477
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 478
    .local v1, "attrName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 481
    .local v4, "cut":I
    if-eq v4, v12, :cond_1

    .line 482
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "prefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 492
    :goto_1
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 493
    const/4 v0, 0x1

    .line 474
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 485
    :cond_1
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 486
    move-object v7, v1

    .line 487
    .restart local v7    # "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_1

    .line 496
    :cond_2
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->n:[I

    iget v9, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 498
    .local v6, "j":I
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-static {v8, v9}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->b([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    .line 499
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 500
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 502
    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 504
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 510
    :cond_3
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x4

    iget-object v10, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    iget v11, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    add-int/lit8 v5, v5, -0x4

    goto :goto_2

    .line 521
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v4    # "cut":I
    .end local v6    # "j":I
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_9

    .line 522
    iget v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v5, v8, -0x4

    .line 523
    :goto_3
    if-ltz v5, :cond_9

    .line 526
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 527
    .restart local v1    # "attrName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 529
    .restart local v4    # "cut":I
    if-nez v4, :cond_5

    .line 530
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal attribute name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 536
    :cond_5
    if-eq v4, v12, :cond_8

    .line 537
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "attrPrefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "attrNs":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 545
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undefined Prefix: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 551
    :cond_6
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 552
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 553
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 555
    iget v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v6, v8, -0x4

    .line 556
    .restart local v6    # "j":I
    :goto_4
    if-le v6, v5, :cond_8

    .line 558
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 560
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicate Attribute: {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 557
    :cond_7
    add-int/lit8 v6, v6, -0x4

    goto :goto_4

    .line 524
    .end local v2    # "attrNs":Ljava/lang/String;
    .end local v3    # "attrPrefix":Ljava/lang/String;
    .end local v6    # "j":I
    :cond_8
    add-int/lit8 v5, v5, -0x4

    goto/16 :goto_3

    .line 569
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v4    # "cut":I
    :cond_9
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 571
    .restart local v4    # "cut":I
    if-nez v4, :cond_d

    .line 572
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal tag name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 578
    :cond_a
    :goto_5
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->u:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->v:Ljava/lang/String;

    .line 580
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->v:Ljava/lang/String;

    if-nez v8, :cond_c

    .line 581
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->u:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 582
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "undefined prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->u:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 583
    :cond_b
    const-string v8, ""

    iput-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->v:Ljava/lang/String;

    .line 586
    :cond_c
    return v0

    .line 573
    :cond_d
    if-eq v4, v12, :cond_a

    .line 574
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    invoke-virtual {v8, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->u:Ljava/lang/String;

    .line 575
    iget-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    goto :goto_5
.end method

.method private final b()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 629
    iget v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    if-ne v3, v4, :cond_0

    .line 630
    iget v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    .line 633
    :cond_0
    iget-boolean v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->B:Z

    if-eqz v3, :cond_1

    .line 634
    iput v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    .line 635
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->B:Z

    .line 717
    :goto_0
    return-void

    .line 639
    :cond_1
    iput-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    .line 640
    iput-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->u:Ljava/lang/String;

    .line 641
    iput-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    .line 643
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->c()I

    move-result v1

    .line 644
    .local v1, "id":I
    :goto_1
    if-nez v1, :cond_2

    .line 645
    iput v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->q:I

    .line 646
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d()I

    move-result v3

    invoke-direct {p0, v3, v7}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(IZ)V

    .line 647
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->c()I

    move-result v1

    goto :goto_1

    .line 649
    :cond_2
    iput v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->q:I

    .line 651
    sparse-switch v1, :sswitch_data_0

    .line 711
    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(I)V

    goto :goto_0

    .line 653
    :sswitch_0
    iput v7, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    goto :goto_0

    .line 658
    :sswitch_1
    iget v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v2, v3, 0x2

    .line 660
    .local v2, "sp":I
    iput v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    .line 661
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->l:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->v:Ljava/lang/String;

    .line 662
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->l:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->u:Ljava/lang/String;

    .line 663
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->l:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x2

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    goto :goto_0

    .line 669
    .end local v2    # "sp":I
    :sswitch_2
    const/4 v3, 0x6

    iput v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    .line 670
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e()I

    move-result v3

    int-to-char v0, v3

    .line 671
    .local v0, "c":C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    goto :goto_0

    .line 678
    .end local v0    # "c":C
    :sswitch_3
    iput v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    .line 679
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    goto/16 :goto_0

    .line 693
    :sswitch_4
    const/16 v3, 0x40

    iput v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    .line 694
    iput v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->z:I

    .line 695
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->y:Ljava/lang/Object;

    goto/16 :goto_0

    .line 699
    :sswitch_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PI curr. not supp."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 705
    :sswitch_6
    iput v8, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    .line 706
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->g()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    goto/16 :goto_0

    .line 651
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x40 -> :sswitch_4
        0x41 -> :sswitch_4
        0x42 -> :sswitch_4
        0x43 -> :sswitch_5
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_4
        0x83 -> :sswitch_6
        0xc0 -> :sswitch_4
        0xc1 -> :sswitch_4
        0xc2 -> :sswitch_4
        0xc3 -> :sswitch_4
    .end sparse-switch
.end method

.method private static b([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p0, "arr"    # [Ljava/lang/String;
    .param p1, "required"    # I

    .prologue
    const/4 v2, 0x0

    .line 936
    array-length v1, p0

    if-lt v1, p1, :cond_0

    .line 940
    .end local p0    # "arr":[Ljava/lang/String;
    :goto_0
    return-object p0

    .line 938
    .restart local p0    # "arr":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, p1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 939
    .local v0, "bigger":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 940
    goto :goto_0
.end method

.method private c()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->q:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 843
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->q:I

    .line 845
    :cond_0
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->q:I

    return v0
.end method

.method private d()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 944
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 945
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 946
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 947
    :cond_0
    return v0
.end method

.method private e()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    const/4 v1, 0x0

    .line 955
    .local v1, "result":I
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d()I

    move-result v0

    .line 956
    .local v0, "i":I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 958
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 960
    return v1
.end method

.method private f()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 965
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    .line 967
    .local v3, "wsp":Z
    :goto_0
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 968
    .local v1, "i":I
    if-nez v1, :cond_0

    .line 979
    iput-boolean v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->C:Z

    .line 980
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->D:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 981
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 982
    return-object v2

    .line 971
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 972
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 974
    :cond_1
    const/16 v4, 0x20

    if-le v1, v4, :cond_2

    .line 975
    const/4 v3, 0x0

    .line 977
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e()I

    move-result v2

    .line 990
    .local v2, "pos":I
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->i:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 992
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->i:Ljava/util/Hashtable;

    .line 994
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->i:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 995
    .local v1, "forReturn":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 997
    move v0, v2

    .line 998
    .local v0, "end":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->h:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->h:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1001
    :cond_1
    new-instance v1, Ljava/lang/String;

    .end local v1    # "forReturn":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->h:[B

    sub-int v4, v0, v2

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->D:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1002
    .restart local v1    # "forReturn":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->i:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    .end local v0    # "end":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 265
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    if-lt p1, v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 259
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    if-lt p1, v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 271
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    if-lt p1, v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 251
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 277
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    if-lt p1, v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 286
    iget v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x4

    .line 287
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 289
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 295
    :goto_1
    return-object v1

    .line 288
    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 295
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 299
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-boolean v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->j:Z

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 130
    :goto_0
    return-object v1

    .line 117
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 120
    :cond_1
    iget v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x2

    .line 121
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 123
    if-nez p1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 122
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 130
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->k:I

    if-le p1, v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->n:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->m:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x3

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    sget-object v5, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    if-ne v4, v6, :cond_8

    .line 145
    :cond_0
    iget-boolean v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->B:Z

    if-eqz v4, :cond_1

    .line 146
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    if-ne v4, v6, :cond_2

    .line 149
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    :cond_2
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->u:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :cond_3
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->w:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    shl-int/lit8 v1, v4, 0x2

    .line 156
    .local v1, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 157
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 139
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_5
    const-string v4, "unknown"

    goto/16 :goto_0

    .line 175
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "cnt":I
    .restart local v2    # "i":I
    :cond_6
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 189
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 177
    :cond_8
    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    .line 178
    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    .line 179
    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 180
    :cond_9
    iget-boolean v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->C:Z

    if-eqz v4, :cond_a

    .line 181
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 183
    :cond_a
    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_b

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 6
    .param p1, "poslen"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 214
    iget v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 215
    aput v3, p1, v3

    .line 216
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, p1, v5

    .line 217
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 218
    .local v0, "buf":[C
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 224
    .end local v0    # "buf":[C
    :goto_0
    return-object v0

    .line 222
    :cond_0
    aput v4, p1, v3

    .line 223
    aput v4, p1, v5

    .line 224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWapCode()I
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->z:I

    return v0
.end method

.method public getWapExtensionData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->y:Ljava/lang/Object;

    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 241
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 242
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->B:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 202
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 205
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->C:Z

    return v0
.end method

.method public next()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 308
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->C:Z

    .line 309
    const/16 v0, 0x270f

    .line 313
    .local v0, "minType":I
    :cond_0
    :sswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    .line 315
    .local v1, "save":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->b()V

    .line 317
    iget v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    if-ge v2, v0, :cond_1

    .line 318
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    .line 320
    :cond_1
    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 322
    if-lt v0, v4, :cond_3

    .line 324
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    if-nez v2, :cond_5

    .end local v1    # "save":Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    .line 326
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->c()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 340
    :cond_3
    iput v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    .line 342
    iget v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    if-le v2, v4, :cond_4

    .line 343
    iput v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    .line 345
    :cond_4
    iget v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    return v2

    .line 324
    .restart local v1    # "save":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 326
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x44 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0xc4 -> :sswitch_0
    .end sparse-switch
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->next()I

    .line 361
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->C:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->next()I

    .line 364
    :cond_0
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 365
    const-string v0, "unexpected type"

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 367
    :cond_1
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    iget v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 373
    const-string v1, "precondition: START_TAG"

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->next()I

    .line 379
    iget v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->next()I

    .line 386
    :goto_0
    iget v1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 387
    const-string v1, "END_TAG expected"

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 389
    :cond_1
    return-object v0

    .line 384
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->C:Z

    .line 352
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->b()V

    .line 353
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    return v0
.end method

.method public parseWapExtension(I)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 723
    sparse-switch p1, :sswitch_data_0

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 754
    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    .line 727
    :sswitch_1
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 732
    :sswitch_2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 741
    :sswitch_3
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e()I

    move-result v1

    .line 742
    .local v1, "count":I
    new-array v0, v1, [B

    .line 744
    .local v0, "buf":[B
    :goto_1
    if-lez v1, :cond_0

    .line 745
    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a:Ljava/io/InputStream;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 723
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x42 -> :sswitch_1
        0x80 -> :sswitch_2
        0x81 -> :sswitch_2
        0x82 -> :sswitch_2
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method public readAttr()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 760
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d()I

    move-result v3

    .line 761
    .local v3, "id":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .line 763
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    .line 765
    :goto_1
    if-nez v3, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(IZ)V

    .line 767
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d()I

    move-result v3

    goto :goto_1

    .line 770
    :cond_0
    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e:[Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 773
    .local v4, "name":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 775
    .local v0, "cut":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 776
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 783
    .local v5, "value":Ljava/lang/StringBuffer;
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d()I

    move-result v3

    .line 790
    :goto_3
    if-gt v3, v9, :cond_2

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/16 v6, 0x83

    if-eq v3, v6, :cond_2

    const/16 v6, 0x40

    if-lt v3, v6, :cond_1

    const/16 v6, 0x42

    if-le v3, v6, :cond_2

    :cond_1
    if-lt v3, v9, :cond_4

    const/16 v6, 0x82

    if-gt v3, v6, :cond_4

    .line 792
    :cond_2
    sparse-switch v3, :sswitch_data_0

    .line 823
    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->f:[Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 827
    :goto_4
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d()I

    move-result v3

    goto :goto_3

    .line 778
    .end local v5    # "value":Ljava/lang/StringBuffer;
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 780
    .restart local v5    # "value":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 794
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(IZ)V

    goto :goto_4

    .line 798
    :sswitch_1
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 802
    :sswitch_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 815
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 819
    :sswitch_4
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 830
    :cond_4
    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x4

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->b([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    .line 832
    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const-string v7, ""

    aput-object v7, v6, v2

    .line 833
    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 834
    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-object v4, v6, v2

    .line 835
    iget-object v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->p:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 837
    iget v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->o:I

    goto/16 :goto_0

    .line 839
    .end local v0    # "cut":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/StringBuffer;
    :cond_5
    return-void

    .line 792
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x40 -> :sswitch_3
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x82 -> :sswitch_3
        0x83 -> :sswitch_4
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->A:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 399
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_3

    const-string v0, "WAP Ext."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 401
    :cond_2
    return-void

    .line 399
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 853
    instance-of v3, p2, [B

    if-eqz v3, :cond_1

    .line 854
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 855
    .local v2, "sb":Ljava/lang/StringBuffer;
    check-cast p2, [B

    .end local p2    # "data":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 857
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 858
    const-string v3, "0123456789abcdef"

    aget-byte v4, v0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 859
    const-string v3, "0123456789abcdef"

    aget-byte v4, v0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 864
    .end local v0    # "b":[B
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    .restart local p2    # "data":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "table"    # [Ljava/lang/String;

    .prologue
    .line 1031
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->c:I

    invoke-direct {p0, p1, v0, p2}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(II[Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "table"    # [Ljava/lang/String;

    .prologue
    .line 1043
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d:I

    invoke-direct {p0, p1, v0, p2}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(II[Ljava/lang/String;)V

    .line 1044
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 456
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iput-boolean p2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->j:Z

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 411
    iput-object p1, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a:Ljava/io/InputStream;

    .line 414
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->d()I

    move-result v4

    iput v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->s:I

    .line 415
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e()I

    move-result v4

    iput v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->t:I

    .line 417
    iget v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->t:I

    if-nez v4, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e()I

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e()I

    move-result v0

    .line 422
    .local v0, "charset":I
    if-nez p2, :cond_2

    .line 423
    sparse-switch v0, :sswitch_data_0

    .line 429
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v0    # "charset":I
    :catch_0
    move-exception v4

    const-string v4, "Illegal input format"

    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 452
    :goto_0
    return-void

    .line 424
    .restart local v0    # "charset":I
    :sswitch_0
    :try_start_1
    const-string v4, "ISO-8859-1"

    iput-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->D:Ljava/lang/String;

    .line 435
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->e()I

    move-result v3

    .line 436
    .local v3, "strTabSize":I
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->h:[B

    .line 438
    const/4 v2, 0x0

    .line 439
    .local v2, "ok":I
    :goto_2
    if-ge v2, v3, :cond_1

    .line 440
    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->h:[B

    sub-int v5, v3, v2

    invoke-virtual {p1, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 441
    .local v1, "cnt":I
    if-gtz v1, :cond_3

    .line 445
    .end local v1    # "cnt":I
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(IZ)V

    .line 446
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(IZ)V

    goto :goto_0

    .line 425
    .end local v2    # "ok":I
    .end local v3    # "strTabSize":I
    :sswitch_1
    const-string v4, "UTF-8"

    iput-object v4, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->D:Ljava/lang/String;

    goto :goto_1

    .line 432
    :cond_2
    iput-object p2, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->D:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 442
    .restart local v1    # "cnt":I
    .restart local v2    # "ok":I
    .restart local v3    # "strTabSize":I
    :cond_3
    add-int/2addr v2, v1

    .line 443
    goto :goto_2

    .line 423
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6a -> :sswitch_1
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 405
    const-string v0, "InputStream required"

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "table"    # [Ljava/lang/String;

    .prologue
    .line 1013
    iget v0, p0, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->b:I

    invoke-direct {p0, p1, v0, p2}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->a(II[Ljava/lang/String;)V

    .line 1018
    return-void
.end method
