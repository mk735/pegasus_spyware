package com.tencent.tmsecure.module.aresengine;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import tms.au;
import tms.cl;
import tms.cm;

public final class AresEngineManager extends BaseManager {
    private au a;
    private Map<String, DataIntercepter<? extends TelephonyEntity>> b;
    private cm c;

    public final void addIntercepter(DataIntercepterBuilder<? extends TelephonyEntity> dataIntercepterBuilder) throws RuntimeException {
        if (!isExpired()) {
            this.a.a(dataIntercepterBuilder);
        }
    }

    public final DataIntercepter<? extends TelephonyEntity> findIntercepter(String str) {
        if (!isExpired()) {
            return this.a.a(str);
        }
        if (this.b == null) {
            this.b = new HashMap();
            String[] strArr = {DataIntercepterBuilder.TYPE_INCOMING_CALL, DataIntercepterBuilder.TYPE_INCOMING_SMS, DataIntercepterBuilder.TYPE_OUTGOING_SMS, DataIntercepterBuilder.TYPE_SYSTEM_CALL};
            for (String str2 : strArr) {
                this.b.put(str2, new cl(str2));
            }
        }
        return this.b.get(str);
    }

    public final AresEngineFactor getAresEngineFactor() {
        return this.a.c();
    }

    public final IIntelligentSmsChecker getIntelligentSmsChecker() {
        if (!isExpired()) {
            return this.a.b();
        }
        if (this.c == null) {
            this.c = new cm();
        }
        return this.c;
    }

    public final List<DataIntercepter<? extends TelephonyEntity>> intercepters() {
        return isExpired() ? new ArrayList() : this.a.a();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new au();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final boolean reportSms(List<SmsEntity> list) {
        return this.a.a(list);
    }

    public final void setAresEngineFactor(AresEngineFactor aresEngineFactor) {
        this.a.a(aresEngineFactor);
    }

    public final void setHoldoffMode(int i) {
        if (!isExpired()) {
            this.a.a(i);
        }
    }
}
