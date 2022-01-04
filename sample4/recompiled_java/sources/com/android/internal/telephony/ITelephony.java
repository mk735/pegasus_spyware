package com.android.internal.telephony;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ITelephony extends IInterface {
    void answerRingingCall() throws RemoteException;

    void cancelMissedCallsNotification() throws RemoteException;

    boolean endCall() throws RemoteException;

    void silenceRinger() throws RemoteException;

    public static abstract class Stub extends Binder implements ITelephony {
        public Stub() {
            attachInterface(this, "com.android.internal.telephony.ITelephony");
        }

        public static ITelephony asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.android.internal.telephony.ITelephony");
            if (iin == null || !(iin instanceof ITelephony)) {
                return new a(obj);
            }
            return (ITelephony) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("com.android.internal.telephony.ITelephony");
                    boolean _result = endCall();
                    reply.writeNoException();
                    reply.writeInt(_result ? 1 : 0);
                    return true;
                case 2:
                    data.enforceInterface("com.android.internal.telephony.ITelephony");
                    answerRingingCall();
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface("com.android.internal.telephony.ITelephony");
                    silenceRinger();
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface("com.android.internal.telephony.ITelephony");
                    cancelMissedCallsNotification();
                    reply.writeNoException();
                    return true;
                case 1598968902:
                    reply.writeString("com.android.internal.telephony.ITelephony");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements ITelephony {
            private IBinder a;

            a(IBinder remote) {
                this.a = remote;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            @Override // com.android.internal.telephony.ITelephony
            public final boolean endCall() throws RemoteException {
                boolean _result = true;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.android.internal.telephony.ITelephony");
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

            @Override // com.android.internal.telephony.ITelephony
            public final void answerRingingCall() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.android.internal.telephony.ITelephony");
                    this.a.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public final void silenceRinger() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.android.internal.telephony.ITelephony");
                    this.a.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public final void cancelMissedCallsNotification() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.android.internal.telephony.ITelephony");
                    this.a.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
