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
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerAdvertiseIntercept;
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerAgainstTheft;
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerBattery;
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerChargeShield;
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerDailyTools;
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerKillVirus;
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerLeCloudSyn;
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerPhoneAccelerate;
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerPrivacyShield;
import com.lenovo.safecenter.utils.homepageUtil.item.DrawerPrivacyZone;
import java.util.ArrayList;

public class DrawerAdapter extends BaseAdapter {
    private ArrayList<BaseDrawer> a;
    private Context b;
    private LayoutInflater c;
    private Handler d = new Handler() {
        /* class com.lenovo.safecenter.utils.homepageUtil.DrawerAdapter.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    DrawerAdapter.this.notifyDataSetChanged();
                    return;
                default:
                    return;
            }
        }
    };

    public DrawerAdapter(Context context, boolean isUp) {
        this.b = context;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
        boolean isRoot = Const.isRootThePhone();
        if (isUp) {
            if (this.a == null) {
                this.a = new ArrayList<>();
                if (isRoot) {
                    this.a.add(new DrawerKillVirus(this.b, true));
                    this.a.add(new DrawerPhoneAccelerate(this.b, true));
                    this.a.add(new DrawerAdvertiseIntercept(this.b, true));
                    this.a.add(new DrawerBattery(this.b, true));
                    return;
                }
                this.a.add(new DrawerBattery(this.b, true));
                this.a.add(new DrawerDailyTools(this.b, true));
                this.a.add(new DrawerAdvertiseIntercept(this.b, true));
                this.a.add(new DrawerLeCloudSyn(this.b, true));
            }
        } else if (this.a == null) {
            this.a = new ArrayList<>();
            this.a.add(new DrawerPrivacyZone(this.b, false));
            if (isRoot) {
                this.a.add(new DrawerLeCloudSyn(this.b, false));
                this.a.add(new DrawerDailyTools(this.b, false));
            } else {
                this.a.add(new DrawerPrivacyShield(this.b, false));
                this.a.add(new DrawerChargeShield(this.b, false));
            }
            this.a.add(new DrawerAgainstTheft(this.b, false));
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

    public void setData(ArrayList<BaseDrawer> dataSource) {
        this.a.addAll(dataSource);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        View v = this.c.inflate(R.layout.home_page_drawer_item, parent, false);
        final BaseDrawer item = this.a.get(position);
        View v2 = item.getView(v);
        v2.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.utils.homepageUtil.DrawerAdapter.AnonymousClass2 */

            public final void onClick(View v) {
                item.onClick();
            }
        });
        return v2;
    }
}
