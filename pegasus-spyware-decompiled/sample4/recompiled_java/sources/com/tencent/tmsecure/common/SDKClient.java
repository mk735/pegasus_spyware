package com.tencent.tmsecure.common;

import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.tmsecure.common.ISDKClient;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class SDKClient extends ISDKClient.Stub {
    private static ConcurrentLinkedQueue<MessageHandler> a = new ConcurrentLinkedQueue<>();
    private static volatile SDKClient b = null;

    private SDKClient() {
    }

    public static boolean addMessageHandler(MessageHandler messageHandler) {
        return a.add(messageHandler);
    }

    public static SDKClient getInstance() {
        if (b == null) {
            synchronized (SDKClient.class) {
                if (b == null) {
                    b = new SDKClient();
                }
            }
        }
        return b;
    }

    public static boolean removeMessageHandler(MessageHandler messageHandler) {
        return a.remove(messageHandler);
    }

    @Override // com.tencent.tmsecure.common.ISDKClient.Stub
    public final IBinder asBinder() {
        return this;
    }

    @Override // com.tencent.tmsecure.common.ISDKClient
    public final DataEntity sendMessage(DataEntity dataEntity) throws RemoteException {
        int what = dataEntity.what();
        Iterator<MessageHandler> it = a.iterator();
        while (it.hasNext()) {
            MessageHandler next = it.next();
            if (next.isMatch(what)) {
                return next.onProcessing(dataEntity);
            }
        }
        return null;
    }
}
