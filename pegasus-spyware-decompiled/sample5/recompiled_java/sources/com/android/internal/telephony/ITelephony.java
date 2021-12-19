package com.android.internal.telephony;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface ITelephony extends IInterface {

    public abstract class Stub extends Binder implements ITelephony {

        class Proxy implements ITelephony {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f35a;

            @Override // com.android.internal.telephony.ITelephony
            public void answerRingingCall() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.ITelephony");
                    this.f35a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public IBinder asBinder() {
                return this.f35a;
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean endCall() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.ITelephony");
                    this.f35a.transact(3, obtain, obtain2, 0);
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

            @Override // com.android.internal.telephony.ITelephony
            public void silenceRinger() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.ITelephony");
                    this.f35a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.android.internal.telephony.ITelephony");
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                    answerRingingCall();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                    silenceRinger();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.android.internal.telephony.ITelephony");
                    boolean endCall = endCall();
                    parcel2.writeNoException();
                    parcel2.writeInt(endCall ? 1 : 0);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.android.internal.telephony.ITelephony");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void answerRingingCall();

    boolean endCall();

    void silenceRinger();
}
