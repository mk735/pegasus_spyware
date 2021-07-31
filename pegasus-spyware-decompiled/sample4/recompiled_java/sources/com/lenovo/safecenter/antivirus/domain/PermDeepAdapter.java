package com.lenovo.safecenter.antivirus.domain;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.List;

public class PermDeepAdapter extends BaseAdapter {
    private LayoutInflater a;
    private List<QScanResultEntity> b;
    private b c;
    private Context d;

    public PermDeepAdapter(Context context, List<QScanResultEntity> files) {
        this.a = LayoutInflater.from(context);
        this.b = files;
        this.d = context;
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
        String str;
        if (convertView == null) {
            convertView = this.a.inflate(R.layout.scanitem, (ViewGroup) null);
            this.c = new b();
            this.c.a = (ImageView) convertView.findViewById(R.id.scanapp_icon);
            this.c.c = (TextView) convertView.findViewById(R.id.scanapp_name);
            this.c.b = (ImageView) convertView.findViewById(R.id.scanapp_state);
            convertView.setTag(this.c);
        } else {
            this.c = (b) convertView.getTag();
        }
        if (position > 2) {
            this.c.b.setVisibility(0);
            QScanResultEntity result = this.b.get(position);
            Drawable icon = null;
            if (result.apkType == 0) {
                try {
                    icon = this.d.getPackageManager().getApplicationInfo(result.packageName, 8192).loadIcon(this.d.getPackageManager());
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                }
            } else {
                icon = AppUtils.getUninstallAPKIcon(result.path, this.d);
            }
            if (icon == null) {
                icon = this.d.getResources().getDrawable(R.drawable.icon3);
            }
            this.c.a.setImageDrawable(icon);
            if (result.apkType == 2) {
                str = result.path;
            } else {
                str = result.softName;
            }
            this.c.c.setText(str);
            if (result.type != 3 || result.apkType == 1) {
                this.c.b.setImageDrawable(this.d.getResources().getDrawable(R.drawable.perm_grant1));
            } else {
                this.c.b.setImageDrawable(this.d.getResources().getDrawable(R.drawable.perm_prompt1));
            }
        } else if (position == 0) {
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
        return convertView;
    }
}
