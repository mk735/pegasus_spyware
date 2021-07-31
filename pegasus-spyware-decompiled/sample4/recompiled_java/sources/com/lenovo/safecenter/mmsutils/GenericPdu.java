package com.lenovo.safecenter.mmsutils;

public class GenericPdu {
    TyuMMSHeaders a;

    public GenericPdu() {
        this.a = null;
        this.a = new TyuMMSHeaders();
    }

    GenericPdu(TyuMMSHeaders headers) {
        this.a = null;
        this.a = headers;
    }

    public int getMessageType() {
        return this.a.getOctet(140);
    }

    public void setMessageType(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 140);
    }

    public int getMmsVersion() {
        return this.a.getOctet(141);
    }

    public void setMmsVersion(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 141);
    }

    public TyuEncodedStringValue getFrom() {
        return this.a.getEncodedStringValue(137);
    }

    public void setFrom(TyuEncodedStringValue value) {
        this.a.setEncodedStringValue(value, 137);
    }
}
