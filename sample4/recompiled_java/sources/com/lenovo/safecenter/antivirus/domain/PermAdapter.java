package com.lenovo.safecenter.antivirus.domain;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import java.util.List;

public class PermAdapter extends BaseAdapter {
    private LayoutInflater a;
    private List<ScanInfo> b;
    private a c;
    private Context d;
    private boolean e;

    public PermAdapter(Context context, List<ScanInfo> apps, boolean isNeedScan) {
        this.a = LayoutInflater.from(context);
        this.b = apps;
        this.d = context;
        this.e = isNeedScan;
    }

    public int getCount() {
        return this.b.size();
    }

    public Object getItem(int position) {
        return this.b.get(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public boolean isEnabled(int position) {
        return false;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = this.a.inflate(R.layout.scanitem, (ViewGroup) null);
            this.c = new a();
            this.c.a = (ImageView) convertView.findViewById(R.id.scanapp_icon);
            this.c.c = (TextView) convertView.findViewById(R.id.scanapp_name);
            this.c.b = (ImageView) convertView.findViewById(R.id.scanapp_state);
            convertView.setTag(this.c);
        } else {
            this.c = (a) convertView.getTag();
        }
        if (position <= 2) {
            if (position == 0) {
                this.c.a.setImageDrawable(this.d.getResources().getDrawable(R.drawable.atat_safe_icon));
                this.c.c.setText(R.string.antivirusfull_system_scan2);
                this.c.b.setVisibility(8);
            } else if (position == 1) {
                this.c.a.setImageDrawable(this.d.getResources().getDrawable(R.drawable.antivirusqq));
                this.c.c.setText(R.string.antivirusfull_system_scan3);
                this.c.b.setVisibility(8);
            } else if (position == 2) {
                this.c.a.setImageDrawable(this.d.getResources().getDrawable(R.drawable.antivirusbitdefend));
                this.c.c.setText(R.string.antivirusfull_system_scan4);
                this.c.b.setVisibility(8);
            }
        } else if (this.e) {
            this.c.b.setVisibility(0);
            ScanInfo info = this.b.get(position);
            Log.i(AppDatabase.NUMBER, this.c.a + "===" + info + "==" + this.d);
            Drawable icon = null;
            try {
                icon = this.d.getPackageManager().getApplicationInfo(info.getPackageName(), 8192).loadIcon(this.d.getPackageManager());
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            }
            if (icon == null) {
                icon = this.d.getResources().getDrawable(R.drawable.icon3);
            }
            this.c.a.setImageDrawable(icon);
            this.c.c.setText(String.format(this.d.getResources().getString(R.string.antivirusvirus_scaning), info.getSoftName()));
            this.c.b.setImageDrawable(this.d.getResources().getDrawable(R.drawable.perm_grant1));
            if (info.isVirus()) {
                this.c.b.setImageDrawable(this.d.getResources().getDrawable(R.drawable.perm_prompt1));
            }
        } else {
            this.c.b.setVisibility(0);
            ScanInfo info2 = this.b.get(position);
            Log.i(AppDatabase.NUMBER, this.c.a + "===" + info2 + "==" + this.d);
            Drawable icon2 = info2.getAppInfo().loadIcon(this.d.getPackageManager());
            if (icon2 == null) {
                icon2 = this.d.getResources().getDrawable(R.drawable.icon3);
            }
            this.c.a.setImageDrawable(icon2);
            this.c.c.setText(String.format(this.d.getResources().getString(R.string.antivirusvirus_scaning), info2.getAppInfo().loadLabel(this.d.getPackageManager())));
            this.c.b.setImageDrawable(this.d.getResources().getDrawable(R.drawable.perm_grant1));
            if (info2.isVirus()) {
                this.c.b.setImageDrawable(this.d.getResources().getDrawable(R.drawable.perm_prompt1));
            }
        }
        return convertView;
    }
}
