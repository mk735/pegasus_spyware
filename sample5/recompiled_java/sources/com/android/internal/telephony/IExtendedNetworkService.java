package com.android.internal.telephony;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;

public interface IExtendedNetworkService extends IInterface {

    public abstract class Stub extends Binder implements IExtendedNetworkService {

        class Proxy implements IExtendedNetworkService {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f34a;

            public IBinder asBinder() {
                return this.f34a;
            }

            @Override // com.android.internal.telephony.IExtendedNetworkService
            public void clearMmiString() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IExtendedNetworkService");
                    this.f34a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.IExtendedNetworkService
            public CharSequence getMmiRunningText() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IExtendedNetworkService");
                    this.f34a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.IExtendedNetworkService
            public CharSequence getUserMessage(CharSequence charSequence) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IExtendedNetworkService");
                    if (charSequence != null) {
                        obtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f34a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.IExtendedNetworkService
            public void setMmiString(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.internal.telephony.IExtendedNetworkService");
                    obtain.writeString(str);
                    this.f34a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.android.internal.telephony.IExtendedNetworkService");
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.android.internal.telephony.IExtendedNetworkService");
                    setMmiString(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.android.internal.telephony.IExtendedNetworkService");
                    CharSequence mmiRunningText = getMmiRunningText();
                    parcel2.writeNoException();
                    if (mmiRunningText != null) {
                        parcel2.writeInt(1);
                        TextUtils.writeToParcel(mmiRunningText, parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface("com.android.internal.telephony.IExtendedNetworkService");
                    CharSequence userMessage = getUserMessage(parcel.readInt() != 0 ? (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (userMessage != null) {
                        parcel2.writeInt(1);
                        TextUtils.writeToParcel(userMessage, parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface("com.android.internal.telephony.IExtendedNetworkService");
                    clearMmiString();
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.android.internal.telephony.IExtendedNetworkService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void clearMmiString();

    CharSequence getMmiRunningText();

    CharSequence getUserMessage(CharSequence charSequence);

    void setMmiString(String str);
}
