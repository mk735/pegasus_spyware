package com.network.android;

import android.content.Context;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f108a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ String e;
    final /* synthetic */ String f;
    final /* synthetic */ String g;
    final /* synthetic */ boolean h;
    final /* synthetic */ String i;
    final /* synthetic */ Context j;
    final /* synthetic */ short k;
    final /* synthetic */ Map l;

    q(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, String str8, Context context, short s, Map map) {
        this.f108a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = z;
        this.i = str8;
        this.j = context;
        this.k = s;
        this.l = map;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:110:0x05b2, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x05b3, code lost:
        com.network.android.c.a.a.a(r13.f108a + "GetContentIM failed to find Skype-self-name " + r0.getMessage(), r0);
        r7 = "SELF";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:113:0x05ee, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:114:0x05ef, code lost:
        r5 = null;
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x0624, code lost:
        if (r5.isOpen() != false) goto L_0x0626;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:123:0x0626, code lost:
        r5.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x0629, code lost:
        r9.unlock();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:126:0x062e, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:127:0x0633, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:128:0x0634, code lost:
        com.network.android.c.a.a.a(r13.f108a + "GetContentIM getIM finally- " + r0.getMessage(), r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:129:0x0656, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:0x0657, code lost:
        r5 = null;
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:0x0664, code lost:
        if (r5.isOpen() != false) goto L_0x0666;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:0x0666, code lost:
        r5.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:138:0x0669, code lost:
        r9.unlock();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x066e, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:142:0x0672, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:143:0x0673, code lost:
        com.network.android.c.a.a.a(r13.f108a + "GetContentIM getIM finally- " + r1.getMessage(), r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:144:0x0694, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x0695, code lost:
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:146:0x0697, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x0698, code lost:
        r1 = null;
        r2 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:150:0x06a0, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x06a1, code lost:
        r2 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:0x06a5, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x06a6, code lost:
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:155:0x06a9, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:156:0x06aa, code lost:
        r1 = null;
        r2 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:177:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:178:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:182:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x024c, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:?, code lost:
        com.network.android.c.a.a.a(r13.f108a + "GetContentIM openDatabase NO_LOCALIZED_COLLATORS Throwable- " + r3.getMessage(), r3);
        com.network.android.c.a.a.a(r13.f108a + "GetContentIM getIM fail to openDatabase: " + r1 + ", try to open with OPEN_READONLY");
        r5 = android.database.sqlite.SQLiteDatabase.openDatabase(r1, null, 17);
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:68:0x03bf, B:84:0x0450] */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:107:0x0593  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x061b A[SYNTHETIC, Splitter:B:118:0x061b] */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x0620 A[Catch:{ Throwable -> 0x0633 }] */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x062e A[Catch:{ Throwable -> 0x0633 }] */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x0656 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:14:0x0144] */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x065b A[SYNTHETIC, Splitter:B:132:0x065b] */
    /* JADX WARNING: Removed duplicated region for block: B:135:0x0660 A[Catch:{ Throwable -> 0x0672 }] */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x066e A[Catch:{ Throwable -> 0x0672 }] */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x0694 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:20:0x0180] */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x0697 A[ExcHandler: all (th java.lang.Throwable), PHI: r1 
      PHI: (r1v27 android.database.Cursor) = (r1v29 android.database.Cursor), (r1v29 android.database.Cursor), (r1v39 android.database.Cursor), (r1v39 android.database.Cursor) binds: [B:86:0x0487, B:87:?, B:84:0x0450, B:85:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:84:0x0450] */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x06a0 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:29:0x01cd] */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x06c8  */
    /* JADX WARNING: Removed duplicated region for block: B:177:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x04ef  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x053e A[SYNTHETIC, Splitter:B:93:0x053e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
        // Method dump skipped, instructions count: 1743
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.q.run():void");
    }
}
