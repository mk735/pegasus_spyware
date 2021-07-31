package com.tencent.tmsecure.module.permission;

import android.os.Parcel;
import android.os.Parcelable;
import tms.fa;

public class PermissionTableItem implements Parcelable {
    public static Parcelable.Creator<PermissionTableItem> CREATOR = new fa();
    public String mPackageName;
    public int[] mRids = new int[PermissionRequestIDs.getCount()];
    public int mUid;

    public PermissionTableItem(int i, int[] iArr, String str) {
        this.mUid = i;
        if (iArr != null && iArr.length == PermissionRequestIDs.getCount()) {
            this.mRids = iArr;
        }
        this.mPackageName = str;
    }

    public static PermissionTableItem createFromParcel(Parcel parcel) {
        return new PermissionTableItem(parcel.readInt(), parcel.createIntArray(), parcel.readString());
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        PermissionTableItem permissionTableItem;
        return obj != null && (obj instanceof PermissionTableItem) && (permissionTableItem = (PermissionTableItem) obj) != null && this.mUid == permissionTableItem.mUid && this.mPackageName.equals(permissionTableItem.mPackageName);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mUid);
        parcel.writeIntArray(this.mRids);
        parcel.writeString(this.mPackageName);
    }
}
