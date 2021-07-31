package com.lenovo.safecenter.aidl.usbdebugmode;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IRemoteUsbDebugModeService extends IInterface {
    boolean setUsbDebugMode(boolean z) throws RemoteException;

    public static abstract class Stub extends Binder implements IRemoteUsbDebugModeService {
        public Stub() {
            attachInterface(this, "com.lenovo.safecenter.aidl.usbdebugmode.IRemoteUsbDebugModeService");
        }

        public static IRemoteUsbDebugModeService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.lenovo.safecenter.aidl.usbdebugmode.IRemoteUsbDebugModeService");
            if (iin == null || !(iin instanceof IRemoteUsbDebugModeService)) {
                return new a(obj);
            }
            return (IRemoteUsbDebugModeService) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            boolean _arg0;
            int i = 0;
            switch (code) {
                case 1:
                    data.enforceInterface("com.lenovo.safecenter.aidl.usbdebugmode.IRemoteUsbDebugModeService");
                    if (data.readInt() != 0) {
                        _arg0 = true;
                    } else {
                        _arg0 = false;
                    }
                    boolean _result = setUsbDebugMode(_arg0);
                    reply.writeNoException();
                    if (_result) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 1598968902:
                    reply.writeString("com.lenovo.safecenter.aidl.usbdebugmode.IRemoteUsbDebugModeService");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IRemoteUsbDebugModeService {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // com.lenovo.safecenter.aidl.usbdebugmode.IRemoteUsbDebugModeService
            public final boolean setUsbDebugMode(boolean isEnable) throws RemoteException {
                int i;
                boolean _result = true;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.lenovo.safecenter.aidl.usbdebugmode.IRemoteUsbDebugModeService");
                    if (isEnable) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    _data.writeInt(i);
                    this.a.transact(1, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() == 0) {
                        _result = false;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
