.class public Lcom/lenovo/safecenter/mmsutils/GenericPdu;
.super Ljava/lang/Object;
.source "GenericPdu.java"


# instance fields
.field a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .line 31
    new-instance v0, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    invoke-direct {v0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V
    .locals 1
    .param p1, "headers"    # Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .line 40
    iput-object p1, p0, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .line 41
    return-void
.end method


# virtual methods
.method public getFrom()Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValue(I)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getMmsVersion()I
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public setFrom(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V

    .line 111
    return-void
.end method

.method public setMessageType(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 70
    return-void
.end method

.method public setMmsVersion(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->a:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V

    .line 90
    return-void
.end method
