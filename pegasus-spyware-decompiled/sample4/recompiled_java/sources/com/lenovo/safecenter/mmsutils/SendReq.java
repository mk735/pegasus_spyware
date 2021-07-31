package com.lenovo.safecenter.mmsutils;

import android.util.Log;

public class SendReq extends MultimediaMessagePdu {
    public SendReq() {
        try {
            setMessageType(128);
            setMmsVersion(18);
            setContentType(ContentType.MULTIPART_RELATED.getBytes());
            setFrom(new TyuEncodedStringValue(TyuMMSHeaders.FROM_INSERT_ADDRESS_TOKEN_STR.getBytes()));
            setTransactionId(("T" + Long.toHexString(System.currentTimeMillis())).getBytes());
        } catch (InvalidHeaderValueException e) {
            Log.e("SendReq", "Unexpected InvalidHeaderValueException.", e);
            throw new RuntimeException(e);
        }
    }

    public SendReq(byte[] contentType, TyuEncodedStringValue from, int mmsVersion, byte[] transactionId) throws InvalidHeaderValueException {
        setMessageType(128);
        setContentType(contentType);
        setFrom(from);
        setMmsVersion(mmsVersion);
        setTransactionId(transactionId);
    }

    SendReq(TyuMMSHeaders headers, TyuPduBody body) {
        super(headers, body);
    }

    public TyuEncodedStringValue[] getBcc() {
        return this.a.getEncodedStringValues(129);
    }

    public void addBcc(TyuEncodedStringValue value) {
        this.a.appendEncodedStringValue(value, 129);
    }

    public void setBcc(TyuEncodedStringValue[] value) {
        this.a.setEncodedStringValues(value, 129);
    }

    public TyuEncodedStringValue[] getCc() {
        return this.a.getEncodedStringValues(130);
    }

    public void addCc(TyuEncodedStringValue value) {
        this.a.appendEncodedStringValue(value, 130);
    }

    public void setCc(TyuEncodedStringValue[] value) {
        this.a.setEncodedStringValues(value, 130);
    }

    public byte[] getContentType() {
        return this.a.getTextString(132);
    }

    public final void setContentType(byte[] value) {
        this.a.setTextString(value, 132);
    }

    public int getDeliveryReport() {
        return this.a.getOctet(134);
    }

    public void setDeliveryReport(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 134);
    }

    public long getExpiry() {
        return this.a.getLongInteger(136);
    }

    public void setExpiry(long value) {
        this.a.setLongInteger(value, 136);
    }

    public long getMessageSize() {
        return this.a.getLongInteger(142);
    }

    public void setMessageSize(long value) {
        this.a.setLongInteger(value, 142);
    }

    public byte[] getMessageClass() {
        return this.a.getTextString(138);
    }

    public void setMessageClass(byte[] value) {
        this.a.setTextString(value, 138);
    }

    public int getReadReport() {
        return this.a.getOctet(144);
    }

    public void setReadReport(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 144);
    }

    public void setTo(TyuEncodedStringValue[] value) {
        this.a.setEncodedStringValues(value, 151);
    }

    public byte[] getTransactionId() {
        return this.a.getTextString(152);
    }

    public final void setTransactionId(byte[] value) {
        this.a.setTextString(value, 152);
    }
}
