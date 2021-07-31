.class public Lcom/lenovo/safecenter/mmsutils/DeliveryInd;
.super Lcom/lenovo/safecenter/mmsutils/GenericPdu;
.source "DeliveryInd.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>()V

    .line 36
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;->setMessageType(I)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageId()[B
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTo()[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValues(I)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setDate(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setLongInteger(JI)V

    .line 64
    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 83
    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 102
    return-void
.end method

.method public setTo([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValues([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 121
    return-void
.end method
