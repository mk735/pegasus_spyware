package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IPackageMoveObserver extends IInterface {
    void packageMoved(String str, int i) throws RemoteException;

    public static abstract class Stub extends Binder implements IPackageMoveObserver {
        public Stub() {
            attachInterface(this, "android.content.pm.IPackageMoveObserver");
        }

        public static IPackageMoveObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("android.content.pm.IPackageMoveObserver");
            if (iin == null || !(iin instanceof IPackageMoveObserver)) {
                return new a(obj);
            }
            return (IPackageMoveObserver) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("android.content.pm.IPackageMoveObserver");
                    packageMoved(data.readString(), data.readInt());
                    return true;
                case 1598968902:
                    reply.writeString("android.content.pm.IPackageMoveObserver");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IPackageMoveObserver {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // android.content.pm.IPackageMoveObserver
            public final void packageMoved(String packageName, int returnCode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.content.pm.IPackageMoveObserver");
                    _data.writeString(packageName);
                    _data.writeInt(returnCode);
                    this.a.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
