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
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class ManAddWhiteContract extends BaseTitleActivity {
    AppDatabase a;
    private ListView b;
    private Button c;
    private Button d;
    private Button e;
    private View f;
    private String g;
    private BaseAdapter h;
    private ContractHelpUtils i;
    private List<Contract> j;
    private TextView k;
    private ProgressDialog l;
    private int m;
    private boolean n = false;
    private Handler o = new a(this, (byte) 0);

    static /* synthetic */ int k(ManAddWhiteContract x0) {
        int i2 = x0.m;
        x0.m = i2 - 1;
        return i2;
    }

    static /* synthetic */ int l(ManAddWhiteContract x0) {
        int i2 = x0.m;
        x0.m = i2 + 1;
        return i2;
    }

    private class a extends Handler {
        private a() {
        }

        /* synthetic */ a(ManAddWhiteContract x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    boolean isCheckAll = ManAddWhiteContract.this.checkSelAll();
                    boolean cancelAll = ManAddWhiteContract.this.checkCancelAll();
                    if (isCheckAll) {
                        ManAddWhiteContract.this.c.setEnabled(false);
                        ManAddWhiteContract.this.d.setEnabled(true);
                        ManAddWhiteContract.this.changeBtn(true, R.drawable.antispamadd);
                        return;
                    } else if (cancelAll) {
                        ManAddWhiteContract.this.c.setEnabled(true);
                        ManAddWhiteContract.this.d.setEnabled(false);
                        ManAddWhiteContract.this.changeBtn(true, R.drawable.antispamadd);
                        return;
                    } else {
                        ManAddWhiteContract.this.c.setEnabled(true);
                        ManAddWhiteContract.this.d.setEnabled(true);
                        ManAddWhiteContract.this.changeBtn(true, R.drawable.antispamadd);
                        return;
                    }
                case 2:
                    ManAddWhiteContract.this.n = false;
                    if (ManAddWhiteContract.this.l != null) {
                        try {
                            ManAddWhiteContract.this.l.dismiss();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    Toast.makeText(ManAddWhiteContract.this, (int) R.string.antispamlocalblack_successNotice, 0).show();
                    ContractHelpUtils.sendBraodcast(ManAddWhiteContract.this, "com.lenovo.antispam.whiteperson.change");
                    ManAddWhiteContract.this.finish();
                    return;
                case 3:
                    ManAddWhiteContract.this.n = false;
                    if (ManAddWhiteContract.this.l != null) {
                        try {
                            ManAddWhiteContract.this.l.dismiss();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (ManAddWhiteContract.this.j != null) {
                        ManAddWhiteContract.this.f.setVisibility(0);
                        ManAddWhiteContract.this.k.setVisibility(8);
                        if (ManAddWhiteContract.this.g.equals("phone")) {
                            ManAddWhiteContract.this.h = new PhoneAdapter(ManAddWhiteContract.this, ManAddWhiteContract.this.j);
                        } else if (ManAddWhiteContract.this.g.equals(SofeModeMain.TS_CALL)) {
                            ManAddWhiteContract.this.h = new CallAdapter(ManAddWhiteContract.this, ManAddWhiteContract.this.j);
                        } else if (ManAddWhiteContract.this.g.equals(SofeModeMain.TS_SMS)) {
                            ManAddWhiteContract.this.h = new SmsAdapter(ManAddWhiteContract.this, ManAddWhiteContract.this.j);
                        }
                        ManAddWhiteContract.this.b.setAdapter((ListAdapter) ManAddWhiteContract.this.h);
                    } else {
                        ManAddWhiteContract.this.f.setVisibility(8);
                        ManAddWhiteContract.this.k.setVisibility(0);
                        if (ManAddWhiteContract.this.g.equals("phone")) {
                            ManAddWhiteContract.this.k.setText(R.string.localblack_hasNoData1);
                        }
                    }
                    ManAddWhiteContract.this.c.setEnabled(true);
                    ManAddWhiteContract.this.d.setEnabled(false);
                    ManAddWhiteContract.this.changeBtn(true, R.drawable.antispamadd);
                    return;
                case 4:
                    ManAddWhiteContract.this.n = false;
                    if (ManAddWhiteContract.this.l != null) {
                        try {
                            ManAddWhiteContract.this.l.dismiss();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    ManAddWhiteContract.this.finish();
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.g = getIntent().getExtras().getString("from");
        this.i = new ContractHelpUtils();
        setContentView(R.layout.antispamlocalblack_add_view);
        this.a = new AppDatabase(this);
        this.b = (ListView) findViewById(R.id.listadd_white);
        this.e = (Button) findViewById(R.id.antispamadd_AppraiseLinearLayout);
        this.f = findViewById(R.id.antispamtableadd_header);
        this.c = (Button) this.f.findViewById(R.id.antispamall_select);
        this.d = (Button) this.f.findViewById(R.id.antispamcancel_select);
        this.k = (TextView) findViewById(R.id.antispamaddempty);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antispamaddfromphone, (Integer) null);
        this.f.setVisibility(8);
        this.k.setVisibility(8);
        onBtn_Click();
        initView();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void initView() {
        this.l = new ProgressDialog(this);
        this.l.setProgressStyle(0);
        this.l.setMessage(getResources().getString(R.string.antispamupload_desc));
        this.l.setCanceledOnTouchOutside(false);
        this.l.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManAddWhiteContract.AnonymousClass1 */

            public final void run() {
                try {
                    ManAddWhiteContract.this.n = true;
                    ContractHelpUtils utils = new ContractHelpUtils();
                    if (ManAddWhiteContract.this.g.equals("phone")) {
                        ManAddWhiteContract.this.j = utils.GetMyContacts(ManAddWhiteContract.this);
                    } else if (ManAddWhiteContract.this.g.equals(SofeModeMain.TS_CALL)) {
                        ManAddWhiteContract.this.j = utils.getcallContractList(ManAddWhiteContract.this);
                    } else {
                        ManAddWhiteContract.this.j = utils.getSmsContractList(ManAddWhiteContract.this);
                    }
                    ManAddWhiteContract.this.j = utils.getConNotInWhiteList(ManAddWhiteContract.this.j, ManAddWhiteContract.this);
                    ManAddWhiteContract.this.o.sendEmptyMessage(3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void changeBtn(boolean bool, int resourceId) {
        this.e.setEnabled(bool);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public boolean checkSelAll() {
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            if (!this.j.get(i2).isSelect()) {
                return false;
            }
        }
        return true;
    }

    public boolean checkCancelAll() {
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            if (this.j.get(i2).isSelect()) {
                return false;
            }
        }
        return true;
    }

    public void initApps(final List<Contract> selList) {
        this.l = new ProgressDialog(this);
        this.l.setProgressStyle(0);
        this.l.setMessage(getResources().getString(R.string.antispamupload_state));
        this.l.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManAddWhiteContract.AnonymousClass3 */

            public final void run() {
                try {
                    ManAddWhiteContract.this.n = true;
                    ManAddWhiteContract.this.a.insertWhite(new ContractHelpUtils().noContractRepeatList(selList));
                    ManAddWhiteContract.this.o.sendEmptyMessage(2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void setAddBtnText() {
        if (this.m > 0) {
            this.e.setText(String.format(getString(R.string.add_count), Integer.valueOf(this.m)));
            return;
        }
        this.e.setText(R.string.antispamlocalblack_add);
    }

    public void onBtn_Click() {
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManAddWhiteContract.AnonymousClass4 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Contract con = (Contract) ManAddWhiteContract.this.j.get(position);
                if (con.isSelect()) {
                    con.setSelect(false);
                    ManAddWhiteContract.k(ManAddWhiteContract.this);
                } else {
                    con.setSelect(true);
                    ManAddWhiteContract.l(ManAddWhiteContract.this);
                }
                ManAddWhiteContract.this.setAddBtnText();
                ManAddWhiteContract.this.b.invalidateViews();
                ManAddWhiteContract.this.o.sendEmptyMessage(1);
            }
        });
        this.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManAddWhiteContract.AnonymousClass5 */

            public final void onClick(View v) {
                ManAddWhiteContract.this.m = 0;
                int size = ManAddWhiteContract.this.j.size();
                ManAddWhiteContract.this.m = size;
                for (int i = 0; i < size; i++) {
                    ((Contract) ManAddWhiteContract.this.j.get(i)).setSelect(true);
                }
                ManAddWhiteContract.this.setAddBtnText();
                ManAddWhiteContract.this.h.notifyDataSetChanged();
                ManAddWhiteContract.this.b.invalidateViews();
                ManAddWhiteContract.this.o.sendEmptyMessage(1);
            }
        });
        this.d.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManAddWhiteContract.AnonymousClass6 */

            public final void onClick(View v) {
                ManAddWhiteContract.this.m = 0;
                int size = ManAddWhiteContract.this.j.size();
                for (int i = 0; i < size; i++) {
                    ((Contract) ManAddWhiteContract.this.j.get(i)).setSelect(false);
                }
                ManAddWhiteContract.this.setAddBtnText();
                ManAddWhiteContract.this.h.notifyDataSetChanged();
                ManAddWhiteContract.this.b.invalidateViews();
                ManAddWhiteContract.this.o.sendEmptyMessage(1);
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManAddWhiteContract.AnonymousClass7 */

            public final void onClick(View v) {
                if (ManAddWhiteContract.this.n) {
                    Toast.makeText(ManAddWhiteContract.this, (int) R.string.antispamupload_state, 0).show();
                } else if (ManAddWhiteContract.this.j == null) {
                    Toast.makeText(ManAddWhiteContract.this, (int) R.string.antispamlocalblack_hasNoData, 0).show();
                } else if (!ManAddWhiteContract.this.checkCancelAll()) {
                    int size = ManAddWhiteContract.this.j.size();
                    List<Contract> selList = new ArrayList<>();
                    for (int i = 0; i < size; i++) {
                        Contract con = (Contract) ManAddWhiteContract.this.b.getItemAtPosition(i);
                        if (con.isSelect()) {
                            selList.add(con);
                        }
                    }
                    Log.i("count", selList.size() + "===");
                    if (selList.size() > 500 - ManAddWhiteContract.this.a.getWhitePersonCount()) {
                        Toast.makeText(ManAddWhiteContract.this, (int) R.string.antispamdata_limit1, 0).show();
                    } else if (ManAddWhiteContract.this.i.hasblack(selList, ManAddWhiteContract.this)) {
                        ManAddWhiteContract.this.showDialog(selList);
                    } else {
                        ManAddWhiteContract.this.initApps(selList);
                    }
                } else {
                    Toast.makeText(ManAddWhiteContract.this, (int) R.string.antispamlocalblack_nullNotice, 0).show();
                }
            }
        });
    }

    public void initApp_expectWhite(final List<Contract> selList) {
        this.l = new ProgressDialog(this);
        this.l.setProgressStyle(0);
        this.l.setMessage(getResources().getString(R.string.antispamupload_state));
        this.l.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManAddWhiteContract.AnonymousClass8 */

            public final void run() {
                try {
                    ManAddWhiteContract.this.n = true;
                    List<Contract> list_help = ManAddWhiteContract.this.i.noContractRepeatList(selList);
                    List<Contract> list_help2 = ManAddWhiteContract.this.i.getAddlist(list_help, ManAddWhiteContract.this.i.getBlackFromadd(list_help, ManAddWhiteContract.this));
                    ManAddWhiteContract.this.a.insertWhite(list_help2);
                    if (list_help2.size() == 0) {
                        ManAddWhiteContract.this.o.sendEmptyMessage(4);
                    } else {
                        ManAddWhiteContract.this.o.sendEmptyMessage(2);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void initApp_deleteWhite(final List<Contract> selList) {
        this.l = new ProgressDialog(this);
        this.l.setProgressStyle(0);
        this.l.setMessage(getResources().getString(R.string.antispamupload_state));
        this.l.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManAddWhiteContract.AnonymousClass9 */

            public final void run() {
                try {
                    ManAddWhiteContract.this.n = true;
                    List<Contract> list_help = ManAddWhiteContract.this.i.noContractRepeatList(selList);
                    ManAddWhiteContract.this.a.deleteBlackbyrealnumber(ManAddWhiteContract.this.i.getBlackFromadd(list_help, ManAddWhiteContract.this));
                    ManAddWhiteContract.this.a.insertWhite(list_help);
                    ManAddWhiteContract.this.o.sendEmptyMessage(2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void showDialog(final List<Contract> selectlist) {
        new CustomDialog.Builder(this).setTitle(R.string.antispamnotice).setMessage(R.string.noticecontent).setPositiveButton(R.string.antispamyes, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManAddWhiteContract.AnonymousClass2 */

            public final void onClick(DialogInterface dialog, int which) {
                ManAddWhiteContract.this.initApp_deleteWhite(selectlist);
            }
        }).setNegativeButton(R.string.antispamno, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManAddWhiteContract.AnonymousClass10 */

            public final void onClick(DialogInterface dialog, int which) {
                if (selectlist.size() > 1) {
                    ManAddWhiteContract.this.initApp_expectWhite(selectlist);
                } else {
                    ManAddWhiteContract.this.finish();
                }
            }
        }).create().show();
    }

    public class PhoneAdapter extends BaseAdapter {
        private Context b;
        private List<Contract> c;

        public PhoneAdapter(Context context, List<Contract> list) {
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
            holder.b.setVisibility(8);
            holder.d.setVisibility(8);
            holder.c.setText(con.getPhoneNumber());
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

            /* synthetic */ a(PhoneAdapter x0, byte b2) {
                this();
            }
        }
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
            holder.b.setText(con.getPhoneNumber());
            holder.d.setText(ContractHelpUtils.getType(ManAddWhiteContract.this, con.getCallType()));
            holder.c.setText(ContractHelpUtils.getDate(con.getDate()));
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
