.class public Lcom/lenovo/safecenter/mmsutils/SendReq;
.super Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;
.source "SendReq.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;-><init>()V

    .line 30
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/mmsutils/SendReq;->setMessageType(I)V

    .line 31
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/mmsutils/SendReq;->setMmsVersion(I)V

    .line 34
    const-string v1, "application/vnd.wap.multipart.related"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/mmsutils/SendReq;->setContentType([B)V

    .line 35
    new-instance v1, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/mmsutils/SendReq;->setFrom(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/mmsutils/SendReq;->setTransactionId([B)V
    :try_end_0
    .catch Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
    const-string v1, "SendReq"

    const-string v2, "Unexpected InvalidHeaderValueException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;Lcom/lenovo/safecenter/mmsutils/TyuPduBody;)V
    .locals 0
    .param p1, "headers"    # Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;
    .param p2, "body"    # Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;Lcom/lenovo/safecenter/mmsutils/TyuPduBody;)V

    .line 88
    return-void
.end method

.method public constructor <init>([BLcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I[B)V
    .locals 1
    .param p1, "contentType"    # [B
    .param p2, "from"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .param p3, "mmsVersion"    # I
    .param p4, "transactionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/MultimediaMessagePdu;-><init>()V

    .line 64
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/mmsutils/SendReq;->setMessageType(I)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/mmsutils/SendReq;->setContentType([B)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/mmsutils/SendReq;->setFrom(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V

    .line 67
    invoke-virtual {p0, p3}, Lcom/lenovo/safecenter/mmsutils/SendReq;->setMmsVersion(I)V

    .line 68
    invoke-virtual {p0, p4}, Lcom/lenovo/safecenter/mmsutils/SendReq;->setTransactionId([B)V

    .line 69
    return-void
.end method


# virtual methods
.method public addBcc(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->appendEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 107
    return-void
.end method

.method public addCc(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->appendEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 136
    return-void
.end method

.method public getBcc()[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValues(I)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getCc()[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValues(I)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()[B
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryReport()I
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getExpiry()J
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageClass()[B
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageSize()J
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadReport()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setBcc([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValues([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 117
    return-void
.end method

.method public setCc([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValues([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 146
    return-void
.end method

.method public final setContentType([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 165
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
    .line 183
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 184
    return-void
.end method

.method public setExpiry(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setLongInteger(JI)V

    .line 205
    return-void
.end method

.method public setMessageClass([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 246
    return-void
.end method

.method public setMessageSize(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setLongInteger(JI)V

    .line 225
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
    .line 264
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 265
    return-void
.end method

.method public setTo([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValues([Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 275
    return-void
.end method

.method public final setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendReq;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 294
    return-void
.end method
