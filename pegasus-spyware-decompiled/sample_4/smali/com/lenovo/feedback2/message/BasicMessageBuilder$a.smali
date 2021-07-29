.class final Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;
.super Ljava/lang/Object;
.source "BasicMessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/feedback2/message/BasicMessageBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/feedback2/message/BasicMessageBuilder;

.field private b:Lorg/json/JSONStringer;


# direct methods
.method private constructor <init>(Lcom/lenovo/feedback2/message/BasicMessageBuilder;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;->a:Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/feedback2/message/BasicMessageBuilder;B)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;-><init>(Lcom/lenovo/feedback2/message/BasicMessageBuilder;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JI)Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "dataLength"    # J
    .param p4, "dataOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;->b:Lorg/json/JSONStringer;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    iput-object v0, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;->b:Lorg/json/JSONStringer;

    .line 124
    iget-object v0, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;->b:Lorg/json/JSONStringer;

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;->b:Lorg/json/JSONStringer;

    invoke-virtual {v0, p1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    .line 130
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 132
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lenovo/feedback2/message/BasicMessageBuilder$a;->b:Lorg/json/JSONStringer;

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
