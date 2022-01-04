package com.lenovo.safecenter.lenovoAntiSpam.newview;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.Log;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.MainTab.LeSafeMainActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.utils.ScanUtils;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.lenovoAntiSpam.utils.CheckCenter;
import com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.support.HttpUtils;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.SafeCenter;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.List;

public class AntiSpamMain extends BaseTitleActivity {
    Handler a = new Handler() {
        /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            try {
                if (AntiSpamMain.this.p != null) {
                    AntiSpamMain.this.p.dismiss();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            switch (msg.what) {
                case 2:
                    AntiSpamMain.this.showReport_success();
                    AntiSpamMain.this.o.notifyDataSetChanged();
                    return;
                case 3:
                    if (ScanUtils.isNetworkAvailable(AntiSpamMain.this)) {
                        Toast.makeText(AntiSpamMain.this, (int) R.string.neterror, 0).show();
                        return;
                    } else {
                        AntiSpamMain.this.showReport_fail();
                        return;
                    }
                default:
                    return;
            }
        }
    };
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private ExpandableListView g;
    private LinearLayout h;
    private LinearLayout i;
    private ImageView j;
    private ImageView k;
    private List<SafeLog> l;
    private AppDatabase m;
    private PopupWindow n;
    private a o;
    private ProgressDialog p;
    private int q = 0;
    private c r;
    private RelativeLayout s;
    private int t = -1;
    private GestureDetector u;
    private View.OnTouchListener v;
    private View w;
    private Button x;

    static /* synthetic */ void a(AntiSpamMain x0, String x1) {
        new CustomDialog.Builder(x0).setTitle(R.string.notify).setMessage(x1).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass9 */

            public final void onClick(DialogInterface arg0, int arg1) {
                AntiSpamMain.h(AntiSpamMain.this);
                Toast.makeText(AntiSpamMain.this, (int) R.string.del_sucess, 0).show();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass8 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    static /* synthetic */ void h(AntiSpamMain x0) {
        x0.m.deleteLogForTable(AppDatabase.DB_LOG_HARASS, x0.q + "");
        x0.l.clear();
        x0.changeBtn();
        x0.o.notifyDataSetChanged();
        x0.updateStatus();
    }

    static /* synthetic */ void k(AntiSpamMain x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.notify).setMessage(R.string.del_info).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass2 */

            public final void onClick(DialogInterface dialog, int which) {
                AntiSpamMain.this.deleteLog();
                Toast.makeText(AntiSpamMain.this, (int) R.string.del_sucess, 0).show();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass22 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    static /* synthetic */ void l(AntiSpamMain x0) {
        String str = x0.l.get(x0.t).number;
        ContentValues contentValues = new ContentValues();
        contentValues.put("address", x0.l.get(x0.t).number);
        contentValues.put("date", x0.l.get(x0.t).time);
        contentValues.put(PushReceiver.READ, (Integer) 1);
        contentValues.put("status", (Integer) -1);
        contentValues.put("type", (Integer) 1);
        contentValues.put(PushReceiver.BODY, x0.l.get(x0.t).content);
        x0.getContentResolver().insert(Uri.parse("content://sms"), contentValues);
        x0.m.deleteHarassLog(x0.l.get(x0.t).id);
        x0.l.remove(x0.t);
        x0.changeBtn();
        x0.o.notifyDataSetChanged();
        x0.updateStatus();
        if (x0.t < x0.l.size()) {
            x0.g.collapseGroup(x0.t);
        }
        if (x0.isStarnge(str)) {
            CheckCenter.insertWhitePerson(x0, str);
            Toast.makeText(x0, (int) R.string.h_del4, 0).show();
        } else if (isLocalBlack(x0, str)) {
            x0.showDelLocalBlack(str);
        }
    }

    public void showReport_success() {
        new CustomDialog.Builder(this).setTitle(R.string.notify).setMessage(R.string.report_success).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass12 */

            public final void onClick(DialogInterface dialog, int which) {
                dialog.cancel();
            }
        }).show();
    }

    public void showReport_fail() {
        new CustomDialog.Builder(this).setTitle(R.string.notify).setMessage(R.string.report_fail).setPositiveButton(R.string.set_net_text, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass19 */

            public final void onClick(DialogInterface dialog, int which) {
                ComponentName component = new ComponentName("com.android.settings", "com.android.settings.Settings");
                Intent intent = new Intent();
                intent.setComponent(component);
                AntiSpamMain.this.startActivity(intent);
                dialog.cancel();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass18 */

            public final void onClick(DialogInterface dialog, int which) {
                dialog.cancel();
            }
        }).show();
    }

    /* access modifiers changed from: package-private */
    public class c extends BroadcastReceiver {
        c() {
        }

        public final void onReceive(Context context, Intent intent) {
            Log.i("onReceive", intent.getAction());
            if (intent.getAction().equals("com.lenovo.antispam.notify")) {
                Log.i("onReceive", intent.getAction());
                if (AntiSpamMain.this.q == 0) {
                    AntiSpamMain.this.initData(0);
                } else if (AntiSpamMain.this.q == 1) {
                    AntiSpamMain.this.initData(1);
                }
                AntiSpamMain.this.updateStatus();
                AntiSpamMain.this.setHarassSet();
            } else if (intent.getAction().equals("com.lenovo.antispam.clearlogs")) {
                AntiSpamMain.this.l.clear();
                AntiSpamMain.this.updateStatus();
            }
        }
    }

    public void registerAction() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("com.lenovo.antispam.notify");
        filter.addAction("com.lenovo.antispam.clearlogs");
        registerReceiver(this.r, filter);
    }

    public void updateStatus() {
        if (CheckCenter.getHarassCount(this, DatabaseTables.SYSTEM_MARK) > 0) {
            this.e.setText(getString(R.string.harass_call) + String.format(getString(R.string.harss_countshow), Integer.valueOf(CheckCenter.getHarassCount(this, DatabaseTables.SYSTEM_MARK))));
            if (this.q == 1) {
                this.m.updatehasSee(DatabaseTables.SYSTEM_MARK);
                SafeCenterService.harass_call_count = 0;
                Const.saveHarassLogsCount(this);
                MyUtils.showLeSecNotification(this);
            }
        } else {
            this.e.setText(R.string.harass_call);
        }
        if (CheckCenter.getHarassCount(this, "0") > 0) {
            this.d.setText(getString(R.string.harass_sms) + String.format(getString(R.string.harss_countshow), Integer.valueOf(CheckCenter.getHarassCount(this, "0"))));
            if (this.q == 0) {
                this.m.updatehasSee("0");
                SafeCenterService.harass_msg_count = 0;
                Const.saveHarassLogsCount(this);
                MyUtils.showLeSecNotification(this);
                return;
            }
            return;
        }
        this.d.setText(R.string.harass_sms);
    }

    public void showpopupWindow() {
        View view = LayoutInflater.from(this).inflate(R.layout.harass_poplistview, (ViewGroup) null);
        ((LinearLayout) view.findViewById(R.id.popwindow_harass_set)).setOnClickListener(this);
        ((LinearLayout) view.findViewById(R.id.popwindow_black)).setOnClickListener(this);
        ((LinearLayout) view.findViewById(R.id.popwindow_white)).setOnClickListener(this);
        ((LinearLayout) view.findViewById(R.id.popwindow_night)).setOnClickListener(this);
        this.n = new PopupWindow(view, -2, -2, true);
        this.n.setAnimationStyle(R.style.PopupAnimation);
        this.n.setBackgroundDrawable(new BitmapDrawable());
        this.n.setFocusable(true);
        this.n.setOutsideTouchable(true);
        this.n.showAsDropDown(findViewById(R.id.base_titlebar), Const.getScreenWidth(), 0);
        this.n.update();
        this.n.setOnDismissListener(new PopupWindow.OnDismissListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass20 */

            public final void onDismiss() {
                AntiSpamMain.this.n = null;
            }
        });
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.antispam_main);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antispamapp_name, Integer.valueOf((int) R.drawable.rf_perf_title_right));
        findViews();
        this.r = new c();
        this.m = new AppDatabase(this);
        setOnclick();
        try {
            this.q = getIntent().getIntExtra("type", 0);
        } catch (Exception e2) {
        }
        this.u = new GestureDetector(new b());
        this.v = new View.OnTouchListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass21 */

            public final boolean onTouch(View v, MotionEvent event) {
                if (AntiSpamMain.this.u.onTouchEvent(event)) {
                    return true;
                }
                return false;
            }
        };
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        try {
            unregisterReceiver(this.r);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            try {
                if (getIntent().getStringExtra("key") != null) {
                    startActivity(new Intent(this, LeSafeMainActivity.class));
                    finish();
                } else {
                    finish();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        registerAction();
        initData(this.q);
        updateStatus();
        setHarassSet();
        TrackEvent.trackResume(this);
    }

    public int getHarassType(int type) {
        if (type == 1) {
            if (Const.getHarassCount(this, 1) == 0) {
                PreferenceManager.getDefaultSharedPreferences(this).edit().putInt("total_harass_call", this.m.getHarassLogCount(DatabaseTables.SYSTEM_MARK)).commit();
            }
            return Const.getHarassCount(this, 1);
        } else if (type != 0) {
            return 0;
        } else {
            if (Const.getHarassCount(this, 0) == 0) {
                PreferenceManager.getDefaultSharedPreferences(this).edit().putInt("total_harass_sms", this.m.getHarassLogCount("0")).commit();
            }
            return Const.getHarassCount(this, 0);
        }
    }

    public void initData(int type) {
        if (type == 0) {
            this.l = this.m.loadHarassLog("0");
            this.o = new a(this);
            this.i.setBackgroundResource(R.drawable.tab_select);
            this.h.setBackgroundResource(R.drawable.tab_normal);
            this.j.setImageResource(R.drawable.antispam_smsclick);
            this.k.setImageResource(R.drawable.antispam_callnormal);
            this.d.setTextColor(getResources().getColor(R.color.blue));
            this.e.setTextColor(getResources().getColor(R.color.black4));
            this.f.setText(R.string.no_harass_sms);
            this.x.setText(R.string.menu_del);
        } else if (type == 1) {
            this.l = this.m.loadHarassLog(DatabaseTables.SYSTEM_MARK);
            this.o = new a(this);
            this.d.setTextColor(getResources().getColor(R.color.black4));
            this.e.setTextColor(getResources().getColor(R.color.blue));
            this.h.setBackgroundResource(R.drawable.tab_select);
            this.i.setBackgroundResource(R.drawable.tab_normal);
            this.k.setImageResource(R.drawable.antispam_callclick);
            this.j.setImageResource(R.drawable.antispam_smsnormal);
            this.f.setText(R.string.no_harass_call);
            this.x.setText(R.string.menu_recover);
        }
        changeBtn();
        this.g.setAdapter(this.o);
    }

    public void changeBtn() {
        try {
            if (this.l.size() <= 0) {
                return;
            }
            if (this.l.size() < 2) {
                if (this.g.getFooterViewsCount() == 1) {
                    this.g.removeFooterView(this.w);
                }
            } else if (this.g.getFooterViewsCount() == 0) {
                this.g.addFooterView(this.w);
            }
        } catch (Exception e2) {
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v2) {
        if (v2.getId() == R.id.base_title_left) {
            try {
                if (getIntent().getStringExtra("key") != null) {
                    startActivity(new Intent(this, LeSafeMainActivity.class));
                    finish();
                    return;
                }
                finish();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if (v2.getId() == R.id.base_title_right) {
            startActivity(new Intent(this, HarassSet.class));
        } else if (v2.getId() == R.id.popwindow_harass_set) {
            startActivity(new Intent(this, HarassSet.class));
        } else if (v2.getId() == R.id.popwindow_black) {
            Intent intent = new Intent(this, WhiteABlackMain.class);
            intent.putExtra("type", 1);
            startActivity(intent);
        } else if (v2.getId() == R.id.popwindow_white) {
            startActivity(new Intent(this, SignActivity.class));
        } else if (v2.getId() == R.id.popwindow_night) {
            startActivity(new Intent(this, NightPreActivity.class));
        }
    }

    public static String formatNumber(String number) {
        if (number != null && number.contains("-")) {
            number = number.replace("-", "");
        }
        if (number == null || !number.startsWith("+86")) {
            return number;
        }
        return number.substring(3);
    }

    public boolean isStarnge(String number) {
        String number2 = formatNumber(number);
        if (SecurityService.secutityPerson.contains(number2) || SafeCenter.getAllLocalBlack(this).contains(number2) || SafeCenter.getAllNetBlack(this).contains(number2) || SecurityService.whitePerson.contains(number2)) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        TrackEvent.trackPause(this);
    }

    public void setOnclick() {
        this.g.setOnGroupExpandListener(new ExpandableListView.OnGroupExpandListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass3 */

            public final void onGroupExpand(int groupPosition) {
                AntiSpamMain.this.t = groupPosition;
                if (groupPosition == AntiSpamMain.this.l.size() - 1) {
                    AntiSpamMain.this.g.setTranscriptMode(2);
                } else {
                    AntiSpamMain.this.g.setTranscriptMode(1);
                }
                for (int i = 0; i < AntiSpamMain.this.o.getGroupCount(); i++) {
                    if (groupPosition != i) {
                        AntiSpamMain.this.g.collapseGroup(i);
                    }
                }
            }
        });
        this.h.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass4 */

            public final void onClick(View v) {
                AntiSpamMain.this.q = 1;
                AntiSpamMain.this.initData(1);
                AntiSpamMain.this.updateStatus();
            }
        });
        this.i.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass5 */

            public final void onClick(View v) {
                AntiSpamMain.this.q = 0;
                AntiSpamMain.this.initData(0);
                AntiSpamMain.this.updateStatus();
            }
        });
        this.s.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass6 */

            public final void onClick(View v) {
                AntiSpamMain.this.startActivity(new Intent(AntiSpamMain.this, SignActivity.class));
            }
        });
    }

    public void findViews() {
        this.b = (TextView) findViewById(R.id.antispam_harssdesc);
        this.c = (TextView) findViewById(R.id.antispam_harssdesc1);
        this.d = (TextView) findViewById(R.id.antispam_sms);
        this.e = (TextView) findViewById(R.id.antispam_call);
        this.f = (TextView) findViewById(R.id.antispam_empty);
        this.g = (ExpandableListView) findViewById(R.id.antispam_logs);
        this.h = (LinearLayout) findViewById(R.id.antispam_calllin);
        this.i = (LinearLayout) findViewById(R.id.antispam_smslin);
        this.j = (ImageView) findViewById(R.id.antispam_smsicon);
        this.k = (ImageView) findViewById(R.id.antispam_callicon);
        this.s = (RelativeLayout) findViewById(R.id.antispam_mainlin3);
        this.g.setEmptyView(this.f);
        this.g.setDivider(getResources().getDrawable(R.drawable.space_line));
        this.g.setGroupIndicator(null);
        this.w = LayoutInflater.from(this).inflate(R.layout.harsslog_del, (ViewGroup) null);
        if (Const.SDK_VERSION >= 14) {
            this.g.addFooterView(this.w);
        }
        this.x = (Button) this.w.findViewById(R.id.harss_dellog);
        this.x.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass7 */

            public final void onClick(View v) {
                if (AntiSpamMain.this.l.size() <= 0) {
                    return;
                }
                if (AntiSpamMain.this.q == 0) {
                    AntiSpamMain.a(AntiSpamMain.this, AntiSpamMain.this.getString(R.string.del_harsssms));
                } else if (AntiSpamMain.this.q == 1) {
                    AntiSpamMain.a(AntiSpamMain.this, AntiSpamMain.this.getString(R.string.del_harsscall));
                }
            }
        });
    }

    public void deleteLog() {
        this.m.deleteHarassLog(this.l.get(this.t).id);
        this.l.remove(this.t);
        changeBtn();
        this.o.notifyDataSetChanged();
        updateStatus();
        if (this.t < this.l.size()) {
            this.g.collapseGroup(this.t);
        }
    }

    public void showReportDialog() {
        if (this.q == 0) {
            new CustomDialog.Builder(this).setTitle(R.string.notify).setMessage(R.string.report_tonet).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass11 */

                public final void onClick(DialogInterface dialog, int which) {
                    AntiSpamMain.this.report();
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass10 */

                public final void onClick(DialogInterface dialog, int which) {
                }
            }).show();
        } else if (this.q == 1) {
            new CustomDialog.Builder(this).setTitle(R.string.notify).setMessage(R.string.report_tonet1).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass14 */

                public final void onClick(DialogInterface dialog, int which) {
                    AntiSpamMain.this.report();
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass13 */

                public final void onClick(DialogInterface dialog, int which) {
                }
            }).show();
        }
    }

    public void report() {
        this.p = new ProgressDialog(this);
        this.p.setProgressStyle(0);
        this.p.setMessage(getString(R.string.exec_state));
        this.p.setCanceledOnTouchOutside(false);
        this.p.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass15 */

            public final void run() {
                try {
                    if (AntiSpamMain.this.reportHarssLog() == 2) {
                        ((SafeLog) AntiSpamMain.this.l.get(AntiSpamMain.this.t)).isUpload = 1;
                        AntiSpamMain.this.m.updateSafeLogUpload((SafeLog) AntiSpamMain.this.l.get(AntiSpamMain.this.t), AppDatabase.DB_LOG_HARASS);
                        Message msg = new Message();
                        msg.what = 2;
                        AntiSpamMain.this.a.sendMessage(msg);
                        return;
                    }
                    Message msg2 = new Message();
                    msg2.what = 3;
                    AntiSpamMain.this.a.sendMessage(msg2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public int reportHarssLog() {
        if (this.t == -1) {
            return 1;
        }
        if (this.q == 0) {
            return HttpUtils.reportHarssLog(this, MyUtils.replaceString(this.l.get(this.t).number), "0", MyUtils.replaceString(this.l.get(this.t).content));
        }
        if (this.q == 1) {
            return HttpUtils.reportHarssLog(this, MyUtils.replaceString(this.l.get(this.t).number), DatabaseTables.SYSTEM_MARK, MyUtils.replaceString(this.l.get(this.t).content));
        }
        return 1;
    }

    public String getStr_fromtype(int fromtype) {
        Log.i("msg", "fromtype===" + fromtype);
        if (fromtype == 3) {
            if (this.q == 0) {
                return getString(R.string.cause1);
            }
            return getString(R.string.cause2);
        } else if (fromtype == 2) {
            if (this.q == 0) {
                return getString(R.string.cause1);
            }
            return getString(R.string.cause6);
        } else if (fromtype == 5) {
            return getString(R.string.cause7);
        } else {
            if (fromtype == 6) {
                return getString(R.string.cause1);
            }
            if (fromtype == 7) {
                return getString(R.string.cause3);
            }
            if (fromtype == 8) {
                return getString(R.string.cause4);
            }
            if (fromtype == 9) {
                return getString(R.string.cause5);
            }
            return getString(R.string.cause1);
        }
    }

    public SpannableString changgeword(int fromtype) {
        String text = String.format(getString(R.string.causeprex), getStr_fromtype(fromtype));
        SpannableString spannable = new SpannableString(text);
        spannable.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.colorcause)), text.length() - getStr_fromtype(fromtype).length(), text.length(), 33);
        spannable.setSpan(new StyleSpan(1), 0, text.length() - getStr_fromtype(fromtype).length(), 33);
        return spannable;
    }

    public void callTo() {
        startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + this.l.get(this.t).number)));
    }

    /* access modifiers changed from: package-private */
    public class a extends BaseExpandableListAdapter {
        Context a;
        b b;
        C0005a c;
        private LayoutInflater e;

        public a(Context context) {
            this.e = LayoutInflater.from(context);
            this.a = context;
        }

        public final Object getChild(int groupPosition, int childPosition) {
            return null;
        }

        public final long getChildId(int groupPosition, int childPosition) {
            return (long) childPosition;
        }

        public final int getChildrenCount(int groupPosition) {
            return 1;
        }

        public final View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
            if (AntiSpamMain.this.q == 0) {
                if (convertView == null) {
                    convertView = this.e.inflate(R.layout.dealitem, (ViewGroup) null);
                    this.c = new C0005a();
                    this.c.a = (TextView) convertView.findViewById(R.id.deal1);
                    this.c.b = (TextView) convertView.findViewById(R.id.deal2);
                    this.c.c = (TextView) convertView.findViewById(R.id.deal3);
                    this.c.e = (LinearLayout) convertView.findViewById(R.id.causelin);
                    this.c.d = (TextView) convertView.findViewById(R.id.showcause);
                    convertView.setTag(this.c);
                } else {
                    this.c = (C0005a) convertView.getTag();
                }
            } else if (AntiSpamMain.this.q == 1) {
                if (convertView == null) {
                    convertView = this.e.inflate(R.layout.dealitemequal, (ViewGroup) null);
                    this.c = new C0005a();
                    this.c.a = (TextView) convertView.findViewById(R.id.deal1);
                    this.c.b = (TextView) convertView.findViewById(R.id.deal2);
                    this.c.c = (TextView) convertView.findViewById(R.id.deal3);
                    convertView.setTag(this.c);
                } else {
                    this.c = (C0005a) convertView.getTag();
                }
            }
            if (AntiSpamMain.this.q == 0) {
                this.c.e.setVisibility(0);
                this.c.d.setText(AntiSpamMain.this.changgeword(((SafeLog) AntiSpamMain.this.l.get(groupPosition)).fromtype));
            }
            if (((SafeLog) AntiSpamMain.this.l.get(groupPosition)).isUpload == 1) {
                this.c.c.setText(R.string.hadupload_log);
            } else {
                this.c.c.setText(R.string.antispamlocalblack_upload);
            }
            if (AntiSpamMain.this.q == 0) {
                this.c.b.setText(R.string.recovery_sms);
            } else if (AntiSpamMain.this.q == 1) {
                this.c.b.setText(R.string.safemode_callto);
            }
            this.c.a.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.a.AnonymousClass1 */

                public final void onClick(View v) {
                    AntiSpamMain.k(AntiSpamMain.this);
                }
            });
            this.c.b.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.a.AnonymousClass2 */

                public final void onClick(View v) {
                    if (AntiSpamMain.this.q == 0) {
                        AntiSpamMain.l(AntiSpamMain.this);
                    } else if (AntiSpamMain.this.q == 1) {
                        AntiSpamMain.this.callTo();
                    }
                }
            });
            this.c.c.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.a.AnonymousClass3 */

                public final void onClick(View v) {
                    if (((SafeLog) AntiSpamMain.this.l.get(AntiSpamMain.this.t)).isUpload != 1) {
                        AntiSpamMain.this.showReportDialog();
                    } else {
                        Toast.makeText(AntiSpamMain.this, (int) R.string.havedup, 0).show();
                    }
                }
            });
            return convertView;
        }

        public final Object getGroup(int groupPosition) {
            return AntiSpamMain.this.l.get(groupPosition);
        }

        public final int getGroupCount() {
            return AntiSpamMain.this.l.size();
        }

        public final long getGroupId(int groupPosition) {
            return (long) groupPosition;
        }

        public final View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = this.e.inflate(R.layout.antispammain_parent, (ViewGroup) null);
                this.b = new b();
                this.b.a = (ImageView) convertView.findViewById(R.id.antispamsmscheck);
                this.b.b = (TextView) convertView.findViewById(R.id.antispamsmsname);
                this.b.c = (TextView) convertView.findViewById(R.id.antispamsmsnumber);
                this.b.d = (TextView) convertView.findViewById(R.id.antispamsmscontent);
                this.b.e = (TextView) convertView.findViewById(R.id.antispamsmscontent1);
                convertView.setTag(this.b);
            } else {
                this.b = (b) convertView.getTag();
            }
            SafeLog log = (SafeLog) AntiSpamMain.this.l.get(groupPosition);
            this.b.b.setText(log.number);
            this.b.c.setText(AppDatabase.formatTime(log.time, AntiSpamMain.this));
            if (AntiSpamMain.this.q == 0) {
                if (!isExpanded) {
                    this.b.d.setText(log.content);
                    this.b.e.setVisibility(8);
                    this.b.d.setVisibility(0);
                } else {
                    this.b.e.setText(log.content);
                    this.b.d.setVisibility(8);
                    this.b.e.setVisibility(0);
                }
            } else if (AntiSpamMain.this.q == 1) {
                this.b.d.setText(AntiSpamMain.this.changgeword(log.fromtype));
            }
            if (log.isUpload == 1) {
                this.b.a.setVisibility(0);
                this.b.a.setImageResource(R.drawable.upload);
            } else {
                this.b.a.setVisibility(8);
            }
            return convertView;
        }

        public final boolean hasStableIds() {
            return false;
        }

        public final boolean isChildSelectable(int groupPosition, int childPosition) {
            return false;
        }

        class b {
            ImageView a;
            TextView b;
            TextView c;
            TextView d;
            TextView e;

            b() {
            }
        }

        /* renamed from: com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain$a$a  reason: collision with other inner class name */
        class C0005a {
            TextView a;
            TextView b;
            TextView c;
            TextView d;
            LinearLayout e;

            C0005a() {
            }
        }
    }

    public void setHarassSet() {
        if (Settings.System.getInt(getContentResolver(), "intercall_mode_type", 0) == 0) {
            this.b.setVisibility(8);
            this.c.setVisibility(0);
            return;
        }
        this.b.setVisibility(0);
        this.c.setVisibility(8);
        this.b.setText(String.format(getString(R.string.harss_totalshow), Integer.valueOf(getHarassType(0)), Integer.valueOf(getHarassType(1))));
    }

    public static boolean delLocalBlack(Context context, String number) {
        try {
            if (context.getContentResolver().delete(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), " PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0)", null) <= 0) {
                return false;
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean isLocalBlack(Context context, String number) {
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0)", null, null);
            int count = cursor.getCount();
            cursor.close();
            if (count > 0) {
                return true;
            }
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    public void showDelLocalBlack(final String phoneNumber) {
        new CustomDialog.Builder(this).setTitle(R.string.notify).setMessage(String.format(getString(R.string.h_del2), phoneNumber)).setPositiveButton(R.string.h_del5, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass17 */

            public final void onClick(DialogInterface dialog, int which) {
                AntiSpamMain.delLocalBlack(AntiSpamMain.this, phoneNumber);
                Toast.makeText(AntiSpamMain.this, (int) R.string.h_del3, 0).show();
            }
        }).setNegativeButton(R.string.h_del6, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain.AnonymousClass16 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        public final boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            try {
                if (Math.abs(e1.getY() - e2.getY()) <= 250.0f) {
                    if (e1.getX() - e2.getX() > 120.0f && Math.abs(velocityX) > 200.0f && AntiSpamMain.this.q != 1) {
                        Log.i("test ", "right");
                        AntiSpamMain.this.q = 1;
                        AntiSpamMain.this.initData(1);
                        AntiSpamMain.this.updateStatus();
                    } else if (e2.getX() - e1.getX() > 120.0f && Math.abs(velocityX) > 200.0f && AntiSpamMain.this.q != 0) {
                        Log.i("test ", "left");
                        AntiSpamMain.this.q = 0;
                        AntiSpamMain.this.initData(0);
                        AntiSpamMain.this.updateStatus();
                    }
                }
            } catch (Exception e) {
            }
            return false;
        }
    }

    public boolean dispatchTouchEvent(MotionEvent event) {
        if (this.u.onTouchEvent(event)) {
            event.setAction(3);
        }
        return super.dispatchTouchEvent(event);
    }
}
