package com.lenovo.safecenter.utils.homepageUtil;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.View;

public abstract class BaseFourBox {
    protected static SharedPreferences mSp;
    protected int idIcon;
    protected Context mContext;
    protected boolean mIsNew = false;
    protected String mTitle;

    public abstract View getView(View view);

    public abstract void onClick();

    public BaseFourBox(int idIcon2, String title, Context context) {
        this.idIcon = idIcon2;
        this.mTitle = title;
        this.mContext = context;
        mSp = PreferenceManager.getDefaultSharedPreferences(this.mContext);
    }
}
