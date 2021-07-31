package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.AppsManager.ChargeSafeNew;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.homepageUtil.BaseFourBox;

public class FourBoxchargeShield extends BaseFourBox {
    public FourBoxchargeShield(Context context) {
        super(R.drawable.img_charge_shield, context.getString(R.string.charge_safe), context);
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseFourBox
    public View getView(View parent) {
        SafeLog log;
        String descriptionByPid;
        ViewGroup layoutCenterAlign = (ViewGroup) parent.findViewById(R.id.layout_content_twoLine_centerAlign);
        ViewGroup layoutLeftAndRightAlign = (ViewGroup) parent.findViewById(R.id.layout_content_twoLine_leftAndRightAlign);
        TextView tv_LR_Line1Title = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_up_title);
        TextView tv_LR_Line1Detail = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_up_detail);
        TextView tv_LR_Line2Title = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_down_title);
        TextView tv_LR_Line2Detail = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_down_detail);
        ((ImageView) parent.findViewById(R.id.img_icon)).setImageResource(this.idIcon);
        ((TextView) parent.findViewById(R.id.tv_title)).setText(this.mTitle);
        if (SafeCenterService.charge_count <= 0 || (log = Const.lastSafeLogs.get("tariff")) == null) {
            layoutLeftAndRightAlign.setVisibility(0);
            layoutCenterAlign.setVisibility(8);
            tv_LR_Line1Title.setText(this.mContext.getString(R.string.this_month_calltime));
            tv_LR_Line2Title.setText(this.mContext.getString(R.string.this_month_sms_num));
            WflUtils.setSpannableString(tv_LR_Line1Detail, String.format(this.mContext.getString(R.string.minute_num), Integer.valueOf(Const.getCallOutgoingDurationCurrMonth())), 0, String.valueOf(Const.getCallOutgoingDurationCurrMonth()).length(), this.mContext.getResources().getColor(R.color.green2));
            WflUtils.setSpannableString(tv_LR_Line2Detail, String.format(this.mContext.getString(R.string.tiao_num), Integer.valueOf(Const.getSmsSendNumCurrMonth())), 0, String.valueOf(Const.getSmsSendNumCurrMonth()).length(), this.mContext.getResources().getColor(R.color.green2));
        } else {
            layoutCenterAlign.setVisibility(8);
            layoutLeftAndRightAlign.setVisibility(0);
            String name = a(log);
            WflUtils.setSpannableString(tv_LR_Line1Title, this.mContext.getString(R.string.Intercept_text) + name, this.mContext.getString(R.string.Intercept_text).length(), this.mContext.getString(R.string.Intercept_text).length() + name.length(), this.mContext.getResources().getColor(R.color.green2));
            if (log.logSelected == 1) {
                descriptionByPid = this.mContext.getString(R.string.when_calling) + AppUtil.getDescriptionByPid(this.mContext, Integer.valueOf(log.type).intValue());
            } else {
                descriptionByPid = AppUtil.getDescriptionByPid(this.mContext, Integer.valueOf(log.type).intValue());
            }
            tv_LR_Line2Title.setText(descriptionByPid);
        }
        return parent;
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseFourBox
    public void onClick() {
        enterchargeShield(this.mContext);
    }

    public static void enterchargeShield(Context context) {
        context.startActivity(new Intent(context, ChargeSafeNew.class));
    }

    private String a(SafeLog log) {
        PackageManager pm = this.mContext.getPackageManager();
        try {
            return pm.getApplicationInfo(log.packageName, 0).loadLabel(pm).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return log.appName;
        }
    }
}
