package com.lenovo.leos.cloud.sync.common.auto;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ILesyncService extends IInterface {
    BackupDiffInfo getContactDiff() throws RemoteException;

    public static abstract class Stub extends Binder implements ILesyncService {
        public Stub() {
            attachInterface(this, "com.lenovo.leos.cloud.sync.common.auto.ILesyncService");
        }

        public static ILesyncService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.lenovo.leos.cloud.sync.common.auto.ILesyncService");
            if (iin == null || !(iin instanceof ILesyncService)) {
                return new a(obj);
            }
            return (ILesyncService) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("com.lenovo.leos.cloud.sync.common.auto.ILesyncService");
                    BackupDiffInfo _result = getContactDiff();
                    reply.writeNoException();
                    if (_result != null) {
                        reply.writeInt(1);
                        _result.writeToParcel(reply, 1);
                        return true;
                    }
                    reply.writeInt(0);
                    return true;
                case 1598968902:
                    reply.writeString("com.lenovo.leos.cloud.sync.common.auto.ILesyncService");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements ILesyncService {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // com.lenovo.leos.cloud.sync.common.auto.ILesyncService
            public final BackupDiffInfo getContactDiff() throws RemoteException {
                BackupDiffInfo _result;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.lenovo.leos.cloud.sync.common.auto.ILesyncService");
                    this.a.transact(1, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = BackupDiffInfo.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
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
