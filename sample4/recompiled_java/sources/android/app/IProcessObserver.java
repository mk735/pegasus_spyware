package android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IProcessObserver extends IInterface {
    void onForegroundActivitiesChanged(int i, int i2, boolean z) throws RemoteException;

    void onProcessDied(int i, int i2) throws RemoteException;

    public static abstract class Stub extends Binder implements IProcessObserver {
        public Stub() {
            attachInterface(this, "android.app.IProcessObserver");
        }

        public static IProcessObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("android.app.IProcessObserver");
            if (iin == null || !(iin instanceof IProcessObserver)) {
                return new a(obj);
            }
            return (IProcessObserver) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("android.app.IProcessObserver");
                    onForegroundActivitiesChanged(data.readInt(), data.readInt(), data.readInt() != 0);
                    return true;
                case 2:
                    data.enforceInterface("android.app.IProcessObserver");
                    onProcessDied(data.readInt(), data.readInt());
                    return true;
                case 1598968902:
                    reply.writeString("android.app.IProcessObserver");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IProcessObserver {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // android.app.IProcessObserver
            public final void onForegroundActivitiesChanged(int pid, int uid, boolean foregroundActivities) throws RemoteException {
                int i = 1;
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.app.IProcessObserver");
                    _data.writeInt(pid);
                    _data.writeInt(uid);
                    if (!foregroundActivities) {
                        i = 0;
                    }
                    _data.writeInt(i);
                    this.a.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.app.IProcessObserver
            public final void onProcessDied(int pid, int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.app.IProcessObserver");
                    _data.writeInt(pid);
                    _data.writeInt(uid);
                    this.a.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
