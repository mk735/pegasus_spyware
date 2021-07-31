package com.lenovo.safecenter.aidl.killvirus;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusCallback;

public interface IRemoteScanVirusService extends IInterface {
    void receiveCommand(String str) throws RemoteException;

    void registerCallback(IRemoteScanVirusCallback iRemoteScanVirusCallback) throws RemoteException;

    void unregisterCallback(IRemoteScanVirusCallback iRemoteScanVirusCallback) throws RemoteException;

    public static abstract class Stub extends Binder implements IRemoteScanVirusService {
        public Stub() {
            attachInterface(this, "com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService");
        }

        public static IRemoteScanVirusService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService");
            if (iin == null || !(iin instanceof IRemoteScanVirusService)) {
                return new a(obj);
            }
            return (IRemoteScanVirusService) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService");
                    receiveCommand(data.readString());
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService");
                    registerCallback(IRemoteScanVirusCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService");
                    unregisterCallback(IRemoteScanVirusCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 1598968902:
                    reply.writeString("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IRemoteScanVirusService {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService
            public final void receiveCommand(String command) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService");
                    _data.writeString(command);
                    this.a.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService
            public final void registerCallback(IRemoteScanVirusCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService");
                    _data.writeStrongBinder(cb != null ? cb.asBinder() : null);
                    this.a.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService
            public final void unregisterCallback(IRemoteScanVirusCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService");
                    _data.writeStrongBinder(cb != null ? cb.asBinder() : null);
                    this.a.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
