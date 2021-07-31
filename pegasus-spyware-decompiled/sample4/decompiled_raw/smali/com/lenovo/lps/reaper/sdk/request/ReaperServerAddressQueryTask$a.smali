.class final Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ReaperServerAddressQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->a:Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->c:J

    return-wide v0
.end method

.method public final characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 227
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "Address"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->d:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 245
    return-void

    .line 241
    :cond_1
    const-string v0, "TTL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->c:J

    goto :goto_0
.end method

.method public final startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->b:Ljava/util/List;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->d:Ljava/lang/StringBuilder;

    .line 257
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 269
    return-void
.end method
