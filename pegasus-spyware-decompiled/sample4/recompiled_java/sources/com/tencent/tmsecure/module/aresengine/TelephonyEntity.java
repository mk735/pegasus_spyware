package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.common.BaseEntity;

public abstract class TelephonyEntity extends BaseEntity {
    private static final long a = 1;
    public String name;
    public String phonenum;

    public TelephonyEntity() {
    }

    public TelephonyEntity(TelephonyEntity telephonyEntity) {
        this.id = telephonyEntity.id;
        this.phonenum = telephonyEntity.phonenum;
    }
}
