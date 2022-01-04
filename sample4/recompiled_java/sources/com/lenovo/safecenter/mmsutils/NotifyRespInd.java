package com.lenovo.safecenter.mmsutils;

public class NotifyRespInd extends GenericPdu {
    public NotifyRespInd(int mmsVersion, byte[] transactionId, int status) throws InvalidHeaderValueException {
        setMessageType(131);
        setMmsVersion(mmsVersion);
        setTransactionId(transactionId);
        setStatus(status);
    }

    NotifyRespInd(TyuMMSHeaders headers) {
        super(headers);
    }

    public int getReportAllowed() {
        return this.a.getOctet(145);
    }

    public void setReportAllowed(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 145);
    }

    public final void setStatus(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 149);
    }

    public int getStatus() {
        return this.a.getOctet(149);
    }

    public byte[] getTransactionId() {
        return this.a.getTextString(152);
    }

    public final void setTransactionId(byte[] value) {
        this.a.setTextString(value, 152);
    }
}
