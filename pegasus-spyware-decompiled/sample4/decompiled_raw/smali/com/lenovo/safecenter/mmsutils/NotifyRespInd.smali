.class public Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;
.super Lcom/lenovo/safecenter/mmsutils/GenericPdu;
.source "NotifyRespInd.java"


# direct methods
.method public constructor <init>(I[BI)V
    .locals 1
    .param p1, "mmsVersion"    # I
    .param p2, "transactionId"    # [B
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>()V

    .line 40
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;->setMessageType(I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;->setMmsVersion(I)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;->setTransactionId([B)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;->setStatus(I)V

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getReportAllowed()I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setReportAllowed(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 73
    return-void
.end method

.method public final setStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 84
    return-void
.end method

.method public final setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 113
    return-void
.end method
