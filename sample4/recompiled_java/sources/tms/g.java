package tms;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.tmsecure.common.DataEntity;

public final class g implements Parcelable.Creator<DataEntity> {
    /* renamed from: a */
    public final DataEntity createFromParcel(Parcel parcel) {
        return new DataEntity(parcel, null);
    }

    /* renamed from: a */
    public final DataEntity[] newArray(int i) {
        return new DataEntity[i];
    }
}
