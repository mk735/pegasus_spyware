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
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.whiteSmsAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.support.HttpUtils;
import com.lenovo.safecenter.utils.Constant;
import com.lenovo.safecenter.utils.ContractHelpUtils;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.List;

public class WhiteSms extends Activity {
    NotificationManager a;
    private List<Contract> b;
    private AppDatabase c;
    private int d;
    private ListView e;
    private TextView f;
    private Button g;
    private whiteSmsAdapter h;
    public Handler hand = new Handler() {
        /* class com.lenovo.safecenter.safemode.WhiteSms.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    WhiteSms.this.initData();
                    ((SofeModeMain) DataHelpUtils.getActivityByName("SofeModeMain")).hand.sendEmptyMessage(1);
                    WhiteSms.this.a.cancel(Constant.SMS_NOTI_ID);
                    return;
                default:
                    return;
            }
        }
    };
    private ContractHelpUtils i;
    private boolean j = false;

    static /* synthetic */ void a(WhiteSms x0, final Contract x1) {
        String[] strArr = {x0.getString(R.string.replay_sms), x0.getString(R.string.safemode_callto), x0.getString(R.string.del_safesms)};
        String name = x1.getName();
        if (x1.getName() == null) {
            name = x1.getPhoneNumber();
        }
        new CustomDialog.Builder(x0).setTitle(name).setItems(strArr, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteSms.AnonymousClass7 */

            public final void onClick(DialogInterface dialog, int which) {
                switch (which) {
                    case 0:
                        try {
                            Intent smsIntent = new Intent(WhiteSms.this, WhiteSmsShowByNumber.class);
                            smsIntent.putExtra(AppDatabase.NUMBER, x1.getPhoneNumber());
                            WhiteSms.this.startActivity(smsIntent);
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            Toast.makeText(WhiteSms.this, (int) R.string.opensms_error, 0).show();
                            return;
                        }
                    case 1:
                        try {
                            WhiteSms.this.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + x1.getPhoneNumber())));
                            return;
                        } catch (Exception e2) {
                            Toast.makeText(WhiteSms.this, (int) R.string.opensms_error, 0).show();
                            e2.printStackTrace();
                            return;
                        }
                    case 2:
                        WhiteSms.this.c.deleteSms(x1.getPhoneNumber());
                        WhiteSms.this.b.remove(WhiteSms.this.d);
                        WhiteSms.this.h.notifyDataSetChanged();
                        WhiteSms.this.e.invalidateViews();
                        return;
                    default:
                        return;
                }
            }
        }).create().show();
    }

    static /* synthetic */ void c(WhiteSms x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.notify).setMessage(R.string.del_record).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteSms.AnonymousClass6 */

            public final void onClick(DialogInterface arg0, int arg1) {
                WhiteSms.this.c.deleteSms(-1);
                WhiteSms.this.b.clear();
                WhiteSms.this.h.notifyDataSetChanged();
                WhiteSms.this.e.invalidateViews();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteSms.AnonymousClass5 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.whitesmsshowlist);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.privacy_safe);
        this.e = (ListView) findViewById(R.id.safemode_log_list);
        this.f = (TextView) findViewById(R.id.safemode_empty_textview);
        findViewById(R.id.whitecall_del).setVisibility(0);
        findViewById(R.id.safemode_lin_operate).setVisibility(0);
        findViewById(R.id.lin_operateinner).setVisibility(8);
        this.g = (Button) findViewById(R.id.del_whitecall);
        this.c = new AppDatabase(this);
        this.i = new ContractHelpUtils();
        DataHelpUtils.allActivity.add(this);
        this.f.setText(R.string.pri_nosms);
        onBtnClick();
        this.a = (NotificationManager) getSystemService(DatabaseTables.LOG_NOTIFICATION);
        this.a.cancel(Constant.SMS_NOTI_ID);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        initData();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void onBtnClick() {
        Log.i("txtEmpty", this.e + "");
        this.e.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteSms.AnonymousClass2 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                HttpUtils.private_isOpenSec = true;
                Intent intent_number = new Intent(WhiteSms.this, WhiteSmsShowByNumber.class);
                intent_number.putExtra(AppDatabase.NUMBER, ((Contract) WhiteSms.this.e.getItemAtPosition(position)).getPhoneNumber());
                WhiteSms.this.startActivity(intent_number);
            }
        });
        this.e.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteSms.AnonymousClass3 */

            @Override // android.widget.AdapterView.OnItemLongClickListener
            public final boolean onItemLongClick(AdapterView<?> adapterView, View arg1, int arg2, long arg3) {
                WhiteSms.this.d = arg2;
                WhiteSms.a(WhiteSms.this, (Contract) WhiteSms.this.e.getItemAtPosition(arg2));
                return true;
            }
        });
        this.g.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteSms.AnonymousClass4 */

            public final void onClick(View v) {
                if (WhiteSms.this.b.size() > 0) {
                    try {
                        WhiteSms.c(WhiteSms.this);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    public void initData() {
        if (!this.j) {
            try {
                this.j = true;
                this.b = this.c.getwhiteSms();
                this.b = this.i.getWhiteSMS(this.b);
                Log.i("txtEmpty", this.f + "==list" + this.e);
                if (this.f != null) {
                    this.e.setEmptyView(this.f);
                }
                if (this.b != null) {
                    this.h = new whiteSmsAdapter(this, this.b);
                    this.e.setAdapter((ListAdapter) this.h);
                }
                this.j = false;
            } catch (Exception e2) {
                e2.printStackTrace();
                this.j = false;
            }
        }
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case 0:
                HttpUtils.private_isOpenSec = true;
                Intent intent_del = new Intent(this, ManWhiteSms.class);
                intent_del.putExtra("type", 0);
                startActivity(intent_del);
                break;
            case 1:
                HttpUtils.private_isOpenSec = true;
                Intent intent_recover = new Intent(this, ManWhiteSms.class);
                intent_recover.putExtra("type", 1);
                startActivity(intent_recover);
                break;
            case 2:
                this.c.updateSmsStatus(0);
                Log.i("Parent", getParent() + "");
                if (DataHelpUtils.getActivityByName("SofeModeMain") != null) {
                    ((SofeModeMain) DataHelpUtils.getActivityByName("SofeModeMain")).hand.sendEmptyMessage(1);
                    break;
                }
                break;
        }
        return super.onOptionsItemSelected(item);
    }
}
