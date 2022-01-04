package tms;

import android.os.Parcel;

/* access modifiers changed from: package-private */
public final class ew {
    private static int a;
    private static int b;

    static {
        a = 43;
        b = 41;
        try {
            a = ((Integer) ah.a("android.view.IWindowManager$Stub", "TRANSACTION_setAnimationScales")).intValue();
            b = ((Integer) ah.a("android.view.IWindowManager$Stub", "TRANSACTION_getAnimationScales")).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            a = 43;
            b = 41;
        }
    }

    ew() {
    }

    public static void a(float[] fArr) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("android.view.IWindowManager");
            obtain.writeFloatArray(fArr);
            ai.a("window").transact(a, obtain, obtain2, 0);
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

    public static float[] a() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        float[] fArr = null;
        try {
            obtain.writeInterfaceToken("android.view.IWindowManager");
            ai.a("window").transact(b, obtain, obtain2, 0);
            obtain2.readException();
            fArr = obtain2.createFloatArray();
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
        return fArr;
    }
}
