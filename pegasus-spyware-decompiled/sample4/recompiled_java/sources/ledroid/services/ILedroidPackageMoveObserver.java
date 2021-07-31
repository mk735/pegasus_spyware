package ledroid.services;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ILedroidPackageMoveObserver extends IInterface {
    void packageMoved(String str, int i) throws RemoteException;

    public static abstract class Stub extends Binder implements ILedroidPackageMoveObserver {
        public Stub() {
            attachInterface(this, "ledroid.services.ILedroidPackageMoveObserver");
        }

        public static ILedroidPackageMoveObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("ledroid.services.ILedroidPackageMoveObserver");
            if (iin == null || !(iin instanceof ILedroidPackageMoveObserver)) {
                return new a(obj);
            }
            return (ILedroidPackageMoveObserver) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("ledroid.services.ILedroidPackageMoveObserver");
                    packageMoved(data.readString(), data.readInt());
                    return true;
                case 1598968902:
                    reply.writeString("ledroid.services.ILedroidPackageMoveObserver");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        /* access modifiers changed from: private */
        public static class a implements ILedroidPackageMoveObserver {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // ledroid.services.ILedroidPackageMoveObserver
            public final void packageMoved(String packageName, int returnCode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidPackageMoveObserver");
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
