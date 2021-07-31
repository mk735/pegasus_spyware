package android.app;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IActivityController extends IInterface {
    boolean activityResuming(String str) throws RemoteException;

    boolean activityStarting(Intent intent, String str) throws RemoteException;

    boolean appCrashed(String str, int i, String str2, String str3, long j, String str4) throws RemoteException;

    int appEarlyNotResponding(String str, int i, String str2) throws RemoteException;

    int appNotResponding(String str, int i, String str2) throws RemoteException;

    public static abstract class Stub extends Binder implements IActivityController {
        public Stub() {
            attachInterface(this, "android.app.IActivityController");
        }

        public static IActivityController asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("android.app.IActivityController");
            if (iin == null || !(iin instanceof IActivityController)) {
                return new a(obj);
            }
            return (IActivityController) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            Intent _arg0;
            int i = 0;
            switch (code) {
                case 1:
                    data.enforceInterface("android.app.IActivityController");
                    if (data.readInt() != 0) {
                        _arg0 = (Intent) Intent.CREATOR.createFromParcel(data);
                    } else {
                        _arg0 = null;
                    }
                    boolean _result = activityStarting(_arg0, data.readString());
                    reply.writeNoException();
                    reply.writeInt(_result ? 1 : 0);
                    return true;
                case 2:
                    data.enforceInterface("android.app.IActivityController");
                    boolean _result2 = activityResuming(data.readString());
                    reply.writeNoException();
                    if (_result2) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 3:
                    data.enforceInterface("android.app.IActivityController");
                    boolean _result3 = appCrashed(data.readString(), data.readInt(), data.readString(), data.readString(), data.readLong(), data.readString());
                    reply.writeNoException();
                    if (_result3) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 4:
                    data.enforceInterface("android.app.IActivityController");
                    int _result4 = appEarlyNotResponding(data.readString(), data.readInt(), data.readString());
                    reply.writeNoException();
                    reply.writeInt(_result4);
                    return true;
                case 5:
                    data.enforceInterface("android.app.IActivityController");
                    int _result5 = appNotResponding(data.readString(), data.readInt(), data.readString());
                    reply.writeNoException();
                    reply.writeInt(_result5);
                    return true;
                case 1598968902:
                    reply.writeString("android.app.IActivityController");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IActivityController {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // android.app.IActivityController
            public final boolean activityStarting(Intent intent, String pkg) throws RemoteException {
                boolean _result = true;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.app.IActivityController");
                    if (intent != null) {
                        _data.writeInt(1);
                        intent.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeString(pkg);
                    this.a.transact(1, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() == 0) {
                        _result = false;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.app.IActivityController
            public final boolean activityResuming(String pkg) throws RemoteException {
                boolean _result = false;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.app.IActivityController");
                    _data.writeString(pkg);
                    this.a.transact(2, _data, _reply, 0);
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

            @Override // android.app.IActivityController
            public final boolean appCrashed(String processName, int pid, String shortMsg, String longMsg, long timeMillis, String stackTrace) throws RemoteException {
                boolean _result = false;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.app.IActivityController");
                    _data.writeString(processName);
                    _data.writeInt(pid);
                    _data.writeString(shortMsg);
                    _data.writeString(longMsg);
                    _data.writeLong(timeMillis);
                    _data.writeString(stackTrace);
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

            @Override // android.app.IActivityController
            public final int appEarlyNotResponding(String processName, int pid, String annotation) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.app.IActivityController");
                    _data.writeString(processName);
                    _data.writeInt(pid);
                    _data.writeString(annotation);
                    this.a.transact(4, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.app.IActivityController
            public final int appNotResponding(String processName, int pid, String processStats) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("android.app.IActivityController");
                    _data.writeString(processName);
                    _data.writeInt(pid);
                    _data.writeString(processStats);
                    this.a.transact(5, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
