package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IPackageDeleteObserver extends IInterface {
    void packageDeleted(boolean z) throws RemoteException;

    public static abstract class Stub extends Binder implements IPackageDeleteObserver {
        public Stub() {
            attachInterface(this, "android.content.pm.IPackageDeleteObserver");
        }

        public static IPackageDeleteObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("android.content.pm.IPackageDeleteObserver");
            if (iin == null || !(iin instanceof IPackageDeleteObserver)) {
                return new Proxy(obj);
            }
            return (IPackageDeleteObserver) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("android.content.pm.IPackageDeleteObserver");
                    packageDeleted(data.readInt() != 0);
                    return true;
                case 1598968902:
                    reply.writeString("android.content.pm.IPackageDeleteObserver");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements IPackageDeleteObserver {
            private IBinder a;

            Proxy(IBinder remote) {
                this.a = remote;
            }

            public IBinder asBinder() {
                return this.a;
            }

            @Override // android.content.pm.IPackageDeleteObserver
            public void packageDeleted(boolean succeeded) throws RemoteException {
                int i = 1;
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.content.pm.IPackageDeleteObserver");
                    if (!succeeded) {
                        i = 0;
                    }
                    _data.writeInt(i);
                    this.a.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
