.class public Lcom/lenovo/safecenter/mmsutils/RetrieveConf;
.super Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;
.source "RetrieveConf.java"


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
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;-><init>()V

    .line 36
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->setMessageType(I)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;Lcom/lenovo/safecenter/mmsutils/TyuPduBody;)V
    .locals 0
    .param p1, "headers"    # Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;
    .param p2, "body"    # Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;Lcom/lenovo/safecenter/mmsutils/TyuPduBody;)V

    .line 56
    return-void
.end method


# virtual methods
.method public addCc(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->appendEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 75
    return-void
.end method

.method public getCc()[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValues(I)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()[B
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryReport()I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getFrom()Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValue(I)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()[B
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()[B
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getReadReport()I
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getRetrieveStatus()I
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getRetrieveText()Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValue(I)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setContentType([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 94
    return-void
.end method

.method public setDeliveryReport(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 113
    return-void
.end method

.method public setFrom(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 134
    return-void
.end method

.method public setMessageClass([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 155
    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 174
    return-void
.end method

.method public setReadReport(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 193
    return-void
.end method

.method public setRetrieveStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x99

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 212
    return-void
.end method

.method public setRetrieveText(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x9a

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 231
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 250
    return-void
.end method
