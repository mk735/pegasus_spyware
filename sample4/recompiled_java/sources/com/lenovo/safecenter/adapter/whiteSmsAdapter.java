package com.lenovo.safecenter.adapter;

import android.content.Context;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.utils.ContractHelpUtils;
import java.util.List;

public class whiteSmsAdapter extends BaseAdapter {
    Context a;
    List<Contract> b;

    public whiteSmsAdapter(Context context, List<Contract> list) {
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
            holder.f = (TextView) convertView.findViewById(R.id.txt_showcount);
            convertView.setTag(holder);
        } else {
            holder = (a) convertView.getTag();
        }
        Contract sms = this.b.get(position);
        Log.i("fromtype", sms.getFromtype() + "==getFromtype");
        holder.b.setVisibility(8);
        if (sms.getFromtype() == 0) {
            holder.a.setVisibility(8);
            String str = sms.getName();
            if (TextUtils.isEmpty(sms.getName())) {
                str = sms.getPhoneNumber();
            }
            if (sms.noreadCount > 0) {
                holder.f.setText(getSpan(String.format(this.a.getString(R.string.pri_percente), Integer.valueOf(sms.noreadCount), Integer.valueOf(sms.getCount())), 19));
                holder.d.setText(getSpan(str, 19));
            } else {
                holder.f.setText(String.format(this.a.getString(R.string.pri_percente), Integer.valueOf(sms.noreadCount), Integer.valueOf(sms.getCount())));
                holder.d.setText(str);
            }
            holder.c.setVisibility(8);
            holder.e.setText(sms.getSmsContent());
        } else if (sms.getFromtype() == 1) {
            holder.f.setVisibility(8);
            if (sms.getCallType() == 3) {
                holder.a.setImageResource(R.drawable.list_icon_miss_call);
            } else if (sms.getCallType() == 2) {
                holder.a.setImageResource(R.drawable.list_icon_out_call);
            } else {
                holder.a.setImageResource(R.drawable.list_icon_in_call);
            }
            String str2 = sms.getName();
            if (TextUtils.isEmpty(sms.getName())) {
                str2 = sms.getPhoneNumber();
            }
            if (sms.getIsRead() == 1) {
                holder.d.setText(getSpan(str2, 19));
            } else {
                holder.d.setText(str2);
            }
            holder.c.setText(ContractHelpUtils.formatTime(sms.getDate(), this.a));
            Log.i(AppDatabase.CONTENT, ContractHelpUtils.formatTime(sms.getDate(), this.a) + "===call" + "==" + sms.getDate());
        }
        return convertView;
    }

    private class a {
        ImageView a;
        ImageView b;
        TextView c;
        TextView d;
        TextView e;
        TextView f;

        private a() {
        }

        /* synthetic */ a(whiteSmsAdapter x0, byte b2) {
            this();
        }
    }

    public SpannableString getSpan(String text, int size) {
        SpannableString spannable = new SpannableString(text);
        spannable.setSpan(new StyleSpan(1), 0, text.length(), 33);
        return spannable;
    }
}
