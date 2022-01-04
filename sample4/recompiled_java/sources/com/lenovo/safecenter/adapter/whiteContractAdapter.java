package com.lenovo.safecenter.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.support.Contract;
import java.util.List;

public class whiteContractAdapter extends BaseAdapter {
    Context a;
    List<Contract> b;
    boolean c;

    public whiteContractAdapter(Context context, List<Contract> list, boolean mode) {
        this.a = context;
        this.b = list;
        this.c = mode;
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
        Contract con = this.b.get(position);
        if (!this.c) {
            holder.a.setVisibility(8);
        } else if (con.isSelect()) {
            holder.a.setImageResource(R.drawable.ic_checkbox_select);
        } else {
            holder.a.setImageResource(R.drawable.ic_checkbox);
        }
        String name = con.getName();
        if (TextUtils.isEmpty(name)) {
            holder.d.setText(R.string.no_name);
        } else {
            holder.d.setText(name);
        }
        holder.b.setVisibility(8);
        holder.c.setText(con.getPhoneNumber());
        holder.e.setVisibility(8);
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

        /* synthetic */ a(whiteContractAdapter x0, byte b2) {
            this();
        }
    }
}
