package com.lenovo.safecenter.adapter;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.MyUtils;
import java.util.List;

public class NewLogsAdapter extends BaseAdapter {
    PackageManager a;
    Context b;
    List<SafeLog> c;

    public NewLogsAdapter(Context context, List<SafeLog> list) {
        this.b = context;
        this.c = list;
        this.a = context.getPackageManager();
    }

    public int getCount() {
        return this.c.size();
    }

    public Object getItem(int position) {
        return this.c.get(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        a holder;
        String content;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.b).inflate(R.layout.newlogsitem, (ViewGroup) null);
            holder = new a();
            holder.a = (ImageView) convertView.findViewById(R.id.newlogs_img);
            holder.b = (TextView) convertView.findViewById(R.id.newlogs_time);
            holder.c = (TextView) convertView.findViewById(R.id.newlogs_content);
            convertView.setTag(holder);
        } else {
            holder = (a) convertView.getTag();
        }
        SafeLog log = this.c.get(position);
        ApplicationInfo appInfo = null;
        try {
            appInfo = this.a.getApplicationInfo(log.packageName, 8704);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        if (appInfo == null) {
            holder.a.setImageResource(R.drawable.icon3);
        } else {
            holder.a.setImageDrawable(appInfo.loadIcon(this.a));
        }
        if (log.logSelected == 1) {
            content = this.b.getString(R.string.when_calling) + AppUtil.getDescriptionByPid(this.b, Integer.valueOf(log.type).intValue());
        } else {
            content = AppUtil.getDescriptionByPid(this.b, Integer.valueOf(log.type).intValue());
        }
        if (log.action == 0) {
            String allow = this.b.getString(R.string.allow);
            holder.c.setText(allow + content);
            MyUtils.setSpannableString(holder.c, allow + content, 0, allow.length(), this.b.getResources().getColor(R.color.green_allow));
        } else {
            String forbid = this.b.getString(R.string.forbid);
            holder.c.setText(forbid + content);
            MyUtils.setSpannableString(holder.c, forbid + content, 0, forbid.length(), this.b.getResources().getColor(R.color.red_forbid));
        }
        holder.b.setText(MyUtils.formatTime(log.time, this.b));
        return convertView;
    }

    class a {
        ImageView a;
        TextView b;
        TextView c;

        a() {
        }
    }
}
