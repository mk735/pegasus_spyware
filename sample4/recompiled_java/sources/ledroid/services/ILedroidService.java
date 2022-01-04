package ledroid.services;

import android.content.ComponentName;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import ledroid.services.ILedroidPackageDataObserver;
import ledroid.services.ILedroidPackageDeleteObserver;
import ledroid.services.ILedroidPackageInstallObserver;
import ledroid.services.ILedroidPackageMoveObserver;

public interface ILedroidService extends IInterface {
    void addPreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName) throws RemoteException;

    void clearPackagePreferredActivities(String str) throws RemoteException;

    void clearRecentTask(int i) throws RemoteException;

    void deleteApplicationCacheFiles(String str, ILedroidPackageDataObserver iLedroidPackageDataObserver) throws RemoteException;

    void deletePackage(String str, ILedroidPackageDeleteObserver iLedroidPackageDeleteObserver, int i) throws RemoteException;

    void forceStopPackage(String str) throws RemoteException;

    void freeStorageAndNotify(long j, ILedroidPackageDataObserver iLedroidPackageDataObserver) throws RemoteException;

    String getSettingsSecureString(String str) throws RemoteException;

    String getSettingsSystemString(String str) throws RemoteException;

    int getVersionCode() throws RemoteException;

    void installPackage(Uri uri, ILedroidPackageInstallObserver iLedroidPackageInstallObserver, int i, String str) throws RemoteException;

    void killProcess(int i) throws RemoteException;

    void killProcesses(int[] iArr) throws RemoteException;

    void movePackage(String str, ILedroidPackageMoveObserver iLedroidPackageMoveObserver, int i) throws RemoteException;

    boolean putSettingsSecureString(String str, String str2) throws RemoteException;

    boolean putSettingsSystemString(String str, String str2) throws RemoteException;

    boolean removeRecentTask(int i, int i2) throws RemoteException;

    void setApplicationEnabledSetting(String str, int i, int i2) throws RemoteException;

    void setComponentEnabledSetting(ComponentName componentName, int i, int i2) throws RemoteException;

    void setStatusBarUsable(boolean z) throws RemoteException;

    public static abstract class Stub extends Binder implements ILedroidService {
        public Stub() {
            attachInterface(this, "ledroid.services.ILedroidService");
        }

        public static ILedroidService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("ledroid.services.ILedroidService");
            if (iin == null || !(iin instanceof ILedroidService)) {
                return new a(obj);
            }
            return (ILedroidService) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            Uri _arg0;
            ComponentName _arg02;
            IntentFilter _arg03;
            ComponentName _arg3;
            boolean _arg04;
            int i = 0;
            switch (code) {
                case 1:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    int _result = getVersionCode();
                    reply.writeNoException();
                    reply.writeInt(_result);
                    return true;
                case 2:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    if (data.readInt() != 0) {
                        _arg04 = true;
                    } else {
                        _arg04 = false;
                    }
                    setStatusBarUsable(_arg04);
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    boolean _result2 = removeRecentTask(data.readInt(), data.readInt());
                    reply.writeNoException();
                    if (_result2) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 4:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    clearRecentTask(data.readInt());
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    forceStopPackage(data.readString());
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    if (data.readInt() != 0) {
                        _arg03 = (IntentFilter) IntentFilter.CREATOR.createFromParcel(data);
                    } else {
                        _arg03 = null;
                    }
                    int _arg1 = data.readInt();
                    ComponentName[] _arg2 = (ComponentName[]) data.createTypedArray(ComponentName.CREATOR);
                    if (data.readInt() != 0) {
                        _arg3 = (ComponentName) ComponentName.CREATOR.createFromParcel(data);
                    } else {
                        _arg3 = null;
                    }
                    addPreferredActivity(_arg03, _arg1, _arg2, _arg3);
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    clearPackagePreferredActivities(data.readString());
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    if (data.readInt() != 0) {
                        _arg02 = (ComponentName) ComponentName.CREATOR.createFromParcel(data);
                    } else {
                        _arg02 = null;
                    }
                    setComponentEnabledSetting(_arg02, data.readInt(), data.readInt());
                    reply.writeNoException();
                    return true;
                case 9:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    setApplicationEnabledSetting(data.readString(), data.readInt(), data.readInt());
                    reply.writeNoException();
                    return true;
                case 10:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    deleteApplicationCacheFiles(data.readString(), ILedroidPackageDataObserver.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 11:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    freeStorageAndNotify(data.readLong(), ILedroidPackageDataObserver.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 12:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    if (data.readInt() != 0) {
                        _arg0 = (Uri) Uri.CREATOR.createFromParcel(data);
                    } else {
                        _arg0 = null;
                    }
                    installPackage(_arg0, ILedroidPackageInstallObserver.Stub.asInterface(data.readStrongBinder()), data.readInt(), data.readString());
                    reply.writeNoException();
                    return true;
                case 13:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    deletePackage(data.readString(), ILedroidPackageDeleteObserver.Stub.asInterface(data.readStrongBinder()), data.readInt());
                    reply.writeNoException();
                    return true;
                case 14:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    movePackage(data.readString(), ILedroidPackageMoveObserver.Stub.asInterface(data.readStrongBinder()), data.readInt());
                    reply.writeNoException();
                    return true;
                case 15:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    String _result3 = getSettingsSystemString(data.readString());
                    reply.writeNoException();
                    reply.writeString(_result3);
                    return true;
                case 16:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    boolean _result4 = putSettingsSystemString(data.readString(), data.readString());
                    reply.writeNoException();
                    if (_result4) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 17:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    String _result5 = getSettingsSecureString(data.readString());
                    reply.writeNoException();
                    reply.writeString(_result5);
                    return true;
                case 18:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    boolean _result6 = putSettingsSecureString(data.readString(), data.readString());
                    reply.writeNoException();
                    if (_result6) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 19:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    killProcess(data.readInt());
                    reply.writeNoException();
                    return true;
                case 20:
                    data.enforceInterface("ledroid.services.ILedroidService");
                    killProcesses(data.createIntArray());
                    reply.writeNoException();
                    return true;
                case 1598968902:
                    reply.writeString("ledroid.services.ILedroidService");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        /* access modifiers changed from: private */
        public static class a implements ILedroidService {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // ledroid.services.ILedroidService
            public final int getVersionCode() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    this.a.transact(1, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void setStatusBarUsable(boolean usable) throws RemoteException {
                int i = 0;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    if (usable) {
                        i = 1;
                    }
                    _data.writeInt(i);
                    this.a.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final boolean removeRecentTask(int taskId, int flags) throws RemoteException {
                boolean _result = false;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeInt(taskId);
                    _data.writeInt(flags);
                    this.a.transact(3, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = true;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void clearRecentTask(int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeInt(flags);
                    this.a.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void forceStopPackage(String pkgs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeString(pkgs);
                    this.a.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void addPreferredActivity(IntentFilter filter, int match, ComponentName[] set, ComponentName activity) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    if (filter != null) {
                        _data.writeInt(1);
                        filter.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeInt(match);
                    _data.writeTypedArray(set, 0);
                    if (activity != null) {
                        _data.writeInt(1);
                        activity.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.a.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void clearPackagePreferredActivities(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeString(packageName);
                    this.a.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void setComponentEnabledSetting(ComponentName componentName, int newState, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    if (componentName != null) {
                        _data.writeInt(1);
                        componentName.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeInt(newState);
                    _data.writeInt(flags);
                    this.a.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void setApplicationEnabledSetting(String packageName, int newState, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeString(packageName);
                    _data.writeInt(newState);
                    _data.writeInt(flags);
                    this.a.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void deleteApplicationCacheFiles(String packageName, ILedroidPackageDataObserver observer) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeString(packageName);
                    _data.writeStrongBinder(observer != null ? observer.asBinder() : null);
                    this.a.transact(10, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void freeStorageAndNotify(long freeStorageSize, ILedroidPackageDataObserver observer) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeLong(freeStorageSize);
                    _data.writeStrongBinder(observer != null ? observer.asBinder() : null);
                    this.a.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void installPackage(Uri packageURI, ILedroidPackageInstallObserver observer, int flags, String installerPackageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    if (packageURI != null) {
                        _data.writeInt(1);
                        packageURI.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeStrongBinder(observer != null ? observer.asBinder() : null);
                    _data.writeInt(flags);
                    _data.writeString(installerPackageName);
                    this.a.transact(12, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void deletePackage(String packageName, ILedroidPackageDeleteObserver observer, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeString(packageName);
                    _data.writeStrongBinder(observer != null ? observer.asBinder() : null);
                    _data.writeInt(flags);
                    this.a.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void movePackage(String packageName, ILedroidPackageMoveObserver observer, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeString(packageName);
                    _data.writeStrongBinder(observer != null ? observer.asBinder() : null);
                    _data.writeInt(flags);
                    this.a.transact(14, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final String getSettingsSystemString(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeString(name);
                    this.a.transact(15, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readString();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final boolean putSettingsSystemString(String name, String value) throws RemoteException {
                boolean _result = false;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeString(name);
                    _data.writeString(value);
                    this.a.transact(16, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = true;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final String getSettingsSecureString(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeString(name);
                    this.a.transact(17, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readString();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final boolean putSettingsSecureString(String name, String value) throws RemoteException {
                boolean _result = false;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeString(name);
                    _data.writeString(value);
                    this.a.transact(18, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = true;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void killProcess(int pid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeInt(pid);
                    this.a.transact(19, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // ledroid.services.ILedroidService
            public final void killProcesses(int[] pids) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("ledroid.services.ILedroidService");
                    _data.writeIntArray(pids);
                    this.a.transact(20, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
