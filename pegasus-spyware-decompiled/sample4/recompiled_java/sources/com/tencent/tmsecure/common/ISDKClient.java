package com.tencent.tmsecure.common;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ISDKClient extends IInterface {
    public static final String DESCRIPTOR = "com.tencent.tmsecure.common.ISDKClient";
    public static final int TRANSACTION_SENDMESSAGE = 20100405;

    public static class Proxy implements ISDKClient {
        private IBinder a;
        private int b = Binder.getCallingUid();

        Proxy(IBinder iBinder) {
            this.a = iBinder;
        }

        public static ISDKClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ISDKClient.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ISDKClient)) ? new Proxy(iBinder) : (ISDKClient) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Proxy)) {
                return false;
            }
            Proxy proxy = (Proxy) obj;
            return this.a == proxy.a && this.b == proxy.b;
        }

        public String getInterfaceDescriptor() {
            return ISDKClient.DESCRIPTOR;
        }

        public int hashCode() {
            return this.b;
        }

        @Override // com.tencent.tmsecure.common.ISDKClient
        public DataEntity sendMessage(DataEntity dataEntity) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            obtain.writeInterfaceToken(ISDKClient.DESCRIPTOR);
            obtain.writeParcelable(dataEntity, 0);
            try {
                this.a.transact(ISDKClient.TRANSACTION_SENDMESSAGE, obtain, obtain2, 0);
                obtain2.readException();
                return (DataEntity) obtain2.readParcelable(DataEntity.class.getClassLoader());
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        }
    }

    public static abstract class Stub extends Binder implements ISDKClient {
        public Stub() {
            attachInterface(this, ISDKClient.DESCRIPTOR);
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Stub) {
                return super.equals((Stub) obj);
            }
            return false;
        }

        @Override // android.os.IBinder
        public String getInterfaceDescriptor() {
            return ISDKClient.DESCRIPTOR;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 20100405) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(ISDKClient.DESCRIPTOR);
            DataEntity sendMessage = sendMessage((DataEntity) parcel.readParcelable(DataEntity.class.getClassLoader()));
            parcel2.writeNoException();
            parcel2.writeParcelable(sendMessage, 0);
            return true;
        }
    }

    DataEntity sendMessage(DataEntity dataEntity) throws RemoteException;
}
