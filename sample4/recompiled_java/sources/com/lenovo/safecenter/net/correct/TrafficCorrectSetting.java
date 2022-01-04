package com.lenovo.safecenter.net.correct;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.cache.NetCache;
import com.lenovo.safecenter.net.support.SIMDetailInfo;
import com.lenovo.safecenter.net.support.Utils;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.WflUtils;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.network.CodeName;
import com.tencent.tmsecure.module.network.CorrectionDataInfo;
import com.tencent.tmsecure.module.network.TrafficCorrectionConfig;
import com.tencent.tmsecure.module.network.TrafficCorrectionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TrafficCorrectSetting extends Activity implements View.OnClickListener {
    public static final String CORRECT = "correct";
    public static final String NEW_VERSION_INITPOSTION_KEY = "new_version_initpostion_key";
    public static final long TIME = 120000;
    public static boolean canCorrect = true;
    public static int cardPostion;
    public static TrafficCorrectionManager mTcMgr;
    private ImageView a;
    private ImageView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private Spinner f;
    private Spinner g;
    private Spinner h;
    private Spinner i;
    private SIMDetailInfo j;
    private ArrayList<String> k = null;
    private Context l;
    private int[] m;
    private int n;
    private boolean o = true;
    private final Handler p = new Handler() {
        /* class com.lenovo.safecenter.net.correct.TrafficCorrectSetting.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    Utils.setCanCorrectFlag(TrafficCorrectSetting.this.l, true);
                    Log.i(SecurityService.TAG, "touch here and cancorrect = " + Utils.getCanCorrectFlag(TrafficCorrectSetting.this.l));
                    return;
                case 1:
                    TrafficCorrectSetting.this.finish();
                    return;
                default:
                    return;
            }
        }
    };
    private String q;
    private String r;
    private SharedPreferences s;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.net_traffic_correct_settings);
        Intent intent = getIntent();
        cardPostion = intent.getIntExtra("card", 0);
        this.n = intent.getIntExtra("correct_type", 0);
        this.l = this;
        mTcMgr = (TrafficCorrectionManager) ManagerCreator.getManager(TrafficCorrectionManager.class);
        this.m = Utils.initPostion(cardPostion, this);
        this.q = getString(R.string.net_selsect);
        this.r = getString(R.string.net_first_select_provice);
        this.a = (ImageView) findViewById(R.id.title_back);
        this.b = (ImageView) findViewById(R.id.title_set);
        this.b.setVisibility(8);
        this.a.setOnClickListener(this);
        this.c = (TextView) findViewById(R.id.txt_title);
        if (cardPostion == 0) {
            if (this.n == 0) {
                if (Build.VERSION.SDK_INT < 14 || !MyMultiSIMUtils.isMultiSim(this)) {
                    this.c.setText(getString(R.string.net_title3));
                } else {
                    this.c.setText("SIM1" + getString(R.string.net_title3));
                }
            } else if (Build.VERSION.SDK_INT < 14 || !MyMultiSIMUtils.isMultiSim(this)) {
                this.c.setText(getString(R.string.net_title4));
            } else {
                this.c.setText(R.string.net_title1);
            }
        } else if (this.n == 0) {
            if (Build.VERSION.SDK_INT < 14 || !MyMultiSIMUtils.isMultiSim(this)) {
                this.c.setText(getString(R.string.net_title3));
            } else {
                this.c.setText("SIM2" + getString(R.string.net_title3));
            }
        } else if (Build.VERSION.SDK_INT < 14 || !MyMultiSIMUtils.isMultiSim(this)) {
            this.c.setText(getString(R.string.net_title4));
        } else {
            this.c.setText(R.string.net_title2);
        }
        this.e = (TextView) findViewById(R.id.net_cancel);
        this.e.setOnClickListener(this);
        this.f = (Spinner) findViewById(R.id.net_correct_set_provice_editext);
        this.g = (Spinner) findViewById(R.id.net_correct_set_city_editext);
        this.h = (Spinner) findViewById(R.id.net_correct_set_Operators_editext);
        this.i = (Spinner) findViewById(R.id.net_correct_set_Brand_editext);
        this.d = (TextView) findViewById(R.id.net_traffic_correct);
        if (this.n == 0) {
            this.d.setText(R.string.net_start_correct);
        } else {
            this.d.setText(R.string.net_ok);
        }
        this.d.setOnClickListener(this);
        this.k = new ArrayList<>();
        this.k.add(0, getString(R.string.net_operators_m));
        this.k.add(1, getString(R.string.net_operators_u));
        this.k.add(2, getString(R.string.net_operators_cdma));
        ArrayList<String> a2 = a(mTcMgr.getAllProvinces());
        a2.add(0, this.q);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, (int) R.layout.simple_spinner_item, a2);
        arrayAdapter.setDropDownViewResource(17367049);
        this.f.setAdapter((SpinnerAdapter) arrayAdapter);
        this.f.setSelection(b(this.m[0], a2), true);
        this.f.setOnItemSelectedListener(new c());
        TextView textView = (TextView) this.f.getSelectedView();
        ArrayList<String> a3 = a(mTcMgr.getCities(b(textView.getText().toString())));
        Log.i("testcorrect", "size = " + a3.size());
        String obj = textView.getText().toString();
        if (a3.size() == 0) {
            a3.add(obj);
        } else if (a3.size() == 1 && this.q.equals(obj)) {
            a3.set(0, this.r);
        }
        ArrayAdapter arrayAdapter2 = new ArrayAdapter(this.l, (int) R.layout.simple_spinner_item, a3);
        arrayAdapter2.setDropDownViewResource(17367049);
        this.g.setAdapter((SpinnerAdapter) arrayAdapter2);
        this.g.setSelection(b(this.m[1], a3), true);
        this.g.setOnItemSelectedListener(new a(this, (byte) 0));
        ArrayAdapter arrayAdapter3 = new ArrayAdapter(this, (int) R.layout.simple_spinner_item, this.k);
        arrayAdapter3.setDropDownViewResource(17367049);
        this.h.setAdapter((SpinnerAdapter) arrayAdapter3);
        this.h.setSelection(b(this.m[2], this.k));
        this.h.setOnItemSelectedListener(new b());
    }

    private final class c implements AdapterView.OnItemSelectedListener {
        private int b = 0;

        public c() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int position, long id) {
            TextView province = (TextView) view;
            String proviceString = province.getText().toString();
            TrafficCorrectionManager trafficCorrectionManager = TrafficCorrectSetting.mTcMgr;
            TrafficCorrectSetting trafficCorrectSetting = TrafficCorrectSetting.this;
            ArrayList<String> cityList = TrafficCorrectSetting.this.a((TrafficCorrectSetting) trafficCorrectionManager.getCities(TrafficCorrectSetting.b(province.getText().toString())));
            if (cityList.size() == 0) {
                cityList.add(proviceString);
            } else if (TrafficCorrectSetting.this.q.equals(proviceString)) {
                cityList.set(0, TrafficCorrectSetting.this.r);
                Log.i("testcorrect", "~~~size = " + cityList.size());
            }
            ArrayAdapter<String> cityAdapter = new ArrayAdapter<>(TrafficCorrectSetting.this.l, (int) R.layout.simple_spinner_item, cityList);
            cityAdapter.setDropDownViewResource(17367049);
            if (this.b == 0) {
                TrafficCorrectSetting.this.g.setAdapter((SpinnerAdapter) cityAdapter);
                TrafficCorrectSetting.this.g.setSelection(0, true);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    private final class a implements AdapterView.OnItemSelectedListener {
        private a() {
        }

        /* synthetic */ a(TrafficCorrectSetting x0, byte b) {
            this();
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int position, long id) {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    private final class b implements AdapterView.OnItemSelectedListener {
        private int b = 0;

        public b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int position, long id) {
            ArrayList<String> list = new ArrayList<>();
            String operatorString = ((TextView) view).getText().toString();
            if (operatorString.equals(TrafficCorrectSetting.this.getString(R.string.net_operators_m))) {
                list.add(0, TrafficCorrectSetting.this.l.getString(R.string.net_operators_m_1));
                list.add(1, TrafficCorrectSetting.this.l.getString(R.string.net_operators_m_2));
                list.add(2, TrafficCorrectSetting.this.l.getString(R.string.net_operators_m_3));
                list.add(0, TrafficCorrectSetting.this.q);
            } else if (operatorString.equals(TrafficCorrectSetting.this.getString(R.string.net_operators_u))) {
                list.add(0, TrafficCorrectSetting.this.l.getString(R.string.net_operators_u_1));
                list.add(1, TrafficCorrectSetting.this.l.getString(R.string.net_operators_u_2));
                list.add(0, TrafficCorrectSetting.this.q);
            } else {
                list.add(TrafficCorrectSetting.this.getString(R.string.net_operators_cdma));
            }
            ArrayAdapter<String> adapter2 = new ArrayAdapter<>(TrafficCorrectSetting.this.l, (int) R.layout.simple_spinner_item, list);
            adapter2.setDropDownViewResource(17367049);
            if (this.b == 0) {
                TrafficCorrectSetting.this.i.setAdapter((SpinnerAdapter) adapter2);
                Spinner spinner = TrafficCorrectSetting.this.i;
                TrafficCorrectSetting trafficCorrectSetting = TrafficCorrectSetting.this;
                spinner.setSelection(TrafficCorrectSetting.b(TrafficCorrectSetting.this.m[3], list), true);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public void onClick(View v) {
        boolean z;
        switch (v.getId()) {
            case R.id.net_cancel:
                finish();
                return;
            case R.id.net_traffic_correct:
                if (this.n == 0) {
                    if (!Utils.getCanCorrectFlag(this)) {
                        long currentTimeMillis = System.currentTimeMillis() - Utils.getLastCorrectTime(this);
                        Log.i(SecurityService.TAG, "tmp = " + currentTimeMillis);
                        if (currentTimeMillis >= TIME) {
                            z = true;
                        } else {
                            if (currentTimeMillis <= 0) {
                                Utils.setLastCorrectTime(this);
                            }
                            z = false;
                        }
                        if (!z) {
                            Toast.makeText(this.l, (int) R.string.net_traffic_correct_notice, 1).show();
                        }
                    }
                    canCorrect = false;
                    Utils.setCanCorrectFlag(this, canCorrect);
                    a(this.n);
                    Utils.setCorrectPostion(this, cardPostion);
                    this.p.sendMessageDelayed(this.p.obtainMessage(0), TIME);
                } else {
                    a(this.n);
                }
                if (this.o) {
                    finish();
                }
                this.o = true;
                return;
            case R.id.title_back:
                finish();
                return;
            default:
                return;
        }
    }

    private void a(int type) {
        String str;
        String str2;
        String str3;
        String str4;
        this.j = new SIMDetailInfo();
        TextView provice = (TextView) this.f.getSelectedView();
        TextView city = (TextView) this.g.getSelectedView();
        TextView op = (TextView) this.h.getSelectedView();
        TextView b2 = (TextView) this.i.getSelectedView();
        this.j.proviceDesc = provice.getText().toString();
        this.j.cityDesc = city.getText().toString();
        this.j.operatorsDesc = op.getText().toString();
        this.j.brandDesc = b2.getText().toString();
        this.j.provice = b(provice.getText().toString());
        SIMDetailInfo sIMDetailInfo = this.j;
        String str5 = this.j.provice;
        String obj = city.getText().toString();
        ArrayList<CodeName> cities = mTcMgr.getCities(str5);
        if (cities != null) {
            Iterator<CodeName> it = cities.iterator();
            str = null;
            while (it.hasNext()) {
                CodeName next = it.next();
                if (obj.equals(next.mName)) {
                    str4 = next.mCode;
                } else {
                    str4 = str;
                }
                str = str4;
            }
        } else {
            str = null;
        }
        sIMDetailInfo.city = str;
        SIMDetailInfo sIMDetailInfo2 = this.j;
        String obj2 = op.getText().toString();
        Iterator<CodeName> it2 = mTcMgr.getCarries().iterator();
        String str6 = null;
        while (it2.hasNext()) {
            CodeName next2 = it2.next();
            if (obj2.equals(next2.mName)) {
                str3 = next2.mCode;
            } else {
                str3 = str6;
            }
            str6 = str3;
        }
        sIMDetailInfo2.operators = str6;
        SIMDetailInfo sIMDetailInfo3 = this.j;
        String str7 = this.j.operators;
        String obj3 = b2.getText().toString();
        Iterator<CodeName> it3 = mTcMgr.getBrands(str7).iterator();
        String str8 = null;
        while (it3.hasNext()) {
            CodeName next3 = it3.next();
            if (obj3.equals(next3.mName)) {
                str2 = next3.mCode;
            } else {
                str2 = str8;
            }
            str8 = str2;
        }
        sIMDetailInfo3.brand = str8;
        this.j.proviceSelected = this.f.getSelectedItemPosition();
        this.j.citySelected = this.g.getSelectedItemPosition();
        this.j.operatorsSelected = this.h.getSelectedItemPosition();
        this.j.brandSelected = this.i.getSelectedItemPosition();
        Log.i(SecurityService.TAG, "proviceDesc = " + this.j.proviceDesc + ",cityDesc = " + this.j.cityDesc);
        Log.i(SecurityService.TAG, "type = " + type);
        Log.i(SecurityService.TAG, "pro id = " + this.j.provice + "   , city id =" + this.j.city + ", oper id = " + this.j.operators + ",brand id =" + this.j.brand + ",,card =" + cardPostion);
        Log.i(SecurityService.TAG, "pro po = " + this.j.proviceSelected + "   , city id =" + this.j.citySelected + ", oper id = " + this.j.operatorsSelected + ",brand id =" + this.j.brandSelected + ",,card =" + cardPostion);
        if (this.q.equals(this.j.proviceDesc) || this.q.equals(this.j.cityDesc) || this.r.equals(this.j.cityDesc) || this.q.equals(this.j.brandDesc)) {
            this.o = false;
            Toast.makeText(this.l, (int) R.string.net_first_set_notice, 1).show();
            return;
        }
        Utils.setConfig2Preference(this.j, cardPostion, this);
        if (type == 1) {
            if (!WflUtils.isNetworkAvailable(this.l)) {
                Toast.makeText(this.l, (int) R.string.net_no_able, 0).show();
            } else {
                Toast.makeText(this.l, (int) R.string.net_correct_update_config_progress, 0).show();
            }
        }
        new Thread() {
            /* class com.lenovo.safecenter.net.correct.TrafficCorrectSetting.AnonymousClass2 */

            public final void run() {
                Message msg = new Message();
                SmsEntity se = new SmsEntity();
                msg.what = R.string.net_correct_update_config;
                se.id = TrafficCorrectSetting.cardPostion;
                if (!WflUtils.isNetworkAvailable(TrafficCorrectSetting.this.l)) {
                    se.body = "";
                    se.phonenum = "";
                } else {
                    if (TrafficCorrectSetting.cardPostion == 0) {
                        TrafficCorrectSetting.this.s = TrafficCorrectSetting.this.getSharedPreferences(Utils.SIM1_PROPERTIES, 0);
                    } else {
                        TrafficCorrectSetting.this.s = TrafficCorrectSetting.this.getSharedPreferences(Utils.SIM2_PROPERTIES, 0);
                    }
                    TrafficCorrectionConfig config = new TrafficCorrectionConfig(TrafficCorrectSetting.this.j.provice, TrafficCorrectSetting.this.j.city, TrafficCorrectSetting.this.j.operators, TrafficCorrectSetting.this.j.brand);
                    TrafficCorrectionManager mTcMgr = (TrafficCorrectionManager) ManagerCreator.getManager(TrafficCorrectionManager.class);
                    mTcMgr.setConfig(config);
                    ArrayList<CorrectionDataInfo> infoList = new ArrayList<>();
                    mTcMgr.startCorrection(infoList);
                    if (infoList.size() > 0) {
                        CorrectionDataInfo di = infoList.get(0);
                        TrafficCorrectSetting.this.s.edit().putString(Utils.SMS_MESSAGE, di.getMessage()).commit();
                        TrafficCorrectSetting.this.s.edit().putString(Utils.SMS_ADDRESS, di.getAddress()).commit();
                        se.body = di.getMessage();
                        se.phonenum = di.getAddress();
                    }
                }
                msg.obj = se;
                if (NetCache.getNetSettingHandler() != null) {
                    NetCache.getNetSettingHandler().sendMessage(msg);
                }
                TrafficCorrectSetting.this.p.sendEmptyMessage(1);
            }
        }.start();
        if (type == 0) {
            Toast.makeText(this.l, (int) R.string.net_traffic_correct_first_notice, 1).show();
            Log.i(SecurityService.TAG, "touch toast short");
            SecurityService.config = new TrafficCorrectionConfig(this.j.provice, this.j.city, this.j.operators, this.j.brand);
            Utils.setLastCorrectTime(this);
            Intent i2 = new Intent(this, SecurityService.class);
            i2.putExtra(CORRECT, true);
            startService(i2);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.j = null;
    }

    /* access modifiers changed from: private */
    public static String b(String name) {
        String mCode = null;
        Iterator i$ = mTcMgr.getAllProvinces().iterator();
        while (i$.hasNext()) {
            CodeName codeName = i$.next();
            if (name.equals(codeName.mName)) {
                mCode = codeName.mCode;
            }
        }
        return mCode;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private ArrayList<String> a(ArrayList<CodeName> lists) {
        ArrayList<String> list = new ArrayList<>();
        if (lists == null) {
            list.add(this.q);
        } else {
            Iterator i$ = lists.iterator();
            while (i$.hasNext()) {
                list.add(i$.next().mName);
            }
        }
        return list;
    }

    /* access modifiers changed from: private */
    public static int b(int pos, List<String> list) {
        if (pos >= list.size() - 1) {
            return list.size() - 1;
        }
        return pos;
    }
}
