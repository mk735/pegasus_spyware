package com.lenovo.safecenter.mmsutils;

public class AcknowledgeInd extends GenericPdu {
    public static final String ERR_TAG = "AcknowledgeInd.java";

    public AcknowledgeInd(int mmsVersion, byte[] transactionId) throws InvalidHeaderValueException {
        setMessageType(133);
        setMmsVersion(mmsVersion);
        setTransactionId(transactionId);
    }

    AcknowledgeInd(TyuMMSHeaders headers) {
        super(headers);
    }

    public int getReportAllowed() {
        return this.a.getOctet(145);
    }

    public void setReportAllowed(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 145);
    }

    public byte[] getTransactionId() {
        return this.a.getTextString(152);
    }

    public final void setTransactionId(byte[] value) {
        this.a.setTextString(value, 152);
    }
}
