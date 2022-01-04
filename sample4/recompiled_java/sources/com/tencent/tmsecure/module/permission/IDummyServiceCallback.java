package com.tencent.tmsecure.module.permission;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* access modifiers changed from: package-private */
public interface IDummyServiceCallback extends IInterface {

    public static abstract class Stub extends Binder implements IDummyServiceCallback {
        static final int a = 1;
        private static final String b = "com.tencent.tmsecure.service.manager.permission.IServiceControllerCallback";

        static class a implements IDummyServiceCallback {
            private IBinder a;

            a(IBinder iBinder) {
                this.a = iBinder;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // com.tencent.tmsecure.module.permission.IDummyServiceCallback
            public final int onRequest(PermissionRequestInfo permissionRequestInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.b);
                    if (permissionRequestInfo != null) {
                        obtain.writeInt(1);
                        permissionRequestInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, b);
        }

        public static IDummyServiceCallback asInterface(IBinder iBinder) {
            return new a(iBinder);
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface(b);
                    int onRequest = onRequest(parcel.readInt() != 0 ? PermissionRequestInfo.createFromParcel(parcel) : null);
                    parcel2.writeInt(0);
                    parcel2.writeInt(onRequest);
                    return true;
                case 1598968902:
                    parcel2.writeString(b);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int onRequest(PermissionRequestInfo permissionRequestInfo) throws RemoteException;
}
