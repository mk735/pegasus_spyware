package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.homepageUtil.BaseDrawer;

public class DrawerPhoneAccelerate extends BaseDrawer {
    public DrawerPhoneAccelerate(Context context, boolean isUp) {
        super(R.drawable.home_page_drawer_phone_acceleration, context.getString(R.string.phone_acceleration), context, isUp);
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseDrawer
    public View getView(View parent) {
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
        FourBoxPhoneAccelerate.enterPhoneAccelerate(this.mContext);
    }
}
