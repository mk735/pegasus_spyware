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

public class ManwhiteSmsAdapter extends BaseAdapter {
    Context a;
    List<Contract> b;

    public ManwhiteSmsAdapter(Context context, List<Contract> list) {
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
            convertView = LayoutInflater.from(this.a).inflate(R.layout.whiteloginfo, (ViewGroup) null);
            holder = new a(this, (byte) 0);
            holder.a = (ImageView) convertView.findViewById(R.id.safemode_icon_call);
            holder.b = (ImageView) convertView.findViewById(R.id.safemode_type_icon);
            holder.c = (TextView) convertView.findViewById(R.id.safemode_whitesms_date);
            holder.d = (TextView) convertView.findViewById(R.id.safemode_whitesms_name);
            holder.e = (TextView) convertView.findViewById(R.id.safemode_whitesms_content);
            convertView.setTag(holder);
        } else {
            holder = (a) convertView.getTag();
        }
        Contract sms = this.b.get(position);
        if (sms.getFromtype() == 0) {
            String str = sms.getName();
            if (sms.getName() == null) {
                str = sms.getPhoneNumber();
            }
            int count = sms.getCount();
            if (count > 0) {
                str = str + String.format(this.a.getString(R.string.record_count), String.valueOf(count));
            }
            if (sms.isSelect()) {
                holder.a.setImageResource(R.drawable.ic_checkbox_select);
            } else {
                holder.a.setImageResource(R.drawable.ic_checkbox);
            }
            holder.b.setImageResource(R.drawable.safemode_pri_message);
            holder.d.setText(str);
            holder.c.setText(String.format(this.a.getString(R.string.formattime), ContractHelpUtils.formatTime(sms.getDate(), this.a)));
            holder.e.setText(sms.getSmsContent());
        } else if (sms.getFromtype() == 1) {
            String str2 = sms.getName();
            if (sms.getName() == null) {
                str2 = sms.getPhoneNumber();
            }
            if (sms.isSelect()) {
                holder.a.setImageResource(R.drawable.ic_checkbox_select);
            } else {
                holder.a.setImageResource(R.drawable.ic_checkbox);
            }
            if (sms.getCallType() == 1) {
                holder.b.setImageResource(R.drawable.list_icon_in_call);
            } else if (sms.getCallType() == 3) {
                holder.b.setImageResource(R.drawable.list_icon_miss_call);
            } else if (sms.getCallType() == 2) {
                holder.b.setImageResource(R.drawable.list_icon_out_call);
            }
            holder.d.setText(str2);
            holder.c.setText(ContractHelpUtils.formatTime(sms.getDate(), this.a));
        }
        return convertView;
    }

    private class a {
        ImageView a;
        ImageView b;
        TextView c;
        TextView d;
        TextView e;

        private a() {
        }

        /* synthetic */ a(ManwhiteSmsAdapter x0, byte b2) {
            this();
        }
    }
}
