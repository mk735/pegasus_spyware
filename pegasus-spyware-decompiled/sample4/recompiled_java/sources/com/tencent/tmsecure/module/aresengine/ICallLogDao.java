package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.module.aresengine.CallLogEntity;

public interface ICallLogDao<T extends CallLogEntity> {
    long insert(T t, FilterResult filterResult);
}
