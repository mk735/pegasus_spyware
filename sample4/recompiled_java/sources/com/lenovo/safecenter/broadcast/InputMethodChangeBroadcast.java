package com.lenovo.safecenter.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.provider.Settings;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.DaoImpl;
import com.lenovo.safecenter.adapter.DbAdapter;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.support.SafePaymentApp;
import com.lenovo.safecenter.support.SecurityService;
import com.tencent.tmsecure.utils.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class InputMethodChangeBroadcast extends BroadcastReceiver {
    private DaoImpl a;
    private HashMap<String, Boolean> b;
    private Context c;

    static /* synthetic */ void a(InputMethodChangeBroadcast x0, String x1) {
        try {
            Log.e("ydp", "insterApp pkgName:" + x1);
            ApplicationInfo applicationInfo = x0.c.getPackageManager().getApplicationInfo(x1, 8192);
            String obj = applicationInfo.loadLabel(x0.c.getPackageManager()).toString();
            applicationInfo.loadIcon(x0.c.getPackageManager());
            x0.a.insterForUserApp(obj, x1, AppUtil.getCretMD5(x0.c, x1), String.valueOf(new File(applicationInfo.sourceDir).length()), "true", "true");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onReceive(final Context context, Intent intent) {
        if (intent.getAction().equals("com.safecenter.boot.safeinput")) {
            Log.i("ydp", "InputMethodChangeBroadcast ---boot");
        }
        this.c = context;
        if (SecurityService.mSIL().size() == 0) {
            new Thread() {
                /* class com.lenovo.safecenter.broadcast.InputMethodChangeBroadcast.AnonymousClass1 */

                public final void run() {
                    InputStream is = context.getResources().openRawResource(R.raw.si);
                    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(is));
                    while (true) {
                        try {
                            String buffer = localBufferedReader.readLine();
                            if (buffer == null) {
                                localBufferedReader.close();
                                is.close();
                                return;
                            } else if (!buffer.equals("")) {
                                String[] temp = buffer.split(",");
                                SecurityService.mSIL().put(temp[2], temp);
                            }
                        } catch (IOException e) {
                            e.printStackTrace();
                            return;
                        }
                    }
                }
            }.start();
        }
        this.a = new DaoImpl(new DbAdapter(context));
        this.b = new HashMap<>();
        String s = Settings.Secure.getString(context.getContentResolver(), "default_input_method");
        if (s != null) {
            try {
                if (s.equals("com.android.inputmethod.latin/.LatinIME") || s.equals("com.android.inputmethod.pinyin/.PinyinIME") || s.equals("com.google.android.inputmethod.pinyin/.PinyinIME") || !isThirdpartApp(s.substring(0, s.indexOf(CookieSpec.PATH_DELIM)))) {
                    Settings.System.putString(this.c.getContentResolver(), "safe_input_method", s);
                } else if (SecurityService.mSIL().get(s) != null) {
                    a(SecurityService.mSIL().get(s)[0], SecurityService.mSIL().get(s)[1], s);
                }
            } catch (StringIndexOutOfBoundsException e) {
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(final String pkgName, final String md5, final String id) {
        SafePaymentApp userApp = this.a.queryByPackageNameForUserApp(pkgName);
        if (userApp == null) {
            if (this.b.get(pkgName) == null) {
                this.b.put(pkgName, true);
                new Thread() {
                    /* class com.lenovo.safecenter.broadcast.InputMethodChangeBroadcast.AnonymousClass2 */

                    public final void run() {
                        Log.e("ydp", "insterApp ---:" + pkgName);
                        InputMethodChangeBroadcast.a(InputMethodChangeBroadcast.this, pkgName);
                        InputMethodChangeBroadcast.this.a(pkgName, md5, id);
                    }
                }.start();
            }
        } else if (userApp.getApp_md5().equals(md5)) {
            Settings.System.putString(this.c.getContentResolver(), "safe_input_method", id);
            Log.i("ydp", "InputMethodChangeBroadcast:" + id + "    " + Settings.System.getString(this.c.getContentResolver(), "safe_input_method"));
        }
    }

    public boolean isThirdpartApp(String pkg) {
        try {
            ApplicationInfo appInfo = this.c.getPackageManager().getApplicationInfo(pkg, 0);
            if ((appInfo.flags & 128) == 0 && (appInfo.flags & 1) != 0) {
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }
}
