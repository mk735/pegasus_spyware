package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.AppsManager.ChargeSafeNew;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.homepageUtil.BaseDrawer;

public class DrawerChargeShield extends BaseDrawer {
    public DrawerChargeShield(Context context, boolean isup) {
        super(R.drawable.img_drawer_content_chargeshield, context.getString(R.string.charge_safe), context, isup);
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
        enterchargeShield(this.mContext);
    }

    public static void enterchargeShield(Context context) {
        context.startActivity(new Intent(context, ChargeSafeNew.class));
    }
}
