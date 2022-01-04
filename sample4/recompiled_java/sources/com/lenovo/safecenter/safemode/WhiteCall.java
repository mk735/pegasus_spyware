package com.lenovo.safecenter.safemode;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.ManwhiteSmsAdapter;
import com.lenovo.safecenter.adapter.whiteSmsAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.utils.Constant;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class WhiteCall extends Activity {
    NotificationManager a;
    private List<Contract> b;
    private AppDatabase c;
    private ListView d;
    private TextView e;
    private LinearLayout f;
    private LinearLayout g;
    private LinearLayout h;
    public Handler hand = new Handler() {
        /* class com.lenovo.safecenter.safemode.WhiteCall.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ((SofeModeMain) DataHelpUtils.getActivityByName("SofeModeMain")).hand.sendEmptyMessage(2);
                    WhiteCall.this.a.cancel(Constant.CALL_NOTI_ID);
                    WhiteCall.this.initData();
                    return;
                default:
                    return;
            }
        }
    };
    private BaseAdapter i;
    private int j = 0;
    private int k;
    private Button l;

    static /* synthetic */ void a(WhiteCall x0, final Contract x1) {
        String[] strArr = {x0.getString(R.string.replay_sms), x0.getString(R.string.safemode_callto), x0.getString(R.string.delete_sms)};
        String name = x1.getName();
        if (x1.getName() == null) {
            name = x1.getPhoneNumber();
        }
        new CustomDialog.Builder(x0).setTitle(name).setItems(strArr, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteCall.AnonymousClass6 */

            public final void onClick(DialogInterface dialog, int which) {
                switch (which) {
                    case 0:
                        try {
                            Intent smsIntent = new Intent(WhiteCall.this, WhiteSmsShowByNumber.class);
                            smsIntent.putExtra(AppDatabase.NUMBER, x1.getPhoneNumber());
                            WhiteCall.this.startActivity(smsIntent);
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            Toast.makeText(WhiteCall.this, (int) R.string.opensms_error, 0).show();
                            return;
                        }
                    case 1:
                        try {
                            WhiteCall.this.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + x1.getPhoneNumber())));
                            return;
                        } catch (Exception e2) {
                            Toast.makeText(WhiteCall.this, (int) R.string.opensms_error, 0).show();
                            e2.printStackTrace();
                            return;
                        }
                    case 2:
                        WhiteCall.this.c.deleteCall(x1.getId());
                        WhiteCall.this.b.remove(WhiteCall.this.k);
                        WhiteCall.this.i.notifyDataSetChanged();
                        WhiteCall.this.d.invalidateViews();
                        return;
                    default:
                        return;
                }
            }
        }).create().show();
    }

    static /* synthetic */ void e(WhiteCall x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.notify).setMessage(R.string.del_record).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteCall.AnonymousClass5 */

            public final void onClick(DialogInterface arg0, int arg1) {
                WhiteCall.this.c.deleteAllCall();
                WhiteCall.this.b.clear();
                WhiteCall.this.i.notifyDataSetChanged();
                WhiteCall.this.d.invalidateViews();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteCall.AnonymousClass4 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.whitesmsshowlist);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.privacy_safe);
        this.h = (LinearLayout) findViewById(R.id.lin_operateinner);
        this.f = (LinearLayout) findViewById(R.id.whitecall_del);
        this.g = (LinearLayout) findViewById(R.id.safemode_lin_operate);
        this.f.setVisibility(0);
        this.g.setVisibility(0);
        this.h.setVisibility(8);
        this.d = (ListView) findViewById(R.id.safemode_log_list);
        this.e = (TextView) findViewById(R.id.safemode_empty_textview);
        this.l = (Button) findViewById(R.id.del_whitecall);
        this.l.setText(R.string.record_button_clear);
        this.e.setText(R.string.pri_nocall);
        this.c = new AppDatabase(this);
        this.a = (NotificationManager) getSystemService(DatabaseTables.LOG_NOTIFICATION);
        DataHelpUtils.allActivity.add(this);
        onClick();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        initData();
        ((NotificationManager) getSystemService(DatabaseTables.LOG_NOTIFICATION)).cancel(Constant.CALL_NOTI_ID);
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        this.c.updateCall();
        if (DataHelpUtils.getActivityByName("SofeModeMain") != null) {
            ((SofeModeMain) DataHelpUtils.getActivityByName("SofeModeMain")).hand.sendEmptyMessage(2);
        }
        TrackEvent.trackPause(this);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (!(keyCode == 4 && this.j == 1)) {
            return false;
        }
        for (Contract con : this.b) {
            con.setSelect(false);
        }
        this.j = 0;
        this.i = new whiteSmsAdapter(this, this.b);
        this.d.setAdapter((ListAdapter) this.i);
        return true;
    }

    public void onClick() {
        this.d.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteCall.AnonymousClass2 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Contract con = (Contract) WhiteCall.this.d.getItemAtPosition(position);
                if (WhiteCall.this.j == 0) {
                    WhiteCall.this.k = position;
                    WhiteCall.a(WhiteCall.this, con);
                    WhiteCall.this.c.updateCall(con.getId());
                    con.setIsRead(0);
                    WhiteCall.this.d.invalidateViews();
                }
                if (WhiteCall.this.j == 1) {
                    if (con.isSelect()) {
                        con.setSelect(false);
                    } else {
                        con.setSelect(true);
                    }
                    WhiteCall.this.d.invalidateViews();
                }
            }
        });
        this.l.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteCall.AnonymousClass3 */

            public final void onClick(View v) {
                if (WhiteCall.this.b.size() > 0) {
                    try {
                        WhiteCall.e(WhiteCall.this);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    public void initData() {
        this.b = this.c.getAllCall();
        Log.i("txtEmpty", this.e + "==list" + this.b);
        if (this.e != null) {
            this.d.setEmptyView(this.e);
        }
        if (this.j == 0) {
            this.i = new whiteSmsAdapter(this, this.b);
        } else if (this.j == 1) {
            this.i = new ManwhiteSmsAdapter(this, this.b);
        }
        this.d.setAdapter((ListAdapter) this.i);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case 0:
                List<Contract> select_list = new ArrayList<>();
                for (int i2 = this.b.size() - 1; i2 >= 0; i2--) {
                    if (this.b.get(i2).isSelect()) {
                        select_list.add(this.b.get(i2));
                        this.b.remove(i2);
                    }
                }
                if (select_list.size() > 0) {
                    this.c.deleteCall(select_list);
                    this.j = 0;
                    this.i = new whiteSmsAdapter(this, this.b);
                    this.d.setAdapter((ListAdapter) this.i);
                    ((SofeModeMain) DataHelpUtils.getActivityByName("SofeModeMain")).hand.sendEmptyMessage(2);
                    break;
                }
                break;
            case 4:
                this.j = 1;
                this.i = new ManwhiteSmsAdapter(this, this.b);
                this.d.setAdapter((ListAdapter) this.i);
                break;
            case 5:
                for (Contract con : this.b) {
                    con.setSelect(true);
                }
                this.d.invalidateViews();
                break;
            case 6:
                for (Contract con2 : this.b) {
                    con2.setSelect(false);
                }
                this.d.invalidateViews();
                break;
        }
        return super.onOptionsItemSelected(item);
    }
}
