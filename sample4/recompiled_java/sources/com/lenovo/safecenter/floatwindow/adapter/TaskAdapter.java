package com.lenovo.safecenter.floatwindow.adapter;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.performancecenter.service.object.UsedAppInfo;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.model.ViewHolder;
import java.util.List;

public class TaskAdapter extends BaseAdapter {
    private Context a;
    private List<UsedAppInfo> b;
    private ViewHolder c;
    private LayoutInflater d = LayoutInflater.from(this.a);
    private PackageManager e;

    public TaskAdapter(Context _context, List<UsedAppInfo> _app_lists) {
        this.a = _context;
        this.b = _app_lists;
        if (this.e == null) {
            this.e = _context.getPackageManager();
        }
    }

    public int getCount() {
        return this.b.size();
    }

    public Object getItem(int position) {
        return Integer.valueOf(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        View view = convertView;
        if (view == null) {
            this.c = new ViewHolder();
            view = this.d.inflate(R.layout.assist_task_item, (ViewGroup) null);
            this.c.img = (ImageView) view.findViewById(R.id.item_icon);
            this.c.text = (TextView) view.findViewById(R.id.item_label);
            view.setTag(this.c);
        } else {
            this.c = (ViewHolder) view.getTag();
        }
        try {
            ApplicationInfo appInfo = this.e.getApplicationInfo(this.b.get(position).packageName, 0);
            this.c.img.setImageDrawable(appInfo.loadIcon(this.e));
            this.c.text.setText(appInfo.loadLabel(this.e));
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        return view;
    }
}
