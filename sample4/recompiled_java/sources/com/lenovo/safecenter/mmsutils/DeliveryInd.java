package com.lenovo.safecenter.mmsutils;

public class DeliveryInd extends GenericPdu {
    public DeliveryInd() throws InvalidHeaderValueException {
        setMessageType(134);
    }

    DeliveryInd(TyuMMSHeaders headers) {
        super(headers);
    }

    public long getDate() {
        return this.a.getLongInteger(133);
    }

    public void setDate(long value) {
        this.a.setLongInteger(value, 133);
    }

    public byte[] getMessageId() {
        return this.a.getTextString(139);
    }

    public void setMessageId(byte[] value) {
        this.a.setTextString(value, 139);
    }

    public int getStatus() {
        return this.a.getOctet(149);
    }

    public void setStatus(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 149);
    }

    public TyuEncodedStringValue[] getTo() {
        return this.a.getEncodedStringValues(151);
    }

    public void setTo(TyuEncodedStringValue[] value) {
        this.a.setEncodedStringValues(value, 151);
    }
}
