.class public Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;
.super Ljava/lang/Object;
.source "HwDcdWapPushParser.java"


# static fields
.field public static final ERR_TAG:Ljava/lang/String; = "HwDcdWapPushParser.java"

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static i:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/io/ByteArrayInputStream;

.field private b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

.field private c:Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "si"

    aput-object v1, v0, v3

    const-string v1, "indication"

    aput-object v1, v0, v4

    const-string v1, "info"

    aput-object v1, v0, v5

    const-string v1, "item"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->d:[Ljava/lang/String;

    .line 170
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "action=signal-none"

    aput-object v1, v0, v3

    const-string v1, "action=signal-low"

    aput-object v1, v0, v4

    const-string v1, "action=signal-medium"

    aput-object v1, v0, v5

    const-string v1, "action=signal-high"

    aput-object v1, v0, v6

    const-string v1, "action=signal-delete"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "href"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "href=http://"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "href=http://www."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "href=https://"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "href=https://www."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "si-expires"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "si-id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "class"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->e:[Ljava/lang/String;

    .line 189
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sl"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->f:[Ljava/lang/String;

    .line 193
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "action=execute-low"

    aput-object v1, v0, v3

    const-string v1, "action=execute-high"

    aput-object v1, v0, v4

    const-string v1, "action=cache"

    aput-object v1, v0, v5

    const-string v1, "href"

    aput-object v1, v0, v6

    const-string v1, "href=http://"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "href=http://www."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "href=https://"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "href=https://www."

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->g:[Ljava/lang/String;

    .line 205
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, ".com/"

    aput-object v1, v0, v3

    const-string v1, ".edu/"

    aput-object v1, v0, v4

    const-string v1, ".net/"

    aput-object v1, v0, v5

    const-string v1, ".org/"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->h:[Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->i:Ljava/util/Hashtable;

    .line 215
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->i:Ljava/util/Hashtable;

    const-string v1, "action"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_PRIOR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->i:Ljava/util/Hashtable;

    const-string v1, "href"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_HREF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->i:Ljava/util/Hashtable;

    const-string v1, "si-expires"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_SI_EXPIRED:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->i:Ljava/util/Hashtable;

    const-string v1, "created"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_SI_CREATED:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->i:Ljava/util/Hashtable;

    const-string v1, "si-id"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_SI_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->j:Ljava/util/Hashtable;

    .line 225
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->j:Ljava/util/Hashtable;

    const-string v1, "signal-none"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_NONE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->j:Ljava/util/Hashtable;

    const-string v1, "signal-low"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_LOW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->j:Ljava/util/Hashtable;

    const-string v1, "signal-medium"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_MEDIUM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->j:Ljava/util/Hashtable;

    const-string v1, "signal-high"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_HIGH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->j:Ljava/util/Hashtable;

    const-string v1, "signal-delete"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_DELETE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->j:Ljava/util/Hashtable;

    const-string v1, "execute-low"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_LOW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->j:Ljava/util/Hashtable;

    const-string v1, "execute-high"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_HIGH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->j:Ljava/util/Hashtable;

    const-string v1, "cache"

    sget v2, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_CACHE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "pushDataStream"    # [B

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->a:Ljava/io/ByteArrayInputStream;

    .line 27
    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    .line 28
    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->c:Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;

    .line 35
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->a:Ljava/io/ByteArrayInputStream;

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 134
    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getAttributeCount()I

    move-result v1

    .line 135
    .local v1, "attrCount":I
    const/4 v2, 0x0

    .line 136
    .local v2, "attrName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 138
    .local v3, "attrValue":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->f:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->d:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->d:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 141
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 143
    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string v5, "WapPushParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attrName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", attrValue ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v5, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->i:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    sget-object v5, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->i:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    .local v0, "attr":I
    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->c:Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;

    invoke-virtual {v5, v0, v3}, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->setAttributeValue(ILjava/lang/String;)V

    .line 141
    .end local v0    # "attr":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v4    # "i":I
    :cond_2
    const-string v5, "WapPushParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    return-void
.end method


# virtual methods
.method public parse(I)Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 45
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->a:Ljava/io/ByteArrayInputStream;

    if-nez v3, :cond_0

    .line 48
    const-string v3, "WapPushParser"

    const-string v4, "mWapPushDataStream is not set!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-object v2

    .line 52
    :cond_0
    new-instance v3, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;

    invoke-direct {v3, p1}, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;-><init>(I)V

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->c:Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;

    .line 54
    sget v3, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_TYPE_SI:I

    if-ne v3, p1, :cond_2

    .line 55
    new-instance v3, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-direct {v3}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;-><init>()V

    sget-object v4, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->d:[Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v4, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->e:[Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    sget-object v4, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->h:[Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    .line 64
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    iget-object v4, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->a:Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 66
    const-string v3, "WapPushParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document charset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getEventType()I

    move-result v1

    .line 70
    .local v1, "eventType":I
    :goto_2
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    .line 72
    packed-switch v1, :pswitch_data_0

    .line 93
    const-string v3, "WapPushParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown event type =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->next()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_2

    .line 56
    .end local v1    # "eventType":I
    :cond_2
    sget v3, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_TYPE_SL:I

    if-ne v3, p1, :cond_3

    .line 57
    new-instance v3, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-direct {v3}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;-><init>()V

    sget-object v4, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->f:[Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v4, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->g:[Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    sget-object v4, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->h:[Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    goto :goto_1

    .line 59
    :cond_3
    const-string v3, "WapPushParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wap push unknown type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 74
    .restart local v1    # "eventType":I
    :pswitch_0
    :try_start_1
    const-string v3, "WapPushParser"

    const-string v4, "Start document"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 100
    .end local v1    # "eventType":I
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "WapPushParser"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    :pswitch_1
    :try_start_2
    const-string v3, "WapPushParser"

    const-string v4, "End document"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 106
    .end local v1    # "eventType":I
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "WapPushParser"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "eventType":I
    :pswitch_2
    :try_start_3
    const-string v3, "WapPushParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 84
    :pswitch_3
    const-string v3, "WapPushParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 87
    :pswitch_4
    const-string v3, "WapPushParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget v3, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_TYPE_SI:I

    if-ne v3, p1, :cond_1

    .line 89
    iget-object v3, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->c:Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;

    sget v4, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_SI_TEXT:I

    iget-object v5, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->b:Lcom/lenovo/safecenter/mmsutils/WbxmlParser;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/mmsutils/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->setAttributeValue(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 114
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->c:Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;

    goto/16 :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
