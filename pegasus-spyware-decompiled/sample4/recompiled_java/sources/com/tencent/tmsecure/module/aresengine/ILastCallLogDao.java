package com.tencent.tmsecure.module.aresengine;

public interface ILastCallLogDao {
    boolean contains(String str);

    void update(CallLogEntity callLogEntity);
}
