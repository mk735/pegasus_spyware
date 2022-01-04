package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.lenovoAntiSpam.newview.AntiSpamMain;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.homepageUtil.BaseFourBox;

public class FourBoxHarassIntercept extends BaseFourBox {
    public FourBoxHarassIntercept(Context context) {
        super(R.drawable.img_harass_intercept, context.getString(R.string.antispamapp_name), context);
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseFourBox
    public View getView(View parent) {
        ViewGroup layoutCenterAlign = (ViewGroup) parent.findViewById(R.id.layout_content_twoLine_centerAlign);
        ViewGroup layoutLeftAndRightAlign = (ViewGroup) parent.findViewById(R.id.layout_content_twoLine_leftAndRightAlign);
        TextView tv_C_Line1Title = (TextView) parent.findViewById(R.id.tv_centerAlign_up);
        TextView tv_LR_Line1Title = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_up_title);
        TextView tv_LR_Line1Detail = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_up_detail);
        TextView tv_LR_Line2Title = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_down_title);
        TextView tv_LR_Line2Detail = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_down_detail);
        ((ImageView) parent.findViewById(R.id.img_icon)).setImageResource(this.idIcon);
        ((TextView) parent.findViewById(R.id.tv_title)).setText(this.mTitle);
        if (!Const.getProtectHarassSwitchState()) {
            layoutLeftAndRightAlign.setVisibility(8);
            layoutCenterAlign.setVisibility(0);
            tv_C_Line1Title.setText(this.mContext.getString(R.string.main_tab_harass) + this.mContext.getString(R.string.no_open));
            tv_C_Line1Title.setTextColor(this.mContext.getResources().getColor(R.color.red1));
        } else {
            layoutLeftAndRightAlign.setVisibility(0);
            layoutCenterAlign.setVisibility(8);
            tv_LR_Line1Title.setText(R.string.harass_phone);
            tv_LR_Line2Title.setText(R.string.garbage_sms);
            WflUtils.setSpannableString(tv_LR_Line1Detail, String.format(this.mContext.getString(R.string.ge), Integer.valueOf(SafeCenterService.harass_call_count)), 0, String.valueOf(SafeCenterService.harass_call_count).length(), this.mContext.getResources().getColor(R.color.green2));
            WflUtils.setSpannableString(tv_LR_Line2Detail, String.format(this.mContext.getString(R.string.tiao_num), Integer.valueOf(SafeCenterService.harass_msg_count)), 0, String.valueOf(SafeCenterService.harass_msg_count).length(), this.mContext.getResources().getColor(R.color.green2));
        }
        return parent;
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseFourBox
    public void onClick() {
        this.mContext.startActivity(new Intent(this.mContext, AntiSpamMain.class));
    }
}
