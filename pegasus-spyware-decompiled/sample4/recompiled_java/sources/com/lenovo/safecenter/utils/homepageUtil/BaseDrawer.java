package com.lenovo.safecenter.utils.homepageUtil;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import com.lenovo.safecenter.R;

public abstract class BaseDrawer {
    protected static SharedPreferences mSp;
    protected int idIcon;
    protected Context mContext;
    protected Handler mHandler = new Handler() {
        /* class com.lenovo.safecenter.utils.homepageUtil.BaseDrawer.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ((InputMethodManager) BaseDrawer.this.mContext.getSystemService("input_method")).toggleSoftInput(0, 2);
                    return;
                default:
                    return;
            }
        }
    };
    protected boolean mIsNew = false;
    protected boolean mIsUp;
    protected String mTitle;

    public abstract View getView(View view);

    public abstract void onClick();

    public BaseDrawer(int idIcon2, String title, Context context, boolean isUp) {
        this.idIcon = idIcon2;
        this.mTitle = title;
        this.mContext = context;
        this.mIsUp = isUp;
        mSp = PreferenceManager.getDefaultSharedPreferences(this.mContext);
    }

    public void setBackgroundResource(ViewGroup v) {
        if (this.mIsUp) {
            v.setBackgroundResource(R.drawable.home_page_drawer_up_content_bg_selector);
        } else {
            v.setBackgroundResource(R.drawable.home_page_drawer_down_content_bg_selector);
        }
    }
}
