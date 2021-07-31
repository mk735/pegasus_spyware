package com.lenovo.safecenter.floatwindow.view;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.util.Constants;
import com.lenovo.safecenter.floatwindow.util.MultiSIMUtils;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.lenovo.safecenter.net.support.TrafficStatsService;

public class SwitcherContainerView extends FrameLayout implements View.OnClickListener {
    public static b receiver = null;
    public static boolean screenWindowDel = true;
    private static Context z;
    private Animation A;
    private a B;
    private boolean C = false;
    private boolean D = false;
    private boolean E = true;
    private SharedPreferences F;
    private Handler G = new Handler() {
        /* class com.lenovo.safecenter.floatwindow.view.SwitcherContainerView.AnonymousClass1 */

        /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    if (!SwitcherContainerView.this.E) {
                        switch (msg.arg1) {
                            case 0:
                                SwitcherContainerView.this.a.setImage(R.drawable.assist_switcher_wifi_off);
                                SwitcherContainerView.this.a.setLabelColor(SwitcherContainerView.this.getResources().getColor(R.color.text_switcher_item_off));
                                SwitcherContainerView.this.a(1, 0, true);
                                return;
                            case 1:
                                SwitcherContainerView.this.a.setImage(R.drawable.assist_switcher_wifi_off);
                                SwitcherContainerView.this.a.setLabelColor(SwitcherContainerView.this.getResources().getColor(R.color.text_switcher_item_off));
                                SwitcherContainerView.this.a(1, 0, false);
                                return;
                            case 2:
                                SwitcherContainerView.this.a.setImage(R.drawable.assist_switcher_wifi_on);
                                SwitcherContainerView.this.a.setLabelColor(SwitcherContainerView.this.getResources().getColor(R.color.text_switcher_item_on));
                                SwitcherContainerView.this.a(1, 1, true);
                                return;
                            case 3:
                                SwitcherContainerView.this.a.setImage(R.drawable.assist_switcher_wifi_on);
                                SwitcherContainerView.this.a.setLabelColor(SwitcherContainerView.this.getResources().getColor(R.color.text_switcher_item_on));
                                SwitcherContainerView.this.a(1, 1, false);
                                return;
                            default:
                                return;
                        }
                    }
                    break;
                case 1:
                case 3:
                case 4:
                default:
                    return;
                case 2:
                    SwitcherContainerView.this.m.setBackgroundDrawable(null);
                    SwitcherContainerView.this.m.setText(SwitcherContainerView.z.getString(R.string.switcher_hint_default));
                    SwitcherContainerView.this.m.setTextColor(SwitcherContainerView.this.getResources().getColor(R.color.text_switcher_hint_off));
                    return;
                case 5:
                    break;
            }
            switch (msg.arg1) {
                case 10:
                case 12:
                    SwitcherContainerView.this.g((SwitcherContainerView) true);
                    SwitcherContainerView.this.D = false;
                    return;
                case 11:
                    SwitcherContainerView.this.D = true;
                    SwitcherContainerView.this.k.setImage(R.drawable.assist_switcher_bluetooth_on);
                    SwitcherContainerView.this.a(11, 1, true);
                    return;
                case 13:
                    SwitcherContainerView.this.D = true;
                    SwitcherContainerView.this.k.setImage(R.drawable.assist_switcher_bluetooth_on);
                    SwitcherContainerView.this.a(11, 0, true);
                    return;
                default:
                    return;
            }
        }
    };
    private SwitcherItemView a;
    private SwitcherItemView b;
    private SwitcherItemView c;
    private SwitcherItemView d;
    private SwitcherItemView e;
    private SwitcherItemView f;
    private SwitcherItemView g;
    private SwitcherItemView h;
    private SwitcherItemView i;
    private SwitcherItemView j;
    private SwitcherItemView k;
    private SwitcherItemView l;
    private TextView m;
    private SettingUtil n;
    private final int o = 1;
    private final int p = 2;
    private final int q = 3;
    private final int r = 4;
    private final int s = 5;
    private final int t = 6;
    private final int u = 7;
    private final int v = 9;
    private final int w = 10;
    private final int x = 11;
    private final int y = 12;

    public SwitcherContainerView(Context context) {
        super(context);
    }

    public SwitcherContainerView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        z = paramContext;
        if (this.n == null) {
            this.n = new SettingUtil(paramContext);
            if (this.n.isMultiSim()) {
                long mSimId = this.n.getDataSimId();
                SharedPreferences.Editor edit = paramContext.getSharedPreferences(Constants.DATASUBSCRIBERID, 32768).edit();
                edit.putLong(Constants.DATASUBSCRIBERID, mSimId);
                edit.commit();
            }
        }
        inflate(paramContext, R.layout.assist_switcher_container, this);
        this.m = (TextView) findViewById(R.id.msg_hint);
        this.a = (SwitcherItemView) findViewById(R.id.switch_wifi);
        this.b = (SwitcherItemView) findViewById(R.id.switch_mobile_data);
        this.c = (SwitcherItemView) findViewById(R.id.switch_ringtone);
        this.d = (SwitcherItemView) findViewById(R.id.switch_vibrate);
        this.e = (SwitcherItemView) findViewById(R.id.switch_light);
        this.g = (SwitcherItemView) findViewById(R.id.switch_timeout);
        this.j = (SwitcherItemView) findViewById(R.id.switch_guest_mode);
        this.i = (SwitcherItemView) findViewById(R.id.switch_children_desktop);
        this.h = (SwitcherItemView) findViewById(R.id.switch_traffic_monitor);
        this.k = (SwitcherItemView) findViewById(R.id.switch_bluetooth);
        this.l = (SwitcherItemView) findViewById(R.id.switch_airplane_mode);
        this.f = (SwitcherItemView) findViewById(R.id.switch_rotation);
        if (a(1) == 0) {
            this.a.setImage(R.drawable.assist_switcher_wifi_off);
            this.a.setLabelColor(getResources().getColor(R.color.text_switcher_item_off));
        } else {
            this.a.setImage(R.drawable.assist_switcher_wifi_on);
            this.a.setLabelColor(getResources().getColor(R.color.text_switcher_item_on));
        }
        a(false);
        b(false);
        c(false);
        d(false);
        e(false);
        f(false);
        if (!this.D) {
            g(false);
        }
        h(false);
        c();
        b();
        this.a.setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.g.setOnClickListener(this);
        this.j.setOnClickListener(this);
        this.i.setOnClickListener(this);
        this.h.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.l.setOnClickListener(this);
        this.f.setOnClickListener(this);
        IntentFilter intentFilter = new IntentFilter();
        if (receiver != null) {
            receiver = null;
        }
        receiver = new b(this, (byte) 0);
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.location.PROVIDERS_CHANGED");
        intentFilter.addAction("com.safecenter.broadcast.openGuestMode");
        intentFilter.addAction("com.safecenter.broadcast.openChildMode");
        intentFilter.addAction("com.lenovo.safecenter.lightChanges");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        z.registerReceiver(receiver, intentFilter);
    }

    public static void unregisterReceiver() {
        if (receiver != null) {
            z.unregisterReceiver(receiver);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(boolean isFromClick) {
        int currentData = a(2);
        if (currentData == 0) {
            this.b.setImage(R.drawable.assist_switcher_mobile_data_off);
            this.b.setLabelColor(getResources().getColor(R.color.text_switcher_item_off));
        } else {
            this.b.setImage(R.drawable.assist_switcher_mobile_data_on);
            this.b.setLabelColor(getResources().getColor(R.color.text_switcher_item_on));
        }
        if (isFromClick) {
            a(2, currentData, false);
        }
    }

    private void b(boolean isFromClick) {
        int ringtone = a(3);
        if (ringtone == 1) {
            this.c.setImage(R.drawable.assist_switcher_ringtone_on);
            this.c.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
        } else {
            this.c.setImage(R.drawable.assist_switcher_ringtone_off);
            this.c.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_off));
        }
        if (isFromClick) {
            a(3, ringtone, false);
        }
    }

    private void c(boolean isFromClick) {
        int vibrate = a(4);
        if (vibrate == 1) {
            this.d.setImage(R.drawable.assist_switcher_vibrate_on);
            this.d.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
        } else {
            this.d.setImage(R.drawable.assist_switcher_vibrate_off);
            this.d.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_off));
        }
        if (isFromClick) {
            a(4, vibrate, false);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void d(boolean isFromClick) {
        int brightness = a(5);
        if (brightness == 1) {
            this.e.setImage(R.drawable.assist_switcher_light_25percent);
            this.e.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_off));
        } else if (brightness == 2) {
            this.e.setImage(R.drawable.assist_switcher_light_50percent);
            this.e.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
        } else if (brightness == 3) {
            this.e.setImage(R.drawable.assist_switcher_light_75percent);
            this.e.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
        } else if (brightness == 4) {
            this.e.setImage(R.drawable.assist_switcher_light_100percent);
            this.e.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
        } else if (brightness == 5) {
            this.e.setImage(R.drawable.assist_switcher_light_auto);
            this.e.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
        }
        if (isFromClick) {
            a(5, brightness, false);
        }
    }

    private void e(boolean isFromClick) {
        int rotate = a(6);
        if (rotate == 1) {
            this.f.setImage(R.drawable.assist_switcher_rotation_on);
            this.f.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
        } else {
            this.f.setImage(R.drawable.assist_switcher_rotation_off);
            this.f.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_off));
        }
        if (isFromClick) {
            a(6, rotate, false);
        }
    }

    private void f(boolean isFromClick) {
        int timeout = a(7);
        if (timeout == 1) {
            this.g.setImage(R.drawable.assist_switcher_timeout_30s);
        } else if (timeout == 2) {
            this.g.setImage(R.drawable.assist_switcher_timeout_1m);
        } else if (timeout == 3) {
            this.g.setImage(R.drawable.assist_switcher_timeout_2m);
        } else if (timeout == 4) {
            this.g.setImage(R.drawable.assist_switcher_timeout_10m);
        }
        this.g.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
        if (isFromClick) {
            a(7, timeout, false);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void b() {
        if (a(9) == 0) {
            this.i.setImage(R.drawable.assist_switcher_children_desktop_off);
            this.i.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_off));
            return;
        }
        this.i.setImage(R.drawable.assist_switcher_children_desktop_on);
        this.i.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void c() {
        if (a(10) == 0) {
            this.j.setImage(R.drawable.assist_switcher_visitor_mode_off);
            this.j.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_off));
            return;
        }
        this.j.setImage(R.drawable.assist_switcher_visitor_mode_on);
        this.j.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void g(boolean isFromClick) {
        int bluetooth = a(11);
        if (bluetooth == 1) {
            this.k.setImage(R.drawable.assist_switcher_bluetooth_on);
            this.k.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
        } else {
            this.k.setImage(R.drawable.assist_switcher_bluetooth_off);
            this.k.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_off));
        }
        if (isFromClick) {
            a(11, bluetooth, false);
        }
    }

    private void h(boolean isFromClick) {
        int flightmode = a(12);
        if (flightmode == 1) {
            this.l.setImage(R.drawable.assist_switcher_airplane_mode_on);
            this.l.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_on));
            this.b.setClickable(false);
            this.k.setClickable(false);
            this.b.setEnabled(false);
            this.k.setEnabled(false);
        } else if (flightmode == 0) {
            this.l.setImage(R.drawable.assist_switcher_airplane_mode_off);
            this.l.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_off));
            this.b.setClickable(true);
            this.k.setClickable(true);
            this.b.setEnabled(true);
            this.k.setEnabled(true);
        }
        if (isFromClick) {
            a(12, flightmode, false);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(int item, int value, boolean IsOpening) {
        String prompt;
        if (item == 20) {
            prompt = z.getString(R.string.plz_close_airplane_mode_or_insert_sim_card);
        } else if (IsOpening) {
            prompt = generatePrompting(item, value);
        } else if (item == 9) {
            prompt = getResources().getString(R.string.not_support);
        } else if (item == 10) {
            prompt = getResources().getString(R.string.not_support);
        } else {
            prompt = generatePrompt(item, value);
        }
        this.m.setText(prompt);
        this.m.setTextColor(getResources().getColor(R.color.white));
        this.m.setBackgroundResource(R.drawable.assist_switcher_container_hint);
        if (this.A != null) {
            this.A.cancel();
            this.A = null;
        }
        this.A = new AlphaAnimation(1.0f, 0.0f);
        this.A.setDuration(1600);
        this.m.setAnimation(this.A);
        this.A.start();
        this.B = new a();
        this.B.start();
    }

    /* access modifiers changed from: package-private */
    public class a extends Thread {
        a() {
        }

        public final void run() {
            try {
                Thread.sleep(1600);
                SwitcherContainerView.this.G.sendEmptyMessage(2);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public String generatePrompting(int item, int value) {
        String verb = "";
        String name = "";
        switch (value) {
            case 0:
                verb = z.getString(R.string.exam_repair_closing);
                break;
            case 1:
                verb = z.getString(R.string.exam_repair_opening);
                break;
        }
        switch (item) {
            case 1:
                name = z.getString(R.string.switcher_wifi);
                break;
            case 2:
                name = z.getString(R.string.switcher_mobile_data);
                break;
            case 11:
                name = z.getString(R.string.switcher_bluetooth);
                break;
        }
        return verb + name;
    }

    public String generatePrompt(int item, int value) {
        if (item == 5) {
            switch (value) {
                case 1:
                    return String.format(z.getString(R.string.switcher_hint_light_percent), 25);
                case 2:
                    return String.format(z.getString(R.string.switcher_hint_light_percent), 50);
                case 3:
                    return String.format(z.getString(R.string.switcher_hint_light_percent), 75);
                case 4:
                    return String.format(z.getString(R.string.switcher_hint_light_percent), 100);
                case 5:
                    return z.getString(R.string.switcher_hint_light_auto);
                default:
                    return "";
            }
        } else if (item == 7) {
            String second_timeout = z.getString(R.string.switcher_hint_timeout_second);
            String minute_timeout = z.getString(R.string.switcher_hint_timeout_minute);
            switch (value) {
                case 1:
                    return String.format(second_timeout, "30");
                case 2:
                    return String.format(minute_timeout, DatabaseTables.SYSTEM_MARK);
                case 3:
                    return String.format(minute_timeout, DatabaseTables.USER_MARK);
                case 4:
                    return String.format(minute_timeout, "10");
                default:
                    return "";
            }
        } else {
            String name = "";
            String verb = "";
            String ALREADY = z.getString(R.string.prompt_already);
            switch (item) {
                case 1:
                    name = z.getString(R.string.switcher_wifi);
                    break;
                case 2:
                    name = z.getString(R.string.switcher_mobile_data);
                    break;
                case 3:
                    name = z.getString(R.string.switcher_ringtone);
                    break;
                case 4:
                    name = z.getString(R.string.switcher_vibrate);
                    break;
                case 6:
                    name = z.getString(R.string.switcher_rotation);
                    break;
                case 11:
                    name = z.getString(R.string.switcher_bluetooth);
                    break;
                case 12:
                    name = z.getString(R.string.switcher_airplane_mode);
                    break;
            }
            switch (value) {
                case 0:
                    verb = z.getString(R.string.security_action_off);
                    break;
                case 1:
                    verb = z.getString(R.string.security_action_on);
                    break;
            }
            return ALREADY + verb + name;
        }
    }

    /* access modifiers changed from: private */
    public class b extends BroadcastReceiver {
        private b() {
        }

        /* synthetic */ b(SwitcherContainerView x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.net.wifi.WIFI_STATE_CHANGED".equals(action)) {
                int intExtra = intent.getIntExtra("wifi_state", 0);
                Message msg = new Message();
                msg.what = 0;
                msg.arg1 = intExtra;
                SwitcherContainerView.this.G.sendMessage(msg);
            }
            if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                int state = BluetoothAdapter.getDefaultAdapter().getState();
                Message msg2 = new Message();
                msg2.what = 5;
                msg2.arg1 = state;
                SwitcherContainerView.this.G.sendMessage(msg2);
            }
            "android.location.PROVIDERS_CHANGED".equals(action);
            if ("com.safecenter.broadcast.openChildMode".equals(action)) {
                SwitcherContainerView.this.b();
            }
            if ("com.safecenter.broadcast.openGuestMode".equals(action)) {
                SwitcherContainerView.this.c();
            }
            if ("com.lenovo.safecenter.lightChanges".equals(action)) {
                SwitcherContainerView.this.d((SwitcherContainerView) true);
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                SwitcherContainerView.this.a((SwitcherContainerView) false);
            }
        }
    }

    public void onClick(View v2) {
        switch (v2.getId()) {
            case R.id.switch_wifi:
                this.E = false;
                this.n.setStatus(SettingUtil.WIFI, b(a(1)));
                return;
            case R.id.switch_mobile_data:
                if (1 == a(12)) {
                    a(20, 0, false);
                    return;
                }
                if (SettingUtil.isMultiSim) {
                    MultiSIMUtils utils = new MultiSIMUtils(z);
                    if (!(utils.getSimState(0) == 5 || utils.getSimState(1) == 5)) {
                        a(20, 0, false);
                        return;
                    }
                } else if (((TelephonyManager) z.getSystemService("phone")).getSimState() != 5) {
                    a(20, 0, false);
                    return;
                }
                if (!this.C) {
                    int data = b(a(2));
                    this.n.setStatus(SettingUtil.DATA, data);
                    this.b.setImage(R.drawable.assist_switcher_mobile_data_on);
                    this.C = true;
                    a(2, data, true);
                    new Handler().postDelayed(new Runnable() {
                        /* class com.lenovo.safecenter.floatwindow.view.SwitcherContainerView.AnonymousClass2 */

                        public final void run() {
                            if (SwitcherContainerView.this.C) {
                                SwitcherContainerView.this.C = false;
                                SwitcherContainerView.this.a((SwitcherContainerView) true);
                            }
                        }
                    }, 6000);
                    return;
                }
                return;
            case R.id.switch_ringtone:
                this.n.setStatus(SettingUtil.RINGTONE, b(a(3)));
                b(true);
                return;
            case R.id.switch_vibrate:
                this.n.setStatus(SettingUtil.VIBRATE, b(a(4)));
                c(true);
                return;
            case R.id.switch_light:
                screenWindowDel = false;
                int brightness = 0;
                int brightnessCur = a(5);
                if (brightnessCur < 5) {
                    brightness = brightnessCur + 1;
                } else if (brightnessCur == 5) {
                    brightness = 1;
                }
                this.n.setStatus(SettingUtil.BRIGHTNESS, brightness);
                return;
            case R.id.switch_rotation:
                this.n.setStatus(SettingUtil.AUTOROTATE, b(a(6)));
                e(true);
                return;
            case R.id.switch_timeout:
                int timeout = 0;
                int timeoutCur = a(7);
                if (timeoutCur < 4) {
                    timeout = timeoutCur + 1;
                } else if (timeoutCur == 4) {
                    timeout = 1;
                }
                this.n.setStatus(SettingUtil.TIMEOUT, timeout);
                f(true);
                return;
            case R.id.switch_bluetooth:
                if (!this.D) {
                    this.n.setStatus(SettingUtil.BLUETOOTH, b(a(11)));
                    return;
                }
                return;
            case R.id.switch_traffic_monitor:
                FloatWindow.instanceFloatWindow.delFloatWindow();
                TrafficStatsService.startIntentTraffic(z);
                return;
            case R.id.switch_children_desktop:
                if (TrafficStatsService.nacServerIsExist()) {
                    this.n.setStatus(SettingUtil.CHILD_MODE, b(a(9)));
                    b();
                    return;
                }
                this.i.setImage(R.drawable.assist_switcher_children_desktop_off);
                this.i.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_off));
                a(9, 0, false);
                return;
            case R.id.switch_guest_mode:
                if (TrafficStatsService.nacServerIsExist()) {
                    this.n.setStatus(SettingUtil.GUEST_MODE, b(a(10)));
                    c();
                    return;
                }
                this.j.setImage(R.drawable.assist_switcher_visitor_mode_off);
                this.j.setLabelColor(z.getResources().getColor(R.color.text_switcher_item_off));
                a(10, 0, false);
                return;
            case R.id.switch_airplane_mode:
                int radio = b(a(12));
                this.F = z.getSharedPreferences(Constants.FLIGHT_STATUS, 0);
                if (radio == 1) {
                    this.F.edit().putInt("wifi_status", a(1)).putInt("data_status", a(2)).putInt("bluetooth_status", a(11)).commit();
                    this.n.setStatus(SettingUtil.WIFI, 0);
                    this.a.setImage(R.drawable.assist_switcher_wifi_off);
                    this.a.setLabelColor(getResources().getColor(R.color.text_switcher_item_off));
                    this.n.setStatus(SettingUtil.DATA, 0);
                    this.b.setImage(R.drawable.assist_switcher_mobile_data_off);
                    this.b.setLabelColor(getResources().getColor(R.color.text_switcher_item_off));
                    this.n.setStatus(SettingUtil.BLUETOOTH, 0);
                    this.b.setEnabled(false);
                    this.k.setEnabled(false);
                } else {
                    this.b.setEnabled(true);
                    this.k.setEnabled(true);
                    int wifiFlag = this.F.getInt("wifi_status", 0);
                    int dataFlag = this.F.getInt("data_status", 0);
                    int bluetoothFlag = this.F.getInt("bluetooth_status", 0);
                    if (wifiFlag == 1) {
                        this.n.setStatus(SettingUtil.WIFI, 1);
                        this.a.setImage(R.drawable.assist_switcher_wifi_on);
                        this.a.setLabelColor(getResources().getColor(R.color.text_switcher_item_on));
                    }
                    if (dataFlag == 1) {
                        this.n.setStatus(SettingUtil.DATA, 1);
                        this.b.setImage(R.drawable.assist_switcher_mobile_data_on);
                        this.b.setLabelColor(getResources().getColor(R.color.text_switcher_item_on));
                    }
                    if (bluetoothFlag == 1) {
                        this.n.setStatus(SettingUtil.BLUETOOTH, 1);
                    }
                }
                this.n.setStatus(SettingUtil.AIRPLANE, radio);
                h(true);
                return;
            default:
                return;
        }
    }

    private int a(int item) {
        switch (item) {
            case 1:
                return this.n.getStatus(SettingUtil.WIFI);
            case 2:
                return this.n.getStatus(SettingUtil.DATA);
            case 3:
                return this.n.getStatus(SettingUtil.RINGTONE);
            case 4:
                return this.n.getStatus(SettingUtil.VIBRATE);
            case 5:
                return this.n.getStatus(SettingUtil.BRIGHTNESS);
            case 6:
                return this.n.getStatus(SettingUtil.AUTOROTATE);
            case 7:
                return this.n.getStatus(SettingUtil.TIMEOUT);
            case 8:
            default:
                return 0;
            case 9:
                return this.n.getStatus(SettingUtil.CHILD_MODE);
            case 10:
                return this.n.getStatus(SettingUtil.GUEST_MODE);
            case 11:
                return this.n.getStatus(SettingUtil.BLUETOOTH);
            case 12:
                return this.n.getStatus(SettingUtil.AIRPLANE);
        }
    }

    private static int b(int a2) {
        switch (a2) {
            case 0:
                return 1;
            case 1:
                return 0;
            default:
                return 0;
        }
    }
}
