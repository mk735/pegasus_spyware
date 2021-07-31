package com.lenovo.safecenter.safemode;

import android.app.TabActivity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.correct.TrafficCorrectSetting;
import com.lenovo.safecenter.support.HttpUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;

public class SofeModeMain extends TabActivity implements View.OnClickListener {
    public static final String TS_CALL = "call";
    public static final String TS_CONTRACT = "contract";
    public static final String TS_SETTINGT = "setting";
    public static final String TS_SMS = "sms";
    private TabHost a;
    private b b;
    private long c = 0;
    private GestureDetector d;
    private View.OnTouchListener e;
    public Handler hand = new Handler() {
        /* class com.lenovo.safecenter.safemode.SofeModeMain.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            int i = msg.what;
        }
    };

    private class b extends BroadcastReceiver {
        private b() {
        }

        /* synthetic */ b(SofeModeMain x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                SofeModeMain.this.finish();
            }
        }
    }

    public void setTitle(Integer leftImgId, int titleStrId, Integer rightImgId) {
        getWindow().setFeatureInt(7, R.layout.rf_perf_basetitle);
        ((TextView) findViewById(R.id.base_title_center)).setText(titleStrId);
        findViewById(R.id.base_title_center).setOnClickListener(this);
        if (leftImgId != null) {
            findViewById(R.id.base_title_left).setOnClickListener(this);
        } else {
            setLeftImgGone(8);
        }
        if (rightImgId != null) {
            findViewById(R.id.base_title_right).setOnClickListener(this);
        } else {
            setRightImgGone(8);
        }
    }

    public void setLeftImgGone(int gone) {
        findViewById(R.id.base_title_left).setVisibility(gone);
    }

    public void setRightImgGone(int gone) {
        findViewById(R.id.base_title_right).setVisibility(gone);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(7);
        Const.addEntryPrivacySpaceCount();
        setContentView(R.layout.common_tab);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.changedes_title, null);
        DataHelpUtils.allActivity.add(this);
        this.b = new b(this, (byte) 0);
        registerReceiver(this.b, new IntentFilter("android.intent.action.SCREEN_OFF"));
        this.a = getTabHost();
        if (getIntent().getStringExtra("pwd") != null) {
            if (DataHelpUtils.execService("pwd", this).equals(getIntent().getStringExtra("pwd")) && !PwdUtil.checkPassword(getApplicationContext(), getIntent().getStringExtra("pwd"), false)) {
                View view = getView(getString(R.string.safemode_sms), 0, R.drawable.filter_sms_click_img);
                TabHost.TabSpec filterMsgSpec = this.a.newTabSpec("0");
                filterMsgSpec.setIndicator(view);
                filterMsgSpec.setContent(new Intent(this, ErrorWhiteSms.class));
                View view2 = getView(getString(R.string.safemode_call), 1, R.drawable.filter_call_click_img);
                TabHost.TabSpec filterCallSpec = this.a.newTabSpec(DatabaseTables.SYSTEM_MARK);
                filterCallSpec.setIndicator(view2);
                filterCallSpec.setContent(new Intent(this, ErrorWhiteSms.class));
                View view3 = getView(getString(R.string.contract), 2, R.drawable.filter_contract_click_img);
                TabHost.TabSpec filterListSpec = this.a.newTabSpec(DatabaseTables.USER_MARK);
                filterListSpec.setIndicator(view3);
                filterListSpec.setContent(new Intent(this, ErrorWhiteContract.class));
                this.a.addTab(filterMsgSpec);
                this.a.addTab(filterCallSpec);
                this.a.addTab(filterListSpec);
            } else if (PwdUtil.checkPassword(getApplicationContext(), getIntent().getStringExtra("pwd"), false)) {
                View view4 = getView(getString(R.string.safemode_sms), 0, R.drawable.filter_sms_click_img);
                TabHost.TabSpec filterMsgSpec2 = this.a.newTabSpec("0");
                filterMsgSpec2.setIndicator(view4);
                filterMsgSpec2.setContent(new Intent(this, WhiteSms.class));
                View view5 = getView(getString(R.string.safemode_call), 1, R.drawable.filter_call_click_img);
                TabHost.TabSpec filterCallSpec2 = this.a.newTabSpec(DatabaseTables.SYSTEM_MARK);
                filterCallSpec2.setIndicator(view5);
                filterCallSpec2.setContent(new Intent(this, WhiteCall.class));
                View view6 = getView(getString(R.string.contract), 2, R.drawable.filter_contract_click_img);
                TabHost.TabSpec filterListSpec2 = this.a.newTabSpec(DatabaseTables.USER_MARK);
                filterListSpec2.setIndicator(view6);
                filterListSpec2.setContent(new Intent(this, WhiteContract.class));
                this.a.addTab(filterMsgSpec2);
                this.a.addTab(filterCallSpec2);
                this.a.addTab(filterListSpec2);
            }
            this.a.setOnTabChangedListener(new TabHost.OnTabChangeListener() {
                /* class com.lenovo.safecenter.safemode.SofeModeMain.AnonymousClass2 */

                public final void onTabChanged(String tabId) {
                    int tabID = Integer.valueOf(tabId).intValue();
                    for (int i = 0; i < 3; i++) {
                        if (i == tabID) {
                            SofeModeMain.this.a.getChildAt(Integer.valueOf(i).intValue());
                            ((TextView) SofeModeMain.this.a.getTabWidget().getChildAt(Integer.valueOf(i).intValue()).findViewById(R.id.tab_name)).setTextColor(SofeModeMain.this.getResources().getColor(R.color.blue));
                        } else {
                            SofeModeMain.this.a.getChildAt(Integer.valueOf(i).intValue());
                            ((TextView) SofeModeMain.this.a.getTabWidget().getChildAt(Integer.valueOf(i).intValue()).findViewById(R.id.tab_name)).setTextColor(SofeModeMain.this.getResources().getColor(R.color.black4));
                        }
                    }
                }
            });
            Integer num = 0;
            ((TextView) this.a.getTabWidget().getChildAt(num.intValue()).findViewById(R.id.tab_name)).setTextColor(getResources().getColor(R.color.black4));
            String type = getIntent().getStringExtra("Type");
            if (type == null) {
                this.a.setCurrentTab(0);
            } else if (type.equals(TS_CALL)) {
                this.a.setCurrentTab(1);
            } else if (type.equals(TS_SMS)) {
                this.a.setCurrentTab(0);
            }
            this.d = new GestureDetector(new a());
            this.e = new View.OnTouchListener() {
                /* class com.lenovo.safecenter.safemode.SofeModeMain.AnonymousClass3 */

                public final boolean onTouch(View v, MotionEvent event) {
                    if (SofeModeMain.this.d.onTouchEvent(event)) {
                        return true;
                    }
                    return false;
                }
            };
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        if (this.c != 0 && System.currentTimeMillis() - this.c > TrafficCorrectSetting.TIME && !HttpUtils.private_isOpenSec) {
            finish();
        }
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        this.c = System.currentTimeMillis();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        if (DataHelpUtils.getActivityByName("SofeModeMain") != null) {
            DataHelpUtils.allActivity.clear();
        }
        unregisterReceiver(this.b);
        this.c = 0;
    }

    public View getView(String str, int pos, int drawID) {
        View view1 = LayoutInflater.from(this).inflate(R.layout.tadview, (ViewGroup) null);
        TextView txtnumber = (TextView) view1.findViewById(R.id.tab_name);
        ImageView tab_img = (ImageView) view1.findViewById(R.id.tab_img);
        View img = view1.findViewById(R.id.div1);
        Log.i("ss", "img==" + img);
        if (pos == 2) {
            img.setVisibility(8);
        } else {
            img.setVisibility(0);
        }
        txtnumber.setText(str);
        tab_img.setBackgroundResource(drawID);
        return view1;
    }

    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        } else if (v.getId() == R.id.base_title_right) {
            HttpUtils.private_isOpenSec = true;
            startActivity(new Intent(this, ContractSetting.class));
        }
    }

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        public final boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            try {
                if (Math.abs(e1.getY() - e2.getY()) <= 250.0f) {
                    if (e1.getX() - e2.getX() > 120.0f && Math.abs(velocityX) > 200.0f && SofeModeMain.this.a.getCurrentTab() != 2) {
                        Log.i("test ", "right");
                        SofeModeMain.this.a.setCurrentTab(SofeModeMain.this.a.getCurrentTab() + 1);
                    } else if (e2.getX() - e1.getX() > 120.0f && Math.abs(velocityX) > 200.0f && SofeModeMain.this.a.getCurrentTab() != 0) {
                        Log.i("test ", "left");
                        SofeModeMain.this.a.setCurrentTab(SofeModeMain.this.a.getCurrentTab() - 1);
                    }
                }
            } catch (Exception e) {
            }
            return false;
        }
    }

    public boolean dispatchTouchEvent(MotionEvent event) {
        if (this.d.onTouchEvent(event)) {
            event.setAction(3);
        }
        return super.dispatchTouchEvent(event);
    }
}
