.class public Lcom/lenovo/safecenter/mmsutils/SendConf;
.super Lcom/lenovo/safecenter/mmsutils/GenericPdu;
.source "SendConf.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>()V

    .line 33
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/mmsutils/SendConf;->setMessageType(I)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getMessageId()[B
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 62
    return-void
.end method

.method public setResponseStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x92

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 81
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/SendConf;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 100
    return-void
.end method
