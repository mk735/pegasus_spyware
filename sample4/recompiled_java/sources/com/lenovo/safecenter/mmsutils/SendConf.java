package com.lenovo.safecenter.mmsutils;

public class SendConf extends GenericPdu {
    public SendConf() throws InvalidHeaderValueException {
        setMessageType(129);
    }

    SendConf(TyuMMSHeaders headers) {
        super(headers);
    }

    public byte[] getMessageId() {
        return this.a.getTextString(139);
    }

    public void setMessageId(byte[] value) {
        this.a.setTextString(value, 139);
    }

    public int getResponseStatus() {
        return this.a.getOctet(146);
    }

    public void setResponseStatus(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 146);
    }

    public byte[] getTransactionId() {
        return this.a.getTextString(152);
    }

    public void setTransactionId(byte[] value) {
        this.a.setTextString(value, 152);
    }
}
