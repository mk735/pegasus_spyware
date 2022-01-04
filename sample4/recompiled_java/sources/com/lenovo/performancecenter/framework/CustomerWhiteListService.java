package com.lenovo.performancecenter.framework;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.lenovo.performancecenter.framework.ICustomerWhiteListService;
import java.util.List;

public class CustomerWhiteListService extends Service {
    private final ICustomerWhiteListService.Stub a = new ICustomerWhiteListService.Stub() {
        /* class com.lenovo.performancecenter.framework.CustomerWhiteListService.AnonymousClass1 */

        @Override // com.lenovo.performancecenter.framework.ICustomerWhiteListService
        public final List<String> getCustomerWhiteList() throws RemoteException {
            return DataLayerManager.getUserWhiteList(CustomerWhiteListService.this);
        }
    };

    public void onCreate() {
        super.onCreate();
    }

    public IBinder onBind(Intent intent) {
        return this.a;
    }
}
