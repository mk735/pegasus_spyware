package com.lenovo.safecenter.lenovoAntiSpam.views;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.Contract;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class ManLocalBlackAddActivity extends BaseTitleActivity {
    AppDatabase a;
    private ListView b;
    private Button c;
    private Button d;
    private Button e;
    private View f;
    private int g;
    private BaseAdapter h;
    private List<Contract> i;
    private TextView j;
    private boolean k = false;
    private int l = 0;
    private ProgressDialog m;
    private ContractHelpUtils n;
    private Handler o = new a(this, (byte) 0);

    static /* synthetic */ int l(ManLocalBlackAddActivity x0) {
        int i2 = x0.l;
        x0.l = i2 - 1;
        return i2;
    }

    static /* synthetic */ int m(ManLocalBlackAddActivity x0) {
        int i2 = x0.l;
        x0.l = i2 + 1;
        return i2;
    }

    private class a extends Handler {
        private a() {
        }

        /* synthetic */ a(ManLocalBlackAddActivity x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    boolean isCheckAll = ManLocalBlackAddActivity.this.checkSelAll();
                    boolean cancelAll = ManLocalBlackAddActivity.this.checkCancelAll();
                    if (isCheckAll) {
                        ManLocalBlackAddActivity.this.c.setEnabled(false);
                        ManLocalBlackAddActivity.this.d.setEnabled(true);
                        ManLocalBlackAddActivity.this.changeBtn(true, R.drawable.antispamadd);
                        return;
                    } else if (cancelAll) {
                        ManLocalBlackAddActivity.this.c.setEnabled(true);
                        ManLocalBlackAddActivity.this.d.setEnabled(false);
                        ManLocalBlackAddActivity.this.changeBtn(true, R.drawable.antispamadd);
                        return;
                    } else {
                        ManLocalBlackAddActivity.this.c.setEnabled(true);
                        ManLocalBlackAddActivity.this.d.setEnabled(true);
                        ManLocalBlackAddActivity.this.changeBtn(true, R.drawable.antispamadd);
                        return;
                    }
                case 2:
                    ManLocalBlackAddActivity.this.k = false;
                    if (ManLocalBlackAddActivity.this.m != null) {
                        try {
                            ManLocalBlackAddActivity.this.m.dismiss();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    Toast.makeText(ManLocalBlackAddActivity.this, (int) R.string.antispamlocalblack_successNotice, 0).show();
                    ContractHelpUtils.sendBraodcast(ManLocalBlackAddActivity.this, "com.lenovo.antispam.blackperson.change");
                    ManLocalBlackAddActivity.this.finish();
                    return;
                case 3:
                    ManLocalBlackAddActivity.this.k = false;
                    if (ManLocalBlackAddActivity.this.m != null) {
                        try {
                            ManLocalBlackAddActivity.this.m.dismiss();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (ManLocalBlackAddActivity.this.i != null) {
                        ManLocalBlackAddActivity.this.j.setVisibility(8);
                        ManLocalBlackAddActivity.this.f.setVisibility(0);
                        if (ManLocalBlackAddActivity.this.g == 1) {
                            ManLocalBlackAddActivity.this.h = new CallAdapter(ManLocalBlackAddActivity.this, ManLocalBlackAddActivity.this.i);
                        } else if (ManLocalBlackAddActivity.this.g == 0) {
                            ManLocalBlackAddActivity.this.h = new SmsAdapter(ManLocalBlackAddActivity.this, ManLocalBlackAddActivity.this.i);
                        } else {
                            ManLocalBlackAddActivity.this.h = new CallAdapter(ManLocalBlackAddActivity.this, ManLocalBlackAddActivity.this.i);
                        }
                        ManLocalBlackAddActivity.this.b.setAdapter((ListAdapter) ManLocalBlackAddActivity.this.h);
                    } else {
                        ManLocalBlackAddActivity.this.f.setVisibility(8);
                        ManLocalBlackAddActivity.this.j.setVisibility(0);
                        if (ManLocalBlackAddActivity.this.g == 4) {
                            ManLocalBlackAddActivity.this.j.setText(R.string.localblack_hasNoData1);
                        }
                    }
                    ManLocalBlackAddActivity.this.c.setEnabled(true);
                    ManLocalBlackAddActivity.this.d.setEnabled(false);
                    ManLocalBlackAddActivity.this.changeBtn(true, R.drawable.antispamadd);
                    return;
                case 4:
                    ManLocalBlackAddActivity.this.k = false;
                    if (ManLocalBlackAddActivity.this.m != null) {
                        try {
                            ManLocalBlackAddActivity.this.m.dismiss();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    ManLocalBlackAddActivity.this.finish();
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.g = getIntent().getExtras().getInt("type");
        setContentView(R.layout.antispamlocalblack_add_view);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antispamaddcall, (Integer) null);
        this.a = new AppDatabase(this);
        this.b = (ListView) findViewById(R.id.listadd_white);
        this.e = (Button) findViewById(R.id.antispamadd_AppraiseLinearLayout);
        this.f = findViewById(R.id.antispamtableadd_header);
        this.c = (Button) this.f.findViewById(R.id.antispamall_select);
        this.d = (Button) this.f.findViewById(R.id.antispamcancel_select);
        this.j = (TextView) findViewById(R.id.antispamaddempty);
        this.n = new ContractHelpUtils();
        onBtnClick();
        initView();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void initView() {
        this.j.setVisibility(8);
        this.f.setVisibility(8);
        this.m = new ProgressDialog(this);
        this.m.setProgressStyle(0);
        this.m.setMessage(getResources().getString(R.string.antispamupload_desc));
        this.m.setCanceledOnTouchOutside(false);
        this.m.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddActivity.AnonymousClass1 */

            public final void run() {
                try {
                    ManLocalBlackAddActivity.this.k = true;
                    if (ManLocalBlackAddActivity.this.g == 1) {
                        ManLocalBlackAddActivity.this.i = ManLocalBlackAddActivity.this.n.getcallContractList_calling(ManLocalBlackAddActivity.this);
                    } else if (ManLocalBlackAddActivity.this.g == 0) {
                        ManLocalBlackAddActivity.this.i = ManLocalBlackAddActivity.this.n.getSmsContractList(ManLocalBlackAddActivity.this);
                    } else {
                        ManLocalBlackAddActivity.this.i = ManLocalBlackAddActivity.this.n.GetMyContacts(ManLocalBlackAddActivity.this);
                    }
                    long time1 = System.currentTimeMillis();
                    ManLocalBlackAddActivity.this.i = ManLocalBlackAddActivity.this.n.getConNotInBlackList(ManLocalBlackAddActivity.this.i, ManLocalBlackAddActivity.this, ManLocalBlackAddActivity.this.g);
                    Log.i("exectime", "timeexec==" + (System.currentTimeMillis() - time1));
                    ManLocalBlackAddActivity.this.o.sendEmptyMessage(3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void changeBtn(boolean bool, int resourceId) {
        this.e.setEnabled(bool);
    }

    public void setAddBtnText() {
        if (this.l > 0) {
            this.e.setText(String.format(getString(R.string.add_count), Integer.valueOf(this.l)));
            return;
        }
        this.e.setText(R.string.antispamlocalblack_add);
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

    public boolean checkSelAll() {
        for (int i2 = 0; i2 < this.i.size(); i2++) {
            if (!this.i.get(i2).isSelect()) {
                return false;
            }
        }
        return true;
    }

    public boolean checkCancelAll() {
        for (int i2 = 0; i2 < this.i.size(); i2++) {
            if (this.i.get(i2).isSelect()) {
                return false;
            }
        }
        return true;
    }

    public void onBtnClick() {
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddActivity.AnonymousClass3 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Contract con = (Contract) ManLocalBlackAddActivity.this.i.get(position);
                if (con.isSelect()) {
                    con.setSelect(false);
                    ManLocalBlackAddActivity.l(ManLocalBlackAddActivity.this);
                } else {
                    con.setSelect(true);
                    ManLocalBlackAddActivity.m(ManLocalBlackAddActivity.this);
                }
                ManLocalBlackAddActivity.this.setAddBtnText();
                ManLocalBlackAddActivity.this.b.invalidateViews();
                ManLocalBlackAddActivity.this.o.sendEmptyMessage(1);
            }
        });
        this.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddActivity.AnonymousClass4 */

            public final void onClick(View v) {
                ManLocalBlackAddActivity.this.l = 0;
                int size = ManLocalBlackAddActivity.this.i.size();
                ManLocalBlackAddActivity.this.l = ManLocalBlackAddActivity.this.i.size();
                for (int i = 0; i < size; i++) {
                    ((Contract) ManLocalBlackAddActivity.this.i.get(i)).setSelect(true);
                }
                ManLocalBlackAddActivity.this.setAddBtnText();
                ManLocalBlackAddActivity.this.h.notifyDataSetChanged();
                ManLocalBlackAddActivity.this.b.invalidateViews();
                ManLocalBlackAddActivity.this.o.sendEmptyMessage(1);
            }
        });
        this.d.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddActivity.AnonymousClass5 */

            public final void onClick(View v) {
                ManLocalBlackAddActivity.this.l = 0;
                int size = ManLocalBlackAddActivity.this.i.size();
                for (int i = 0; i < size; i++) {
                    ((Contract) ManLocalBlackAddActivity.this.i.get(i)).setSelect(false);
                }
                ManLocalBlackAddActivity.this.setAddBtnText();
                ManLocalBlackAddActivity.this.h.notifyDataSetChanged();
                ManLocalBlackAddActivity.this.b.invalidateViews();
                ManLocalBlackAddActivity.this.o.sendEmptyMessage(1);
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddActivity.AnonymousClass6 */

            public final void onClick(View v) {
                if (ManLocalBlackAddActivity.this.k) {
                    Toast.makeText(ManLocalBlackAddActivity.this, (int) R.string.antispamupload_state, 0).show();
                } else if (ManLocalBlackAddActivity.this.i == null) {
                    Toast.makeText(ManLocalBlackAddActivity.this, (int) R.string.antispamlocalblack_hasNoData, 0).show();
                } else if (!ManLocalBlackAddActivity.this.checkCancelAll()) {
                    int size = ManLocalBlackAddActivity.this.i.size();
                    List<Contract> selList = new ArrayList<>();
                    for (int i = 0; i < size; i++) {
                        Contract con = (Contract) ManLocalBlackAddActivity.this.b.getItemAtPosition(i);
                        if (con.isSelect()) {
                            selList.add(con);
                        }
                    }
                    if (selList.size() > 500 - ManLocalBlackAddActivity.this.a.getBlackListcount(ManLocalBlackAddActivity.this.g)) {
                        Toast.makeText(ManLocalBlackAddActivity.this, (int) R.string.antispamdata_limit1, 0).show();
                    } else if (ManLocalBlackAddActivity.this.n.hasWhite(selList, ManLocalBlackAddActivity.this)) {
                        ManLocalBlackAddActivity.this.showDialog(selList);
                    } else {
                        ManLocalBlackAddActivity.this.initApps(selList);
                    }
                } else {
                    Toast.makeText(ManLocalBlackAddActivity.this, (int) R.string.antispamlocalblack_nullNotice, 0).show();
                }
            }
        });
    }

    public void showDialog(final List<Contract> selectlist) {
        new CustomDialog.Builder(this).setTitle(R.string.antispamnotice).setMessage(R.string.antispamnoticecontent).setPositiveButton(R.string.antispamyes, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddActivity.AnonymousClass8 */

            public final void onClick(DialogInterface dialog, int which) {
                ManLocalBlackAddActivity.this.initApp_deleteWhite(selectlist);
            }
        }).setNegativeButton(R.string.antispamno, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddActivity.AnonymousClass7 */

            public final void onClick(DialogInterface dialog, int which) {
                if (selectlist.size() > 1) {
                    ManLocalBlackAddActivity.this.initApp_expectWhite(selectlist);
                } else {
                    ManLocalBlackAddActivity.this.finish();
                }
            }
        }).create().show();
    }

    public void initApps(final List<Contract> selList) {
        this.m = new ProgressDialog(this);
        this.m.setProgressStyle(0);
        this.m.setMessage(getResources().getString(R.string.antispamupload_state));
        this.m.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddActivity.AnonymousClass9 */

            public final void run() {
                try {
                    ManLocalBlackAddActivity.this.k = true;
                    ManLocalBlackAddActivity.this.a.insertLocalBlack(ManLocalBlackAddActivity.this.n.noContractRepeatList(selList), 2);
                    ManLocalBlackAddActivity.this.o.sendEmptyMessage(2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void initApp_deleteWhite(final List<Contract> selList) {
        this.m = new ProgressDialog(this);
        this.m.setProgressStyle(0);
        this.m.setMessage(getResources().getString(R.string.antispamupload_state));
        this.m.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddActivity.AnonymousClass10 */

            public final void run() {
                try {
                    ManLocalBlackAddActivity.this.k = true;
                    List<Contract> list_help = ManLocalBlackAddActivity.this.n.noContractRepeatList(selList);
                    ManLocalBlackAddActivity.this.a.deleteWhitebyrealnumber(ManLocalBlackAddActivity.this.n.getWhiteFromadd(list_help, ManLocalBlackAddActivity.this));
                    ManLocalBlackAddActivity.this.a.insertLocalBlack(list_help, 2);
                    ManLocalBlackAddActivity.this.o.sendEmptyMessage(2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void initApp_expectWhite(final List<Contract> selList) {
        this.m = new ProgressDialog(this);
        this.m.setProgressStyle(0);
        this.m.setMessage(getResources().getString(R.string.antispamupload_state));
        this.m.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddActivity.AnonymousClass2 */

            public final void run() {
                try {
                    ManLocalBlackAddActivity.this.k = true;
                    List<Contract> list_help = ManLocalBlackAddActivity.this.n.noContractRepeatList(selList);
                    List<Contract> list_help2 = ManLocalBlackAddActivity.this.n.getAddlist(list_help, ManLocalBlackAddActivity.this.n.getWhiteFromadd(list_help, ManLocalBlackAddActivity.this));
                    ManLocalBlackAddActivity.this.a.insertLocalBlack(list_help2, 2);
                    if (list_help2.size() == 0) {
                        ManLocalBlackAddActivity.this.o.sendEmptyMessage(4);
                    } else {
                        ManLocalBlackAddActivity.this.o.sendEmptyMessage(2);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public class CallAdapter extends BaseAdapter {
        private Context b;
        private List<Contract> c;

        public CallAdapter(Context context, List<Contract> list) {
            this.b = context;
            this.c = list;
        }

        public int getCount() {
            return this.c.size();
        }

        public Object getItem(int position) {
            return this.c.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            a holder;
            if (convertView == null) {
                convertView = LayoutInflater.from(this.b).inflate(R.layout.antispamcallcontract, (ViewGroup) null);
                holder = new a(this, (byte) 0);
                holder.a = (TextView) convertView.findViewById(R.id.antispamcallname);
                holder.b = (TextView) convertView.findViewById(R.id.antispamcallnumber);
                holder.c = (TextView) convertView.findViewById(R.id.antispamcalldate);
                holder.d = (TextView) convertView.findViewById(R.id.antispamcalltype);
                holder.e = (ImageView) convertView.findViewById(R.id.antispamcall_check);
                convertView.setTag(holder);
            } else {
                holder = (a) convertView.getTag();
            }
            Contract con = this.c.get(position);
            if (con.getName() == null || con.getName().equals("")) {
                holder.a.setText(R.string.antispamlocalblack_noName);
            } else {
                holder.a.setText(con.getName());
            }
            ImageView tButton = holder.e;
            if (con.isSelect()) {
                tButton.setBackgroundResource(R.drawable.ic_checkbox_select);
            } else {
                tButton.setBackgroundResource(R.drawable.ic_checkbox);
            }
            if (ManLocalBlackAddActivity.this.g == 1) {
                holder.b.setText(con.getPhoneNumber());
                holder.d.setText(ContractHelpUtils.getType(ManLocalBlackAddActivity.this, con.getCallType()));
                holder.c.setText(ContractHelpUtils.getDate(con.getDate()));
            } else {
                holder.b.setVisibility(8);
                holder.d.setVisibility(8);
                holder.c.setText(con.getPhoneNumber());
            }
            return convertView;
        }

        private class a {
            TextView a;
            TextView b;
            TextView c;
            TextView d;
            ImageView e;

            private a() {
            }

            /* synthetic */ a(CallAdapter x0, byte b2) {
                this();
            }
        }
    }

    public class SmsAdapter extends BaseAdapter {
        private Context b;
        private List<Contract> c;

        public SmsAdapter(Context context, List<Contract> list) {
            this.b = context;
            this.c = list;
        }

        public int getCount() {
            return this.c.size();
        }

        public Object getItem(int position) {
            return this.c.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            a holder;
            if (convertView == null) {
                convertView = LayoutInflater.from(this.b).inflate(R.layout.antispamsms, (ViewGroup) null);
                holder = new a(this, (byte) 0);
                holder.a = (TextView) convertView.findViewById(R.id.antispamsmsname);
                holder.b = (TextView) convertView.findViewById(R.id.antispamsmsnumber);
                holder.c = (TextView) convertView.findViewById(R.id.antispamsmscontent);
                holder.d = (ImageView) convertView.findViewById(R.id.antispamsmscheck);
                convertView.setTag(holder);
            } else {
                holder = (a) convertView.getTag();
            }
            Contract con = this.c.get(position);
            if (con.getName() == null || con.getName().equals("")) {
                holder.a.setText(R.string.antispamlocalblack_noName);
            } else {
                holder.a.setText(con.getName());
            }
            holder.b.setText(con.getPhoneNumber());
            if (con.getSmsContent() == null || con.getSmsContent().equals("")) {
                holder.c.setText(R.string.antispamno_content);
            } else {
                holder.c.setText(con.getSmsContent());
            }
            if (con.isSelect()) {
                holder.d.setBackgroundResource(R.drawable.ic_checkbox_select);
            } else {
                holder.d.setBackgroundResource(R.drawable.ic_checkbox);
            }
            return convertView;
        }

        private class a {
            TextView a;
            TextView b;
            TextView c;
            ImageView d;

            private a() {
            }

            /* synthetic */ a(SmsAdapter x0, byte b2) {
                this();
            }
        }
    }
}
