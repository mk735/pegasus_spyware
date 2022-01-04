package tms;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.tmsecure.module.permission.PermissionRequestInfo;

public final class ez implements Parcelable.Creator<PermissionRequestInfo> {
    /* renamed from: a */
    public final PermissionRequestInfo createFromParcel(Parcel parcel) {
        return PermissionRequestInfo.createFromParcel(parcel);
    }

    /* renamed from: a */
    public final PermissionRequestInfo[] newArray(int i) {
        return new PermissionRequestInfo[i];
    }
}
