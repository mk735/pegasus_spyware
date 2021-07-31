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

public class ManLocalBlackAddContract extends BaseTitleActivity {
    Thread a = null;
    ContractHelpUtils b;
    private ListView c;
    private Button d;
    private Button e;
    private Button f;
    private View g;
    private int h;
    private BaseAdapter i;
    private List<Contract> j;
    private TextView k;
    private ProgressDialog l;
    private boolean m = false;
    private AppDatabase n;
    private Handler o = new a(this, (byte) 0);

    private class a extends Handler {
        private a() {
        }

        /* synthetic */ a(ManLocalBlackAddContract x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    boolean isCheckAll = ManLocalBlackAddContract.this.checkSelAll();
                    boolean cancelAll = ManLocalBlackAddContract.this.checkCancelAll();
                    if (isCheckAll) {
                        ManLocalBlackAddContract.this.d.setEnabled(false);
                        ManLocalBlackAddContract.this.e.setEnabled(true);
                        ManLocalBlackAddContract.this.changeBtn(true, R.drawable.antispamadd);
                        return;
                    } else if (cancelAll) {
                        ManLocalBlackAddContract.this.d.setEnabled(true);
                        ManLocalBlackAddContract.this.e.setEnabled(false);
                        ManLocalBlackAddContract.this.changeBtn(true, R.drawable.antispamadd);
                        return;
                    } else {
                        ManLocalBlackAddContract.this.d.setEnabled(true);
                        ManLocalBlackAddContract.this.e.setEnabled(true);
                        ManLocalBlackAddContract.this.changeBtn(true, R.drawable.antispamadd);
                        return;
                    }
                case 2:
                    ManLocalBlackAddContract.this.m = false;
                    if (ManLocalBlackAddContract.this.l != null) {
                        try {
                            ManLocalBlackAddContract.this.l.dismiss();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    Toast.makeText(ManLocalBlackAddContract.this, (int) R.string.antispamlocalblack_successNotice, 0).show();
                    if (ManLocalBlackAddContract.this.h == 1) {
                        ContractHelpUtils.sendBraodcast(ManLocalBlackAddContract.this, "com.lenovo.antispam.blackperson.change");
                    }
                    ManLocalBlackAddContract.this.finish();
                    return;
                case 3:
                    ManLocalBlackAddContract.this.m = false;
                    if (ManLocalBlackAddContract.this.l != null) {
                        try {
                            ManLocalBlackAddContract.this.l.dismiss();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (ManLocalBlackAddContract.this.j != null) {
                        ManLocalBlackAddContract.this.g.setVisibility(0);
                        ManLocalBlackAddContract.this.k.setVisibility(8);
                        ManLocalBlackAddContract.this.i = new CallAdapter(ManLocalBlackAddContract.this, ManLocalBlackAddContract.this.j);
                        ManLocalBlackAddContract.this.c.setAdapter((ListAdapter) ManLocalBlackAddContract.this.i);
                    } else {
                        ManLocalBlackAddContract.this.g.setVisibility(8);
                        ManLocalBlackAddContract.this.k.setVisibility(0);
                    }
                    ManLocalBlackAddContract.this.d.setEnabled(true);
                    ManLocalBlackAddContract.this.e.setEnabled(false);
                    ManLocalBlackAddContract.this.changeBtn(true, R.drawable.antispamadd);
                    return;
                case 4:
                    ManLocalBlackAddContract.this.finish();
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.h = getIntent().getExtras().getInt("type");
        setContentView(R.layout.antispamlocalblack_add_view);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antispamaddcall, (Integer) null);
        this.n = new AppDatabase(this);
        this.c = (ListView) findViewById(R.id.listadd_white);
        this.f = (Button) findViewById(R.id.antispamadd_AppraiseLinearLayout);
        this.g = findViewById(R.id.antispamtableadd_header);
        this.d = (Button) this.g.findViewById(R.id.antispamall_select);
        this.e = (Button) this.g.findViewById(R.id.antispamcancel_select);
        this.k = (TextView) findViewById(R.id.antispamaddempty);
        this.b = new ContractHelpUtils();
        onBtnClick();
        initView();
    }

    public void initView() {
        this.g.setVisibility(8);
        this.k.setVisibility(8);
        this.l = new ProgressDialog(this);
        this.l.setProgressStyle(0);
        this.l.setMessage(getResources().getString(R.string.antispamupload_desc));
        this.l.show();
        this.a = new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddContract.AnonymousClass1 */

            public final void run() {
                try {
                    ManLocalBlackAddContract.this.m = true;
                    long timeall1 = System.currentTimeMillis();
                    ManLocalBlackAddContract.this.j = ManLocalBlackAddContract.this.b.GetMyContacts(ManLocalBlackAddContract.this);
                    Log.i("timespare", "GetMyContacts====" + (System.currentTimeMillis() - timeall1));
                    long timeall12 = System.currentTimeMillis();
                    Log.i("timespare", "noContractRepeatList====" + (System.currentTimeMillis() - timeall12));
                    long timeall13 = System.currentTimeMillis();
                    ManLocalBlackAddContract.this.j = ManLocalBlackAddContract.this.b.getConNotInBlackList(ManLocalBlackAddContract.this.j, ManLocalBlackAddContract.this, ManLocalBlackAddContract.this.h);
                    Log.i("timespare", "getConNotInBlackList====" + (System.currentTimeMillis() - timeall13) + "");
                    ManLocalBlackAddContract.this.o.sendEmptyMessage(3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        };
        this.a.start();
        Log.d("thread", "loadDataThread: " + this.a.isAlive());
    }

    public void changeBtn(boolean bool, int resourceId) {
        this.f.setEnabled(bool);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        Log.i("onkey", "onKeyDown");
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
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddContract.AnonymousClass3 */

            public final void run() {
                try {
                    ManLocalBlackAddContract.this.m = true;
                    long timemc = System.currentTimeMillis();
                    ManLocalBlackAddContract.this.n.insertLocalBlack(ManLocalBlackAddContract.this.b.noContractRepeatList(selList), ManLocalBlackAddContract.this.h);
                    Log.i("timespare", "getConNotInBlackList====" + (System.currentTimeMillis() - timemc));
                    ManLocalBlackAddContract.this.o.sendEmptyMessage(2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void onBtnClick() {
        this.c.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddContract.AnonymousClass4 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Contract con = (Contract) ManLocalBlackAddContract.this.j.get(position);
                if (con.isSelect()) {
                    con.setSelect(false);
                } else {
                    con.setSelect(true);
                }
                ManLocalBlackAddContract.this.c.invalidateViews();
                ManLocalBlackAddContract.this.o.sendEmptyMessage(1);
            }
        });
        this.d.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddContract.AnonymousClass5 */

            public final void onClick(View v) {
                int size = ManLocalBlackAddContract.this.j.size();
                for (int i = 0; i < size; i++) {
                    ((Contract) ManLocalBlackAddContract.this.j.get(i)).setSelect(true);
                }
                ManLocalBlackAddContract.this.i.notifyDataSetChanged();
                ManLocalBlackAddContract.this.c.invalidateViews();
                ManLocalBlackAddContract.this.o.sendEmptyMessage(1);
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddContract.AnonymousClass6 */

            public final void onClick(View v) {
                int size = ManLocalBlackAddContract.this.j.size();
                for (int i = 0; i < size; i++) {
                    ((Contract) ManLocalBlackAddContract.this.j.get(i)).setSelect(false);
                }
                ManLocalBlackAddContract.this.i.notifyDataSetChanged();
                ManLocalBlackAddContract.this.c.invalidateViews();
                ManLocalBlackAddContract.this.o.sendEmptyMessage(1);
            }
        });
        this.f.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddContract.AnonymousClass7 */

            public final void onClick(View v) {
                if (ManLocalBlackAddContract.this.m) {
                    Toast.makeText(ManLocalBlackAddContract.this, (int) R.string.antispamupload_state, 0).show();
                } else if (ManLocalBlackAddContract.this.j == null) {
                    Toast.makeText(ManLocalBlackAddContract.this, (int) R.string.antispamlocalblack_hasNoData, 0).show();
                } else if (!ManLocalBlackAddContract.this.checkCancelAll()) {
                    int size = ManLocalBlackAddContract.this.j.size();
                    List<Contract> selList = new ArrayList<>();
                    for (int i = 0; i < size; i++) {
                        Contract con = (Contract) ManLocalBlackAddContract.this.c.getItemAtPosition(i);
                        if (con.isSelect()) {
                            selList.add(con);
                        }
                    }
                    if (selList.size() >= 500 - ManLocalBlackAddContract.this.n.getBlackListcount(ManLocalBlackAddContract.this.h)) {
                        Toast.makeText(ManLocalBlackAddContract.this, (int) R.string.antispamdata_limit1, 0).show();
                    } else if (ManLocalBlackAddContract.this.b.hasWhite(selList, ManLocalBlackAddContract.this)) {
                        ManLocalBlackAddContract.this.showDialog(selList);
                    } else {
                        ManLocalBlackAddContract.this.initApps(selList);
                    }
                } else {
                    Toast.makeText(ManLocalBlackAddContract.this, (int) R.string.antispamlocalblack_nullNotice, 0).show();
                }
            }
        });
    }

    public void showDialog(final List<Contract> selectlist) {
        new CustomDialog.Builder(this).setTitle(R.string.antispamnotice).setMessage(R.string.antispamnoticecontent).setPositiveButton(R.string.antispamyes, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddContract.AnonymousClass9 */

            public final void onClick(DialogInterface dialog, int which) {
                ManLocalBlackAddContract.this.initApp_deleteWhite(selectlist);
            }
        }).setNegativeButton(R.string.antispamno, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddContract.AnonymousClass8 */

            public final void onClick(DialogInterface dialog, int which) {
                ManLocalBlackAddContract.this.initApp_expectWhite(selectlist);
            }
        }).create().show();
    }

    public void initApp_deleteWhite(final List<Contract> selList) {
        this.l = new ProgressDialog(this);
        this.l.setProgressStyle(0);
        this.l.setMessage(getResources().getString(R.string.antispamupload_state));
        this.l.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddContract.AnonymousClass10 */

            public final void run() {
                try {
                    ManLocalBlackAddContract.this.m = true;
                    List<Contract> list_help = ManLocalBlackAddContract.this.b.noContractRepeatList(selList);
                    ManLocalBlackAddContract.this.b.deleteWhite(ManLocalBlackAddContract.this, ManLocalBlackAddContract.this.b.getWhiteFromadd(list_help, ManLocalBlackAddContract.this));
                    ManLocalBlackAddContract.this.n.insertLocalBlack(list_help, ManLocalBlackAddContract.this.h);
                    ManLocalBlackAddContract.this.o.sendEmptyMessage(2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void initApp_expectWhite(final List<Contract> selList) {
        this.l = new ProgressDialog(this);
        this.l.setProgressStyle(0);
        this.l.setMessage(getResources().getString(R.string.antispamupload_state));
        this.l.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackAddContract.AnonymousClass2 */

            public final void run() {
                try {
                    ManLocalBlackAddContract.this.m = true;
                    List<Contract> list_help = ManLocalBlackAddContract.this.b.noContractRepeatList(selList);
                    List<Contract> list_help2 = ManLocalBlackAddContract.this.b.getAddlist(list_help, ManLocalBlackAddContract.this.b.getWhiteFromadd(list_help, ManLocalBlackAddContract.this));
                    ManLocalBlackAddContract.this.n.insertLocalBlack(list_help2, ManLocalBlackAddContract.this.h);
                    if (list_help2.size() == 0) {
                        ManLocalBlackAddContract.this.o.sendEmptyMessage(4);
                    } else {
                        ManLocalBlackAddContract.this.o.sendEmptyMessage(2);
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

            /* synthetic */ a(CallAdapter x0, byte b2) {
                this();
            }
        }
    }
}
