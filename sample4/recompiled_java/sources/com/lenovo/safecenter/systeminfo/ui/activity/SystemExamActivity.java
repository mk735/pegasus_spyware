package com.lenovo.safecenter.systeminfo.ui.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.systeminfo.adapter.PhoneInfoListAdapter;
import com.lenovo.safecenter.systeminfo.entity.PhoneInfoItem;
import com.lenovo.safecenter.systeminfo.service.CpuInfoService;
import com.lenovo.safecenter.systeminfo.service.MemoryInfoService;
import com.lenovo.safecenter.systeminfo.service.NetworkInfoService;
import com.lenovo.safecenter.systeminfo.service.PhoneInfoService;
import com.lenovo.safecenter.systeminfo.service.ScreenInfoService;
import com.lenovo.safecenter.systeminfo.service.SensorInfoService;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class SystemExamActivity extends BaseTitleActivity {
    private LinearLayout a;
    private LinearLayout b;
    private LinearLayout c;
    private LinearLayout d;
    private TextView e;
    private TextView f;
    private ImageView g;
    private ImageView h;
    private TextView i;
    private ListView j;
    private Button k;
    private List<PhoneInfoItem> l;
    private PhoneInfoListAdapter m;
    private int n;
    private double o;
    private double p;
    private String q;
    private boolean r = false;
    private Handler s = new Handler() {
        /* class com.lenovo.safecenter.systeminfo.ui.activity.SystemExamActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            if (!SystemExamActivity.this.r) {
                SystemExamActivity.this.l.add(3, (PhoneInfoItem) msg.obj);
                SystemExamActivity.this.m.notifyDataSetChanged();
                SystemExamActivity.this.r = true;
            }
        }
    };
    private BroadcastReceiver t = new BroadcastReceiver() {
        /* class com.lenovo.safecenter.systeminfo.ui.activity.SystemExamActivity.AnonymousClass2 */

        public final void onReceive(Context context, Intent intent) {
            String string;
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                ArrayList<String> batteryInfoList = new ArrayList<>();
                SystemExamActivity.this.n = intent.getIntExtra("level", 0);
                batteryInfoList.add(SystemExamActivity.this.getString(R.string.sysinfo_battery_power, new Object[]{Integer.valueOf(SystemExamActivity.this.n)}));
                int bVoltage = intent.getIntExtra("voltage", 0);
                if (bVoltage < 10) {
                    bVoltage *= 1000;
                }
                SystemExamActivity.this.o = (double) (((float) bVoltage) / 1000.0f);
                batteryInfoList.add(SystemExamActivity.this.getString(R.string.sysinfo_battery_voltage, new Object[]{Double.valueOf(SystemExamActivity.this.o)}));
                SystemExamActivity.this.p = (double) (((float) intent.getIntExtra("temperature", 0)) / 10.0f);
                batteryInfoList.add(SystemExamActivity.this.getString(R.string.sysinfo_battery_temperature, new Object[]{new DecimalFormat("####.0").format(SystemExamActivity.this.p)}));
                SystemExamActivity.this.q = intent.getStringExtra("technology");
                batteryInfoList.add(SystemExamActivity.this.getString(R.string.sysinfo_battery_type, new Object[]{SystemExamActivity.this.q}));
                PhoneInfoItem item = new PhoneInfoItem();
                item.setIconRes(R.drawable.phoneinfo_battary);
                StringBuilder append = new StringBuilder().append(SystemExamActivity.this.getString(R.string.sysinfo_battery_power, new Object[]{Integer.valueOf(SystemExamActivity.this.n)})).append("%\n").append(SystemExamActivity.this.getString(R.string.sysinfo_battery_voltage, new Object[]{Double.valueOf(SystemExamActivity.this.o)})).append("\n");
                if (SystemExamActivity.this.p >= 8.0d) {
                    string = SystemExamActivity.this.getString(R.string.sysinfo_battery_temperature, new Object[]{Double.valueOf(SystemExamActivity.this.p)});
                } else {
                    string = SystemExamActivity.this.getString(R.string.sysinfo_battery_temperature1, new Object[]{SystemExamActivity.this.getString(R.string.localblack_noName)});
                }
                item.setInfo(append.append(string).append("\n").append(SystemExamActivity.this.getString(R.string.sysinfo_battery_type, new Object[]{SystemExamActivity.this.q})).toString());
                Message msg = new Message();
                msg.obj = item;
                SystemExamActivity.this.s.sendMessage(msg);
            }
        }
    };
    private GestureDetector u;
    private View.OnTouchListener v;

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.phoneinfo_main);
        registerReceiver(this.t, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.opti_main_sys_exam, (Integer) null);
        this.a = (LinearLayout) findViewById(R.id.phone_tab_btn_info);
        this.b = (LinearLayout) findViewById(R.id.phone_tab_btn_test);
        this.e = (TextView) findViewById(R.id.phone_tab_btn_info_text);
        this.f = (TextView) findViewById(R.id.phone_tab_btn_test_text);
        this.g = (ImageView) findViewById(R.id.phone_tab_btn_info_image);
        this.h = (ImageView) findViewById(R.id.phone_tab_btn_test_image);
        this.c = (LinearLayout) findViewById(R.id.layout_phoneinfo_infoshow);
        this.d = (LinearLayout) findViewById(R.id.layout_phoneinfo_phonetest);
        this.d.setVisibility(8);
        this.i = (TextView) findViewById(R.id.tv_phoninfo_summary1);
        this.j = (ListView) findViewById(R.id.list_phoneinfo_detail);
        this.k = (Button) findViewById(R.id.phoneinfo_btn_screen);
        this.a.setBackgroundResource(R.drawable.tab_select);
        this.b.setBackgroundResource(R.drawable.tab_normal);
        this.e.setTextColor(getResources().getColor(R.color.blue));
        this.f.setTextColor(getResources().getColor(R.color.black4));
        this.g.setBackgroundResource(R.drawable.phoneinfo_rb_info_up_blue);
        this.h.setBackgroundResource(R.drawable.phoneinfo_rb_test_up);
        b bVar = new b(this, (byte) 0);
        this.a.setOnClickListener(bVar);
        this.b.setOnClickListener(bVar);
        this.k.setOnClickListener(bVar);
        this.i.setText(PhoneInfoService.getInstance().getPhoneInfo());
        this.l = new ArrayList();
        PhoneInfoItem phoneInfoItem = new PhoneInfoItem();
        phoneInfoItem.setIconRes(R.drawable.phoneinfo_cpu);
        phoneInfoItem.setInfo(CpuInfoService.getInstance().getCpuInfo(this));
        this.l.add(phoneInfoItem);
        PhoneInfoItem phoneInfoItem2 = new PhoneInfoItem();
        phoneInfoItem2.setIconRes(R.drawable.phoneinfo_memory);
        phoneInfoItem2.setInfo(MemoryInfoService.getInstance().getMemeryInfo() + '\n' + MemoryInfoService.getInstance().getRomAndSDcardSizeInfo(this));
        this.l.add(phoneInfoItem2);
        PhoneInfoItem phoneInfoItem3 = new PhoneInfoItem();
        phoneInfoItem3.setIconRes(R.drawable.phoneinfo_screen);
        phoneInfoItem3.setInfo(ScreenInfoService.getInstance().getDisplayMetrics());
        this.l.add(phoneInfoItem3);
        PhoneInfoItem phoneInfoItem4 = new PhoneInfoItem();
        phoneInfoItem4.setIconRes(R.drawable.phoneinfo_wireless);
        phoneInfoItem4.setInfo(NetworkInfoService.getInstance().getWifiInfo());
        this.l.add(phoneInfoItem4);
        PhoneInfoItem phoneInfoItem5 = new PhoneInfoItem();
        phoneInfoItem5.setIconRes(R.drawable.phoneinfo_other);
        phoneInfoItem5.setInfo(NetworkInfoService.getInstance().getNetworkInfo() + '\n' + SensorInfoService.getInstance().sensorInfo());
        this.l.add(phoneInfoItem5);
        this.m = new PhoneInfoListAdapter(this.l);
        this.j.setAdapter((ListAdapter) this.m);
        this.u = new GestureDetector(new a());
        this.v = new View.OnTouchListener() {
            /* class com.lenovo.safecenter.systeminfo.ui.activity.SystemExamActivity.AnonymousClass3 */

            public final boolean onTouch(View v, MotionEvent event) {
                if (SystemExamActivity.this.u.onTouchEvent(event)) {
                    return true;
                }
                return false;
            }
        };
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v2) {
        super.onClick(v2);
        switch (v2.getId()) {
            case R.id.base_title_left:
                finish();
                return;
            default:
                return;
        }
    }

    private final class b implements View.OnClickListener {
        private b() {
        }

        /* synthetic */ b(SystemExamActivity x0, byte b) {
            this();
        }

        public final void onClick(View v) {
            switch (v.getId()) {
                case R.id.phone_tab_btn_info:
                    SystemExamActivity.this.e.setTextColor(SystemExamActivity.this.getResources().getColor(R.color.blue));
                    SystemExamActivity.this.f.setTextColor(SystemExamActivity.this.getResources().getColor(R.color.black4));
                    SystemExamActivity.this.a.setBackgroundResource(R.drawable.tab_select);
                    SystemExamActivity.this.b.setBackgroundResource(R.drawable.tab_normal);
                    SystemExamActivity.this.g.setBackgroundResource(R.drawable.phoneinfo_rb_info_up_blue);
                    SystemExamActivity.this.h.setBackgroundResource(R.drawable.phoneinfo_rb_test_up);
                    SystemExamActivity.this.c.setVisibility(0);
                    SystemExamActivity.this.d.setVisibility(8);
                    return;
                case R.id.phone_tab_btn_test:
                    SystemExamActivity.this.e.setTextColor(SystemExamActivity.this.getResources().getColor(R.color.black4));
                    SystemExamActivity.this.f.setTextColor(SystemExamActivity.this.getResources().getColor(R.color.blue));
                    SystemExamActivity.this.b.setBackgroundResource(R.drawable.tab_select);
                    SystemExamActivity.this.a.setBackgroundResource(R.drawable.tab_normal);
                    SystemExamActivity.this.g.setBackgroundResource(R.drawable.phoneinfo_rb_info_up);
                    SystemExamActivity.this.h.setBackgroundResource(R.drawable.phoneinfo_rb_test_up_blue);
                    SystemExamActivity.this.c.setVisibility(8);
                    SystemExamActivity.this.d.setVisibility(0);
                    return;
                case R.id.phoneinfo_btn_screen:
                    new CustomDialog.Builder(SystemExamActivity.this).setTitle(R.string.notify).setMessage(R.string.phoneinfo_check_screen).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                        /* class com.lenovo.safecenter.systeminfo.ui.activity.SystemExamActivity.b.AnonymousClass2 */

                        public final void onClick(DialogInterface dialog, int which) {
                            SystemExamActivity.this.startActivity(new Intent(SystemExamActivity.this, ScreenTestActivity.class));
                        }
                    }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                        /* class com.lenovo.safecenter.systeminfo.ui.activity.SystemExamActivity.b.AnonymousClass1 */

                        public final void onClick(DialogInterface dialog, int which) {
                            dialog.cancel();
                        }
                    }).show();
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.t);
    }

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        public final boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            try {
                if (Math.abs(e1.getY() - e2.getY()) <= 250.0f) {
                    if (e1.getX() - e2.getX() > 120.0f && Math.abs(velocityX) > 200.0f && SystemExamActivity.this.d.getVisibility() == 8) {
                        Log.i("test ", "right");
                        SystemExamActivity.this.e.setTextColor(SystemExamActivity.this.getResources().getColor(R.color.black4));
                        SystemExamActivity.this.f.setTextColor(SystemExamActivity.this.getResources().getColor(R.color.blue));
                        SystemExamActivity.this.b.setBackgroundResource(R.drawable.tab_select);
                        SystemExamActivity.this.a.setBackgroundResource(R.drawable.tab_normal);
                        SystemExamActivity.this.g.setBackgroundResource(R.drawable.phoneinfo_rb_info_up);
                        SystemExamActivity.this.h.setBackgroundResource(R.drawable.phoneinfo_rb_test_up_blue);
                        SystemExamActivity.this.c.setVisibility(8);
                        SystemExamActivity.this.d.setVisibility(0);
                    } else if (e2.getX() - e1.getX() > 120.0f && Math.abs(velocityX) > 200.0f && SystemExamActivity.this.d.getVisibility() != 8) {
                        Log.i("test ", "left");
                        SystemExamActivity.this.e.setTextColor(SystemExamActivity.this.getResources().getColor(R.color.blue));
                        SystemExamActivity.this.f.setTextColor(SystemExamActivity.this.getResources().getColor(R.color.black4));
                        SystemExamActivity.this.a.setBackgroundResource(R.drawable.tab_select);
                        SystemExamActivity.this.b.setBackgroundResource(R.drawable.tab_normal);
                        SystemExamActivity.this.g.setBackgroundResource(R.drawable.phoneinfo_rb_info_up_blue);
                        SystemExamActivity.this.h.setBackgroundResource(R.drawable.phoneinfo_rb_test_up);
                        SystemExamActivity.this.c.setVisibility(0);
                        SystemExamActivity.this.d.setVisibility(8);
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
