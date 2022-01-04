package com.tencent.tmsecure.common;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import tms.g;

public final class DataEntity implements Parcelable {
    public static final Parcelable.Creator<DataEntity> CREATOR = new g();
    private Bundle a;
    private int b;

    public DataEntity(int i) {
        this.b = i;
        this.a = new Bundle();
    }

    private DataEntity(Parcel parcel) {
        this.b = parcel.readInt();
        this.a = parcel.readBundle();
    }

    public /* synthetic */ DataEntity(Parcel parcel, g gVar) {
        this(parcel);
    }

    public final Bundle bundle() {
        return this.a;
    }

    public final int describeContents() {
        return 0;
    }

    public final int what() {
        return this.b;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeBundle(this.a);
    }
}
