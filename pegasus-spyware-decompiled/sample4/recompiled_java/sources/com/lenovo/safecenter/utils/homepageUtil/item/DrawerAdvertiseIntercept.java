package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.notificationintercept.NotificationTabActivity;
import com.lenovo.safecenter.utils.homepageUtil.BaseDrawer;

public class DrawerAdvertiseIntercept extends BaseDrawer {
    public DrawerAdvertiseIntercept(Context context, boolean isUp) {
        super(R.drawable.home_page_drawer_advertise_intercept, context.getString(R.string.scan_advertise_intercept_detail), context, isUp);
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseDrawer
    public View getView(View parent) {
        this.mIsNew = false;
        ImageView icon = (ImageView) parent.findViewById(R.id.img_drawer_item);
        TextView title = (TextView) parent.findViewById(R.id.title_drawer_item);
        ViewGroup bg = (ViewGroup) parent.findViewById(R.id.layout_drawer_item);
        ImageView newMark = (ImageView) parent.findViewById(R.id.newmark_drawer_item);
        if (this.mIsNew) {
            newMark.setVisibility(0);
        } else {
            newMark.setVisibility(8);
        }
        icon.setImageResource(this.idIcon);
        title.setText(this.mTitle);
        setBackgroundResource(bg);
        return parent;
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseDrawer
    public void onClick() {
        mSp.edit().putBoolean(getClass().toString(), false).commit();
        this.mContext.startActivity(new Intent(this.mContext, NotificationTabActivity.class));
    }
}
