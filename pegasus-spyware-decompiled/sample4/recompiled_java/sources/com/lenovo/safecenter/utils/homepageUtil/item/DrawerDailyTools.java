package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.systeminfo.ui.activity.DailyTools;
import com.lenovo.safecenter.utils.NewFunctionNoticeManager;
import com.lenovo.safecenter.utils.homepageUtil.BaseDrawer;

public class DrawerDailyTools extends BaseDrawer {
    public DrawerDailyTools(Context context, boolean isUp) {
        super(R.drawable.home_page_drawer_dayly_tools, context.getString(R.string.dayly_tools), context, isUp);
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseDrawer
    public View getView(View parent) {
        if (NewFunctionNoticeManager.hasContentInType(this.mContext, NewFunctionNoticeManager.TYPE_TOOLS)) {
            ((ImageView) parent.findViewById(R.id.newmark_drawer_item)).setVisibility(0);
        }
        ((ImageView) parent.findViewById(R.id.img_drawer_item)).setImageResource(this.idIcon);
        ((TextView) parent.findViewById(R.id.title_drawer_item)).setText(this.mTitle);
        setBackgroundResource((ViewGroup) parent.findViewById(R.id.layout_drawer_item));
        return parent;
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseDrawer
    public void onClick() {
        this.mContext.startActivity(new Intent(this.mContext, DailyTools.class));
    }
}
