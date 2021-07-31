package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import tms.ay;
import tms.bn;
import tms.bs;
import tms.cn;
import tms.cs;

public abstract class DataIntercepterBuilder<T extends TelephonyEntity> {
    public static final String TYPE_INCOMING_CALL = "incoming_call";
    public static final String TYPE_INCOMING_SMS = "incoming_sms";
    public static final String TYPE_OUTGOING_SMS = "outing_sms";
    public static final String TYPE_SYSTEM_CALL = "system_call";
    private DataMonitor<T> a;
    private DataFilter<T> b;
    private DataHandler c;

    public static final DataIntercepterBuilder<CallLogEntity> createInComingCallIntercepterBuilder() {
        return new bn();
    }

    public static final DataIntercepterBuilder<SmsEntity> createInComingSmsIntercepterBuilder() {
        return new bs();
    }

    public static final DataIntercepterBuilder<SmsEntity> createOutgoingSmsIntercepterBuilder() {
        return new cn();
    }

    public static final DataIntercepterBuilder<CallLogEntity> createSystemCallLogIntercepterBuilder() {
        return new cs();
    }

    public synchronized DataIntercepter<T> a() {
        ay ayVar;
        this.a = this.a == null ? getDataMonitor() : this.a;
        this.b = this.b == null ? getDataFilter() : this.b;
        this.c = this.c == null ? getDataHandler() : this.c;
        if (this.a == null || this.b == null || this.c == null) {
            throw new NullPointerException();
        }
        this.a.bind(this.b);
        this.b.a(this.c);
        ayVar = new ay(this.a, this.b, this.c);
        this.b = null;
        this.a = null;
        this.c = null;
        return ayVar;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(DataFilter<T> dataFilter) {
        this.b = dataFilter;
    }

    public abstract DataFilter<T> getDataFilter();

    public abstract DataHandler getDataHandler();

    public abstract DataMonitor<T> getDataMonitor();

    public abstract String getName();

    public synchronized void setDataHandler(DataHandler dataHandler) {
        this.c = dataHandler;
    }

    public synchronized void setDataMonitor(DataMonitor<T> dataMonitor) {
        this.a = dataMonitor;
    }
}
