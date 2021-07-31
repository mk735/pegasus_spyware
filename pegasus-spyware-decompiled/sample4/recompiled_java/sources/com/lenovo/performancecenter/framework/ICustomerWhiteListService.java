package com.lenovo.performancecenter.framework;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public interface ICustomerWhiteListService extends IInterface {
    List<String> getCustomerWhiteList() throws RemoteException;

    public static abstract class Stub extends Binder implements ICustomerWhiteListService {
        public Stub() {
            attachInterface(this, "com.lenovo.performancecenter.framework.ICustomerWhiteListService");
        }

        public static ICustomerWhiteListService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.lenovo.performancecenter.framework.ICustomerWhiteListService");
            if (iin == null || !(iin instanceof ICustomerWhiteListService)) {
                return new a(obj);
            }
            return (ICustomerWhiteListService) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("com.lenovo.performancecenter.framework.ICustomerWhiteListService");
                    List<String> _result = getCustomerWhiteList();
                    reply.writeNoException();
                    reply.writeStringList(_result);
                    return true;
                case 1598968902:
                    reply.writeString("com.lenovo.performancecenter.framework.ICustomerWhiteListService");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements ICustomerWhiteListService {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // com.lenovo.performancecenter.framework.ICustomerWhiteListService
            public final List<String> getCustomerWhiteList() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.lenovo.performancecenter.framework.ICustomerWhiteListService");
                    this.a.transact(1, _data, _reply, 0);
                    _reply.readException();
                    return _reply.createStringArrayList();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
