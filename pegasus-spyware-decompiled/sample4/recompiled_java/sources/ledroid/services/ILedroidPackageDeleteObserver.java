package ledroid.services;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ILedroidPackageDeleteObserver extends IInterface {
    void packageDeleted(String str, int i) throws RemoteException;

    void packageDeletedCompatible(boolean z) throws RemoteException;

    public static abstract class Stub extends Binder implements ILedroidPackageDeleteObserver {
        public Stub() {
            attachInterface(this, "ledroid.services.ILedroidPackageDeleteObserver");
        }

        public static ILedroidPackageDeleteObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("ledroid.services.ILedroidPackageDeleteObserver");
            if (iin == null || !(iin instanceof ILedroidPackageDeleteObserver)) {
                return new a(obj);
            }
            return (ILedroidPackageDeleteObserver) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("ledroid.services.ILedroidPackageDeleteObserver");
                    packageDeletedCompatible(data.readInt() != 0);
                    return true;
                case 2:
                    data.enforceInterface("ledroid.services.ILedroidPackageDeleteObserver");
                    packageDeleted(data.readString(), data.readInt());
                    return true;
                case 1598968902:
                    reply.writeString("ledroid.services.ILedroidPackageDeleteObserver");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        /* access modifiers changed from: private */
        public static class a implements ILedroidPackageDeleteObserver {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // ledroid.services.ILedroidPackageDeleteObserver
            public final void packageDeletedCompatible(boolean succeeded) throws RemoteException {
                int i = 1;
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidPackageDeleteObserver");
                    if (!succeeded) {
                        i = 0;
                    }
                    _data.writeInt(i);
                    this.a.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidPackageDeleteObserver
            public final void packageDeleted(String packageName, int returnCode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidPackageDeleteObserver");
                    _data.writeString(packageName);
                    _data.writeInt(returnCode);
                    this.a.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
