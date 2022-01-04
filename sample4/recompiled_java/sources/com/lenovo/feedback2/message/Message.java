package com.lenovo.feedback2.message;

import android.os.Parcel;
import android.os.Parcelable;

public class Message implements Parcelable {
    public static final Parcelable.Creator<Message> CREATOR = new Parcelable.Creator<Message>() {
        /* class com.lenovo.feedback2.message.Message.AnonymousClass1 */

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Message createFromParcel(Parcel parcel) {
            return new Message(parcel, (byte) 0);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Message[] newArray(int i) {
            return new Message[i];
        }
    };
    private int a;
    private String b;
    private int c;
    private byte[] d;

    public int getVersion() {
        return this.a;
    }

    public void setVersion(int version) {
        this.a = version;
    }

    public String getHeader() {
        return this.b;
    }

    public void setHeader(String header) {
        this.b = header;
    }

    public byte[] getData() {
        return this.d;
    }

    public void setData(byte[] data) {
        this.d = data;
        this.c = data.length;
    }

    public Message() {
    }

    private Message(Parcel in) {
        readFromParcel(in);
    }

    /* synthetic */ Message(Parcel parcel, byte b2) {
        this(parcel);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.a);
        dest.writeString(this.b);
        dest.writeInt(this.c);
        dest.writeByteArray(this.d);
    }

    public void readFromParcel(Parcel in) {
        this.a = in.readInt();
        this.b = in.readString();
        this.c = in.readInt();
        this.d = new byte[this.c];
        in.readByteArray(this.d);
    }
}
