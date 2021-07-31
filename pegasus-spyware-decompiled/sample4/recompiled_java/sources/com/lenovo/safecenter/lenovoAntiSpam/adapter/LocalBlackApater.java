package com.lenovo.safecenter.lenovoAntiSpam.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.lenovoAntiSpam.domain.BlackInfo;
import java.util.List;

public class LocalBlackApater extends BaseAdapter {
    private Context a;
    private List<BlackInfo> b;

    public LocalBlackApater(Context context, List<BlackInfo> list, int type) {
        this.a = context;
        this.b = list;
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

    public View getView(int position, View convertView, ViewGroup parent) {
        a holder;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.a).inflate(R.layout.antispamblackinfo_item1, (ViewGroup) null);
            holder = new a(this, (byte) 0);
            holder.a = (ImageView) convertView.findViewById(R.id.antispamblack_image);
            holder.d = (TextView) convertView.findViewById(R.id.antispamlocalblack_name);
            holder.e = (TextView) convertView.findViewById(R.id.antispamlocalblack_number);
            holder.c = (ImageView) convertView.findViewById(R.id.antispamisupload);
            holder.b = (ImageView) convertView.findViewById(R.id.antispamblack_check);
            convertView.setTag(holder);
        } else {
            holder = (a) convertView.getTag();
        }
        BlackInfo info = this.b.get(position);
        holder.b.setVisibility(8);
        if (info.getIsUpload() == 0) {
            holder.c.setVisibility(8);
        } else if (info.getIsUpload() == 1) {
            holder.c.setVisibility(0);
        }
        holder.e.setText(info.getPhoneNumber());
        if (info.getName() == null || info.getName().equals("")) {
            holder.d.setText(getNameStr(info.getType()));
        } else {
            holder.d.setText(info.getName() + getNameStr(info.getType()));
        }
        holder.a.setImageResource(R.drawable.antispamblack);
        return convertView;
    }

    private class a {
        ImageView a;
        ImageView b;
        ImageView c;
        TextView d;
        TextView e;

        private a() {
        }

        /* synthetic */ a(LocalBlackApater x0, byte b2) {
            this();
        }
    }

    public String getNameStr(int type) {
        if (type == 2) {
            return this.a.getResources().getString(R.string.harss_method1);
        }
        if (type == 1) {
            return this.a.getResources().getString(R.string.harss_method2);
        }
        if (type == 0) {
            return this.a.getResources().getString(R.string.harss_method3);
        }
        return this.a.getResources().getString(R.string.harss_method4);
    }
}
