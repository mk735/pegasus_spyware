package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

public abstract class DataMonitor<T extends TelephonyEntity> {
    private Object a = new Object();
    private ConcurrentLinkedQueue<MonitorCallback<T>> b = new ConcurrentLinkedQueue<>();
    private DataFilter<T> c;

    public static abstract class MonitorCallback<T extends TelephonyEntity> {
        private boolean a = false;

        public void abortMonitor() {
            this.a = true;
        }

        public abstract void onCallback(T t);
    }

    public final void addCallback(MonitorCallback<T> monitorCallback) {
        this.b.add(monitorCallback);
    }

    public void bind(DataFilter<T> dataFilter) {
        synchronized (this.a) {
            this.c = dataFilter;
        }
    }

    public final void notifyDataReached(T t, Object... objArr) {
        if (t != null) {
            boolean z = false;
            if (this.b.size() > 0) {
                Iterator<MonitorCallback<T>> it = this.b.iterator();
                while (it.hasNext()) {
                    MonitorCallback<T> next = it.next();
                    next.onCallback(t);
                    z = ((MonitorCallback) next).a;
                    if (z) {
                        break;
                    }
                }
            }
            onPostDataToFilter(z, t, objArr);
            if (!z) {
                synchronized (this.a) {
                    if (this.c != null) {
                        this.c.filter(t, objArr);
                    }
                }
            }
        }
    }

    public void onPostDataToFilter(boolean z, T t, Object... objArr) {
    }

    public final void removeCallback(MonitorCallback<T> monitorCallback) {
        this.b.remove(monitorCallback);
    }

    public void setRegisterState(boolean z) {
    }

    public void unbind() {
        synchronized (this.a) {
            this.c = null;
        }
    }
}
