package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.NewLogsAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.List;

public class PermissionControlNew extends Activity implements View.OnClickListener {
    private List<SafeLog> a;
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private ListView g;
    private ImageView h;
    private LinearLayout i;
    private RelativeLayout j;
    private RelativeLayout k;
    private RelativeLayout l;
    private RelativeLayout m;
    private int n = 0;
    private boolean o;
    private Handler p = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.PermissionControlNew.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    PermissionControlNew.this.f.setText(String.format(PermissionControlNew.this.getString(R.string.trust_app_num), Integer.valueOf(PermissionControlNew.this.n)));
                    if (PermissionControlNew.this.a.size() == 0) {
                        PermissionControlNew.this.c.setVisibility(0);
                        PermissionControlNew.this.j.setVisibility(8);
                        return;
                    }
                    PermissionControlNew.this.c.setVisibility(8);
                    PermissionControlNew.this.j.setVisibility(0);
                    PermissionControlNew.this.g.setAdapter((ListAdapter) new NewLogsAdapter(PermissionControlNew.this, PermissionControlNew.this.a));
                    return;
                case 1:
                    PermissionControlNew.this.f.setText(String.format(PermissionControlNew.this.getString(R.string.trust_app_num), Integer.valueOf(PermissionControlNew.this.n)));
                    return;
                default:
                    return;
            }
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.permissioncontrol);
        this.o = WflUtils.isRoot();
        this.d = (TextView) findViewById(R.id.txt_what);
        this.e = (TextView) findViewById(R.id.txt_answer);
        this.f = (TextView) findViewById(R.id.txt_trust);
        this.f.setOnTouchListener(new View.OnTouchListener() {
            /* class com.lenovo.safecenter.AppsManager.PermissionControlNew.AnonymousClass2 */

            public final boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == 1) {
                    PermissionControlNew.this.f.setTextColor(Color.parseColor("#29b1ef"));
                    return false;
                } else if (event.getAction() == 0) {
                    PermissionControlNew.this.f.setTextColor(Color.parseColor("#6600ff"));
                    return false;
                } else if (event.getAction() != 3 && event.getAction() != 4) {
                    return false;
                } else {
                    PermissionControlNew.this.f.setTextColor(Color.parseColor("#29b1ef"));
                    return false;
                }
            }
        });
        this.b = (TextView) findViewById(R.id.txt_title);
        this.b.setText(R.string.permission_control);
        this.c = (TextView) findViewById(R.id.txt_empty);
        this.g = (ListView) findViewById(R.id.listView);
        this.g.setEnabled(false);
        this.h = (ImageView) findViewById(R.id.title_back);
        this.i = (LinearLayout) findViewById(R.id.more_logs);
        this.j = (RelativeLayout) findViewById(R.id.logs_layout);
        this.k = (RelativeLayout) findViewById(R.id.privacy_layout);
        this.l = (RelativeLayout) findViewById(R.id.location_layout);
        this.m = (RelativeLayout) findViewById(R.id.record_layout);
        this.l.setVisibility(0);
        this.l.setOnClickListener(this);
        this.h.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.i.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.m.setOnClickListener(this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
        if (Const.mDefaultPreference.getBoolean("privacy_first", true)) {
            this.d.setText(R.string.what_privacy);
            this.e.setVisibility(0);
            this.f.setVisibility(8);
            findViewById(R.id.trust_arrow).setVisibility(8);
            Const.mDefaultPreference.edit().putBoolean("privacy_first", false).commit();
        } else {
            this.d.setText(R.string.privacy_protect);
            this.e.setVisibility(8);
            this.f.setVisibility(0);
            findViewById(R.id.trust_arrow).setVisibility(0);
        }
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.PermissionControlNew.AnonymousClass3 */

            public final void run() {
                AppDatabase database = new AppDatabase(PermissionControlNew.this);
                if (Const.getScreenHeight() > 800) {
                    PermissionControlNew.this.a = database.getTopThreeLogs(AppDatabase.DB_LOG_PRIVACY, 4);
                } else {
                    PermissionControlNew.this.a = database.getTopThreeLogs(AppDatabase.DB_LOG_PRIVACY, 3);
                }
                if (PermissionControlNew.this.o) {
                    PermissionControlNew.this.n = database.getTrustedApps(AppDatabase.PERM_TYPE_PRIVCY);
                }
                PermissionControlNew.this.p.sendMessage(PermissionControlNew.this.p.obtainMessage(0));
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.privacy_layout /*{ENCODED_INT: 2131296772}*/:
                Intent it1 = new Intent(this, ApplicationList.class);
                it1.putExtra("permType", AppDatabase.PERM_TYPE_PRIVCY);
                startActivityForResult(it1, 0);
                return;
            case R.id.location_layout /*{ENCODED_INT: 2131296778}*/:
                Intent it2 = new Intent(this, ApplicationList.class);
                it2.putExtra("permType", "location");
                startActivityForResult(it2, 0);
                return;
            case R.id.more_logs /*{ENCODED_INT: 2131296887}*/:
                Intent it0 = new Intent(this, DisplayLog.class);
                it0.putExtra("from", DatabaseTables.SYSTEM_MARK);
                startActivityForResult(it0, 1);
                return;
            case R.id.record_layout /*{ENCODED_INT: 2131297147}*/:
                Intent it3 = new Intent(this, ApplicationList.class);
                it3.putExtra("permType", AppDatabase.PERM_TYPE_DEVICE);
                startActivityForResult(it3, 0);
                return;
            case R.id.txt_trust /*{ENCODED_INT: 2131297407}*/:
                Intent it = new Intent(this, AppsManager.class);
                it.putExtra("permType", AppDatabase.PERM_TYPE_PRIVCY);
                startActivityForResult(it, 0);
                return;
            case R.id.title_back /*{ENCODED_INT: 2131297709}*/:
                finish();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch (resultCode) {
            case 0:
            default:
                return;
            case 1:
                this.a.clear();
                this.p.sendMessage(this.p.obtainMessage(0));
                return;
        }
    }
}
