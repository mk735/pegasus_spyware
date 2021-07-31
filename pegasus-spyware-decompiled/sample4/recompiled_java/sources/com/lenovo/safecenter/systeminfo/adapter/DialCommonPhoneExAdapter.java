package com.lenovo.safecenter.systeminfo.adapter;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.systeminfo.entity.CommonNumber;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DialCommonPhoneExAdapter extends BaseExpandableListAdapter {
    private static int[] a = new int[11];
    private HashMap<String, List<CommonNumber>> b = new HashMap<>();
    private Context c;
    private StringBuffer d = new StringBuffer();

    public static class DialCommonPhoneChildModeHolder {
        public TextView mInfoChildText;
    }

    public static class DialCommonPhoneGroupModeHolder {
        ImageView a;
        ImageView b;
        TextView c;
        TextView d;
        LinearLayout e;
    }

    public static class ViewBodyHolder {
        TextView a;
        TextView b;
        TextView c;
        public LinearLayout mLayoutchild;
    }

    static {
        a[0] = R.drawable.comnum_hotal;
        a[1] = R.drawable.comnum_airplane;
        a[2] = R.drawable.comnum_ticket;
        a[3] = R.drawable.comnum_delivery;
        a[4] = R.drawable.comnum_insurance;
        a[5] = R.drawable.comnum_trip;
        a[6] = R.drawable.comnum_catering;
        a[7] = R.drawable.comnum_communication;
        a[8] = R.drawable.comnum_customer;
        a[9] = R.drawable.comnum_daily;
        a[10] = R.drawable.comnum_bank;
    }

    public DialCommonPhoneExAdapter(Context paramContext, HashMap<String, List<CommonNumber>> paramHashMap) {
        this.c = paramContext;
        this.b = paramHashMap;
    }

    public Object getChild(int groupPosition, int childPosition) {
        if (this.b != null) {
            return this.b.get(this.b.keySet().toArray()[groupPosition]).get(childPosition);
        }
        return null;
    }

    public long getChildId(int groupPosition, int childPosition) {
        return 0;
    }

    public View getChildView(int groupPosition, int childPosition, boolean isLastChild, View paramView, ViewGroup paramViewGroup) {
        View localView;
        ViewBodyHolder localObject;
        if (paramView == null) {
            localView = ((LayoutInflater) this.c.getSystemService("layout_inflater")).inflate(R.layout.list_item_dial_common, (ViewGroup) null);
            localObject = new ViewBodyHolder();
            localObject.c = (TextView) localView.findViewById(R.id.call_button);
            localObject.a = (TextView) localView.findViewById(R.id.name);
            localObject.b = (TextView) localView.findViewById(R.id.phonenum_location);
            localObject.mLayoutchild = (LinearLayout) localView;
            localView.setTag(localObject);
        } else {
            localView = paramView;
            localObject = (ViewBodyHolder) paramView.getTag();
        }
        CommonNumber commonNumber = (CommonNumber) ((ArrayList) this.b.get((String) this.b.keySet().toArray()[groupPosition])).get(childPosition);
        localObject.a.setText(commonNumber.getName());
        localObject.b.setText(commonNumber.getPhoneNumber());
        localObject.c.setTag(new int[]{groupPosition, childPosition});
        localObject.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.systeminfo.adapter.DialCommonPhoneExAdapter.AnonymousClass1 */

            public final void onClick(View v) {
                int[] a2 = (int[]) v.getTag();
                DialCommonPhoneExAdapter.this.c.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + ((CommonNumber) ((ArrayList) DialCommonPhoneExAdapter.this.b.get((String) DialCommonPhoneExAdapter.this.b.keySet().toArray()[a2[0]])).get(a2[1])).getPhoneNumber())));
            }
        });
        return localView;
    }

    public int getChildrenCount(int paramInt) {
        return ((ArrayList) this.b.get((String) this.b.keySet().toArray()[paramInt])).size();
    }

    public Object getGroup(int paramInt) {
        return null;
    }

    public int getGroupCount() {
        return this.b.keySet().size();
    }

    public long getGroupId(int paramInt) {
        return 0;
    }

    public View getGroupView(int groupPosition, boolean isExpanded, View paramView, ViewGroup paramViewGroup) {
        DialCommonPhoneGroupModeHolder groupViewHolder;
        int i = 0;
        if (paramView == null) {
            View localView = ((LayoutInflater) this.c.getSystemService("layout_inflater")).inflate(R.layout.list_item_dialphone_father, (ViewGroup) null);
            groupViewHolder = new DialCommonPhoneGroupModeHolder();
            groupViewHolder.e = (LinearLayout) localView;
            groupViewHolder.d = (TextView) localView.findViewById(R.id.textViewCategory);
            groupViewHolder.c = (TextView) localView.findViewById(R.id.textMoreInfo);
            groupViewHolder.b = (ImageView) localView.findViewById(R.id.image_show_icon);
            groupViewHolder.a = (ImageView) localView.findViewById(R.id.image_logo);
            localView.setTag(groupViewHolder);
            paramView = localView;
        } else {
            groupViewHolder = (DialCommonPhoneGroupModeHolder) paramView.getTag();
        }
        String group = (String) this.b.keySet().toArray()[groupPosition];
        int groupItemSize = this.b.get(group).size();
        groupViewHolder.d.setText(group + " (" + groupItemSize + ")");
        this.d.delete(0, this.d.length());
        while (i < groupItemSize && i < 3) {
            this.d.append(this.b.get(group).get(i).getName());
            if (i < 2) {
                this.d.append("、");
            }
            i++;
        }
        if (isExpanded) {
            groupViewHolder.b.setBackgroundResource(R.drawable.arrow_down);
            groupViewHolder.e.setBackgroundColor(this.c.getResources().getColor(R.color.list_item_bg_color_focus));
        } else {
            groupViewHolder.b.setBackgroundResource(R.drawable.arrow1);
            groupViewHolder.e.setBackgroundColor(this.c.getResources().getColor(R.color.list_item_bg_color));
        }
        groupViewHolder.c.setText(this.d.toString());
        groupViewHolder.a.setImageResource(a[groupPosition]);
        return paramView;
    }

    public boolean hasStableIds() {
        return false;
    }

    public boolean isChildSelectable(int paramInt1, int paramInt2) {
        return false;
    }
}
