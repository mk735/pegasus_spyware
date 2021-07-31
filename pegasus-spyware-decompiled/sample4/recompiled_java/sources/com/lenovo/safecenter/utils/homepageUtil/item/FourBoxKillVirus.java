package com.lenovo.safecenter.utils.homepageUtil.item;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.MainActivity;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.antivirus.views.ScanVirusActivity;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.homepageUtil.BaseFourBox;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FourBoxKillVirus extends BaseFourBox {
    public FourBoxKillVirus(Context context) {
        super(R.drawable.img_kill_virus, context.getString(R.string.anti_virus), context);
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseFourBox
    public View getView(View parent) {
        View layoutCenterAlign = parent.findViewById(R.id.layout_content_twoLine_centerAlign);
        View layoutLeftAndRightAlign = parent.findViewById(R.id.layout_content_twoLine_leftAndRightAlign);
        TextView tv_LR_Line1Title = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_up_title);
        TextView tv_LR_Line1Detail = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_up_detail);
        TextView tv_LR_Line2Title = (TextView) parent.findViewById(R.id.tv_leftAndRightAlign_down_title);
        ((ImageView) parent.findViewById(R.id.img_icon)).setImageResource(this.idIcon);
        ((TextView) parent.findViewById(R.id.tv_title)).setText(this.mTitle);
        String scantime = HttpUtils.execService("scantime", this.mContext);
        if (TextUtils.isEmpty(scantime)) {
            layoutLeftAndRightAlign.setVisibility(0);
            layoutCenterAlign.setVisibility(8);
            tv_LR_Line1Title.setText(this.mContext.getString(R.string.nerver_scan_virus));
            a(tv_LR_Line2Title);
        } else {
            layoutCenterAlign.setVisibility(8);
            layoutLeftAndRightAlign.setVisibility(0);
            int interval = a();
            tv_LR_Line1Title.setText(this.mContext.getString(R.string.antiviruslatest_scantime));
            if (interval <= 0) {
                if (!TextUtils.isEmpty(scantime)) {
                    tv_LR_Line1Detail.setText(new SimpleDateFormat("HH:mm").format(new Date(Long.parseLong(scantime))));
                }
            } else if (interval <= 0 || interval > 99) {
                tv_LR_Line1Detail.setText(this.mContext.getString(R.string.nday_ago));
                tv_LR_Line1Detail.setTextColor(this.mContext.getResources().getColor(R.color.red1));
            } else {
                tv_LR_Line1Detail.setText(interval + this.mContext.getString(R.string.today_befor));
                tv_LR_Line1Detail.setTextColor(this.mContext.getResources().getColor(R.color.red1));
            }
            a(tv_LR_Line2Title);
        }
        return parent;
    }

    private void a(TextView tv) {
        String virusState = HttpUtils.execService("virus_state", this.mContext);
        if ("3".equals(virusState)) {
            tv.setText(R.string.virus_lab_updated_newest);
        } else if (DatabaseTables.USER_MARK.equals(virusState)) {
            tv.setText(R.string.please_update_viruslab);
            tv.setTextColor(this.mContext.getResources().getColor(R.color.red1));
        } else {
            try {
                if (new File(this.mContext.getFilesDir() + "/qv_base.amf").exists()) {
                    tv.setText(HttpUtils.getDate(String.valueOf(new File(this.mContext.getFilesDir() + "/qv_base.amf").lastModified())));
                } else {
                    tv.setText("2012-11-13");
                }
            } catch (Exception e) {
                tv.setText("2012-11-13");
            }
        }
    }

    @Override // com.lenovo.safecenter.utils.homepageUtil.BaseFourBox
    public void onClick() {
        enterKillVirus(this.mContext);
    }

    public static void enterKillVirus(Context context) {
        Intent it = new Intent(context, MainActivity.class);
        String execService = HttpUtils.execService("viruspkgname", context);
        int length = TextUtils.isEmpty(execService) ? 0 : execService.split(",").length;
        Log.i("wu0wu", "getVirusCount=" + length);
        if (length > 0) {
            it = new Intent(context, ScanVirusActivity.class);
        }
        context.startActivity(it);
    }

    private int a() {
        try {
            return WflUtils.getDaysNumFromToday(Long.valueOf(HttpUtils.execService("scantime", this.mContext)).longValue());
        } catch (Exception e) {
            return 0;
        }
    }
}
