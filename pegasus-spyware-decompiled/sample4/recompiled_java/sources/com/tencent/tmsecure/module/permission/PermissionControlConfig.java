package com.tencent.tmsecure.module.permission;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class PermissionControlConfig implements Parcelable {
    public static final int PERMISSION_MODE_ABORT = 1;
    public static final int PERMISSION_MODE_ACCEPT = 0;
    public static final byte PERMISSION_MODE_ASK = 2;
    public static final int PERMISSION_MODE_NULL = 65535;
    private HashMap<Integer, PermissionTableItem> a = new HashMap<>();
    private String b;

    public PermissionControlConfig(List<PermissionTableItem> list, String str) {
        for (PermissionTableItem permissionTableItem : list) {
            this.a.put(Integer.valueOf(permissionTableItem.mUid), permissionTableItem);
        }
        this.b = str;
    }

    public static PermissionControlConfig createFromParcel(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(PermissionTableItem.createFromParcel(parcel));
        }
        return new PermissionControlConfig(arrayList, parcel.readString());
    }

    public final boolean addItem(PermissionTableItem permissionTableItem) {
        if (this.a.values().contains(permissionTableItem)) {
            return false;
        }
        this.a.put(Integer.valueOf(permissionTableItem.mUid), permissionTableItem);
        return true;
    }

    public final int describeContents() {
        return 0;
    }

    public final String getDummyDatabaseName() {
        return this.b;
    }

    public final PermissionTableItem getItemByUid(int i) {
        return this.a.get(Integer.valueOf(i));
    }

    public final ArrayList<PermissionTableItem> getItems() {
        return new ArrayList<>(this.a.values());
    }

    public final int getValue(int i, int i2) {
        PermissionTableItem permissionTableItem = this.a.get(Integer.valueOf(i));
        if (permissionTableItem == null || i2 >= PermissionRequestIDs.getCount()) {
            return -1;
        }
        return permissionTableItem.mRids[i2];
    }

    public final boolean removeItem(PermissionTableItem permissionTableItem) {
        if (!this.a.values().contains(permissionTableItem)) {
            return false;
        }
        this.a.remove(Integer.valueOf(permissionTableItem.mUid));
        return true;
    }

    public final void setDummyDatabaseName(String str) {
        this.b = str;
    }

    public final boolean update(int i, int i2, int i3) {
        PermissionTableItem permissionTableItem = this.a.get(Integer.valueOf(i));
        if (permissionTableItem != null && i2 < PermissionRequestIDs.getCount()) {
            permissionTableItem.mRids[i2] = i3;
        }
        return permissionTableItem != null;
    }

    public final boolean update(PermissionTableItem permissionTableItem) {
        Integer valueOf = Integer.valueOf(permissionTableItem.mUid);
        PermissionTableItem permissionTableItem2 = this.a.get(valueOf);
        if (permissionTableItem2 != null) {
            this.a.put(valueOf, permissionTableItem);
        }
        return permissionTableItem2 != null;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a.values().size());
        for (PermissionTableItem permissionTableItem : this.a.values()) {
            permissionTableItem.writeToParcel(parcel, 0);
        }
        parcel.writeString(this.b);
    }
}
