package tms;

import android.content.SharedPreferences;
import com.tencent.tmsecure.common.TMSApplication;

public final class af {
    private String a;
    private SharedPreferences.Editor b = this.c.edit();
    private SharedPreferences c = TMSApplication.getApplicaionContext().getSharedPreferences("TMSProperties", 0);

    public af(String str) {
        this.a = str;
    }

    private String a(String str) {
        return this.a + "." + str;
    }

    public final float a(String str, float f) {
        return this.c.getFloat(a(str), f);
    }

    public final int a(String str, int i) {
        return this.c.getInt(a(str), i);
    }

    public final long a(String str, long j) {
        return this.c.getLong(a(str), j);
    }

    public final String a(String str, String str2) {
        return this.c.getString(a(str), str2);
    }

    public final void a() {
        this.b.commit();
    }

    public final void a(String str, float f, boolean z) {
        this.b.putFloat(a(str), f);
        if (z) {
            a();
        }
    }

    public final void a(String str, int i, boolean z) {
        this.b.putInt(a(str), i);
        if (z) {
            a();
        }
    }

    public final void a(String str, long j, boolean z) {
        this.b.putLong(a(str), j);
        if (z) {
            a();
        }
    }

    public final void a(String str, String str2, boolean z) {
        this.b.putString(a(str), str2);
        if (z) {
            a();
        }
    }

    public final void a(String str, boolean z, boolean z2) {
        this.b.putBoolean(a(str), z);
        if (z2) {
            a();
        }
    }

    public final boolean a(String str, boolean z) {
        return this.c.getBoolean(a(str), z);
    }
}
