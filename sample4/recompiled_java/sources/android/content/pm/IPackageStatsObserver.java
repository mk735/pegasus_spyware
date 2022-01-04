package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IPackageStatsObserver extends IInterface {
    void onGetStatsCompleted(PackageStats packageStats, boolean z) throws RemoteException;

    public static abstract class Stub extends Binder implements IPackageStatsObserver {
        public Stub() {
            attachInterface(this, "android.content.pm.IPackageStatsObserver");
        }

        public static IPackageStatsObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("android.content.pm.IPackageStatsObserver");
            if (iin == null || !(iin instanceof IPackageStatsObserver)) {
                return new a(obj);
            }
            return (IPackageStatsObserver) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            PackageStats _arg0;
            switch (code) {
                case 1:
                    data.enforceInterface("android.content.pm.IPackageStatsObserver");
                    if (data.readInt() != 0) {
                        _arg0 = (PackageStats) PackageStats.CREATOR.createFromParcel(data);
                    } else {
                        _arg0 = null;
                    }
                    onGetStatsCompleted(_arg0, data.readInt() != 0);
                    return true;
                case 1598968902:
                    reply.writeString("android.content.pm.IPackageStatsObserver");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IPackageStatsObserver {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // android.content.pm.IPackageStatsObserver
            public final void onGetStatsCompleted(PackageStats pStats, boolean succeeded) throws RemoteException {
                int i = 1;
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.content.pm.IPackageStatsObserver");
                    if (pStats != null) {
                        _data.writeInt(1);
                        pStats.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
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
