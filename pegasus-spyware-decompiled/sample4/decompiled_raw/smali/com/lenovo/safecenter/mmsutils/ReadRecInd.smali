.class public Lcom/lenovo/safecenter/mmsutils/ReadRecInd;
.super Lcom/lenovo/safecenter/mmsutils/GenericPdu;
.source "ReadRecInd.java"


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;[BII[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 1
    .param p1, "from"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .param p2, "messageId"    # [B
    .param p3, "mmsVersion"    # I
    .param p4, "readStatus"    # I
    .param p5, "to"    # [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>()V

    .line 40
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->setMessageType(I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->setFrom(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->setMessageId([B)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->setMmsVersion(I)V

    .line 44
    invoke-virtual {p0, p5}, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->setTo([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V

    .line 45
    invoke-virtual {p0, p4}, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->setReadStatus(I)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageId()[B
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getReadStatus()I
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTo()[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValues(I)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setDate(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setLongInteger(JI)V

    .line 73
    return-void
.end method

.method public final setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 92
    return-void
.end method

.method public final setReadStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 130
    return-void
.end method

.method public final setTo([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValues([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 111
    return-void
.end method
