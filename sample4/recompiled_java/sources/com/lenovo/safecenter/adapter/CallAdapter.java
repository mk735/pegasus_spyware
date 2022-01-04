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
import com.lenovo.safecenter.utils.ContractHelpUtils;
import java.util.List;

public class CallAdapter extends BaseAdapter {
    private Context a;
    private List<Contract> b;
    private int c;

    public CallAdapter(Context context, List<Contract> list, int fromType) {
        this.a = context;
        this.b = list;
        this.c = fromType;
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
            convertView = LayoutInflater.from(this.a).inflate(R.layout.callcontract, (ViewGroup) null);
            holder = new a(this, (byte) 0);
            holder.a = (TextView) convertView.findViewById(R.id.safemode_callname);
            holder.b = (TextView) convertView.findViewById(R.id.safemode_callnumber);
            holder.c = (TextView) convertView.findViewById(R.id.safemode_calldate);
            holder.d = (TextView) convertView.findViewById(R.id.safemode_calltype);
            holder.e = (ImageView) convertView.findViewById(R.id.safemode_call_check);
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
        ImageView tButton = holder.e;
        if (con.isSelect()) {
            tButton.setBackgroundResource(R.drawable.ic_checkbox_select);
        } else {
            tButton.setBackgroundResource(R.drawable.ic_checkbox);
        }
        if (this.c == 0) {
            holder.b.setVisibility(8);
            holder.d.setVisibility(8);
            holder.c.setText(con.getPhoneNumber());
        } else if (this.c == 1) {
            holder.b.setText(con.getPhoneNumber());
            holder.d.setText(ContractHelpUtils.getType(this.a, con.getCallType()));
            holder.c.setText(ContractHelpUtils.getDate(con.getDate()));
        }
        return convertView;
    }

    private class a {
        TextView a;
        TextView b;
        TextView c;
        TextView d;
        ImageView e;

        private a() {
        }

        /* synthetic */ a(CallAdapter x0, byte b2) {
            this();
        }
    }
}
