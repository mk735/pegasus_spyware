package com.lenovo.safecenter.floatwindow.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.safecenter.R;

public class SwitcherItemView extends LinearLayout {
    private ImageView a = ((ImageView) findViewById(R.id.switch_icon));
    private TextView b = ((TextView) findViewById(R.id.switch_label));
    private Context c;

    public SwitcherItemView(Context context, AttributeSet paramAttributeSet) {
        super(context, paramAttributeSet);
        this.c = context;
        inflate(context, R.layout.assist_switcher_item, this);
        setBackgroundResource(R.drawable.assist_selector_switcher_item_bg);
        setDuplicateParentStateEnabled(false);
        setOrientation(1);
        setGravity(17);
        setClickable(true);
        if (paramAttributeSet != null) {
            TypedArray typedArray = context.obtainStyledAttributes(paramAttributeSet, R.styleable.switcher);
            this.b.setText(typedArray.getString(1));
            this.a.setImageResource(typedArray.getResourceId(0, -1));
            typedArray.recycle();
        }
    }

    public void setImage(int drawableId) {
        this.a.setImageResource(drawableId);
    }

    public void setLabelColor(int drawableId) {
        this.b.setTextColor(drawableId);
    }
}
