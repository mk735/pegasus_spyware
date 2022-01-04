package com.lenovo.safecenter.utils.homepageUtil;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.homepageUtil.item.FourBoxHarassIntercept;
import com.lenovo.safecenter.utils.homepageUtil.item.FourBoxKillVirus;
import com.lenovo.safecenter.utils.homepageUtil.item.FourBoxPhoneAccelerate;
import com.lenovo.safecenter.utils.homepageUtil.item.FourBoxPrivacyShield;
import com.lenovo.safecenter.utils.homepageUtil.item.FourBoxTrafficMonitor;
import com.lenovo.safecenter.utils.homepageUtil.item.FourBoxchargeShield;
import java.util.ArrayList;

public class FourBoxAdapter extends BaseAdapter {
    private ArrayList<BaseFourBox> a;
    private Context b;
    private LayoutInflater c;
    private Handler d = new Handler() {
        /* class com.lenovo.safecenter.utils.homepageUtil.FourBoxAdapter.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    FourBoxAdapter.this.notifyDataSetChanged();
                    return;
                default:
                    return;
            }
        }
    };

    public FourBoxAdapter(Context context) {
        this.b = context;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
        if (this.a == null) {
            this.a = new ArrayList<>();
            if (Const.isRootThePhone()) {
                this.a.add(new FourBoxPrivacyShield(this.b));
                this.a.add(new FourBoxchargeShield(this.b));
            } else {
                this.a.add(new FourBoxKillVirus(this.b));
                this.a.add(new FourBoxPhoneAccelerate(this.b));
            }
            this.a.add(new FourBoxHarassIntercept(this.b));
            this.a.add(new FourBoxTrafficMonitor(this.b));
        }
    }

    public void refresh() {
        this.d.sendEmptyMessage(0);
    }

    public int getCount() {
        if (this.a == null) {
            return 0;
        }
        return this.a.size();
    }

    public Object getItem(int position) {
        if (this.a == null || position >= getCount()) {
            return null;
        }
        return this.a.get(position);
    }

    public void setData(ArrayList<BaseFourBox> dataSource) {
        this.a.addAll(dataSource);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        View v = this.c.inflate(R.layout.home_page_four_box_item, parent, false);
        final BaseFourBox item = this.a.get(position);
        View v2 = item.getView(v);
        v2.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.utils.homepageUtil.FourBoxAdapter.AnonymousClass2 */

            public final void onClick(View v) {
                item.onClick();
            }
        });
        return v2;
    }
}
