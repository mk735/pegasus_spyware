.class public Lcom/lenovo/feedback2/message/BasicMessageBuilder;
.super Ljava/lang/Object;
.source "BasicMessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "FeedBackService"

    sput-object v0, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "protocolVersion"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->b:I

    .line 26
    iput p1, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->b:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->c:Ljava/util/Map;

    .line 28
    return-void
.end method


# virtual methods
.method public addBinary(Ljava/lang/Enum;[B)Lcom/lenovo/feedback2/message/BasicMessageBuilder;
    .locals 2
    .param p2, "binaryData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<+",
            "Lcom/lenovo/feedback2/message/protocol/HeaderNames;",
            ">;[B)",
            "Lcom/lenovo/feedback2/message/BasicMessageBuilder;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "tag":Ljava/lang/Enum;, "Ljava/lang/Enum<+Lcom/lenovo/feedback2/message/protocol/HeaderNames;>;"
    iget-object v0, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object p0
.end method

.method public addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;
    .locals 1
    .param p2, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<+",
            "Lcom/lenovo/feedback2/message/protocol/HeaderNames;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lenovo/feedback2/message/BasicMessageBuilder;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "tag":Ljava/lang/Enum;, "Ljava/lang/Enum<+Lcom/lenovo/feedback2/message/protocol/HeaderNames;>;"
    const-string v0, "utf-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    .line 37
    return-object p0
.end method

.method public addString(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;
    .locals 4
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<+",
            "Lcom/lenovo/feedback2/message/protocol/HeaderNames;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lenovo/feedback2/message/BasicMessageBuilder;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "tag":Ljava/lang/Enum;, "Ljava/lang/Enum<+Lcom/lenovo/feedback2/message/protocol/HeaderNames;>;"
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 50
    .local v0, "data":[B
    iget-object v2, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "data":[B
    :goto_0
    return-object p0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->a:Ljava/lang/String;

    const-string v3, "BasicMessageBuilder::addString encoding fail"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public build()Lcom/lenovo/feedback2/message/Message;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 72
    new-instance v5, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;

    const/4 v10, 0x0

    invoke-direct {v5, p0, v10}, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;-><init>(Lcom/lenovo/feedback2/message/BasicMessageBuilder;B)V

    .line 74
    .local v5, "headerBuilder":Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v1, "dataStream":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 76
    .local v9, "offset":I
    iget-object v10, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->c:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {v5}, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;->a()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 111
    .local v4, "header":Ljava/lang/String;
    new-instance v8, Lcom/lenovo/feedback2/message/Message;

    invoke-direct {v8}, Lcom/lenovo/feedback2/message/Message;-><init>()V

    .line 112
    .local v8, "message":Lcom/lenovo/feedback2/message/Message;
    iget v10, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->b:I

    invoke-virtual {v8, v10}, Lcom/lenovo/feedback2/message/Message;->setVersion(I)V

    .line 113
    invoke-virtual {v8, v4}, Lcom/lenovo/feedback2/message/Message;->setHeader(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/lenovo/feedback2/message/Message;->setData([B)V

    .line 115
    .end local v4    # "header":Ljava/lang/String;
    .end local v8    # "message":Lcom/lenovo/feedback2/message/Message;
    :goto_1
    return-object v8

    .line 77
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 78
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 79
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 82
    .local v0, "data":[B
    :try_start_1
    array-length v10, v0

    int-to-long v10, v10

    invoke-virtual {v5, v7, v10, v11, v9}, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;->a(Ljava/lang/String;JI)Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;

    .line 83
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 84
    array-length v10, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/2addr v9, v10

    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->a:Ljava/lang/String;

    const-string v11, "BasicMessageBuilder::build write data to stream err"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    goto :goto_1

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 93
    .local v2, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->a:Ljava/lang/String;

    const-string v11, "BasicMessageBuilder::build write key to json err"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v10

    goto :goto_1

    .line 106
    .end local v0    # "data":[B
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v7    # "key":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 107
    .restart local v2    # "e":Lorg/json/JSONException;
    sget-object v10, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->a:Ljava/lang/String;

    const-string v11, "BasicMessageBuilder::build make json header fail"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
