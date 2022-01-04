package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.AppsManager.PermissionControlNew;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.homepageUtil.BaseFourBox;

public class FourBoxPrivacyShield extends BaseFourBox {
    public FourBoxPrivacyShield(Context context) {
        super(R.drawable.img_privacy_shield, context.getString(R.string.permission_control), context);
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseFourBox
    public View getView(View parent) {
        SafeLog log;
        String descriptionByPid;
        View layoutCenterAlign = parent.findViewById(R.id.layout_content_twoLine_centerAlign);
        View layoutLeftAndRightAlign = parent.findViewById(R.id.layout_content_twoLine_leftAndRightAlign);
        TextView tv_C_Line1Title = (TextView) parent.findViewById(R.id.tv_centerAlign_up);
        TextView tv_C_Line1Detail = (TextView) parent.findViewById(R.id.tv_centerAlign_down);
        TextView tv_LR_Line1Title = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_up_title);
        TextView tv_LR_Line2Title = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_down_title);
        ((ImageView) parent.findViewById(R.id.img_icon)).setImageResource(this.idIcon);
        ((TextView) parent.findViewById(R.id.tv_title)).setText(this.mTitle);
        if (SafeCenterService.privacy_count <= 0 || (log = Const.lastSafeLogs.get(AppDatabase.PERM_TYPE_PRIVCY)) == null) {
            layoutCenterAlign.setVisibility(0);
            layoutLeftAndRightAlign.setVisibility(8);
            tv_C_Line1Title.setText(this.mContext.getString(R.string.detail_privacy_shield));
            tv_C_Line1Detail.setText(this.mContext.getString(R.string.null_text));
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

    private String a(SafeLog log) {
        PackageManager pm = this.mContext.getPackageManager();
        try {
            return pm.getApplicationInfo(log.packageName, 0).loadLabel(pm).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return log.appName;
        }
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseFourBox
    public void onClick() {
        enterPrivacyShield(this.mContext);
    }

    public static void enterPrivacyShield(Context context) {
        context.startActivity(new Intent(context, PermissionControlNew.class));
    }
}
