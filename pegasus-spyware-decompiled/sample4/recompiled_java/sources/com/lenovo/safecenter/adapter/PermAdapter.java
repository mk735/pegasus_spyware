package com.lenovo.safecenter.adapter;

import android.content.Context;
import android.content.pm.PackageManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.support.AppInfo;
import java.util.ArrayList;

public class PermAdapter extends BaseAdapter {
    private ArrayList<AppInfo> a;
    private Context b;
    private PackageManager c = this.b.getPackageManager();

    public PermAdapter(Context context, ArrayList<AppInfo> apps) {
        this.a = apps;
        this.b = context;
    }

    public int getCount() {
        return this.a.size();
    }

    public Object getItem(int position) {
        return this.a.get(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        a holder;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.b).inflate(R.layout.second_item, (ViewGroup) null);
            holder = new a();
            holder.a = (ImageView) convertView.findViewById(R.id.app_icon);
            holder.b = (TextView) convertView.findViewById(R.id.app_name);
            holder.c = (TextView) convertView.findViewById(R.id.app_suggest);
            holder.d = (TextView) convertView.findViewById(R.id.app_discription);
            holder.e = (ImageView) convertView.findViewById(R.id.itemcheck);
            convertView.setTag(holder);
        } else {
            holder = (a) convertView.getTag();
        }
        AppInfo appInfo = this.a.get(position);
        convertView.setVisibility(0);
        try {
            holder.b.setText(appInfo.applicationInfo.loadLabel(this.c).toString());
            holder.a.setImageDrawable(appInfo.applicationInfo.loadIcon(this.c));
        } catch (Exception e) {
            e.printStackTrace();
            holder.b.setText(appInfo.name);
            holder.a.setImageResource(R.drawable.icon3);
        }
        if (appInfo.appType.equals(AppDatabase.PERM_TYPE_PRIVCY) || appInfo.appType.equals("location") || appInfo.appType.equals(AppDatabase.PERM_TYPE_DEVICE)) {
            holder.d.setVisibility(0);
            if (appInfo.selected == 0) {
                holder.d.setText(this.b.getString(R.string.allow) + appInfo.permDes);
            } else {
                holder.d.setText(this.b.getString(R.string.forbid) + appInfo.permDes);
            }
        } else {
            holder.d.setVisibility(8);
        }
        ImageView tButton = holder.e;
        tButton.setTag(appInfo);
        if (appInfo.selected == 0) {
            tButton.setBackgroundResource(R.drawable.perm_grant);
        } else if (appInfo.selected == 1) {
            tButton.setBackgroundResource(R.drawable.perm_deny);
        } else if (appInfo.selected == 2) {
            tButton.setBackgroundResource(R.drawable.perm_prompt);
        }
        if (appInfo.suggest == 0) {
            holder.c.setVisibility(0);
            holder.c.setTextColor(this.b.getResources().getColor(R.color.green_allow));
            holder.c.setText(R.string.suggest_allow);
        } else if (appInfo.suggest == 1) {
            holder.c.setVisibility(0);
            holder.c.setTextColor(this.b.getResources().getColor(R.color.red_forbid));
            holder.c.setText(R.string.suggest_forbid);
        } else if (appInfo.suggest == -1) {
            holder.c.setVisibility(4);
        }
        return convertView;
    }
}
