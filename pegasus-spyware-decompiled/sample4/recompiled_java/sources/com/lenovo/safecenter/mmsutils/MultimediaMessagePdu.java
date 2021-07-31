package com.lenovo.safecenter.mmsutils;

public class MultimediaMessagePdu extends GenericPdu {
    private TyuPduBody b;

    public MultimediaMessagePdu() {
    }

    public MultimediaMessagePdu(TyuMMSHeaders header, TyuPduBody body) {
        super(header);
        this.b = body;
    }

    public TyuPduBody getBody() {
        return this.b;
    }

    public void setBody(TyuPduBody body) {
        this.b = body;
    }

    public TyuEncodedStringValue getSubject() {
        return this.a.getEncodedStringValue(150);
    }

    public void setSubject(TyuEncodedStringValue value) {
        this.a.setEncodedStringValue(value, 150);
    }

    public TyuEncodedStringValue[] getTo() {
        return this.a.getEncodedStringValues(151);
    }

    public void addTo(TyuEncodedStringValue value) {
        this.a.appendEncodedStringValue(value, 151);
    }

    public int getPriority() {
        return this.a.getOctet(143);
    }

    public void setPriority(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 143);
    }

    public long getDate() {
        return this.a.getLongInteger(133);
    }

    public void setDate(long value) {
        this.a.setLongInteger(value, 133);
    }
}
