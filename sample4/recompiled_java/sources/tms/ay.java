package tms;

import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import com.tencent.tmsecure.module.aresengine.DataMonitor;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

public final class ay<T extends TelephonyEntity> implements DataIntercepter<T> {
    private DataMonitor<T> a;
    private DataFilter<T> b;
    private DataHandler c;

    public ay(DataMonitor<T> dataMonitor, DataFilter<T> dataFilter, DataHandler dataHandler) {
        this.a = dataMonitor;
        this.b = dataFilter;
        this.c = dataHandler;
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepter
    public final DataFilter<T> dataFilter() {
        return this.b;
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepter
    public final DataHandler dataHandler() {
        return this.c;
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepter
    public final DataMonitor<T> dataMonitor() {
        return this.a;
    }
}
