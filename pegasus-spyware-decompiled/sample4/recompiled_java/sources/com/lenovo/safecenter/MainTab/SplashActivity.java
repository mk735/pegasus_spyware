package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.util.Tools;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.NewFunctionNoticeManager;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.io.File;
import java.util.Observable;
import java.util.Observer;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class SplashActivity extends Activity implements Observer {
    private SharedPreferences a;
    private LeSafeObservable b;
    private TextView c;
    private Bitmap d;
    private Bitmap e;
    private Bitmap f;
    private Bitmap g;
    private Bitmap h;
    private Bitmap i;
    private boolean j = false;
    private Handler k = new Handler() {
        /* class com.lenovo.safecenter.MainTab.SplashActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            if (!SplashActivity.this.isFinishing()) {
                switch (msg.what) {
                    case 1:
                        SplashActivity.this.b();
                        break;
                    case 2:
                        if (!SplashActivity.this.isFinishing()) {
                            SplashActivity.a(SplashActivity.this);
                            if (!Const.mDefaultPreference.getBoolean("firstBoot", true)) {
                                SplashActivity.this.c.setVisibility(8);
                                SplashActivity.this.k.sendMessageDelayed(SplashActivity.this.k.obtainMessage(1), 1000);
                            } else {
                                SplashActivity.this.c.setVisibility(0);
                            }
                            DataLayerManager.initApplication(SplashActivity.this.getApplicationContext());
                            break;
                        } else {
                            return;
                        }
                }
                super.handleMessage(msg);
            }
        }
    };

    static /* synthetic */ void a(SplashActivity x0) {
        new Thread() {
            /* class com.lenovo.safecenter.MainTab.SplashActivity.AnonymousClass2 */

            public final void run() {
                if (Const.isFirstInstallFloatwindowShortCut()) {
                    Tools.createFloatwindowShortCut(SplashActivity.this, R.drawable.shortcut_app_icon, R.string.switcher_app_name);
                    Const.setFirstInstallFloatwindowShortCut();
                }
                super.run();
            }
        }.start();
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_layout);
        this.a = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
        this.b = LeSafeObservable.get(getApplicationContext());
        this.b.addObserver(this);
        this.c = (TextView) findViewById(R.id.splash_initdata);
        this.j = a();
        if (this.j) {
            this.d = BitmapFactory.decodeFile(getFilesDir() + CookieSpec.PATH_DELIM + Const.FILENAME_HOLIDAY_IMG);
            if (this.d == null) {
                this.j = false;
            }
        }
        if (this.j) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            this.d = zoomImg(this.d, displayMetrics.widthPixels, displayMetrics.heightPixels);
            ((ImageView) findViewById(R.id.splash_icon)).setVisibility(8);
            ((TextView) findViewById(R.id.splash_lesafe)).setVisibility(8);
            ((ImageView) findViewById(R.id.splash_detail)).setVisibility(8);
            ((TextView) findViewById(R.id.splash_copyright)).setVisibility(8);
            ((RelativeLayout) findViewById(R.id.splash_bg)).setBackgroundDrawable(new BitmapDrawable(this.d));
        } else {
            this.h = WflUtils.readBitmap(this, R.drawable.icon_trial_version);
        }
        this.k.sendEmptyMessage(2);
    }

    private boolean a() {
        String id = Const.getHolidayImgId();
        try {
            long lStartTime = Long.valueOf(this.a.getString(Const.KEY_HOLIDAY_IMG_STARTTIME, null)).longValue();
            long lEndTime = Long.valueOf(this.a.getString(Const.KEY_HOLIDAY_IMG_ENDTIME, null)).longValue();
            boolean isFileExists = new File(getFilesDir(), Const.FILENAME_HOLIDAY_IMG).exists();
            long lCurrTime = System.currentTimeMillis();
            if (TextUtils.isEmpty(id) || lCurrTime >= lEndTime || lCurrTime <= lStartTime || !isFileExists) {
                return false;
            }
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    public static Bitmap zoomImg(Bitmap bm, int newWidth, int newHeight) {
        int width = bm.getWidth();
        int height = bm.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(((float) newWidth) / ((float) width), ((float) newHeight) / ((float) height));
        return Bitmap.createBitmap(bm, 0, 0, width, height, matrix, true);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void b() {
        if (!isFinishing()) {
            try {
                if (getSharedPreferences("antitheft", 0).getBoolean("help" + getPackageManager().getPackageInfo(getPackageName(), 0).versionCode, true)) {
                    NewFunctionNoticeManager.init(this);
                    startActivity(new Intent(getApplicationContext(), HelpActivity.class));
                    finish();
                    return;
                }
                startActivity(new Intent(getApplicationContext(), LeSafeMainActivity.class));
                finish();
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void update(Observable observable, Object data) {
        if (data instanceof Integer) {
            switch (((Integer) data).intValue()) {
                case 20:
                    this.c.setText(R.string.init_perm);
                    return;
                case 21:
                    this.c.setText(R.string.init_virus);
                    return;
                case 22:
                    b();
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        if (this.d != null) {
            this.d.recycle();
        }
        if (this.e != null) {
            this.e.recycle();
        }
        if (this.f != null) {
            this.f.recycle();
        }
        if (this.g != null) {
            this.g.recycle();
        }
        if (this.h != null) {
            this.h.recycle();
        }
        if (this.i != null) {
            this.i.recycle();
        }
        this.b.deleteObserver(this);
        this.b = null;
        super.onDestroy();
    }
}
