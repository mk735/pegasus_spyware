package tms;

import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.utils.SDKUtil;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

public final class dl extends BaseManager {
    private final Uri a = Uri.parse("content://telephony/carriers");
    private final Uri b = Uri.parse("content://telephony/carriers/current");
    private final Uri c = Uri.parse("content://telephony/carriers/preferapn");
    private Context d;
    private ContentResolver e;
    private TelephonyManager f;
    private WifiManager g;
    private BluetoothAdapter h;
    private ConnectivityManager i;
    private final String[] j = {"_id", "apn", "type"};

    /* access modifiers changed from: package-private */
    public static final class a {
        public String a;
        public String b;
        public String c;
        public String d;

        a() {
        }
    }

    private static String a(String str, boolean z) {
        if (str == null) {
            return null;
        }
        String trim = str.trim().replace("_suffix_apn", "").trim();
        return !z ? trim + "_suffix_apn" : trim;
    }

    private static boolean b(String str) {
        return str.toLowerCase().endsWith("mms");
    }

    private boolean d(boolean z) {
        if (n() == z) {
            return true;
        }
        try {
            Method declaredMethod = Class.forName(this.f.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(this.f, new Object[0]);
            Class<?> cls = Class.forName(invoke.getClass().getName());
            Method declaredMethod2 = z ? cls.getDeclaredMethod("enableDataConnectivity", new Class[0]) : cls.getDeclaredMethod("disableDataConnectivity", new Class[0]);
            declaredMethod2.setAccessible(true);
            declaredMethod2.invoke(invoke, new Object[0]);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean e(boolean z) {
        try {
            this.i.getClass().getMethod("setMobileDataEnabled", Boolean.TYPE).invoke(this.i, new Boolean(z));
            return true;
        } catch (SecurityException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
        }
        return false;
    }

    private boolean n() {
        return this.f.getDataState() == 2;
    }

    private boolean o() {
        try {
            return ((Boolean) this.i.getClass().getMethod("getMobileDataEnabled", new Class[0]).invoke(this.i, new Object[0])).booleanValue();
        } catch (SecurityException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
        }
        return false;
    }

    public final int a(String str) {
        if (cu.b(str)) {
            return 0;
        }
        return cu.c(str) ? 1 : -1;
    }

    public final boolean a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.d.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public final boolean a(int i2) {
        if (!(a(k()) == i2 || i2 == -1)) {
            String str = i2 == 0 ? "net" : "wap";
            Cursor query = this.d.getContentResolver().query(this.a, new String[]{"_id", "apn", "type", "current"}, null, null, null);
            ArrayList arrayList = new ArrayList();
            if (query != null) {
                int columnIndex = query.getColumnIndex("_id");
                int columnIndex2 = query.getColumnIndex("type");
                int columnIndex3 = query.getColumnIndex("current");
                int columnIndex4 = query.getColumnIndex("apn");
                if (query.moveToFirst()) {
                    while (!query.isAfterLast()) {
                        a aVar = new a();
                        aVar.a = query.getString(columnIndex);
                        aVar.b = query.getString(columnIndex4);
                        aVar.c = query.getString(columnIndex2);
                        aVar.d = query.getString(columnIndex3);
                        if (aVar.d != null && aVar.d.equals(DatabaseTables.SYSTEM_MARK) && aVar.b != null && aVar.b.endsWith(str) && aVar.c != null && !b(aVar.c)) {
                            arrayList.add(aVar);
                        }
                        query.moveToNext();
                    }
                }
                query.close();
            }
            if (arrayList.size() > 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("apn_id", ((a) arrayList.get(0)).a);
                this.e.update(this.c, contentValues, null, null);
                return true;
            }
        }
        return false;
    }

    public final boolean a(boolean z) {
        if (this.g == null) {
            return false;
        }
        return this.g.setWifiEnabled(z);
    }

    public final boolean b() {
        if (this.g == null) {
            return false;
        }
        return this.g.isWifiEnabled();
    }

    public final boolean b(boolean z) {
        return SDKUtil.getSDKVersion() > 8 ? e(z) : d(z);
    }

    public final int c() {
        if (this.g == null) {
            return 4;
        }
        return this.g.getWifiState();
    }

    public final boolean c(boolean z) {
        boolean z2 = false;
        Cursor query = this.e.query(this.b, this.j, null, null, null);
        if (query != null && query.moveToFirst()) {
            int columnIndex = query.getColumnIndex("_id");
            int columnIndex2 = query.getColumnIndex("apn");
            int columnIndex3 = query.getColumnIndex("type");
            boolean z3 = false;
            while (!query.isAfterLast()) {
                String string = query.getString(columnIndex3);
                String string2 = query.getString(columnIndex2);
                if (b(string)) {
                    query.moveToNext();
                } else {
                    int i2 = query.getInt(columnIndex);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("apn", a(string2, z));
                    contentValues.put("type", a(string, z));
                    z3 = this.e.update(this.b, contentValues, new StringBuilder().append("_id=").append(i2).toString(), null) > 0;
                    query.moveToNext();
                }
            }
            z2 = z3;
        }
        if (query != null) {
            query.close();
        }
        return z2;
    }

    public final int d() {
        if (this.g == null) {
            return -1;
        }
        return this.g.getConnectionInfo().getRssi();
    }

    public final boolean e() {
        if (this.h == null) {
            return false;
        }
        return this.h.isEnabled();
    }

    public final boolean f() {
        if (this.h == null) {
            return false;
        }
        if (this.h.isEnabled()) {
            return true;
        }
        return this.h.enable();
    }

    public final boolean g() {
        if (this.h == null) {
            return false;
        }
        if (!this.h.isEnabled()) {
            return true;
        }
        return this.h.disable();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 0;
    }

    public final int h() {
        if (this.h == null) {
            return -1;
        }
        return this.h.getState();
    }

    public final boolean i() {
        return SDKUtil.getSDKVersion() > 8 ? o() : n();
    }

    public final boolean j() {
        NetworkInfo activeNetworkInfo = this.i.getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return (activeNetworkInfo.getState() == NetworkInfo.State.CONNECTING || activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED) && activeNetworkInfo.getType() == 0;
        }
        return false;
    }

    public final String k() {
        int columnIndex;
        String str = null;
        Cursor query = this.e.query(this.c, null, null, null, null);
        if (!(query == null || !query.moveToFirst() || (columnIndex = query.getColumnIndex("apn")) == -1)) {
            String string = query.getString(columnIndex);
            if (!TextUtils.isEmpty(string)) {
                str = cu.a(string);
            }
        }
        if (query != null) {
            query.close();
        }
        return str;
    }

    public final int l() {
        return a(k());
    }

    public final boolean m() {
        boolean z = false;
        Cursor query = this.e.query(this.b, this.j, null, null, null);
        if (query != null && query.moveToFirst()) {
            int columnIndex = query.getColumnIndex("type");
            int i2 = 0;
            while (true) {
                if (!query.isAfterLast()) {
                    String string = query.getString(columnIndex);
                    if (string != null) {
                        if (string != null && string.endsWith("_suffix_apn")) {
                            break;
                        }
                        if (!b(string)) {
                            i2++;
                        }
                        if (i2 > 0) {
                            z = true;
                            break;
                        }
                        query.moveToNext();
                    } else {
                        query.moveToNext();
                    }
                } else {
                    break;
                }
            }
        }
        if (query != null) {
            query.close();
        }
        return z;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.d = context;
        this.e = this.d.getContentResolver();
        this.f = (TelephonyManager) this.d.getSystemService("phone");
        this.g = (WifiManager) this.d.getSystemService(SettingUtil.WIFI);
        this.h = BluetoothAdapter.getDefaultAdapter();
        this.i = (ConnectivityManager) this.d.getSystemService("connectivity");
    }
}
