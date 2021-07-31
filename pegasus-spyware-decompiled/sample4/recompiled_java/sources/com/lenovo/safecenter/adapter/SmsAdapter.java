package com.lenovo.safecenter.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.support.Contract;
import java.util.List;

public class SmsAdapter extends BaseAdapter {
    private Context a;
    private List<Contract> b;

    public SmsAdapter(Context context, List<Contract> list) {
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
            convertView = LayoutInflater.from(this.a).inflate(R.layout.sms, (ViewGroup) null);
            holder = new a(this, (byte) 0);
            holder.a = (TextView) convertView.findViewById(R.id.safemode_smsname);
            holder.b = (TextView) convertView.findViewById(R.id.safemode_smsnumber);
            holder.c = (TextView) convertView.findViewById(R.id.safemode_smscontent);
            holder.d = (ImageView) convertView.findViewById(R.id.safemode_smscheck);
            convertView.setTag(holder);
        } else {
            holder = (a) convertView.getTag();
        }
        Contract con = this.b.get(position);
        if (con.getName() == null || con.getName().equals("")) {
            holder.a.setText(R.string.no_name);
        } else {
            holder.a.setText(con.getName());
        }
        holder.b.setText(con.getPhoneNumber());
        if (con.getSmsContent() == null || con.getSmsContent().equals("")) {
            holder.c.setText(R.string.no_content);
        } else {
            holder.c.setText(con.getSmsContent());
        }
        if (con.isSelect()) {
            holder.d.setBackgroundResource(R.drawable.ic_checkbox_select);
        } else {
            holder.d.setBackgroundResource(R.drawable.ic_checkbox);
        }
        return convertView;
    }

    private class a {
        TextView a;
        TextView b;
        TextView c;
        ImageView d;

        private a() {
        }

        /* synthetic */ a(SmsAdapter x0, byte b2) {
            this();
        }
    }
}
