package com.lenovo.safecenter.systeminfo.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.lenovo.safecenter.Laboratory.AppUninstall;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.lenovoAntiSpam.newview.NumberArea;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DialogUtil;
import com.lenovo.safecenter.utils.NewFunctionNoticeManager;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;

public class DailyTools extends BaseTitleActivity {
    private ArrayList<a> a;
    private ListView b;
    private ToolsApater c;
    private boolean d = false;
    private Handler e = new Handler() {
        /* class com.lenovo.safecenter.systeminfo.ui.activity.DailyTools.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ((InputMethodManager) DailyTools.this.getSystemService("input_method")).toggleSoftInput(0, 2);
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void c(DailyTools x0) {
        if (PwdUtil.hasPassword(x0)) {
            DialogUtil.showPwdDialog(Const.ACTION_JUMP_KID_MODE, x0);
            x0.e.sendEmptyMessageDelayed(1, 500);
            return;
        }
        WflUtils.startSettingPasswordActivity(x0.getApplicationContext(), Const.ACTION_JUMP_KID_MODE);
    }

    static /* synthetic */ void e(DailyTools x0) {
        if (PwdUtil.hasPassword(x0)) {
            DialogUtil.showPwdDialog(Const.ACTION_JUMP_CHILD_MODE, x0);
            x0.e.sendEmptyMessageDelayed(1, 500);
            return;
        }
        WflUtils.startSettingPasswordActivity(x0.getApplicationContext(), Const.ACTION_JUMP_CHILD_MODE);
    }

    static /* synthetic */ void f(DailyTools x0) {
        Intent intent = new Intent();
        intent.setAction("com.lenovo.safecenter.SafePaymentActivity");
        x0.startActivity(intent);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.b = new ListView(this);
        this.b.setItemsCanFocus(true);
        setContentView(this.b);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.dayly_tools, (Integer) null);
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.systeminfo.ui.activity.DailyTools.AnonymousClass2 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View arg1, int position, long arg3) {
                switch (((a) DailyTools.this.a.get(position)).f) {
                    case R.drawable.antivirus_upicon:
                        DailyTools.this.startActivity(new Intent(DailyTools.this, AppUninstall.class));
                        return;
                    case R.drawable.dayly_tools_child_mode:
                        if (DailyTools.this.d) {
                            DailyTools.c(DailyTools.this);
                            NewFunctionNoticeManager.removeActionToType(DailyTools.this, NewFunctionNoticeManager.TYPE_TOOLS, NewFunctionNoticeManager.ACTION_KIDMODE);
                            ((a) DailyTools.this.a.get(position)).a = false;
                            DailyTools.this.c.notifyDataSetChanged();
                            return;
                        }
                        DailyTools.e(DailyTools.this);
                        return;
                    case R.drawable.dayly_tools_guest_mode:
                        Intent it = new Intent("com.lenovo.safecenter.view.DialogActivity");
                        if (Settings.System.getInt(DailyTools.this.getContentResolver(), "guest_mode_on", 0) == 0) {
                            it.putExtra("style", 4);
                        } else {
                            it.putExtra("style", 5);
                        }
                        DailyTools.this.startActivity(it);
                        NewFunctionNoticeManager.removeActionToType(DailyTools.this, NewFunctionNoticeManager.TYPE_TOOLS, NewFunctionNoticeManager.ACTION_GUESTMODE);
                        ((a) DailyTools.this.a.get(position)).a = false;
                        DailyTools.this.c.notifyDataSetChanged();
                        return;
                    case R.drawable.dayly_tools_safepayment:
                        DailyTools.f(DailyTools.this);
                        return;
                    case R.drawable.feeprotection_tab_btn_numberspace_icon_normal:
                        DailyTools.this.startActivity(new Intent(DailyTools.this, CommonNumberActivity.class));
                        return;
                    case R.drawable.numberara:
                        DailyTools.this.startActivity(new Intent(DailyTools.this, NumberArea.class));
                        return;
                    case R.drawable.tool_box_system_exam:
                        DailyTools.this.startActivity(new Intent(DailyTools.this, SystemExamActivity.class));
                        return;
                    default:
                        return;
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
        this.a = new ArrayList<>();
        if (TrafficStatsService.nacServerIsExist()) {
            a aVar = new a();
            aVar.c = R.string.guest_mode;
            aVar.d = R.string.guest_mode_message;
            if (NewFunctionNoticeManager.hasActionInType(this, NewFunctionNoticeManager.TYPE_TOOLS, NewFunctionNoticeManager.ACTION_GUESTMODE)) {
                aVar.a = true;
            }
            aVar.f = R.drawable.dayly_tools_guest_mode;
            if (Settings.System.getInt(getContentResolver(), "guest_mode_on", 0) == 0) {
                aVar.e = R.drawable.btn_off;
            } else {
                aVar.e = R.drawable.btn_on;
            }
            this.a.add(aVar);
            if (Settings.System.getInt(getContentResolver(), "child_mode_on", 0) == 1 || Const.SDK_VERSION < 14) {
                this.d = false;
                a aVar2 = new a();
                aVar2.c = R.string.child_mode;
                aVar2.d = R.string.child_mode_message;
                aVar2.f = R.drawable.dayly_tools_child_mode;
                aVar2.e = R.drawable.arrow1;
                this.a.add(aVar2);
            } else {
                this.d = true;
                a aVar3 = new a();
                if (NewFunctionNoticeManager.hasActionInType(this, NewFunctionNoticeManager.TYPE_TOOLS, NewFunctionNoticeManager.ACTION_KIDMODE)) {
                    aVar3.a = true;
                }
                aVar3.c = R.string.kid_mode;
                aVar3.d = R.string.kid_mode_detail;
                aVar3.f = R.drawable.dayly_tools_child_mode;
                aVar3.e = R.drawable.arrow1;
                this.a.add(aVar3);
            }
        }
        a aVar4 = new a();
        aVar4.c = R.string.opti_main_sys_exam;
        aVar4.d = R.string.tool_box_systemexam_summary;
        aVar4.f = R.drawable.tool_box_system_exam;
        aVar4.e = R.drawable.arrow1;
        this.a.add(aVar4);
        a aVar5 = new a();
        aVar5.c = R.string.number_space;
        aVar5.d = R.string.call_protection_yellowpage_summary;
        aVar5.f = R.drawable.feeprotection_tab_btn_numberspace_icon_normal;
        aVar5.e = R.drawable.arrow1;
        this.a.add(aVar5);
        a aVar6 = new a();
        aVar6.c = R.string.phoneinfo_number_search;
        aVar6.d = R.string.phoneinfo_number_search_small;
        aVar6.f = R.drawable.numberara;
        aVar6.e = R.drawable.arrow1;
        this.a.add(aVar6);
        a aVar7 = new a();
        aVar7.c = R.string.text_safepayment;
        aVar7.d = R.string.safepayment_message;
        aVar7.f = R.drawable.dayly_tools_safepayment;
        aVar7.e = R.drawable.arrow1;
        this.a.add(aVar7);
        this.c = new ToolsApater(this);
        this.b.setAdapter((ListAdapter) this.c);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
    }

    public static boolean isShowKidmode(Context context) {
        if (TrafficStatsService.nacServerIsExist()) {
            return Settings.System.getInt(context.getContentResolver(), "child_mode_on", 0) != 1 && Const.SDK_VERSION >= 14;
        }
        return false;
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        super.onClick(v);
        switch (v.getId()) {
            case R.id.base_title_left:
                finish();
                return;
            default:
                return;
        }
    }

    public class ToolsApater extends BaseAdapter {
        private Context b;

        public ToolsApater(Context context) {
            this.b = context;
        }

        public int getCount() {
            return DailyTools.this.a.size();
        }

        public Object getItem(int position) {
            return null;
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            View v;
            if (convertView == null) {
                v = LayoutInflater.from(this.b).inflate(R.layout.antivirusmainitempage, (ViewGroup) null);
                a holder = new a(this, (byte) 0);
                holder.a = (ImageView) v.findViewById(R.id.antivirusmain_icon);
                holder.b = (ImageView) v.findViewById(R.id.antiviruslenovo);
                holder.c = (ImageView) v.findViewById(R.id.antivirusqq);
                holder.d = (ImageView) v.findViewById(R.id.antivirusidefend);
                holder.g = (TextView) v.findViewById(R.id.antivirusbigtitle);
                holder.h = (TextView) v.findViewById(R.id.antivirussmalltitle);
                holder.i = (TextView) v.findViewById(R.id.antivirustitledesc);
                holder.e = (ImageView) v.findViewById(R.id.antivirus_main_item_icon);
                holder.f = (ImageView) v.findViewById(R.id.isNew_icon);
                v.setTag(holder);
            } else {
                v = convertView;
            }
            a holder2 = (a) v.getTag();
            holder2.g.setText(((a) DailyTools.this.a.get(position)).c);
            holder2.h.setText(((a) DailyTools.this.a.get(position)).d);
            holder2.e.setBackgroundResource(((a) DailyTools.this.a.get(position)).f);
            if (((a) DailyTools.this.a.get(position)).a) {
                holder2.f.setVisibility(0);
            } else {
                holder2.f.setVisibility(8);
            }
            holder2.a.setBackgroundResource(((a) DailyTools.this.a.get(position)).e);
            holder2.b.setVisibility(8);
            holder2.c.setVisibility(8);
            holder2.d.setVisibility(8);
            holder2.i.setText("");
            return v;
        }

        private class a {
            ImageView a;
            ImageView b;
            ImageView c;
            ImageView d;
            ImageView e;
            ImageView f;
            TextView g;
            TextView h;
            TextView i;

            private a() {
            }

            /* synthetic */ a(ToolsApater x0, byte b2) {
                this();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class a {
        public boolean a = false;
        private int c;
        private int d;
        private int e;
        private int f;

        a() {
        }
    }
}
