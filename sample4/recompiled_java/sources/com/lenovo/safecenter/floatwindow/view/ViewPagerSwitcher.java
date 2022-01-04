package com.lenovo.safecenter.floatwindow.view;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import com.lenovo.safecenter.R;

public class ViewPagerSwitcher extends LinearLayout {
    public static final String PREF_SWITCHER_OR_RUNNING_FLAG = "switcher_or_running_flag";
    public static final String PREF_SWITCHER_SHOW_FLAG = "switcher_windwo_show";
    public static ViewPagerSwitcher instance;
    private View a;
    private View b;
    private View c;
    private View d;
    private SharedPreferences e;
    private Context f;
    private boolean g = true;
    private Animation h = null;
    private Animation i = null;
    private Animation j;
    private Animation k;

    public ViewPagerSwitcher(Context context) {
        super(context);
        instance = this;
        this.f = context;
        setGravity(17);
        setOrientation(1);
        inflate(context, R.layout.assist_page_process, this);
        this.a = findViewById(R.id.running_process_view);
        this.b = findViewById(R.id.switcher_view);
        this.c = findViewById(R.id.process_clear_view);
        this.d = findViewById(R.id.main_container);
        this.h = AnimationUtils.loadAnimation(this.f, R.anim.assist_move_down_in);
        this.i = AnimationUtils.loadAnimation(this.f, R.anim.assist_move_down);
        this.j = AnimationUtils.loadAnimation(this.f, R.anim.assist_move_up_out);
        this.k = AnimationUtils.loadAnimation(this.f, R.anim.assist_move_up);
        this.e = this.f.getSharedPreferences("switcher_or_running_flag", 0);
        this.g = this.e.getBoolean("switcher_windwo_show", true);
        showSwitcherorRunningWindow(this.g, false);
    }

    public void showSwitcherorRunningWindow(boolean SwitcherwindowFlag, boolean fromClick) {
        if (SwitcherwindowFlag) {
            this.b.setVisibility(0);
            this.a.setVisibility(8);
            if (fromClick) {
                this.b.startAnimation(this.h);
                this.a.startAnimation(this.i);
                return;
            }
            return;
        }
        this.a.setVisibility(0);
        this.b.setVisibility(8);
        if (fromClick) {
            this.b.startAnimation(this.j);
            this.a.startAnimation(this.k);
        }
    }
}
