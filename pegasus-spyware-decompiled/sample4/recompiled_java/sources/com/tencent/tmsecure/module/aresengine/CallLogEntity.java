package com.tencent.tmsecure.module.aresengine;

public class CallLogEntity extends TelephonyEntity {
    private static final long a = 1;
    public long date;
    public long duration;
    public int type;

    public CallLogEntity() {
    }

    public CallLogEntity(CallLogEntity callLogEntity) {
        super(callLogEntity);
        this.date = callLogEntity.date;
        this.type = callLogEntity.type;
        this.duration = callLogEntity.duration;
    }
}
