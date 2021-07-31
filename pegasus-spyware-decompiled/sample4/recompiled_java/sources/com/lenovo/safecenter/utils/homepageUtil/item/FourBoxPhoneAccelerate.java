package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.Context;
import android.content.Intent;
import android.text.format.Formatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.performancecenter.coreui.util.MemoryTools;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.performance.PhoneAccelerateActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.homepageUtil.BaseFourBox;

public class FourBoxPhoneAccelerate extends BaseFourBox {
    public FourBoxPhoneAccelerate(Context context) {
        super(R.drawable.img_phone_accelerate, context.getString(R.string.phone_acceleration), context);
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseFourBox
    public View getView(View parent) {
        int i;
        TextView tv_LR_Line1Detail = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_up_detail);
        TextView tv_LR_Line2Title = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_down_title);
        ((ImageView) parent.findViewById(R.id.img_icon)).setImageResource(this.idIcon);
        ((TextView) parent.findViewById(R.id.tv_title)).setText(this.mTitle);
        ((ViewGroup) parent.findViewById(R.id.layout_content_twoLine_centerAlign)).setVisibility(8);
        ((ViewGroup) parent.findViewById(R.id.layout_content_twoLine_leftAndRightAlign)).setVisibility(0);
        int percentage = 100 - new MemoryTools().getSystemMeminfo();
        ((TextView) parent.findViewById(R.id.tv_leftAndRightAlign_up_title)).setText(this.mContext.getString(R.string.memory_Surplus));
        tv_LR_Line1Detail.setText(percentage + "%");
        if (System.currentTimeMillis() - Utils.getLastKillTime(this.mContext) < Utils.CLICK_INTERVAL) {
            tv_LR_Line1Detail.setTextColor(this.mContext.getResources().getColor(R.color.green2));
        } else {
            long totalMemory = new MemoryTools().getTotalMemory() * 1024;
            WflUtils.Log("i", "wu0wu", "totalMemory=" + Formatter.formatShortFileSize(this.mContext, totalMemory));
            if (totalMemory > 536870912) {
                WflUtils.Log("i", "wu0wu", "getValueWordingInCritical=30");
                i = 30;
            } else {
                WflUtils.Log("i", "wu0wu", "getValueWordingInCritical=20");
                i = 20;
            }
            if (percentage > i) {
                tv_LR_Line1Detail.setTextColor(this.mContext.getResources().getColor(R.color.green2));
                tv_LR_Line2Title.setText(this.mContext.getString(R.string.can_run_more_fast));
            } else {
                tv_LR_Line1Detail.setTextColor(this.mContext.getResources().getColor(R.color.red1));
                tv_LR_Line2Title.setText(this.mContext.getString(R.string.clear_memory_intime));
            }
        }
        return parent;
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseFourBox
    public void onClick() {
        enterPhoneAccelerate(this.mContext);
    }

    public static void enterPhoneAccelerate(Context context) {
        context.startActivity(new Intent(context, PhoneAccelerateActivity.class));
    }
}
