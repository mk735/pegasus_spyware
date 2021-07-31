package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

public abstract class DataFilter<T extends TelephonyEntity> {
    private Object a = new Object();
    private FilterConfig b;
    private DataHandler c;

    public void a() {
        synchronized (this.a) {
            this.c = null;
        }
    }

    public void a(DataHandler dataHandler) {
        synchronized (this.a) {
            this.c = dataHandler;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b() {
        boolean z;
        synchronized (this.a) {
            z = this.c != null;
        }
        return z;
    }

    public abstract FilterConfig defalutFilterConfig();

    public final FilterResult filter(T t, Object... objArr) {
        prepare(t);
        FilterResult onFiltering = onFiltering(t, objArr);
        onFiltered(t, onFiltering);
        synchronized (this.a) {
            if (this.c != null) {
                this.c.sendMessage(onFiltering);
            }
        }
        return onFiltering;
    }

    public final synchronized FilterConfig getConfig() {
        return this.b;
    }

    public void onFiltered(T t, FilterResult filterResult) {
    }

    /* access modifiers changed from: protected */
    public abstract FilterResult onFiltering(T t, Object... objArr);

    /* access modifiers changed from: protected */
    public void prepare(T t) {
    }

    public final synchronized void setConfig(FilterConfig filterConfig) {
        if (filterConfig == null) {
            throw new NullPointerException("the filter's config can not be null");
        }
        this.b = filterConfig;
    }
}
