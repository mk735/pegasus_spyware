package com.lenovo.performancecenter.performance;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.performance.DataLayerManagerAccelerate;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class BootSpeedActivity extends Activity implements View.OnClickListener, AdapterView.OnItemClickListener {
    public static final String TAG = "BootSpeedActivity";
    private LinearLayout a;
    private TextView b;
    private PopupWindow c;
    private TextView d;
    private LinearLayout e;
    private ListView f;
    private a g;
    private Context h;
    private DataLayerManageBoot i;
    private ArrayList<DataLayerManagerAccelerate.a> j;
    private int k = 0;
    private int l = 0;
    private HashMap<String, int[]> m;
    private boolean n;
    private b o;
    private Handler p = new Handler() {
        /* class com.lenovo.performancecenter.performance.BootSpeedActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    BootSpeedActivity.this.d.setText(BootSpeedActivity.this.h.getString(R.string.boot_speed_total_autorun_entries, Integer.valueOf(BootSpeedActivity.this.k), Integer.valueOf(BootSpeedActivity.this.k - BootSpeedActivity.this.l)));
                    BootSpeedActivity.this.e.setVisibility(8);
                    BootSpeedActivity.this.g.notifyDataSetChanged();
                    return;
                case 2:
                    BootSpeedActivity.this.d.setText(BootSpeedActivity.this.h.getString(R.string.boot_speed_total_autorun_entries, Integer.valueOf(BootSpeedActivity.this.k), Integer.valueOf(BootSpeedActivity.this.k - BootSpeedActivity.this.l)));
                    return;
                default:
                    return;
            }
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.rf_perf_autorun_manage);
        findViewById(R.id.title_back).setOnClickListener(this);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.kjjs);
        findViewById(R.id.title_set).setVisibility(0);
        findViewById(R.id.title_set).setOnClickListener(this);
        this.a = (LinearLayout) findViewById(R.id.layout_no_rooted);
        this.a.setVisibility(WflUtils.isRoot() ? 8 : 0);
        this.b = (TextView) findViewById(R.id.textview_no_rooted);
        this.d = (TextView) findViewById(R.id.total_entries);
        this.e = (LinearLayout) findViewById(R.id.progress_bar);
        this.f = (ListView) findViewById(R.id.listView);
        this.i = new DataLayerManageBoot();
        this.j = new ArrayList<>();
        this.m = new HashMap<>();
        this.h = this;
        this.e.setVisibility(0);
        this.g = new a();
        this.f.setAdapter((ListAdapter) this.g);
        this.f.setOnItemClickListener(this);
        if (this.o == null) {
            this.n = true;
            this.o = new b();
            this.o.start();
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    class b extends Thread {
        b() {
        }

        public final void run() {
            if (BootSpeedActivity.this.n) {
                BootSpeedActivity.this.j = BootSpeedActivity.this.i.getBootItem(BootSpeedActivity.this.h);
                BootSpeedActivity.this.l = BootSpeedActivity.this.i.getBootAllowCount();
                BootSpeedActivity.this.k = BootSpeedActivity.this.j.size();
                BootSpeedActivity.this.p.sendMessage(BootSpeedActivity.this.p.obtainMessage(1));
            }
        }
    }

    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        if (!this.o.isInterrupted()) {
            this.n = false;
            this.o.interrupt();
            this.o = null;
        }
        super.onDestroy();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
        Log.i(TAG, System.currentTimeMillis() + " onItemClick position == " + position);
        if (!WflUtils.isRoot()) {
            e();
            return;
        }
        DataLayerManagerAccelerate.a item = this.j.get(position);
        if (item.f == 2) {
            item.f = 1;
            this.l++;
        } else {
            item.f = 2;
            this.l--;
        }
        this.g.notifyDataSetChanged();
        this.p.sendEmptyMessage(2);
        String[] componentName = {item.c, item.e};
        RootPassage.setComponentAbleBoot(this.h, componentName, item.f);
        this.m.put(item.c, new int[]{item.f});
        Log.i(TAG, System.currentTimeMillis() + " onItemClick pkgName == " + componentName[0] + " clsName == " + componentName[1] + " toState == " + item.f);
        TrackEvent.reportDisableBootStartApp(item.c);
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.popwindow_onekey_all_forbid /*{ENCODED_INT: 2131297472}*/:
                Log.i(TAG, System.currentTimeMillis() + " ALL FORBID start");
                this.c.dismiss();
                if (!WflUtils.isRoot()) {
                    e();
                    return;
                }
                b();
                Log.i(TAG, System.currentTimeMillis() + " ALL FORBID old");
                return;
            case R.id.popwindow_onekey_all_allow /*{ENCODED_INT: 2131297473}*/:
                Log.i(TAG, System.currentTimeMillis() + " ALL ALLOW start");
                this.c.dismiss();
                if (!WflUtils.isRoot()) {
                    e();
                    return;
                }
                a();
                Log.i(TAG, System.currentTimeMillis() + " ALL ALLOW end");
                return;
            case R.id.popwindow_onekey_speed_up /*{ENCODED_INT: 2131297474}*/:
                Log.i(TAG, System.currentTimeMillis() + " onClick");
                this.c.dismiss();
                if (!WflUtils.isRoot()) {
                    e();
                    return;
                }
                c();
                TrackEvent.reportClickOneKeyEndTask();
                return;
            case R.id.title_back /*{ENCODED_INT: 2131297709}*/:
                d();
                return;
            case R.id.title_set /*{ENCODED_INT: 2131297710}*/:
                if (this.c == null) {
                    View inflate = LayoutInflater.from(this).inflate(R.layout.rf_perf_bootspeed_poplistview, (ViewGroup) null);
                    ((LinearLayout) inflate.findViewById(R.id.popwindow_onekey_all_allow)).setOnClickListener(this);
                    ((LinearLayout) inflate.findViewById(R.id.popwindow_onekey_all_forbid)).setOnClickListener(this);
                    ((LinearLayout) inflate.findViewById(R.id.popwindow_onekey_speed_up)).setOnClickListener(this);
                    this.c = new PopupWindow(inflate, -2, -2, true);
                    this.c.setAnimationStyle(R.style.PopupAnimation);
                    this.c.setBackgroundDrawable(new BitmapDrawable());
                    this.c.setFocusable(true);
                    this.c.setOutsideTouchable(true);
                    this.c.showAsDropDown(findViewById(R.id.title_bar), Const.getScreenWidth(), 0);
                    this.c.update();
                    this.c.setOnDismissListener(new PopupWindow.OnDismissListener() {
                        /* class com.lenovo.performancecenter.performance.BootSpeedActivity.AnonymousClass2 */

                        public final void onDismiss() {
                            BootSpeedActivity.this.c = null;
                        }
                    });
                    return;
                } else if (this.c.isShowing()) {
                    this.c.dismiss();
                    return;
                } else {
                    return;
                }
            default:
                return;
        }
    }

    private void a() {
        HashMap<String[], int[]> map = new HashMap<>();
        Iterator i$ = this.j.iterator();
        while (i$.hasNext()) {
            DataLayerManagerAccelerate.a appItem = i$.next();
            if (appItem.f == 2) {
                appItem.f = 1;
                map.put(new String[]{appItem.c, appItem.e}, new int[]{appItem.f});
                this.m.put(appItem.c, new int[]{appItem.f});
            }
        }
        this.g.notifyDataSetChanged();
        Log.i(TAG, System.currentTimeMillis() + " ALL ALLOW invalidateViews()");
        this.l = this.j.size();
        this.p.sendEmptyMessage(2);
        if (map.size() != 0) {
            RootPassage.setComponentAbleBoot(this.h, map);
        }
        Toast.makeText(this.h, getString(R.string.boot_already_setting_all_allow), 0).show();
    }

    private void b() {
        HashMap<String[], int[]> map = new HashMap<>();
        Iterator i$ = this.j.iterator();
        while (i$.hasNext()) {
            DataLayerManagerAccelerate.a appItem = i$.next();
            if (appItem.f == 1) {
                appItem.f = 2;
                map.put(new String[]{appItem.c, appItem.e}, new int[]{appItem.f});
                this.m.put(appItem.c, new int[]{appItem.f});
            }
        }
        this.g.notifyDataSetChanged();
        Log.i(TAG, System.currentTimeMillis() + " ALL FORBID invalidateViews()");
        this.l = 0;
        this.p.sendEmptyMessage(2);
        if (map.size() != 0) {
            RootPassage.setComponentAbleBoot(this.h, map);
        }
        Toast.makeText(this.h, getString(R.string.boot_already_setting_all_forbid), 0).show();
    }

    private void c() {
        HashMap<String[], int[]> bootMap = this.i.getBootMap(this.h, this.j);
        int needChangeToForbid = this.i.getNeedChangeToForbid();
        int needChangeToAllow = this.i.getNeedChangeToAllow();
        if (needChangeToForbid == 0 && needChangeToAllow == 0) {
            Toast.makeText(this.h, (int) R.string.boot_is_optimal_configuration, 0).show();
            return;
        }
        HashMap<String[], int[]> map = new HashMap<>();
        ArrayList<String> listNeedChangeToForbid = new ArrayList<>();
        ArrayList<String> listNeedChangeToAlow = new ArrayList<>();
        for (Map.Entry<String[], int[]> entry : bootMap.entrySet()) {
            if (entry.getValue()[0] != -1) {
                if (entry.getValue()[0] == 1) {
                    listNeedChangeToAlow.add(entry.getKey()[0]);
                } else if (entry.getValue()[0] == 2) {
                    listNeedChangeToForbid.add(entry.getKey()[0]);
                }
            }
        }
        Iterator i$ = this.j.iterator();
        while (i$.hasNext()) {
            DataLayerManagerAccelerate.a item = i$.next();
            if (listNeedChangeToAlow.contains(item.c)) {
                item.f = 1;
                this.l++;
                map.put(new String[]{item.c, item.e}, new int[]{item.f});
                this.m.put(item.c, new int[]{item.f});
            }
            if (listNeedChangeToForbid.contains(item.c)) {
                item.f = 2;
                this.l--;
                map.put(new String[]{item.c, item.e}, new int[]{item.f});
                this.m.put(item.c, new int[]{item.f});
            }
        }
        this.g.notifyDataSetChanged();
        this.p.sendEmptyMessage(2);
        Toast.makeText(this.h, getString(R.string.boot_speed_expert_one_key_result, new Object[]{Integer.valueOf(needChangeToForbid), Integer.valueOf(needChangeToAllow)}), 0).show();
        if (map.size() != 0) {
            RootPassage.setComponentAbleBoot(this.h, map);
        }
    }

    static class c {
        private ImageView a;
        private TextView b;
        private TextView c;
        private ImageView d;

        c() {
        }
    }

    /* access modifiers changed from: private */
    public class a extends BaseAdapter {
        private LayoutInflater b;

        public a() {
            this.b = (LayoutInflater) BootSpeedActivity.this.h.getSystemService("layout_inflater");
        }

        public final int getCount() {
            return BootSpeedActivity.this.j.size();
        }

        public final Object getItem(int position) {
            return BootSpeedActivity.this.j.get(position);
        }

        public final long getItemId(int position) {
            return (long) position;
        }

        public final View getView(int position, View convertView, ViewGroup parent) {
            c holder;
            Log.i(BootSpeedActivity.TAG, System.currentTimeMillis() + " getView");
            if (convertView == null) {
                convertView = this.b.inflate(R.layout.rf_perf_bootspeed_item, (ViewGroup) null);
                holder = new c();
                holder.a = (ImageView) convertView.findViewById(R.id.app_icon);
                holder.b = (TextView) convertView.findViewById(R.id.app_name);
                holder.c = (TextView) convertView.findViewById(R.id.app_suggest);
                holder.d = (ImageView) convertView.findViewById(R.id.itemcheck);
                convertView.setTag(holder);
            } else {
                holder = (c) convertView.getTag();
            }
            DataLayerManagerAccelerate.a item = (DataLayerManagerAccelerate.a) BootSpeedActivity.this.j.get(position);
            if (item != null) {
                holder.a.setImageDrawable(item.a == null ? BootSpeedActivity.this.h.getResources().getDrawable(17301651) : item.a);
                holder.b.setText(item.b);
                holder.c.setVisibility(0);
                if (item.g == 1) {
                    holder.c.setText(R.string.boot_speed_suggest_enable);
                    holder.c.setTextColor(BootSpeedActivity.this.h.getResources().getColor(R.color.green_allow));
                } else if (item.g == 2) {
                    holder.c.setText(R.string.boot_speed_suggest_disable);
                    holder.c.setTextColor(BootSpeedActivity.this.h.getResources().getColor(R.color.red_forbid));
                } else {
                    holder.c.setText("");
                }
                if (item.f == 2) {
                    holder.d.setImageResource(R.drawable.perm_deny);
                } else {
                    holder.d.setImageResource(R.drawable.perm_grant);
                }
            }
            return convertView;
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            d();
        }
        return super.onKeyDown(keyCode, event);
    }

    private void d() {
        for (Map.Entry<String, int[]> entry : this.m.entrySet()) {
            Log.i(TAG, entry.getKey() + " " + entry.getValue()[0]);
        }
        this.i.updatePkgsInBootDB2(this.h, this.m);
        if (this.c != null) {
            this.c.dismiss();
        }
        finish();
    }

    private void e() {
        this.a.setBackgroundResource(R.drawable.show_root_info_select);
        this.b.setTextColor(this.h.getResources().getColor(R.color.yellow_884906));
    }
}
