package com.lenovo.safecenter.safemode;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.whiteSmsAdapter;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class ErrorWhiteSms extends Activity {
    private List<Contract> a;
    private ListView b;
    private TextView c;
    private TextView d;
    private whiteSmsAdapter e;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.whitesmsshowlist);
        this.b = (ListView) findViewById(R.id.safemode_log_list);
        this.c = (TextView) findViewById(R.id.safemode_empty_textview);
        this.d = (TextView) findViewById(R.id.txtdesc);
        this.d.setVisibility(8);
        this.c.setText(R.string.pri_nosms);
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

    public void initData() {
        this.a = new ArrayList();
        if (this.c != null) {
            this.c.setText(R.string.no_record);
            this.b.setEmptyView(this.c);
        }
        this.e = new whiteSmsAdapter(this, this.a);
        this.b.setAdapter((ListAdapter) this.e);
    }
}
