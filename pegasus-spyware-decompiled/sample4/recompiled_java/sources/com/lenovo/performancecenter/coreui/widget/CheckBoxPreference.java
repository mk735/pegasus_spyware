package com.lenovo.performancecenter.coreui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.lenovo.safecenter.R;

public class CheckBoxPreference extends LinearLayout {
    private boolean a;
    private ImageView b = ((ImageView) findViewById(R.id.preference_child_icon));
    private OnCheckedChangeListener c;

    public interface OnCheckedChangeListener {
        void onCheckedChanged(CheckBoxPreference checkBoxPreference, boolean z);
    }

    public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        this.a = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.buttonCheck).getBoolean(0, true);
        a();
        ((LinearLayout) LayoutInflater.from(paramContext).inflate(R.layout.preference_checkbox, (ViewGroup) this, true)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.performancecenter.coreui.widget.CheckBoxPreference.AnonymousClass1 */

            public final void onClick(View v) {
                if (CheckBoxPreference.this.a) {
                    CheckBoxPreference.this.a = false;
                    CheckBoxPreference.this.b.setBackgroundResource(R.drawable.btn_off);
                } else {
                    CheckBoxPreference.this.a = true;
                    CheckBoxPreference.this.b.setBackgroundResource(R.drawable.btn_on);
                }
                CheckBoxPreference.this.c.onCheckedChanged(CheckBoxPreference.this, CheckBoxPreference.this.a);
            }
        });
    }

    public void setEnableed(boolean flag) {
        this.a = flag;
        a();
    }

    private void a() {
        if (this.a) {
            this.b.setBackgroundResource(R.drawable.btn_on);
        } else {
            this.b.setBackgroundResource(R.drawable.btn_off);
        }
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener listener) {
        this.c = listener;
    }
}
