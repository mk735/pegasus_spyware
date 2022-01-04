.class public Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;
.super Lcom/lenovo/safecenter/mmsutils/GenericPdu;
.source "AcknowledgeInd.java"


# static fields
.field public static final ERR_TAG:Ljava/lang/String; = "AcknowledgeInd.java"


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "mmsVersion"    # I
    .param p2, "transactionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>()V

    .line 39
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;->setMessageType(I)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;->setMmsVersion(I)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;->setTransactionId([B)V

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getReportAllowed()I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

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
    .line 69
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 70
    return-void
.end method

.method public final setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    .line 89
    return-void
.end method
