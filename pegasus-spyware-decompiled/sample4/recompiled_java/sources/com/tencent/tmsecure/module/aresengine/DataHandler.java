package com.tencent.tmsecure.module.aresengine;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

public class DataHandler extends Handler {
    protected static final int a = 3456;
    private static final Looper b;
    private ConcurrentLinkedQueue<DataHandlerCallback> c = new ConcurrentLinkedQueue<>();

    public interface DataHandlerCallback {
        void onCallback(TelephonyEntity telephonyEntity, int i, int i2, Object... objArr);
    }

    static {
        HandlerThread handlerThread = new HandlerThread(DataHandler.class.getName());
        handlerThread.start();
        b = handlerThread.getLooper();
    }

    public DataHandler() {
        super(b);
    }

    public final void addCallback(DataHandlerCallback dataHandlerCallback) {
        this.c.add(dataHandlerCallback);
    }

    public void handleMessage(Message message) {
        if (message.what == a) {
            FilterResult filterResult = (FilterResult) message.obj;
            Iterator<Runnable> it = filterResult.mDotos.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            TelephonyEntity telephonyEntity = filterResult.mData;
            int i = filterResult.mFilterfiled;
            int i2 = filterResult.mState;
            Object[] objArr = filterResult.mParams;
            Iterator<DataHandlerCallback> it2 = this.c.iterator();
            while (it2.hasNext()) {
                it2.next().onCallback(telephonyEntity, i, i2, objArr);
            }
        }
    }

    public final void removeCallback(DataHandlerCallback dataHandlerCallback) {
        this.c.remove(dataHandlerCallback);
    }

    public synchronized void sendMessage(FilterResult filterResult) {
        if (filterResult != null) {
            Message obtainMessage = obtainMessage(a);
            obtainMessage.obj = filterResult;
            obtainMessage.sendToTarget();
        }
    }
}
