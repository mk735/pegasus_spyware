package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DialogUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerBattery;
import com.lenovo.safecenter.utils.update.LeSafeUpdate;
import com.lenovo.safecenter.utils.update.LeSafeUpdateInfo;

public class AppDownloadActivity extends Activity implements View.OnClickListener {
    public static final String APP_LOCK_FILE_NAME = "LenovoSafeBox455.apk";
    public static final int APP_LOCK_PATCH_VERSIONCODE = 3900369;
    public static final String CHANNEL_KEY_LEBATTERY = "Develop";
    public static final String CHANNEL_KEY_LECLOUD = "leanquan_embed";
    public static final String CHANNEL_KEY_SELF = "self";
    public static final String WIDGET4X1_FILE_NAME = "LenovoSafeWidget115.apk";
    private LeSafeUpdate a;
    private String b;
    private boolean c = true;
    private int d;
    private TextView e;
    private Handler f = new Handler() {
        /* class com.lenovo.safecenter.MainTab.AppDownloadActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    Toast.makeText(AppDownloadActivity.this, (String) msg.obj, 0).show();
                    break;
            }
            super.handleMessage(msg);
        }
    };
    private BroadcastReceiver g = new BroadcastReceiver() {
        /* class com.lenovo.safecenter.MainTab.AppDownloadActivity.AnonymousClass2 */

        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
                Log.i("wu0wu", "AppDownloadActivity ACTION_PACKAGE_ADDED");
                AppDownloadActivity.a(AppDownloadActivity.this);
                if (Const.PACKAGENAME_LE_BATTERY.equals(intent.getData().getSchemeSpecificPart())) {
                    TrackEvent.reportDownloadLeBattery();
                }
            }
        }
    };
    private String h;
    private boolean i = false;

    static /* synthetic */ void a(AppDownloadActivity x0) {
        if (AppUtil.isAppExistence(x0, x0.h)) {
            x0.i = false;
            WflUtils.sendMessageToHandler(0, x0.getString(R.string.installed_text), x0.f);
            if (!x0.c) {
                x0.finish();
            }
            x0.e.setText(x0.getString(R.string.go_));
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.download_app);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        registerReceiver(this.g, intentFilter);
        TextView textView = (TextView) findViewById(R.id.txt_title);
        textView.setText(R.string.safe_backup);
        ImageView imageView = (ImageView) findViewById(R.id.title_back);
        imageView.setVisibility(0);
        imageView.setOnClickListener(this);
        Intent intent = getIntent();
        this.d = intent.getByteExtra("type", (byte) 1);
        this.c = intent.getBooleanExtra("isEntry", true);
        Log.i("AppDownloadActivity", "initView()...type=" + this.d);
        ImageView imageView2 = (ImageView) findViewById(R.id.download_app_img);
        ImageView imageView3 = (ImageView) findViewById(R.id.descrip);
        TextView textView2 = (TextView) findViewById(R.id.tv_name);
        TextView textView3 = (TextView) findViewById(R.id.tv_descrip);
        TextView textView4 = (TextView) findViewById(R.id.download_app_show1);
        TextView textView5 = (TextView) findViewById(R.id.download_app_show2);
        TextView textView6 = (TextView) findViewById(R.id.download_app_show3);
        TextView textView7 = (TextView) findViewById(R.id.download_app_show4);
        TextView textView8 = (TextView) findViewById(R.id.alert_text);
        this.e = (TextView) findViewById(R.id.download_app_downlink);
        this.e.setOnClickListener(this);
        switch (this.d) {
            case 0:
                this.b = CHANNEL_KEY_LEBATTERY;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.leftMargin = 40;
                this.h = Const.PACKAGENAME_LE_BATTERY;
                textView.setText(R.string.battery_center);
                imageView2.setBackgroundResource(R.drawable.power_logo);
                imageView3.setBackgroundResource(R.drawable.lebattery_description);
                textView4.setText(R.string.download_app_battery1);
                textView5.setText(R.string.download_app_battery2);
                textView6.setText(R.string.download_app_battery3);
                textView7.setText(R.string.download_app_battery4);
                textView4.setLayoutParams(layoutParams);
                textView5.setLayoutParams(layoutParams);
                textView6.setLayoutParams(layoutParams);
                textView7.setLayoutParams(layoutParams);
                textView8.setVisibility(8);
                this.e.setText(getString(R.string.new_use));
                return;
            case 1:
                this.b = CHANNEL_KEY_LECLOUD;
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams2.addRule(13);
                this.h = Const.PACKAGENAME_LE_CLOUD;
                textView.setText(R.string.safe_backup);
                imageView2.setBackgroundResource(R.drawable.lesyn_img_logo);
                textView2.setText(R.string.lecloud);
                textView3.setText(R.string.lecloud_safebackup);
                textView4.setText(R.string.download_app_cloud_sync1);
                textView5.setText(R.string.download_app_cloud_sync2);
                textView6.setText(R.string.download_app_cloud_sync3);
                textView7.setText(R.string.download_app_cloud_sync4);
                textView4.setLayoutParams(layoutParams2);
                textView5.setLayoutParams(layoutParams2);
                textView6.setLayoutParams(layoutParams2);
                textView7.setLayoutParams(layoutParams2);
                textView8.setVisibility(8);
                this.e.setText(getString(R.string.download_app_link));
                return;
            case 2:
            default:
                return;
            case 3:
                this.b = CHANNEL_KEY_SELF;
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams3.leftMargin = 40;
                this.h = Const.PACKAGENAME_APP_LOCK;
                textView.setText(R.string.privacy_safe);
                imageView2.setBackgroundResource(R.drawable.download_app_lock_icon);
                textView2.setText(R.string.privacy_safe);
                textView3.setVisibility(8);
                textView4.setText(R.string.download_app_lock_sync1);
                textView5.setText(R.string.download_app_lock_sync2);
                textView6.setText(R.string.download_app_lock_sync3);
                textView7.setText(R.string.download_app_lock_sync4);
                textView4.setLayoutParams(layoutParams3);
                textView5.setLayoutParams(layoutParams3);
                textView6.setLayoutParams(layoutParams3);
                textView7.setLayoutParams(layoutParams3);
                if (!AppUtil.isAppExistence(this, this.h) || !mustUpdateAppLock(this)) {
                    textView8.setVisibility(8);
                    this.e.setText(getString(R.string.new_use));
                    return;
                }
                textView8.setVisibility(0);
                textView8.setText(getString(R.string.app_lock_must_update));
                this.e.setText(getString(R.string.install_text));
                return;
            case 4:
                this.b = CHANNEL_KEY_SELF;
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams4.leftMargin = 40;
                this.h = Const.PACKAGENAME_KID_MODE;
                textView.setText(R.string.kid_mode);
                imageView2.setBackgroundResource(R.drawable.kid_mode_icon);
                textView2.setText(R.string.kid_mode);
                textView3.setText(R.string.kid_mode_detail);
                textView4.setText(R.string.download_app_kidmode1);
                textView5.setText(R.string.download_app_kidmode2);
                textView6.setText(R.string.download_app_kidmode3);
                textView4.setLayoutParams(layoutParams4);
                textView5.setLayoutParams(layoutParams4);
                textView6.setLayoutParams(layoutParams4);
                textView7.setVisibility(8);
                textView8.setVisibility(8);
                this.e.setText(getString(R.string.new_use));
                return;
        }
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.download_app_downlink /*{ENCODED_INT: 2131296979}*/:
                if (TextUtils.isEmpty(this.h)) {
                    return;
                }
                if (Const.PACKAGENAME_APP_LOCK.equals(this.h)) {
                    if (!AppUtil.isAppExistence(this, this.h)) {
                        a(APP_LOCK_FILE_NAME, this, this.h);
                        return;
                    } else if (mustUpdateAppLock(this)) {
                        a(APP_LOCK_FILE_NAME, this, this.h);
                        return;
                    } else {
                        WflUtils.startPrivatezone(this);
                        finish();
                        return;
                    }
                } else if (AppUtil.isAppExistence(this, this.h)) {
                    if (Const.PACKAGENAME_LE_CLOUD.equals(this.h)) {
                        WflUtils.startLeCloudSyn(this);
                    } else if (Const.PACKAGENAME_LE_BATTERY.equals(this.h)) {
                        DrawerBattery.startLeBattery(this);
                    } else if (Const.PACKAGENAME_KID_MODE.equals(this.h)) {
                        WflUtils.startKidMode(this);
                    }
                    finish();
                    return;
                } else if (Const.PACKAGENAME_LE_CLOUD.equals(this.h) || Const.PACKAGENAME_LE_BATTERY.equals(this.h) || Const.PACKAGENAME_KID_MODE.equals(this.h)) {
                    String str = this.h;
                    String str2 = this.b;
                    if (WflUtils.isNetworkAvailable(this)) {
                        if (this.a == null) {
                            this.a = new LeSafeUpdate(this, str, 0, str2, false, false, false, new LeSafeUpdate.LeSafeUpdateListenser() {
                                /* class com.lenovo.safecenter.MainTab.AppDownloadActivity.AnonymousClass3 */

                                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                                public final void onQueryResp(String resultion, LeSafeUpdateInfo lfui) {
                                    Log.i("ydp", "downloadActivity onQueryResp:" + resultion);
                                }

                                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                                public final void onDownLoadComplete(String path) {
                                    Log.i("ydp", "downloadActivity onDownLoadComplete:" + path);
                                }

                                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                                public final void onDownLoadException(int errorCode) {
                                    Log.i("ydp", "downloadActivity onDownLoadException:" + errorCode);
                                }

                                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                                public final void onInstallComplete(boolean succeed) {
                                    Log.i("ydp", "downloadActivity onInstallComplete:" + succeed);
                                }
                            });
                        }
                        this.a.upDate(true);
                        return;
                    }
                    DialogUtil.createManualUpdateDialog(this, 4, null);
                    return;
                } else {
                    return;
                }
            case R.id.base_title_left /*{ENCODED_INT: 2131297465}*/:
                Intent i2 = new Intent(this, LeSafeMainActivity.class);
                i2.setFlags(67108864);
                startActivity(i2);
                overridePendingTransition(R.anim.slide_out_right, R.anim.slide_in_left);
                return;
            case R.id.title_back /*{ENCODED_INT: 2131297709}*/:
                finish();
                return;
            default:
                return;
        }
    }

    public static boolean mustUpdateAppLock(Context context) {
        return AppUtil.getAppVersionCode(context, Const.PACKAGENAME_APP_LOCK) < 3900369;
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        unregisterReceiver(this.g);
        super.onDestroy();
    }

    public static void startAppDownloadActivity(Context context, int type, boolean isEntry) {
        Intent down = new Intent(context, AppDownloadActivity.class);
        down.putExtra("type", (byte) type);
        down.putExtra("isEntry", isEntry);
        context.startActivity(down);
    }

    private void a(final String fileName, final Context context, final String packageName) {
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.MainTab.AppDownloadActivity.AnonymousClass4 */

            /* JADX WARNING: Removed duplicated region for block: B:21:0x00b2  */
            /* JADX WARNING: Removed duplicated region for block: B:32:0x011b A[SYNTHETIC, Splitter:B:32:0x011b] */
            /* JADX WARNING: Removed duplicated region for block: B:38:0x0129 A[SYNTHETIC, Splitter:B:38:0x0129] */
            /* JADX WARNING: Removed duplicated region for block: B:54:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final void run() {
                /*
                // Method dump skipped, instructions count: 326
                */
                throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.MainTab.AppDownloadActivity.AnonymousClass4.run():void");
            }
        }).start();
    }

    public static void copyAssetsFilesInstall(final String fileName, final String packageName, final Context context, final Handler handler, final int what) {
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.MainTab.AppDownloadActivity.AnonymousClass5 */

            /* JADX WARNING: Removed duplicated region for block: B:18:0x008d  */
            /* JADX WARNING: Removed duplicated region for block: B:29:0x00ef A[SYNTHETIC, Splitter:B:29:0x00ef] */
            /* JADX WARNING: Removed duplicated region for block: B:35:0x00fd A[SYNTHETIC, Splitter:B:35:0x00fd] */
            /* JADX WARNING: Removed duplicated region for block: B:50:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final void run() {
                /*
                // Method dump skipped, instructions count: 278
                */
                throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.MainTab.AppDownloadActivity.AnonymousClass5.run():void");
            }
        }).start();
    }

    public static void copyAssetsFilesInstallAtBackgroud(final String fileName, final Context context, final String packageName) {
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.MainTab.AppDownloadActivity.AnonymousClass6 */

            /* JADX WARNING: Removed duplicated region for block: B:18:0x007d  */
            /* JADX WARNING: Removed duplicated region for block: B:29:0x00cb A[SYNTHETIC, Splitter:B:29:0x00cb] */
            /* JADX WARNING: Removed duplicated region for block: B:35:0x00d7 A[SYNTHETIC, Splitter:B:35:0x00d7] */
            /* JADX WARNING: Removed duplicated region for block: B:51:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final void run() {
                /*
                // Method dump skipped, instructions count: 276
                */
                throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.MainTab.AppDownloadActivity.AnonymousClass6.run():void");
            }
        }).start();
    }
}
