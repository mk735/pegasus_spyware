package com.tencent.tmsecure.module.permission;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.Arrays;
import java.util.List;

public interface IFirewallService extends IInterface {
    public static final String a = "tms_firewall";
    public static final String b = "com.tencent.tmsecure.IFirewallService";
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;

    public static class Proxy implements IFirewallService {
        private IBinder f;

        Proxy(IBinder iBinder) {
            this.f = iBinder;
        }

        public static IFirewallService asInterface(IBinder iBinder) {
            return new Proxy(iBinder);
        }

        public IBinder asBinder() {
            return this.f;
        }

        public String getInterfaceDescriptor() {
            return IFirewallService.b;
        }

        @Override // com.tencent.tmsecure.module.permission.IFirewallService
        public boolean isNetEnable(String str) throws RemoteException {
            boolean z = false;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(IFirewallService.b);
                obtain.writeString(str);
                this.f.transact(3, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                return z;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.tencent.tmsecure.module.permission.IFirewallService
        public void setNetEnable(String str, boolean z) throws RemoteException {
            int i = 1;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(IFirewallService.b);
                obtain.writeString(str);
                if (!z) {
                    i = 0;
                }
                obtain.writeInt(i);
                this.f.transact(1, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.tencent.tmsecure.module.permission.IFirewallService
        public void setNetEnable(List<String> list, boolean z) throws RemoteException {
            int i = 1;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(IFirewallService.b);
                obtain.writeStringList(list);
                if (!z) {
                    i = 0;
                }
                obtain.writeInt(i);
                this.f.transact(2, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public static abstract class Stub extends Binder implements IFirewallService {
        public Stub() {
            attachInterface(this, IFirewallService.b);
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.IBinder
        public String getInterfaceDescriptor() {
            return IFirewallService.b;
        }

        /* access modifiers changed from: protected */
        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            int i3 = 0;
            boolean z = false;
            boolean z2 = false;
            parcel.enforceInterface(IFirewallService.b);
            switch (i) {
                case 1:
                    String readString = parcel.readString();
                    if (parcel.readInt() == 1) {
                        z = true;
                    }
                    setNetEnable(readString, z);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    String[] createStringArray = parcel.createStringArray();
                    if (parcel.readInt() == 1) {
                        z2 = true;
                    }
                    setNetEnable(Arrays.asList(createStringArray), z2);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    boolean isNetEnable = isNetEnable(parcel.readString());
                    parcel2.writeNoException();
                    if (isNetEnable) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean isNetEnable(String str) throws RemoteException;

    void setNetEnable(String str, boolean z) throws RemoteException;

    void setNetEnable(List<String> list, boolean z) throws RemoteException;
}
