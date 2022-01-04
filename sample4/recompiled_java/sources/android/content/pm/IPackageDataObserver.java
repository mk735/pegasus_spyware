package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IPackageDataObserver extends IInterface {
    void onRemoveCompleted(String str, boolean z) throws RemoteException;

    public static abstract class Stub extends Binder implements IPackageDataObserver {
        public Stub() {
            attachInterface(this, "android.content.pm.IPackageDataObserver");
        }

        public static IPackageDataObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("android.content.pm.IPackageDataObserver");
            if (iin == null || !(iin instanceof IPackageDataObserver)) {
                return new a(obj);
            }
            return (IPackageDataObserver) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("android.content.pm.IPackageDataObserver");
                    onRemoveCompleted(data.readString(), data.readInt() != 0);
                    return true;
                case 1598968902:
                    reply.writeString("android.content.pm.IPackageDataObserver");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IPackageDataObserver {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // android.content.pm.IPackageDataObserver
            public final void onRemoveCompleted(String packageName, boolean succeeded) throws RemoteException {
                int i = 1;
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.content.pm.IPackageDataObserver");
                    _data.writeString(packageName);
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
