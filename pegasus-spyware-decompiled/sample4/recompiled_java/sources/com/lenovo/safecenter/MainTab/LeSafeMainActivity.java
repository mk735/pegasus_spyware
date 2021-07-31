package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.telephony.TelephonyManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.lps.sus.c.c;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.AppsManager.SettingsActivity;
import com.lenovo.safecenter.HealthCheck.HealthCheckupActivity;
import com.lenovo.safecenter.Laboratory.MyProcessObserver;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.DaoImpl;
import com.lenovo.safecenter.adapter.DbAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.encoders.UrlBase64;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DialogUtil;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.Panel;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.homepageUtil.DrawerAdapter;
import com.lenovo.safecenter.utils.homepageUtil.FourBoxAdapter;
import com.lenovo.safecenter.utils.httpApi.HttpApiAsyncTask;
import com.lenovo.safecenter.utils.httpApi.LeSafeAPI;
import com.lenovo.safecenter.utils.update.LeSafeUpdate;
import com.lenovo.safecenter.utils.update.LeSafeUpdateInfo;
import com.lenovo.safecenter.utils.updateLab.AutoUpdateLabManager;
import com.lenovo.safecenter.utils.updateLab.UpdateLabManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import java.util.regex.Pattern;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.methods.PostMethod;

public class LeSafeMainActivity extends Activity implements View.OnClickListener, HttpApiAsyncTask.ApiRequestListener, Observer {
    private ImageView a;
    private ImageView b;
    private LeSafeObservable c;
    private Context d;
    private String e;
    private boolean f;
    private boolean g;
    private PopupWindow h;
    private Panel i;
    private SharedPreferences j;
    private CustomDialog k;
    private ProgressDialog l;
    private LeSafeUpdate m;
    private Handler n = new Handler() {
        /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ((InputMethodManager) LeSafeMainActivity.this.getSystemService("input_method")).toggleSoftInput(0, 2);
                    return;
                case 2:
                    if (LeSafeMainActivity.this.l != null) {
                        LeSafeMainActivity.this.l.dismiss();
                        LeSafeMainActivity.this.l = null;
                    }
                    if (LeSafeMainActivity.this.k != null) {
                        LeSafeMainActivity.this.k.dismiss();
                        LeSafeMainActivity.this.k = null;
                    }
                    Toast.makeText(LeSafeMainActivity.this.d, (int) R.string.feedback_upload_done, 1).show();
                    return;
                case 3:
                    if (LeSafeMainActivity.this.l != null) {
                        LeSafeMainActivity.this.l.dismiss();
                        LeSafeMainActivity.this.l = null;
                    }
                    if (LeSafeMainActivity.this.k != null) {
                        LeSafeMainActivity.this.k.dismiss();
                        LeSafeMainActivity.this.k = null;
                    }
                    Toast.makeText(LeSafeMainActivity.this.d, (int) R.string.feedback_error, 1).show();
                    return;
                case 4:
                    Toast.makeText(LeSafeMainActivity.this.d, (int) R.string.install_succeeded, 1).show();
                    return;
                case 5:
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType(Uri.parse("file://" + ((String) msg.obj)), "application/vnd.android.package-archive");
                    intent.setFlags(268435456);
                    LeSafeMainActivity.this.d.startActivity(intent);
                    return;
                default:
                    return;
            }
        }
    };
    private SharedPreferences o;
    private FourBoxAdapter p;
    private DrawerAdapter q;
    private DrawerAdapter r;

    static /* synthetic */ void f(LeSafeMainActivity x0) {
        try {
            x0.e = ActivityManagerNative.getDefault().getConfiguration().locale.getCountry();
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) x0.getSystemService("activity")).getRunningServices(50);
        for (int i2 = 0; i2 < runningServices.size(); i2++) {
            ActivityManager.RunningServiceInfo runningServiceInfo = runningServices.get(i2);
            if (runningServiceInfo.service.getClassName().equals("com.lenovo.safecenter.support.SecurtyService")) {
                x0.f = true;
            } else if (runningServiceInfo.service.getClassName().equals("com.lenovo.safecenter.support.SafeCenterService")) {
                x0.g = true;
            }
        }
        if (!x0.f) {
            x0.startService(new Intent(x0.d, SecurityService.class));
        }
        if (!x0.g && WflUtils.isRoot()) {
            x0.startService(new Intent(x0, SafeCenterService.class));
        }
    }

    static /* synthetic */ void h(LeSafeMainActivity x0) {
        ((LinearLayout) x0.findViewById(R.id.close_header_layout)).setVisibility(4);
        ((LinearLayout) x0.findViewById(R.id.open_header_layout)).setVisibility(0);
        x0.a.setVisibility(0);
    }

    static /* synthetic */ void i(LeSafeMainActivity x0) {
        ((LinearLayout) x0.findViewById(R.id.close_header_layout)).setVisibility(0);
        ((LinearLayout) x0.findViewById(R.id.open_header_layout)).setVisibility(4);
        x0.a.setVisibility(8);
    }

    static /* synthetic */ void n(LeSafeMainActivity x0) {
        x0.l = new ProgressDialog(x0);
        x0.l.setOnDismissListener(new DialogInterface.OnDismissListener() {
            /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass5 */

            public final void onDismiss(DialogInterface dialog) {
                LeSafeMainActivity.this.l = null;
            }
        });
        x0.l.setProgressStyle(0);
        x0.l.setMessage(x0.getString(R.string.feedback_progress));
        x0.l.show();
    }

    public void onCreate(Bundle savedInstanceState) {
        int i2;
        super.onCreate(savedInstanceState);
        Log.i("wu0wu", "LeSafeMainActivity  onCreate() start.....");
        setContentView(R.layout.main);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.safecenter);
        ((ImageView) findViewById(R.id.title_back)).setVisibility(4);
        this.b = (ImageView) findViewById(R.id.title_set);
        this.b.setImageResource(R.drawable.menu);
        this.b.setVisibility(0);
        this.b.setOnClickListener(this);
        Const.initIsRootThePhone();
        this.o = PreferenceManager.getDefaultSharedPreferences(this);
        this.d = this;
        new Thread() {
            /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass13 */

            public final void run() {
                DbAdapter db = new DbAdapter(LeSafeMainActivity.this.getApplicationContext());
                try {
                    db.open();
                    db.close();
                    if (new DaoImpl(new DbAdapter(LeSafeMainActivity.this.getApplicationContext())).queryCount() <= 0) {
                        Log.e("ydp", "create sayment database!!");
                        InputStream is = LeSafeMainActivity.this.getApplicationContext().getResources().openRawResource(R.raw.data_1);
                        try {
                            FileOutputStream fos = new FileOutputStream("/data/data/com.lenovo.safecenter/databases/safepayment.db", false);
                            byte[] buffer = new byte[is.available()];
                            is.read(buffer);
                            fos.write(buffer);
                            fos.close();
                            is.close();
                        } catch (FileNotFoundException e) {
                            e.printStackTrace();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (Exception e3) {
                    try {
                        Log.e("ydp", "sqlite version error:" + e3);
                        new File("/data/data/com.lenovo.safecenter/databases", DbAdapter.DB_NAME).delete();
                        InputStream is2 = LeSafeMainActivity.this.getApplicationContext().getResources().openRawResource(R.raw.data_1);
                        Log.i("ydp", "database copy");
                        FileOutputStream fos2 = new FileOutputStream("/data/data/com.lenovo.safecenter/databases/safepayment.db", false);
                        byte[] buffer2 = new byte[is2.available()];
                        is2.read(buffer2);
                        fos2.write(buffer2);
                        fos2.close();
                        is2.close();
                        Log.i("ydp", "database copy  end");
                    } catch (Exception e1) {
                        e1.printStackTrace();
                        Log.i("ydp", "database copy  error");
                    }
                }
            }
        }.start();
        this.j = PreferenceManager.getDefaultSharedPreferences(this);
        this.c = LeSafeObservable.get(getApplicationContext());
        this.c.addObserver(this);
        if (Build.VERSION.SDK_INT >= 14 && PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).getBoolean(Const.KEY_IS_SAFEPAYMEN_ON, true)) {
            MyProcessObserver.getDefault(getApplicationContext()).register();
        }
        PwdUtil.judgeUpdateAppLockPatch(this.d);
        if (this.m == null) {
            try {
                i2 = getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
                i2 = 0;
            }
            this.m = new LeSafeUpdate(this.d, getPackageName(), i2, Const.SUS_CHANNEL, false, false, true, new LeSafeUpdate.LeSafeUpdateListenser() {
                /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass14 */

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onQueryResp(String resultion, LeSafeUpdateInfo lfui) {
                    if (!resultion.equals(c.S)) {
                        UpdateLabManager.startServiceQueryLab(LeSafeMainActivity.this.getApplicationContext());
                    }
                }

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onInstallComplete(boolean succeed) {
                }

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onDownLoadException(int errorCode) {
                    UpdateLabManager.startServiceQueryLab(LeSafeMainActivity.this.getApplicationContext());
                }

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onDownLoadComplete(String path) {
                }
            });
        }
        if (!Const.updateAPK || !new File(this.j.getString("update_apk_path", "")).exists()) {
            this.m.upDate(false);
        } else {
            new CustomDialog.Builder(this).setTitle(R.string.dialog_update_title).setMessage(R.string.dialog_update_msg).setPositiveButton(R.string.install_now, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass3 */

                public final void onClick(DialogInterface dialog, int which) {
                    if (!CMDHelper.installAPK(LeSafeMainActivity.this.d, LeSafeMainActivity.this.j.getString("update_apk_path", ""), LeSafeMainActivity.this.getPackageName())) {
                        LeSafeMainActivity.this.n.sendMessage(LeSafeMainActivity.this.n.obtainMessage(5, LeSafeMainActivity.this.j.getString("update_apk_path", "")));
                    }
                }
            }).setNegativeButton(R.string.last_time_do, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass2 */

                public final void onClick(DialogInterface dialog, int which) {
                }
            }).setColorPositiveButton(true).setColorNegativeButton(false).show();
        }
        this.f = false;
        new Thread() {
            /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass7 */

            public final void run() {
                LeSafeMainActivity.f(LeSafeMainActivity.this);
            }
        }.start();
        TrafficStatsService.getExecutorService().execute(new Thread() {
            /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass8 */

            public final void run() {
                TrafficStatsService.trafficForceUpdate(LeSafeMainActivity.this.d);
            }
        });
        ((LinearLayout) findViewById(R.id.close_header_layout)).setVisibility(0);
        ImageView imageView = (ImageView) findViewById(R.id.drawer_up_header);
        ImageView imageView2 = (ImageView) findViewById(R.id.drawer_down_header);
        Animation loadAnimation = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_in);
        Animation loadAnimation2 = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_out);
        loadAnimation.setRepeatMode(2);
        loadAnimation.setDuration(500);
        loadAnimation.setRepeatCount(-1);
        loadAnimation2.setRepeatMode(2);
        loadAnimation2.setDuration(500);
        loadAnimation2.setRepeatCount(-1);
        imageView.setAnimation(loadAnimation);
        imageView.startAnimation(loadAnimation);
        imageView2.setAnimation(loadAnimation2);
        imageView2.startAnimation(loadAnimation2);
        ((TextView) findViewById(R.id.button_healthCheckup_home_page)).setOnClickListener(this);
        this.i = (Panel) findViewById(R.id.bottomDrawer);
        this.a = (ImageView) findViewById(R.id.black_layout);
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass10 */

            public final void onClick(View v) {
                LeSafeMainActivity.this.i.setOpen(false, true);
            }
        });
        this.i.setOnPanelListener(new Panel.OnPanelListener() {
            /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass11 */

            @Override // com.lenovo.safecenter.utils.Panel.OnPanelListener
            public final void onPanelOpened(Panel panel) {
                LeSafeMainActivity.h(LeSafeMainActivity.this);
            }

            @Override // com.lenovo.safecenter.utils.Panel.OnPanelListener
            public final void onPanelClosed(Panel panel) {
                LeSafeMainActivity.i(LeSafeMainActivity.this);
            }
        });
        this.p = new FourBoxAdapter(this.d);
        ((GridView) findViewById(R.id.home_page_four_box)).setAdapter((ListAdapter) this.p);
        this.q = new DrawerAdapter(this.d, true);
        this.r = new DrawerAdapter(this.d, false);
        ((GridView) findViewById(R.id.drawer_up_GridView)).setAdapter((ListAdapter) this.q);
        GridView gridView = (GridView) findViewById(R.id.panelHideContent);
        gridView.setAdapter((ListAdapter) this.r);
        gridView.setOnTouchListener(new View.OnTouchListener() {
            /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass9 */

            public final boolean onTouch(View v, MotionEvent event) {
                if (2 == event.getAction()) {
                    return true;
                }
                return false;
            }
        });
        LeSafeAPI.getHolidayImgSync(this.d, this);
        LeSafeAPI.getSafePayList(this.d, this);
        Log.i("wu0wu", "LeSafeMainActivity  onCreate() end.....");
    }

    private void a(String detail, int score, int color) {
        TextView detailCheckup = (TextView) findViewById(R.id.detail_healthCheckup_home_page);
        if (!Const.getIsHealthCheckNoOptimiza().booleanValue() || score == 100) {
            a(detailCheckup, detail, 0, String.valueOf(score).length(), getResources().getColor(color));
            return;
        }
        a(detailCheckup, getString(R.string.health_check_wording_lastcheck) + String.format(getString(R.string.health_check_but_no_optimiza), Integer.valueOf(score)), getString(R.string.health_check_wording_lastcheck).length(), String.valueOf(score).length() + getString(R.string.health_check_wording_lastcheck).length(), getResources().getColor(color));
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 82) {
            if (this.h == null) {
                showpopupWindow();
            } else if (this.h.isShowing()) {
                this.h.dismiss();
            }
        } else if (keyCode == 4) {
            if (this.h != null) {
                this.h.dismiss();
            }
            if (this.i.isOpen()) {
                a(true);
                return true;
            }
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    /* access modifiers changed from: protected */
    public void exit() {
        if (this.c != null) {
            this.c.deleteObservers();
            this.c.close();
        }
        TrackEvent.shutdown();
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.button_healthCheckup_home_page:
                startActivity(new Intent(this, HealthCheckupActivity.class));
                TrackEvent.reportOneKeyHealthCheckup();
                return;
            case R.id.popwindow_update:
                startActivity(new Intent(getApplicationContext(), UpdateVersionActivity.class));
                this.h.dismiss();
                return;
            case R.id.popwindow_set:
                startActivity(new Intent(this, SettingsActivity.class));
                this.h.dismiss();
                return;
            case R.id.popwindow_feedback:
                View inflate = LayoutInflater.from(this.d).inflate(R.layout.feedback_dialog_layout, (ViewGroup) null);
                final EditText editText = (EditText) inflate.findViewById(R.id.feedback_content_et);
                final EditText editText2 = (EditText) inflate.findViewById(R.id.feedback_mail_et);
                editText.setText(this.j.getString("feedback_msg", ""));
                editText2.setText(this.j.getString("feedback_mail", ""));
                this.k = new CustomDialog.Builder(this.d).setTitle(R.string.feedback).setContentView(inflate).setPositiveButton(R.string.feedback_upload, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass4 */

                    public final void onClick(DialogInterface dialog, int which) {
                        if (editText.getText().toString().length() == 0) {
                            Toast.makeText(LeSafeMainActivity.this.d, (int) R.string.feedback_content_, 1).show();
                        } else if (editText2.getText().toString().length() == 0) {
                            Toast.makeText(LeSafeMainActivity.this.d, (int) R.string.feedback_mail_null, 1).show();
                        } else if (LeSafeMainActivity.this.isMailNO(editText2.getText().toString()) || editText2.getText().toString().length() == 0) {
                            LeSafeMainActivity.n(LeSafeMainActivity.this);
                            if (!WflUtils.isNetworkAvailable(LeSafeMainActivity.this.d)) {
                                LeSafeMainActivity.this.n.sendEmptyMessage(3);
                                LeSafeMainActivity.this.j.edit().putString("feedback_msg", editText.getText().toString()).commit();
                                LeSafeMainActivity.this.j.edit().putString("feedback_mail", editText2.getText().toString()).commit();
                                return;
                            }
                            new Thread() {
                                /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass4.AnonymousClass1 */

                                public final void run() {
                                    if (LeSafeMainActivity.this.feedback(editText.getText().toString(), editText2.getText().toString()) == 200) {
                                        try {
                                            Thread.sleep(500);
                                        } catch (InterruptedException e) {
                                            e.printStackTrace();
                                        }
                                        LeSafeMainActivity.this.n.sendEmptyMessage(2);
                                        LeSafeMainActivity.this.j.edit().putString("feedback_msg", "").commit();
                                        LeSafeMainActivity.this.j.edit().putString("feedback_mail", "").commit();
                                        return;
                                    }
                                    try {
                                        Thread.sleep(500);
                                    } catch (InterruptedException e2) {
                                        e2.printStackTrace();
                                    }
                                    LeSafeMainActivity.this.n.sendEmptyMessage(3);
                                    LeSafeMainActivity.this.j.edit().putString("feedback_msg", editText.getText().toString()).commit();
                                    LeSafeMainActivity.this.j.edit().putString("feedback_mail", editText2.getText().toString()).commit();
                                }
                            }.start();
                        } else {
                            Toast.makeText(LeSafeMainActivity.this.d, (int) R.string.feedback_mail_, 1).show();
                        }
                    }
                }, false).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).create();
                this.k.show();
                this.h.dismiss();
                return;
            case R.id.popwindow_help:
                Intent intent = new Intent(getApplicationContext(), QuestionAndAnswer.class);
                intent.putExtra("frommain", true);
                startActivity(intent);
                this.h.dismiss();
                return;
            case R.id.popwindow_about:
                startActivity(new Intent(this, AboutActivity.class));
                this.h.dismiss();
                return;
            case R.id.title_set:
                if (this.h == null) {
                    showpopupWindow();
                    return;
                } else if (this.h.isShowing()) {
                    this.h.dismiss();
                    return;
                } else {
                    return;
                }
            default:
                return;
        }
    }

    private static void a(TextView tv, String source, int start, int end, int color) {
        SpannableString spannable = new SpannableString(source);
        spannable.setSpan(new AbsoluteSizeSpan(26, true), start, end, 33);
        spannable.setSpan(new ForegroundColorSpan(color), start, end, 0);
        tv.setText(spannable);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        exit();
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        ((ImageView) findViewById(R.id.drawer_up_header)).clearAnimation();
        ((ImageView) findViewById(R.id.drawer_down_header)).clearAnimation();
        DialogUtil.dismissShowPwdDialog();
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        if (this.i.isOpen()) {
            a(false);
        }
        int healthCheckupScore = Const.getHealthCheckupScore();
        int daysNumFromToday = WflUtils.getDaysNumFromToday(Const.getHealthCheckupTime());
        TextView textView = (TextView) findViewById(R.id.detail_healthCheckup_home_page);
        TextView textView2 = (TextView) findViewById(R.id.score_healthCheckup_home_page);
        if (Const.isFirstHealthCheckup()) {
            String string = getString(R.string.do_health_check);
            textView2.setBackgroundResource(R.drawable.home_page_health_state_1);
            textView.setText(string);
        } else if (daysNumFromToday < 0) {
            String string2 = getString(R.string.do_health_check);
            textView2.setBackgroundResource(R.drawable.home_page_health_state_1);
            textView.setText(string2);
        } else if (daysNumFromToday <= 1) {
            if (healthCheckupScore >= 100) {
                String format = String.format(getString(R.string.health_can_optimization100), Integer.valueOf(healthCheckupScore));
                textView2.setBackgroundResource(R.drawable.home_page_health_state_4);
                a(format, healthCheckupScore, R.color.green3);
            } else if (healthCheckupScore < 60 || healthCheckupScore > 99) {
                String format2 = String.format(getString(R.string.health_can_optimization59), Integer.valueOf(healthCheckupScore));
                textView2.setBackgroundResource(R.drawable.home_page_health_state_6);
                a(format2, healthCheckupScore, R.color.red1);
            } else {
                String format3 = String.format(getString(R.string.health_can_optimization60_99), Integer.valueOf(healthCheckupScore));
                textView2.setBackgroundResource(R.drawable.home_page_health_state_5);
                a(format3, healthCheckupScore, R.color.green3);
            }
        } else if (daysNumFromToday >= 2 && daysNumFromToday <= 6) {
            a(textView, String.format(getString(R.string.home_page_health_score2to7day), Integer.valueOf(daysNumFromToday)), 0, String.valueOf(daysNumFromToday).length(), getResources().getColor(R.color.red1));
            textView2.setBackgroundResource(R.drawable.virus_status_green0);
        } else if (daysNumFromToday >= 7) {
            textView.setText(getString(R.string.home_page_health_score7day));
            textView2.setBackgroundResource(R.drawable.home_page_health_state_3);
        }
        this.p.refresh();
        this.q.refresh();
        this.r.refresh();
        if (UpdateLabManager.hasNewVersionLab() && !UpdateLabManager.isUpdateingLab() && WflUtils.isNetworkAvailable(this.d)) {
            WflUtils.Log("i", "wu0wu", "hasNewVersionLab");
            if (!WflUtils.isInTheSameDay(Const.getDialogNoticeUpdateTime(), System.currentTimeMillis())) {
                WflUtils.Log("i", "wu0wu", "!isInTheSameDay");
                if (WflUtils.isTopActivity(this)) {
                    WflUtils.Log("i", "wu0wu", getClass().getCanonicalName() + "  isTopActivity");
                    if (!AutoUpdateLabManager.isAutoUpdate(this.d)) {
                        startActivity(new Intent(this, LabUpdateDialogActivity.class));
                        Const.setDialogNoticeUpdateTime(System.currentTimeMillis());
                    }
                }
            }
        }
        TrackEvent.trackResume(this);
    }

    private void a(boolean animate) {
        this.i.setOpen(false, animate);
    }

    public void update(Observable observable, Object data) {
        if (data instanceof Integer) {
            switch (((Integer) data).intValue()) {
                case 0:
                    this.p.refresh();
                    return;
                case 1:
                    WflUtils.Log("i", "wu0wu", "LeSafeActivity LeSafeObservable.OBSERVER_QUERY_LAB");
                    this.p.refresh();
                    return;
                case 2:
                    this.p.refresh();
                    return;
                case 3:
                    this.p.refresh();
                    return;
                case 4:
                case 5:
                case 6:
                default:
                    return;
                case 7:
                    this.p.refresh();
                    return;
                case 8:
                    this.p.refresh();
                    return;
                case 9:
                    this.p.refresh();
                    return;
            }
        }
    }

    public void showpopupWindow() {
        View view = LayoutInflater.from(this).inflate(R.layout.main_poplistview, (ViewGroup) null);
        ((LinearLayout) view.findViewById(R.id.popwindow_update)).setOnClickListener(this);
        ((LinearLayout) view.findViewById(R.id.popwindow_set)).setOnClickListener(this);
        ((LinearLayout) view.findViewById(R.id.popwindow_feedback)).setOnClickListener(this);
        ((LinearLayout) view.findViewById(R.id.popwindow_help)).setOnClickListener(this);
        ((LinearLayout) view.findViewById(R.id.popwindow_about)).setOnClickListener(this);
        this.h = new PopupWindow(view, -2, -2, true);
        this.h.setAnimationStyle(R.style.PopupAnimation);
        this.h.setBackgroundDrawable(new BitmapDrawable());
        this.h.setFocusable(true);
        this.h.setOutsideTouchable(true);
        this.h.showAsDropDown(findViewById(R.id.title_bar), Const.getScreenWidth(), 0);
        this.h.update();
        this.b.setImageResource(R.drawable.menu_up);
        this.h.setOnDismissListener(new PopupWindow.OnDismissListener() {
            /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass12 */

            public final void onDismiss() {
                LeSafeMainActivity.this.h = null;
                LeSafeMainActivity.this.b.setImageResource(R.drawable.menu);
            }
        });
    }

    public boolean isMailNO(String mail) {
        return Pattern.compile("^(\\w)+(\\.\\w+)*@(\\w)+((\\.\\w+)+)$").matcher(mail).matches();
    }

    public int feedback(String content, String mail) {
        TelephonyManager manager = (TelephonyManager) getSystemService("phone");
        String idea = "";
        try {
            idea = new String(UrlBase64.encode(content.getBytes("utf-8")));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        String versionName = null;
        try {
            versionName = getApplicationContext().getPackageManager().getPackageInfo(getApplicationInfo().packageName, 32768).versionName;
        } catch (PackageManager.NameNotFoundException e3) {
            e3.printStackTrace();
        }
        HttpClient httpClient = new HttpClient();
        PostMethod post = new PostMethod("http://sss.lenovomm.com/sss/1.0/idea");
        post.setParameter(AppDatabase.CONTENT, idea);
        post.setParameter("lang", "zh-cn");
        if (!mail.equals("")) {
            post.setParameter("email", mail);
        }
        post.setParameter("revision", versionName);
        post.setParameter("devicefamily", Build.MODEL);
        post.setParameter("deviceidtype", "imei");
        if (manager.getDeviceId() == null) {
            post.setParameter("deviceid", "N/A");
        } else {
            post.setParameter("deviceid", manager.getDeviceId());
        }
        post.setParameter("devicevendor", Build.MANUFACTURER);
        try {
            int i2 = httpClient.executeMethod(post);
            if (post.getResponseBodyAsString().equals("") || i2 != 200) {
                return i2;
            }
            return -1;
        } catch (HttpException e4) {
            e4.printStackTrace();
            return -1;
        } catch (IOException e5) {
            e5.printStackTrace();
            return -1;
        }
    }

    public boolean canExecute(String path) {
        File file = new File(path);
        for (int i2 = 0; i2 < 3; i2++) {
            if (file.canExecute()) {
                Log.i("ydp", "canExecute()...true");
                return true;
            }
            Log.i("ydp", "canExecute()...false");
            try {
                Thread.sleep(1500);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.lenovo.safecenter.utils.httpApi.HttpApiAsyncTask.ApiRequestListener
    public void onSuccess(int method, final Object obj) {
        switch (method) {
            case 0:
                if (obj == null) {
                    return;
                }
                if (!(obj instanceof Integer)) {
                    SharedPreferences.Editor edit = this.o.edit();
                    HashMap hashMap = (HashMap) obj;
                    if (hashMap.containsKey("expiredId") && ((String) hashMap.get("expiredId")).equals(Const.getHolidayImgId())) {
                        edit.remove(Const.KEY_HOLIDAY_IMG_ID);
                        edit.remove(Const.KEY_HOLIDAY_IMG_URL);
                        edit.remove(Const.KEY_HOLIDAY_IMG_STARTTIME);
                        edit.remove(Const.KEY_HOLIDAY_IMG_ENDTIME);
                        edit.remove(Const.KEY_HOLIDAY_IMG_VERSION);
                        edit.commit();
                        WflUtils.Log("d", "wu0wu", "handleHolidayImgSync onSuccess =remove data...");
                        File file = new File(getFilesDir(), Const.FILENAME_HOLIDAY_IMG);
                        if (file.exists()) {
                            file.delete();
                        }
                    }
                    if (hashMap.containsKey(QueryPermissions.ID)) {
                        edit.putString(Const.KEY_HOLIDAY_IMG_ID, (String) hashMap.get(QueryPermissions.ID));
                        edit.commit();
                    }
                    if (hashMap.containsKey("imageurl")) {
                        edit.putString(Const.KEY_HOLIDAY_IMG_URL, (String) hashMap.get("imageurl"));
                        edit.commit();
                    }
                    if (hashMap.containsKey("starttime")) {
                        edit.putString(Const.KEY_HOLIDAY_IMG_STARTTIME, (String) hashMap.get("starttime"));
                        edit.commit();
                    }
                    if (hashMap.containsKey("endtime")) {
                        edit.putString(Const.KEY_HOLIDAY_IMG_ENDTIME, (String) hashMap.get("endtime"));
                        edit.commit();
                    }
                    if (hashMap.containsKey("version")) {
                        edit.putString(Const.KEY_HOLIDAY_IMG_VERSION, (String) hashMap.get("version"));
                        edit.commit();
                    }
                    if (!TextUtils.isEmpty(Const.getHolidayImgUrl())) {
                        LeSafeAPI.downloadHolidayImg(this, this);
                    }
                    WflUtils.Log("d", "wu0wu", "handleHolidayImgSync onSuccess =end...");
                    return;
                } else if (((Integer) obj).intValue() == 304) {
                    if (a()) {
                        LeSafeAPI.downloadHolidayImg(this, this);
                    }
                    WflUtils.Log("d", "wu0wu", "handleHolidayImgSync onSuccess =304...");
                    return;
                } else {
                    return;
                }
            case 1:
                new Thread(new Runnable() {
                    /* class com.lenovo.safecenter.MainTab.LeSafeMainActivity.AnonymousClass6 */

                    public final void run() {
                        if (obj != null) {
                            InputStream result = (InputStream) obj;
                            byte[] buffer = new byte[1024];
                            ByteArrayOutputStream ostream = new ByteArrayOutputStream();
                            while (true) {
                                try {
                                    int len = result.read(buffer);
                                    if (len != -1) {
                                        ostream.write(buffer, 0, len);
                                    } else {
                                        FileOutputStream fos = LeSafeMainActivity.this.openFileOutput(Const.FILENAME_HOLIDAY_IMG, 0);
                                        fos.write(ostream.toByteArray());
                                        fos.close();
                                        result.close();
                                        ostream.close();
                                        WflUtils.Log("d", "wu0wu", "handleHolidayImgDownload onSuccess...");
                                        return;
                                    }
                                } catch (IOException e) {
                                    e.printStackTrace();
                                    Log.i("wu0wu", "IOException");
                                    return;
                                }
                            }
                        }
                    }
                }).start();
                return;
            default:
                return;
        }
    }

    @Override // com.lenovo.safecenter.utils.httpApi.HttpApiAsyncTask.ApiRequestListener
    public void onError(int method, int statusCode) {
    }

    private boolean a() {
        boolean isShow;
        String id = this.o.getString(Const.KEY_HOLIDAY_IMG_ID, null);
        String url = this.o.getString(Const.KEY_HOLIDAY_IMG_URL, null);
        long lEndTime = 0;
        try {
            lEndTime = Long.valueOf(this.o.getString(Const.KEY_HOLIDAY_IMG_ENDTIME, null)).longValue();
        } catch (Exception e2) {
        }
        boolean isFileExists = new File(getFilesDir(), Const.FILENAME_HOLIDAY_IMG).exists();
        if (System.currentTimeMillis() < lEndTime) {
            isShow = true;
        } else {
            isShow = false;
        }
        return id != null && url != null && isShow && !isFileExists;
    }
}
