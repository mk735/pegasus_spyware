package tms;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.tmsecure.module.permission.PermissionTableItem;

public final class fa implements Parcelable.Creator<PermissionTableItem> {
    /* renamed from: a */
    public final PermissionTableItem createFromParcel(Parcel parcel) {
        return PermissionTableItem.createFromParcel(parcel);
    }

    /* renamed from: a */
    public final PermissionTableItem[] newArray(int i) {
        return new PermissionTableItem[i];
    }
}
