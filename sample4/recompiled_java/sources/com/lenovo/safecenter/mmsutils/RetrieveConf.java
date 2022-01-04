package com.lenovo.safecenter.mmsutils;

public class RetrieveConf extends MultimediaMessagePdu {
    public RetrieveConf() throws InvalidHeaderValueException {
        setMessageType(132);
    }

    RetrieveConf(TyuMMSHeaders headers, TyuPduBody body) {
        super(headers, body);
    }

    public TyuEncodedStringValue[] getCc() {
        return this.a.getEncodedStringValues(130);
    }

    public void addCc(TyuEncodedStringValue value) {
        this.a.appendEncodedStringValue(value, 130);
    }

    public byte[] getContentType() {
        return this.a.getTextString(132);
    }

    public void setContentType(byte[] value) {
        this.a.setTextString(value, 132);
    }

    public int getDeliveryReport() {
        return this.a.getOctet(134);
    }

    public void setDeliveryReport(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 134);
    }

    @Override // com.lenovo.safecenter.mmsutils.GenericPdu
    public TyuEncodedStringValue getFrom() {
        return this.a.getEncodedStringValue(137);
    }

    @Override // com.lenovo.safecenter.mmsutils.GenericPdu
    public void setFrom(TyuEncodedStringValue value) {
        this.a.setEncodedStringValue(value, 137);
    }

    public byte[] getMessageClass() {
        return this.a.getTextString(138);
    }

    public void setMessageClass(byte[] value) {
        this.a.setTextString(value, 138);
    }

    public byte[] getMessageId() {
        return this.a.getTextString(139);
    }

    public void setMessageId(byte[] value) {
        this.a.setTextString(value, 139);
    }

    public int getReadReport() {
        return this.a.getOctet(144);
    }

    public void setReadReport(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 144);
    }

    public int getRetrieveStatus() {
        return this.a.getOctet(153);
    }

    public void setRetrieveStatus(int value) throws InvalidHeaderValueException {
        this.a.setOctet(value, 153);
    }

    public TyuEncodedStringValue getRetrieveText() {
        return this.a.getEncodedStringValue(154);
    }

    public void setRetrieveText(TyuEncodedStringValue value) {
        this.a.setEncodedStringValue(value, 154);
    }

    public byte[] getTransactionId() {
        return this.a.getTextString(152);
    }

    public void setTransactionId(byte[] value) {
        this.a.setTextString(value, 152);
    }
}
