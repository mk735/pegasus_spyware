package com.lenovo.safecenter.mmsutils;

import android.util.Log;
import com.lenovo.lps.sus.c.c;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

public class TyuEncodedStringValue implements Cloneable {
    private int a;
    private byte[] b;

    public TyuEncodedStringValue(int charset, byte[] data) {
        if (data == null) {
            throw new NullPointerException("EncodedStringValue: Text-string is null.");
        }
        this.a = charset;
        this.b = new byte[data.length];
        System.arraycopy(data, 0, this.b, 0, data.length);
    }

    public TyuEncodedStringValue(byte[] data) {
        this(106, data);
    }

    public TyuEncodedStringValue(String data) {
        try {
            this.b = data.getBytes("utf-8");
            this.a = 106;
        } catch (UnsupportedEncodingException e) {
            Log.e("EncodedStringValue", "Default encoding must be supported.", e);
        }
    }

    public int getCharacterSet() {
        return this.a;
    }

    public void setCharacterSet(int charset) {
        this.a = charset;
    }

    public byte[] getTextString() {
        byte[] byteArray = new byte[this.b.length];
        System.arraycopy(this.b, 0, byteArray, 0, this.b.length);
        return byteArray;
    }

    public void setTextString(byte[] textString) {
        if (textString == null) {
            throw new NullPointerException("EncodedStringValue: Text-string is null.");
        }
        this.b = new byte[textString.length];
        System.arraycopy(textString, 0, this.b, 0, textString.length);
    }

    public String getString() {
        if (this.a == 0) {
            return new String(this.b);
        }
        try {
            return new String(this.b, CharacterSets.getMimeName(this.a));
        } catch (UnsupportedEncodingException e) {
            try {
                return new String(this.b, CharacterSets.MIMENAME_ISO_8859_1);
            } catch (UnsupportedEncodingException e2) {
                return new String(this.b);
            }
        }
    }

    public void appendTextString(byte[] textString) {
        if (textString == null) {
            throw new NullPointerException("Text-string is null.");
        } else if (this.b == null) {
            this.b = new byte[textString.length];
            System.arraycopy(textString, 0, this.b, 0, textString.length);
        } else {
            ByteArrayOutputStream newTextString = new ByteArrayOutputStream();
            try {
                newTextString.write(this.b);
                newTextString.write(textString);
                this.b = newTextString.toByteArray();
            } catch (IOException e) {
                e.printStackTrace();
                throw new NullPointerException("appendTextString: failed when write a new Text-string");
            }
        }
    }

    @Override // java.lang.Object
    public Object clone() throws CloneNotSupportedException {
        super.clone();
        int len = this.b.length;
        byte[] dstBytes = new byte[len];
        System.arraycopy(this.b, 0, dstBytes, 0, len);
        try {
            return new TyuEncodedStringValue(this.a, dstBytes);
        } catch (Exception e) {
            Log.e("EncodedStringValue", "failed to clone an EncodedStringValue: " + this);
            e.printStackTrace();
            throw new CloneNotSupportedException(e.getMessage());
        }
    }

    public TyuEncodedStringValue[] split(String pattern) {
        String[] temp = getString().split(pattern);
        TyuEncodedStringValue[] ret = new TyuEncodedStringValue[temp.length];
        for (int i = 0; i < ret.length; i++) {
            try {
                ret[i] = new TyuEncodedStringValue(this.a, temp[i].getBytes());
            } catch (NullPointerException e) {
                return null;
            }
        }
        return ret;
    }

    public static TyuEncodedStringValue[] extract(String src) {
        String[] values = src.split(c.O);
        ArrayList<TyuEncodedStringValue> list = new ArrayList<>();
        for (int i = 0; i < values.length; i++) {
            if (values[i].length() > 0) {
                list.add(new TyuEncodedStringValue(values[i]));
            }
        }
        int len = list.size();
        if (len > 0) {
            return (TyuEncodedStringValue[]) list.toArray(new TyuEncodedStringValue[len]);
        }
        return null;
    }

    public static String concat(TyuEncodedStringValue[] addr) {
        StringBuilder sb = new StringBuilder();
        int maxIndex = addr.length - 1;
        for (int i = 0; i <= maxIndex; i++) {
            sb.append(addr[i].getString());
            if (i < maxIndex) {
                sb.append(c.O);
            }
        }
        return sb.toString();
    }

    public static TyuEncodedStringValue copy(TyuEncodedStringValue value) {
        if (value == null) {
            return null;
        }
        return new TyuEncodedStringValue(value.a, value.b);
    }

    public static TyuEncodedStringValue[] encodeStrings(String[] array) {
        int count = array.length;
        if (count <= 0) {
            return null;
        }
        TyuEncodedStringValue[] encodedArray = new TyuEncodedStringValue[count];
        for (int i = 0; i < count; i++) {
            encodedArray[i] = new TyuEncodedStringValue(array[i]);
        }
        return encodedArray;
    }
}
