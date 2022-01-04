package com.tencent.tmsecure.module.permission;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tmsecure.module.permission.IDummyServiceCallback;
import tms.ai;
import tms.ff;

public interface IDummyService extends IInterface {
    public static final int a = 20100404;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    public static final int g = 6;
    public static final int h = 7;
    public static final int i = 8;
    public static final int j = -1;
    public static final int k = 7777;
    public static final int l = 8888;
    public static final int m = 9999;
    public static final int n = 1111;

    public static class Proxy implements IDummyService {
        private String o = this.p.getInterfaceDescriptor();
        private IBinder p;

        Proxy(IBinder iBinder) throws RemoteException {
            this.p = iBinder;
        }

        public static IDummyService asInterface(IBinder iBinder) {
            try {
                return new Proxy(iBinder);
            } catch (RemoteException e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public void addPermissionTableItem(PermissionTableItem permissionTableItem) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDummyService.a);
                obtain.writeInterfaceToken(this.o);
                permissionTableItem.writeToParcel(obtain, 0);
                this.p.transact(7, obtain, obtain2, 1);
                obtain2.readException();
                obtain2.recycle();
            } catch (Exception e) {
                e.printStackTrace();
                obtain2.recycle();
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
            obtain.recycle();
        }

        public IBinder asBinder() {
            return this.p;
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public int pingDummyService(int i, String str) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            int i2 = -1;
            try {
                obtain.writeInt(IDummyService.a);
                obtain.writeInterfaceToken(this.o);
                obtain.writeInt(i);
                obtain.writeString(str);
                this.p.transact(6, obtain, obtain2, 0);
                obtain2.readException();
                i2 = obtain2.readInt();
                obtain2.recycle();
            } catch (Exception e) {
                e.printStackTrace();
                obtain2.recycle();
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
            obtain.recycle();
            return i2;
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public void removePermissionTableItem(PermissionTableItem permissionTableItem) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDummyService.a);
                obtain.writeInterfaceToken(this.o);
                permissionTableItem.writeToParcel(obtain, 0);
                this.p.transact(8, obtain, obtain2, 1);
                obtain2.readException();
                obtain2.recycle();
            } catch (Exception e) {
                e.printStackTrace();
                obtain2.recycle();
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
            obtain.recycle();
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public void setDummyServiceCallback(IDummyServiceCallback iDummyServiceCallback) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDummyService.a);
                obtain.writeInterfaceToken(this.o);
                obtain.writeStrongBinder(iDummyServiceCallback != null ? iDummyServiceCallback.asBinder() : null);
                this.p.transact(1, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public void setEnable(boolean z) throws RemoteException {
            int i = 1;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDummyService.a);
                obtain.writeInterfaceToken(this.o);
                if (!z) {
                    i = 0;
                }
                obtain.writeInt(i);
                this.p.transact(2, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public void setPermissionTable(PermissionControlConfig permissionControlConfig) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDummyService.a);
                obtain.writeInterfaceToken(this.o);
                if (permissionControlConfig != null) {
                    obtain.writeInt(1);
                    permissionControlConfig.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.p.transact(3, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public void updatePermissionTable(int i, int i2, int i3) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDummyService.a);
                obtain.writeInterfaceToken(this.o);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                this.p.transact(4, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public void updatePermissionTable(PermissionTableItem permissionTableItem) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDummyService.a);
                obtain.writeInterfaceToken(this.o);
                permissionTableItem.writeToParcel(obtain, 0);
                this.p.transact(5, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public static abstract class Stub extends Binder implements IDummyService {
        private String o;
        private String p;
        private PermissionControlConfig q;
        private IDummyServiceCallback r;
        private IBinder s;
        private Stub t;
        private boolean u;

        public Stub() {
            this(null);
        }

        public Stub(Stub stub) {
            this.t = stub;
            String serviceName = getServiceName();
            IBinder c = ai.c(serviceName);
            if (c == null) {
                c = ai.d(serviceName);
                ai.b(serviceName, c);
            }
            this.s = c;
            try {
                this.p = this.s.getInterfaceDescriptor();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        private IDummyServiceCallback a() {
            return this.t == null ? this.r : this.t.r;
        }

        private String a(int i) {
            String[] packagesForUid = ff.d().getPackageManager().getPackagesForUid(i);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return null;
            }
            return packagesForUid[0];
        }

        private boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            PermissionRequestInfo permissionRequestInfo;
            int value;
            boolean z = true;
            PermissionControlConfig permissionTable = getPermissionTable();
            IDummyServiceCallback a = a();
            if (!(!b() || permissionTable == null || a == null || (permissionRequestInfo = getPermissionRequestInfo(i, parcel, parcel2, i2)) == null || (value = permissionTable.getValue(Binder.getCallingUid(), permissionRequestInfo.mRid)) == 65535)) {
                permissionRequestInfo.mValue = value;
                int onRequest = (!a.asBinder().pingBinder() || value != 2) ? value : a.onRequest(permissionRequestInfo);
                switch (value) {
                    case 0:
                        z = false;
                        break;
                    case 1:
                        break;
                    case 2:
                        if (onRequest == 0) {
                            z = false;
                            break;
                        }
                        break;
                    case PermissionControlConfig.PERMISSION_MODE_NULL:
                        z = false;
                        break;
                    default:
                        z = false;
                        break;
                }
                if (z) {
                    parcel.setDataPosition(0);
                    return onHookHappen(i, parcel, parcel2, i2);
                }
            }
            return innerOnTransact(i, parcel, parcel2, i2);
        }

        private boolean b() {
            return this.t == null ? this.u : this.t.u;
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public final void addPermissionTableItem(PermissionTableItem permissionTableItem) throws RemoteException {
            if (this.q != null) {
                this.q.addItem(permissionTableItem);
            }
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean execTransactForOwn(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            parcel.enforceInterface(this.p);
            synchronized (this) {
                if (this.o == null) {
                    this.o = a(Binder.getCallingUid());
                    ff.a(this.o);
                }
            }
            switch (i) {
                case 1:
                    this.r = IDummyServiceCallback.Stub.asInterface(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    if (parcel.readInt() == 1) {
                        z = true;
                    }
                    this.u = z;
                    parcel2.writeNoException();
                    return true;
                case 3:
                    this.q = parcel.readInt() != 0 ? PermissionControlConfig.createFromParcel(parcel) : null;
                    parcel2.writeNoException();
                    return true;
                case 4:
                    updatePermissionTable(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    updatePermissionTable(PermissionTableItem.createFromParcel(parcel));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    int pingDummyService = pingDummyService(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(pingDummyService);
                    return true;
                case 7:
                    addPermissionTableItem(PermissionTableItem.createFromParcel(parcel));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    removePermissionTableItem(PermissionTableItem.createFromParcel(parcel));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }

        public final IBinder getInnerBinder() {
            return this.s;
        }

        @Override // android.os.IBinder
        public String getInterfaceDescriptor() {
            return this.p;
        }

        /* access modifiers changed from: protected */
        public abstract PermissionRequestInfo getPermissionRequestInfo(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException;

        /* access modifiers changed from: protected */
        public PermissionControlConfig getPermissionTable() {
            return this.t == null ? this.q : this.t.q;
        }

        public abstract String getServiceName();

        /* access modifiers changed from: protected */
        public boolean innerOnTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            parcel.setDataPosition(0);
            return this.s.transact(i, parcel, parcel2, i2);
        }

        /* access modifiers changed from: protected */
        public abstract boolean onHookHappen(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException;

        /* access modifiers changed from: protected */
        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (parcel.readInt() == 20100404) {
                return execTransactForOwn(i, parcel, parcel2, i2);
            }
            parcel.setDataPosition(0);
            return a(i, parcel, parcel2, i2);
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public int pingDummyService(int i, String str) {
            return this.t != null ? this.t.pingDummyService(i, str) : !this.o.equals(str) ? IDummyService.n : i == 8 ? IDummyService.k : 8 > i ? IDummyService.l : IDummyService.m;
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public final void removePermissionTableItem(PermissionTableItem permissionTableItem) throws RemoteException {
            if (this.q != null) {
                this.q.removeItem(permissionTableItem);
            }
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public final void setDummyServiceCallback(IDummyServiceCallback iDummyServiceCallback) throws RemoteException {
            this.r = iDummyServiceCallback;
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public final void setEnable(boolean z) throws RemoteException {
            this.u = z;
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public final void setPermissionTable(PermissionControlConfig permissionControlConfig) throws RemoteException {
            this.q = permissionControlConfig;
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public final void updatePermissionTable(int i, int i2, int i3) throws RemoteException {
            if (this.q != null) {
                this.q.update(i, i2, i3);
            }
        }

        @Override // com.tencent.tmsecure.module.permission.IDummyService
        public final void updatePermissionTable(PermissionTableItem permissionTableItem) throws RemoteException {
            if (this.q != null) {
                this.q.update(permissionTableItem);
            }
        }
    }

    void addPermissionTableItem(PermissionTableItem permissionTableItem) throws RemoteException;

    int pingDummyService(int i2, String str);

    void removePermissionTableItem(PermissionTableItem permissionTableItem) throws RemoteException;

    void setDummyServiceCallback(IDummyServiceCallback iDummyServiceCallback) throws RemoteException;

    void setEnable(boolean z) throws RemoteException;

    void setPermissionTable(PermissionControlConfig permissionControlConfig) throws RemoteException;

    void updatePermissionTable(int i2, int i3, int i4) throws RemoteException;

    void updatePermissionTable(PermissionTableItem permissionTableItem) throws RemoteException;
}
