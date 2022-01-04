package android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IActivityWatcher extends IInterface {
    void activityResuming(int i) throws RemoteException;

    void closingSystemDialogs(String str) throws RemoteException;

    public static abstract class Stub extends Binder implements IActivityWatcher {
        public Stub() {
            attachInterface(this, "android.app.IActivityWatcher");
        }

        public static IActivityWatcher asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("android.app.IActivityWatcher");
            if (iin == null || !(iin instanceof IActivityWatcher)) {
                return new a(obj);
            }
            return (IActivityWatcher) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("android.app.IActivityWatcher");
                    activityResuming(data.readInt());
                    return true;
                case 2:
                    data.enforceInterface("android.app.IActivityWatcher");
                    closingSystemDialogs(data.readString());
                    return true;
                case 1598968902:
                    reply.writeString("android.app.IActivityWatcher");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IActivityWatcher {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // android.app.IActivityWatcher
            public final void activityResuming(int activityId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.app.IActivityWatcher");
                    _data.writeInt(activityId);
                    this.a.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.app.IActivityWatcher
            public final void closingSystemDialogs(String reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.app.IActivityWatcher");
                    _data.writeString(reason);
                    this.a.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
