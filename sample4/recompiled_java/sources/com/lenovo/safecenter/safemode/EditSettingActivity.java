package com.lenovo.safecenter.safemode;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EditSettingActivity extends BaseTitleActivity {
    private TextView a;
    private TextView b;
    private TextView c;
    private EditText d;
    private ListView e;
    private Button f;
    private List<Map<String, Object>> g;
    private int h;
    private int i;
    private MyAdapter j;

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.editset);
        findView();
        this.i = getIntent().getIntExtra(DatabaseTables.APPLICATIONS_FLAG, 1);
        defultPos();
        this.g = a();
        initData();
        this.e.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.EditSettingActivity.AnonymousClass1 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                EditSettingActivity.this.h = position;
                EditSettingActivity.this.g = EditSettingActivity.this.a();
                EditSettingActivity.this.e.invalidateViews();
            }
        });
    }

    public void initData() {
        if (this.i == 1) {
            setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.changename_title, (Integer) null);
            this.b.setVisibility(0);
            this.a.setText(R.string.p_name);
            this.c.setText(R.string.p_icon);
        } else if (this.i == 2) {
            setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.callnotify, (Integer) null);
            this.a.setText(R.string.p_stitle);
            this.c.setText(R.string.smsimg_notify);
        } else {
            setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.callnotify, (Integer) null);
            this.a.setText(R.string.p_ctitle);
            this.c.setText(R.string.callimg_notify);
        }
        this.j = new MyAdapter(this);
        this.e.setAdapter((ListAdapter) this.j);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private List<Map<String, Object>> a() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<>();
        if (this.h == 0) {
            map.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_on));
        } else {
            map.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_off));
        }
        if (this.i == 1) {
            map.put("img", Integer.valueOf((int) R.drawable.home_page_drawer_privacy_safe));
        } else if (this.i == 2) {
            map.put("img", Integer.valueOf((int) R.drawable.smsnotify_show_black));
        } else if (this.i == 3) {
            map.put("img", Integer.valueOf((int) R.drawable.callnotify_show_black));
        }
        list.add(map);
        Map<String, Object> map2 = new HashMap<>();
        if (this.h == 1) {
            map2.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_on));
        } else {
            map2.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_off));
        }
        if (this.i == 1) {
            map2.put("img", Integer.valueOf((int) R.drawable.safemode_hide));
        } else if (this.i == 2) {
            map2.put("img", Integer.valueOf((int) R.drawable.notify_hide_black));
        } else if (this.i == 3) {
            map2.put("img", Integer.valueOf((int) R.drawable.notify_hide_black));
        }
        list.add(map2);
        return list;
    }

    public void defultPos() {
        if (this.i == 1) {
            if (DataHelpUtils.execService("changeimg", this).equals("") || DataHelpUtils.execService("changeimg", this).equals("0")) {
                this.h = 0;
            } else {
                this.h = 1;
            }
            if (DataHelpUtils.execService("changeNametitle", this).equals("")) {
                this.d.setText(R.string.privacy_safe);
            } else {
                this.d.setText(DataHelpUtils.execService("changeNametitle", this));
            }
        } else if (this.i == 2) {
            if (DataHelpUtils.execService("changesmsimg", this).equals("") || DataHelpUtils.execService("changesmsimg", this).equals("0")) {
                this.h = 0;
            } else {
                this.h = 1;
            }
            if (DataHelpUtils.execService("smsnotifytitle", this).equals("")) {
                this.d.setText(R.string.newsms);
            } else {
                this.d.setText(DataHelpUtils.execService("smsnotifytitle", this));
            }
        } else if (this.i == 3) {
            if (DataHelpUtils.execService("changecallimg", this).equals("") || DataHelpUtils.execService("changecallimg", this).equals("0")) {
                this.h = 0;
            } else {
                this.h = 1;
            }
            if (DataHelpUtils.execService("callnotifytitle", this).equals("")) {
                this.d.setText(R.string.newsms);
            } else {
                this.d.setText(DataHelpUtils.execService("callnotifytitle", this));
            }
        }
    }

    public final class ViewHolder {
        public ImageView img;
        public ImageView imgon;

        public ViewHolder() {
        }
    }

    public class MyAdapter extends BaseAdapter {
        private LayoutInflater b;

        public MyAdapter(Context context) {
            this.b = LayoutInflater.from(context);
        }

        public int getCount() {
            return 2;
        }

        public Object getItem(int arg0) {
            return null;
        }

        public long getItemId(int arg0) {
            return 0;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            ViewHolder holder;
            if (convertView == null) {
                holder = new ViewHolder();
                convertView = this.b.inflate(R.layout.vlist2, (ViewGroup) null);
                holder.img = (ImageView) convertView.findViewById(R.id.changeimg_img);
                holder.imgon = (ImageView) convertView.findViewById(R.id.changeimg_on);
                convertView.setTag(holder);
            } else {
                holder = (ViewHolder) convertView.getTag();
            }
            holder.img.setBackgroundResource(((Integer) ((Map) EditSettingActivity.this.g.get(position)).get("img")).intValue());
            holder.imgon.setBackgroundResource(((Integer) ((Map) EditSettingActivity.this.g.get(position)).get("imgon")).intValue());
            return convertView;
        }
    }

    public void findView() {
        this.c = (TextView) findViewById(R.id.e_icon);
        this.a = (TextView) findViewById(R.id.etitle);
        this.b = (TextView) findViewById(R.id.etitle_desc);
        this.d = (EditText) findViewById(R.id.e_edit);
        this.e = (ListView) findViewById(R.id.elist);
        this.f = (Button) findViewById(R.id.esumbit);
        this.f.setOnClickListener(this);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        } else if (v.getId() != R.id.esumbit) {
        } else {
            if (TextUtils.isEmpty(this.d.getText().toString().trim())) {
                Toast.makeText(this, (int) R.string.setting_pwdfail, 0).show();
            } else if (this.i == 1) {
                if (getWordCount(this.d.getText().toString()) <= 8) {
                    DataHelpUtils.UpdateConfig("changeimg", String.valueOf(this.h), this);
                    DataHelpUtils.UpdateConfig("changeNametitle", this.d.getText().toString(), this);
                    Toast.makeText(this, (int) R.string.setting_pwdok, 0).show();
                    finish();
                    return;
                }
                Toast.makeText(this, (int) R.string.long_whire, 0).show();
            } else if (this.i == 2) {
                DataHelpUtils.UpdateConfig("changesmsimg", String.valueOf(this.h), this);
                DataHelpUtils.UpdateConfig("smsnotifytitle", this.d.getText().toString(), this);
                Toast.makeText(this, (int) R.string.setting_pwdok, 0).show();
                finish();
            } else if (this.i == 3) {
                DataHelpUtils.UpdateConfig("changecallimg", String.valueOf(this.h), this);
                DataHelpUtils.UpdateConfig("callnotifytitle", this.d.getText().toString(), this);
                Toast.makeText(this, (int) R.string.setting_pwdok, 0).show();
                finish();
            }
        }
    }

    public int getWordCount(String s) {
        int length = 0;
        for (int i2 = 0; i2 < s.length(); i2++) {
            int ascii = Character.codePointAt(s, i2);
            if (ascii < 0 || ascii > 255) {
                length += 2;
            } else {
                length++;
            }
        }
        return length;
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
    }
}
