package android.os;

public interface IPowerManager extends IInterface {
    void acquireWakeLock(int i, IBinder iBinder, String str) throws RemoteException;

    void crash(String str) throws RemoteException;

    int getSupportedWakeLockFlags() throws RemoteException;

    void goToSleep(long j) throws RemoteException;

    void goToSleepWithReason(long j, int i) throws RemoteException;

    boolean isScreenOn() throws RemoteException;

    void preventScreenOn(boolean z) throws RemoteException;

    void reboot(String str) throws RemoteException;

    void releaseWakeLock(IBinder iBinder, int i) throws RemoteException;

    void setAttentionLight(boolean z, int i) throws RemoteException;

    void setBacklightBrightness(int i) throws RemoteException;

    void setMaximumScreenOffTimeount(int i) throws RemoteException;

    void setPokeLock(int i, IBinder iBinder, String str) throws RemoteException;

    void setStayOnSetting(int i) throws RemoteException;

    void userActivity(long j, boolean z) throws RemoteException;

    void userActivityWithForce(long j, boolean z, boolean z2) throws RemoteException;

    public static abstract class Stub extends Binder implements IPowerManager {
        public Stub() {
            attachInterface(this, "android.os.IPowerManager");
        }

        public static IPowerManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("android.os.IPowerManager");
            if (iin == null || !(iin instanceof IPowerManager)) {
                return new a(obj);
            }
            return (IPowerManager) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            boolean _arg0;
            boolean _arg02;
            boolean _arg1;
            boolean _arg2;
            boolean _arg12;
            int i = 0;
            switch (code) {
                case 1:
                    data.enforceInterface("android.os.IPowerManager");
                    acquireWakeLock(data.readInt(), data.readStrongBinder(), data.readString());
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface("android.os.IPowerManager");
                    goToSleep(data.readLong());
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface("android.os.IPowerManager");
                    goToSleepWithReason(data.readLong(), data.readInt());
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface("android.os.IPowerManager");
                    releaseWakeLock(data.readStrongBinder(), data.readInt());
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface("android.os.IPowerManager");
                    long _arg03 = data.readLong();
                    if (data.readInt() != 0) {
                        _arg12 = true;
                    } else {
                        _arg12 = false;
                    }
                    userActivity(_arg03, _arg12);
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface("android.os.IPowerManager");
                    long _arg04 = data.readLong();
                    if (data.readInt() != 0) {
                        _arg1 = true;
                    } else {
                        _arg1 = false;
                    }
                    if (data.readInt() != 0) {
                        _arg2 = true;
                    } else {
                        _arg2 = false;
                    }
                    userActivityWithForce(_arg04, _arg1, _arg2);
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface("android.os.IPowerManager");
                    setPokeLock(data.readInt(), data.readStrongBinder(), data.readString());
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface("android.os.IPowerManager");
                    int _result = getSupportedWakeLockFlags();
                    reply.writeNoException();
                    reply.writeInt(_result);
                    return true;
                case 9:
                    data.enforceInterface("android.os.IPowerManager");
                    setStayOnSetting(data.readInt());
                    reply.writeNoException();
                    return true;
                case 10:
                    data.enforceInterface("android.os.IPowerManager");
                    setMaximumScreenOffTimeount(data.readInt());
                    reply.writeNoException();
                    return true;
                case 11:
                    data.enforceInterface("android.os.IPowerManager");
                    if (data.readInt() != 0) {
                        _arg02 = true;
                    } else {
                        _arg02 = false;
                    }
                    preventScreenOn(_arg02);
                    reply.writeNoException();
                    return true;
                case 12:
                    data.enforceInterface("android.os.IPowerManager");
                    boolean _result2 = isScreenOn();
                    reply.writeNoException();
                    if (_result2) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 13:
                    data.enforceInterface("android.os.IPowerManager");
                    reboot(data.readString());
                    reply.writeNoException();
                    return true;
                case 14:
                    data.enforceInterface("android.os.IPowerManager");
                    crash(data.readString());
                    reply.writeNoException();
                    return true;
                case 15:
                    data.enforceInterface("android.os.IPowerManager");
                    setBacklightBrightness(data.readInt());
                    reply.writeNoException();
                    return true;
                case 16:
                    data.enforceInterface("android.os.IPowerManager");
                    if (data.readInt() != 0) {
                        _arg0 = true;
                    } else {
                        _arg0 = false;
                    }
                    setAttentionLight(_arg0, data.readInt());
                    reply.writeNoException();
                    return true;
                case 1598968902:
                    reply.writeString("android.os.IPowerManager");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IPowerManager {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // android.os.IPowerManager
            public final void acquireWakeLock(int flags, IBinder lock, String tag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeInt(flags);
                    _data.writeStrongBinder(lock);
                    _data.writeString(tag);
                    this.a.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void goToSleep(long time) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeLong(time);
                    this.a.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void goToSleepWithReason(long time, int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeLong(time);
                    _data.writeInt(reason);
                    this.a.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void releaseWakeLock(IBinder lock, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeStrongBinder(lock);
                    _data.writeInt(flags);
                    this.a.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void userActivity(long when, boolean noChangeLights) throws RemoteException {
                int i = 0;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeLong(when);
                    if (noChangeLights) {
                        i = 1;
                    }
                    _data.writeInt(i);
                    this.a.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void userActivityWithForce(long when, boolean noChangeLights, boolean force) throws RemoteException {
                int i = 1;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeLong(when);
                    _data.writeInt(noChangeLights ? 1 : 0);
                    if (!force) {
                        i = 0;
                    }
                    _data.writeInt(i);
                    this.a.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void setPokeLock(int pokey, IBinder lock, String tag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeInt(pokey);
                    _data.writeStrongBinder(lock);
                    _data.writeString(tag);
                    this.a.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final int getSupportedWakeLockFlags() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    this.a.transact(8, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void setStayOnSetting(int val) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeInt(val);
                    this.a.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void setMaximumScreenOffTimeount(int timeMs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeInt(timeMs);
                    this.a.transact(10, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void preventScreenOn(boolean prevent) throws RemoteException {
                int i = 0;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    if (prevent) {
                        i = 1;
                    }
                    _data.writeInt(i);
                    this.a.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final boolean isScreenOn() throws RemoteException {
                boolean _result = false;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    this.a.transact(12, _data, _reply, 0);
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

            @Override // android.os.IPowerManager
            public final void reboot(String reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeString(reason);
                    this.a.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void crash(String message) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeString(message);
                    this.a.transact(14, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void setBacklightBrightness(int brightness) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    _data.writeInt(brightness);
                    this.a.transact(15, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IPowerManager
            public final void setAttentionLight(boolean on, int color) throws RemoteException {
                int i = 0;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.os.IPowerManager");
                    if (on) {
                        i = 1;
                    }
                    _data.writeInt(i);
                    _data.writeInt(color);
                    this.a.transact(16, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
