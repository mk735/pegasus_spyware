package com.tencent.tmsecure.module.qscanner;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import tms.gh;

public class QScanResultEntity implements Parcelable, Serializable {
    public static final Parcelable.Creator<QScanResultEntity> CREATOR = new gh();
    public int advice;
    public int apkType;
    public String certMd5;
    public String discription;
    public String label;
    public int malwareid;
    public String name;
    public String packageName;
    public String path;
    public int size;
    public String softName;
    public int type;
    public String url;
    public String version;
    public int versionCode;

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.packageName);
        parcel.writeString(this.softName);
        parcel.writeString(this.version);
        parcel.writeInt(this.versionCode);
        parcel.writeString(this.path);
        parcel.writeInt(this.apkType);
        parcel.writeString(this.certMd5);
        parcel.writeInt(this.size);
        parcel.writeInt(this.type);
        parcel.writeInt(this.advice);
        parcel.writeInt(this.malwareid);
        parcel.writeString(this.name);
        parcel.writeString(this.label);
        parcel.writeString(this.discription);
        parcel.writeString(this.url);
    }
}
