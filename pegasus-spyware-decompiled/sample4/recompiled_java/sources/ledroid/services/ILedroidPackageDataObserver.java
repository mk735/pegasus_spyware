package ledroid.services;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ILedroidPackageDataObserver extends IInterface {
    void onRemoveCompleted(String str, boolean z) throws RemoteException;

    public static abstract class Stub extends Binder implements ILedroidPackageDataObserver {
        public Stub() {
            attachInterface(this, "ledroid.services.ILedroidPackageDataObserver");
        }

        public static ILedroidPackageDataObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("ledroid.services.ILedroidPackageDataObserver");
            if (iin == null || !(iin instanceof ILedroidPackageDataObserver)) {
                return new a(obj);
            }
            return (ILedroidPackageDataObserver) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("ledroid.services.ILedroidPackageDataObserver");
                    onRemoveCompleted(data.readString(), data.readInt() != 0);
                    return true;
                case 1598968902:
                    reply.writeString("ledroid.services.ILedroidPackageDataObserver");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        /* access modifiers changed from: private */
        public static class a implements ILedroidPackageDataObserver {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // ledroid.services.ILedroidPackageDataObserver
            public final void onRemoveCompleted(String packageName, boolean succeeded) throws RemoteException {
                int i = 1;
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidPackageDataObserver");
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
