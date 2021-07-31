package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.MainTab.AppDownloadActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.homepageUtil.BaseDrawer;

public class DrawerLeCloudSyn extends BaseDrawer {
    public DrawerLeCloudSyn(Context context, boolean isUp) {
        super(R.drawable.home_page_drawer_safe_synchr, context.getString(R.string.safe_synchr), context, isUp);
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
        if (AppUtil.isAppExistence(this.mContext, Const.PACKAGENAME_LE_CLOUD)) {
            WflUtils.startLeCloudSyn(this.mContext);
        } else {
            Intent down = new Intent(this.mContext, AppDownloadActivity.class);
            down.putExtra("type", (byte) 1);
            this.mContext.startActivity(down);
        }
        TrackEvent.reportEntryLeCloudSync();
    }
}
