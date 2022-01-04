package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.MainTab.AppDownloadActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.homepageUtil.BaseDrawer;

public class DrawerBattery extends BaseDrawer {
    public DrawerBattery(Context context, boolean isUp) {
        super(R.drawable.home_page_drawer_battery, context.getString(R.string.battery_center), context, isUp);
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
        if (AppUtil.isAppExistence(this.mContext, Const.PACKAGENAME_LE_BATTERY)) {
            startLeBattery(this.mContext);
            return;
        }
        Intent down = new Intent(this.mContext, AppDownloadActivity.class);
        down.putExtra("type", (byte) 0);
        this.mContext.startActivity(down);
    }

    public static void startLeBattery(Context context) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName(Const.PACKAGENAME_LE_BATTERY, "com.lenovo.safe.powercenter.ui.SplashActivity"));
            context.startActivity(intent);
            TrackEvent.reportEntryLeBattery();
        } catch (Exception e) {
            Toast.makeText(context, context.getString(R.string.le_battery_disable), 0).show();
        }
    }
}
