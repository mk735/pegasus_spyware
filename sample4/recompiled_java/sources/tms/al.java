package tms;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import com.tencent.lbsapi.QLBSService;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.antitheft.IAntitheftTips;
import com.tencent.tmsecure.utils.Log;

public final class al extends BaseManager {
    private Context a;
    private IAntitheftTips b;
    private ao c;
    private QLBSService d;

    private boolean b() {
        String string = Settings.Secure.getString(this.a.getContentResolver(), "location_providers_allowed");
        if (string != null && string.contains("gps")) {
            return true;
        }
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.android.settings.widget.SettingsAppWidgetProvider");
        intent.addCategory("android.intent.category.ALTERNATIVE");
        intent.setData(Uri.parse("custom:3"));
        try {
            PendingIntent.getBroadcast(this.a, 0, intent, 0).send();
            return true;
        } catch (PendingIntent.CanceledException e) {
            Log.i("AntitheftManagerImpl", e.getMessage());
            return false;
        }
    }

    static /* synthetic */ void c(al alVar) {
        alVar.d.release();
        alVar.d = null;
    }

    public final ao a() {
        return this.c;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0044  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0085  */
    /* JADX WARNING: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(com.tencent.tmsecure.module.antitheft.IAntitheftTips r8, java.lang.String r9, java.lang.String r10) {
        /*
        // Method dump skipped, instructions count: 374
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.al.a(com.tencent.tmsecure.module.antitheft.IAntitheftTips, java.lang.String, java.lang.String):boolean");
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = context;
        this.c = new ao();
    }
}
