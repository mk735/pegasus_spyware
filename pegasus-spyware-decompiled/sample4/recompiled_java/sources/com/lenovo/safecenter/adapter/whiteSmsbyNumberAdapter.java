package com.lenovo.safecenter.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.utils.ContractHelpUtils;
import java.util.List;

public class whiteSmsbyNumberAdapter extends BaseAdapter {
    Context a;
    List<Contract> b;

    public whiteSmsbyNumberAdapter(Context context, List<Contract> list) {
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

    public void removeItem(int position) {
        this.b.remove(position);
        notifyDataSetChanged();
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        a holder;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.a).inflate(R.layout.message_item, (ViewGroup) null);
            holder = new a(this, (byte) 0);
            holder.a = (TextView) convertView.findViewById(R.id.SenderPic);
            holder.b = (TextView) convertView.findViewById(R.id.SelfPic);
            holder.c = (RelativeLayout) convertView.findViewById(R.id.SmsFrame);
            holder.d = (TextView) convertView.findViewById(R.id.ListTitle);
            holder.e = (TextView) convertView.findViewById(R.id.ListSubTitle);
            holder.f = (TextView) convertView.findViewById(R.id.ListBody);
            convertView.setTag(holder);
        } else {
            holder = (a) convertView.getTag();
        }
        Contract con = this.b.get(position);
        holder.f.setText(con.getSmsContent());
        holder.e.setText(ContractHelpUtils.formatTime(con.getDate(), this.a));
        if (con.getSmstype() == 1) {
            holder.c.setBackgroundResource(R.drawable.sms_bg_item_f);
            holder.c.setPadding(30, 0, 5, 0);
            holder.b.setVisibility(0);
            holder.a.setVisibility(8);
            if (!TextUtils.isEmpty(con.getName())) {
                holder.d.setText(con.getName());
            } else {
                holder.d.setText(con.getPhoneNumber());
            }
        } else {
            holder.a.setVisibility(0);
            holder.c.setBackgroundResource(R.drawable.sms_bg);
            holder.c.setPadding(8, 0, 20, 0);
            holder.b.setVisibility(8);
            holder.d.setText(R.string.self);
        }
        return convertView;
    }

    private class a {
        TextView a;
        TextView b;
        RelativeLayout c;
        TextView d;
        TextView e;
        TextView f;

        private a() {
        }

        /* synthetic */ a(whiteSmsbyNumberAdapter x0, byte b2) {
            this();
        }
    }
}
