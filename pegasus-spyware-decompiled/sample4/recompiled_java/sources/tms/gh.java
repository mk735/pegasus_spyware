package tms;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;

public final class gh implements Parcelable.Creator<QScanResultEntity> {
    /* renamed from: a */
    public final QScanResultEntity createFromParcel(Parcel parcel) {
        QScanResultEntity qScanResultEntity = new QScanResultEntity();
        qScanResultEntity.packageName = parcel.readString();
        qScanResultEntity.softName = parcel.readString();
        qScanResultEntity.version = parcel.readString();
        qScanResultEntity.versionCode = parcel.readInt();
        qScanResultEntity.path = parcel.readString();
        qScanResultEntity.apkType = parcel.readInt();
        qScanResultEntity.certMd5 = parcel.readString();
        qScanResultEntity.size = parcel.readInt();
        qScanResultEntity.type = parcel.readInt();
        qScanResultEntity.advice = parcel.readInt();
        qScanResultEntity.malwareid = parcel.readInt();
        qScanResultEntity.name = parcel.readString();
        qScanResultEntity.label = parcel.readString();
        qScanResultEntity.discription = parcel.readString();
        qScanResultEntity.url = parcel.readString();
        return qScanResultEntity;
    }

    /* renamed from: a */
    public final QScanResultEntity[] newArray(int i) {
        return new QScanResultEntity[i];
    }
}
