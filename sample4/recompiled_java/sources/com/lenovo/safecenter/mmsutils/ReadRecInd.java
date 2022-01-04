package com.lenovo.safecenter.mmsutils;

public class ReadRecInd extends GenericPdu {
    public ReadRecInd(TyuEncodedStringValue from, byte[] messageId, int mmsVersion, int readStatus, TyuEncodedStringValue[] to) throws InvalidHeaderValueException {
        setMessageType(135);
        setFrom(from);
        setMessageId(messageId);
        setMmsVersion(mmsVersion);
        setTo(to);
        setReadStatus(readStatus);
    }

    ReadRecInd(TyuMMSHeaders headers) {
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

    public final void setMessageId(byte[] value) {
        this.a.setTextString(value, 139);
    }

    public TyuEncodedStringValue[] getTo() {
        return this.a.getEncodedStringValues(151);
    }

    public final void setTo(TyuEncodedStringValue[] value) {
        this.a.setEncodedStringValues(value, 151);
    }

    public int getReadStatus() {
        return this.a.getOctet(155);
    }

    public final void setReadStatus(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 155);
    }
}
