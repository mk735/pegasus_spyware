package tms;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

final class d implements c {
    private String a;
    private String b;
    private int c;
    private int d;
    private int e;

    public d(String str) {
        this.b = str;
        try {
            IBinder a2 = ai.a(this.b);
            if (a2 != null) {
                this.a = a2.getInterfaceDescriptor();
                ah.a(this.a + "$Stub");
                this.c = ah.a("TRANSACTION_call", 2);
                this.d = ah.a("TRANSACTION_endCall", 5);
                this.e = ah.a("TRANSACTION_cancelMissedCallsNotification", 13);
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // tms.c
    public final void a(String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.a);
            obtain.writeString(str);
            ai.a(this.b).transact(this.c, obtain, obtain2, 0);
            obtain2.readException();
            obtain2.recycle();
        } catch (RemoteException e2) {
            e2.printStackTrace();
            obtain2.recycle();
        } catch (Exception e3) {
            e3.printStackTrace();
            obtain2.recycle();
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
        obtain.recycle();
    }

    @Override // tms.c
    public final boolean a() {
        boolean z = false;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.a);
            ai.a(this.b).transact(this.d, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() != 0) {
                z = true;
            }
            obtain2.recycle();
        } catch (RemoteException e2) {
            e2.printStackTrace();
            obtain2.recycle();
        } catch (Exception e3) {
            e3.printStackTrace();
            obtain2.recycle();
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
        obtain.recycle();
        return z;
    }

    @Override // tms.c
    public final void b() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.a);
            ai.a(this.b).transact(this.e, obtain, obtain2, 0);
            obtain2.readException();
            obtain2.recycle();
        } catch (RemoteException e2) {
            e2.printStackTrace();
            obtain2.recycle();
        } catch (Exception e3) {
            e3.printStackTrace();
            obtain2.recycle();
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
        obtain.recycle();
    }
}
