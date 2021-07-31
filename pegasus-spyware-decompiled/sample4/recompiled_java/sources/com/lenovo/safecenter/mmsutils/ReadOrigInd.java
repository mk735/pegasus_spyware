package com.lenovo.safecenter.mmsutils;

public class ReadOrigInd extends GenericPdu {
    public ReadOrigInd() throws InvalidHeaderValueException {
        setMessageType(136);
    }

    ReadOrigInd(TyuMMSHeaders headers) {
        super(headers);
    }

    public long getDate() {
        return this.a.getLongInteger(133);
    }

    public void setDate(long value) {
        this.a.setLongInteger(value, 133);
    }

    @Override // com.lenovo.safecenter.mmsutils.GenericPdu
    public TyuEncodedStringValue getFrom() {
        return this.a.getEncodedStringValue(137);
    }

    @Override // com.lenovo.safecenter.mmsutils.GenericPdu
    public void setFrom(TyuEncodedStringValue value) {
        this.a.setEncodedStringValue(value, 137);
    }

    public byte[] getMessageId() {
        return this.a.getTextString(139);
    }

    public void setMessageId(byte[] value) {
        this.a.setTextString(value, 139);
    }

    public int getReadStatus() {
        return this.a.getOctet(155);
    }

    public void setReadStatus(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 155);
    }

    public TyuEncodedStringValue[] getTo() {
        return this.a.getEncodedStringValues(151);
    }

    public void setTo(TyuEncodedStringValue[] value) {
        this.a.setEncodedStringValues(value, 151);
    }
}
