.class public Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;
.super Lcom/lenovo/safecenter/mmsutils/GenericPdu;
.source "MultimediaMessagePdu.java"


# instance fields
.field private b:Lcom/lenovo/safecenter/mmsutils/TyuPduBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;Lcom/lenovo/safecenter/mmsutils/TyuPduBody;)V
    .locals 0
    .param p1, "header"    # Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;
    .param p2, "body"    # Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .line 46
    iput-object p2, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->b:Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    .line 47
    return-void
.end method


# virtual methods
.method public addTo(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->appendEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 112
    return-void
.end method

.method public getBody()Lcom/lenovo/safecenter/mmsutils/TyuPduBody;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->b:Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getSubject()Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValue(I)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTo()[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValues(I)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lcom/lenovo/safecenter/mmsutils/TyuPduBody;)V
    .locals 0
    .param p1, "body"    # Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->b:Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    .line 74
    return-void
.end method

.method public setDate(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setLongInteger(JI)V

    .line 149
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 131
    return-void
.end method

.method public setSubject(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 93
    return-void
.end method
