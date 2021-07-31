package com.lenovo.safecenter.systeminfo.adapter;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.systeminfo.entity.PhoneInfoItem;
import com.lenovo.safecenter.utils.Const;
import java.util.List;

public class PhoneInfoListAdapter extends BaseAdapter {
    private static final String a = PhoneInfoListAdapter.class.getSimpleName();
    private List<PhoneInfoItem> b;

    public PhoneInfoListAdapter(List<PhoneInfoItem> phoneItems) {
        this.b = phoneItems;
    }

    public int getCount() {
        if (this.b != null) {
            return this.b.size();
        }
        return 0;
    }

    public Object getItem(int position) {
        if (this.b != null) {
            return this.b.get(position);
        }
        return null;
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        a viewHolder;
        View view = convertView;
        if (view == null) {
            viewHolder = new a((byte) 0);
            view = LayoutInflater.from(Const.mContext).inflate(R.layout.phoneinfo_detial_item, parent, false);
            viewHolder.a = (ImageView) view.findViewById(R.id.img_phoneinfo_icon);
            viewHolder.b = (TextView) view.findViewById(R.id.tv_phoneinfo_box);
            view.setTag(viewHolder);
        } else {
            viewHolder = (a) view.getTag();
        }
        Log.i(a, position + "");
        PhoneInfoItem infoItem = this.b.get(position);
        viewHolder.a.setImageResource(infoItem.getIconRes());
        viewHolder.b.setText(infoItem.getInfo());
        return view;
    }

    private static final class a {
        ImageView a;
        TextView b;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }
}
