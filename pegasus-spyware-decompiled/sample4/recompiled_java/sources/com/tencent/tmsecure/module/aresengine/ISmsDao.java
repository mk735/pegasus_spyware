package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.module.aresengine.SmsEntity;

public interface ISmsDao<T extends SmsEntity> {
    long insert(T t, FilterResult filterResult);
}
