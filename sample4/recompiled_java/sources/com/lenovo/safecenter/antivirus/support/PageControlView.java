package com.lenovo.safecenter.antivirus.support;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.support.ScrollView;

public class PageControlView extends LinearLayout implements ScrollView.OnScreenChangeListener {
    private Context a;

    public PageControlView(Context context) {
        super(context);
        this.a = context;
    }

    public PageControlView(Context context, AttributeSet attr) {
        super(context, attr);
        this.a = context;
    }

    @Override // com.lenovo.safecenter.antivirus.support.ScrollView.OnScreenChangeListener
    public void screenChange(int currentTab, int totalTab) {
        removeAllViews();
        for (int i = 0; i < totalTab; i++) {
            ImageView iv = new ImageView(this.a);
            iv.setPadding(5, 0, 5, 0);
            if (i == currentTab) {
                iv.setImageResource(R.drawable.action_bar_up_checked);
            } else {
                iv.setImageResource(R.drawable.action_bar_up_normal);
            }
            addView(iv);
        }
    }
}
