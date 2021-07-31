package com.lenovo.safecenter.aidl.killvirus;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IRemoteScanVirusCallback extends IInterface {
    void onResult(String str) throws RemoteException;

    public static abstract class Stub extends Binder implements IRemoteScanVirusCallback {
        public Stub() {
            attachInterface(this, "com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusCallback");
        }

        public static IRemoteScanVirusCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusCallback");
            if (iin == null || !(iin instanceof IRemoteScanVirusCallback)) {
                return new a(obj);
            }
            return (IRemoteScanVirusCallback) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusCallback");
                    onResult(data.readString());
                    reply.writeNoException();
                    return true;
                case 1598968902:
                    reply.writeString("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusCallback");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IRemoteScanVirusCallback {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusCallback
            public final void onResult(String result) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusCallback");
                    _data.writeString(result);
                    this.a.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
