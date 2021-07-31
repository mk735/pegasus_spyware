package com.tencent.tmsecure.module.network;

import com.tencent.tmsecure.common.BaseEntity;
import java.util.Date;

public class NetworkInfoEntity extends BaseEntity implements Comparable<NetworkInfoEntity> {
    public long mRetialForMonth = 0;
    public Date mStartDate = new Date();
    public long mTotalForMonth = 0;
    public long mUsedForDay = 0;
    public long mUsedForMonth = 0;

    public int compareTo(NetworkInfoEntity networkInfoEntity) {
        return this.mStartDate.compareTo(networkInfoEntity.mStartDate);
    }
}
