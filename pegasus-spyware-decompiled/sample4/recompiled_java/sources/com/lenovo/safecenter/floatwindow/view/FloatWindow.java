package com.lenovo.safecenter.floatwindow.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.lenovo.safecenter.MainTab.LeSafeMainActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.data.SaveData;
import com.lenovo.safecenter.support.SecurityService;
import java.util.ArrayList;
import java.util.List;

public class FloatWindow extends FrameLayout implements View.OnClickListener {
    private static int a = -1;
    private static int b = -1;
    public static FloatWindow instanceFloatWindow;
    private Context c = null;
    private View d;
    private WindowManager e = null;
    private WindowManager.LayoutParams f = null;
    private Button g = null;
    private int h = -1;
    private ViewPager i;
    private List<View> j;
    private ImageView[] k;
    private ImageView l;
    private float m;
    private float n;
    private float o;
    private float p;
    private boolean q;
    private boolean r;

    public FloatWindow(Context _context) {
        super(_context);
        this.c = _context;
        if (this.e == null) {
            Context context = this.c;
            Context context2 = this.c;
            this.e = (WindowManager) context.getSystemService("window");
        }
        instanceFloatWindow = this;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = 2003;
        layoutParams.format = -2;
        layoutParams.gravity = 51;
        layoutParams.x = a;
        layoutParams.y = b;
        this.f = layoutParams;
        inflate(this.c, R.layout.assist_float_window, this);
        this.d = findViewById(R.id.root_view);
        setFocusableInTouchMode(true);
        setFocusable(true);
        setOnClickListener(this);
        this.g = (Button) findViewById(R.id.setting);
        this.g.setOnClickListener(this);
        this.l = (ImageView) findViewById(R.id.assist_title);
        this.l.setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.assist_indicator_one);
        ImageView imageView2 = (ImageView) findViewById(R.id.assist_indicator_two);
        this.k = new ImageView[]{imageView, imageView2};
        imageView.setSelected(true);
        imageView2.setSelected(false);
        this.j = new ArrayList();
        this.i = (ViewPager) findViewById(R.id.assist_viewpager);
        this.i.setAdapter(new b());
        this.i.removeAllViews();
        ViewPagerSwitcher viewPagerSwitcher = new ViewPagerSwitcher(_context);
        RecentTaskView recentTaskView = new RecentTaskView(_context);
        recentTaskView.setBackgroundResource(R.drawable.assist_pager_bg);
        this.j.add(viewPagerSwitcher);
        this.j.add(recentTaskView);
        this.i.setOnPageChangeListener(new a(this, (byte) 0));
    }

    public void changeWindowView(int _paramInt) {
        if (this.h != _paramInt) {
            this.h = _paramInt;
            this.e.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.d.setLayoutParams(this.d.getLayoutParams());
            Log.d("windowview", "高：" + this.d.getHeight() + "宽：" + this.d.getWidth());
            SaveData.save_FloatView_width(this.c, this.d.getWidth());
            SaveData.save_FloatView_height(this.c, this.d.getHeight());
            this.d.invalidate();
        }
    }

    public void showFloatWindow() {
        try {
            this.e.addView(this, this.f);
            this.r = SaveData.get_flow_immove_state(this.c);
            if (SecurityService.instance != null) {
                SecurityService.instance.setFlowIsFixed(true);
            }
        } catch (Exception e2) {
            Log.d("animation", "启动动画错误" + e2);
        }
    }

    public void delFloatWindow() {
        try {
            this.e.removeView(this);
            if (SecurityService.instance != null) {
                SecurityService.instance.setFlowIsFixed(this.r);
            }
            if (SwitcherContainerView.receiver != null) {
                SwitcherContainerView.unregisterReceiver();
            }
            Intent intent = new Intent();
            intent.setAction("com.lenovo.safecenter.floatwindow.closewindow");
            this.c.sendBroadcast(intent);
        } catch (Exception e2) {
            Log.d("windowException", "移除窗口时错误");
        }
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.assist_title:
                delFloatWindow();
                Intent intent = new Intent();
                intent.setClass(this.c, LeSafeMainActivity.class);
                intent.setFlags(268435456);
                this.c.startActivity(intent);
                return;
            case R.id.setting:
                delFloatWindow();
                changeWindowView(this.c.getResources().getConfiguration().orientation);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        switch (event.getKeyCode()) {
            case 3:
                delFloatWindow();
                break;
            case 4:
                delFloatWindow();
                break;
        }
        return super.onKeyDown(keyCode, event);
    }

    class b extends PagerAdapter {
        b() {
        }

        @Override // android.support.v4.view.PagerAdapter
        public final void destroyItem(View arg0, int arg1, Object arg2) {
            ((ViewPager) arg0).removeView((View) FloatWindow.this.j.get(arg1));
        }

        @Override // android.support.v4.view.PagerAdapter
        public final void finishUpdate(View arg0) {
        }

        @Override // android.support.v4.view.PagerAdapter
        public final int getCount() {
            return FloatWindow.this.j.size();
        }

        @Override // android.support.v4.view.PagerAdapter
        public final Object instantiateItem(View arg0, int arg1) {
            ((ViewPager) arg0).addView((View) FloatWindow.this.j.get(arg1), 0);
            return FloatWindow.this.j.get(arg1);
        }

        @Override // android.support.v4.view.PagerAdapter
        public final boolean isViewFromObject(View arg0, Object arg1) {
            return arg0 == arg1;
        }

        @Override // android.support.v4.view.PagerAdapter
        public final void restoreState(Parcelable arg0, ClassLoader arg1) {
        }

        @Override // android.support.v4.view.PagerAdapter
        public final Parcelable saveState() {
            return null;
        }

        @Override // android.support.v4.view.PagerAdapter
        public final void startUpdate(View arg0) {
        }
    }

    private class a implements ViewPager.OnPageChangeListener {
        private a() {
        }

        /* synthetic */ a(FloatWindow x0, byte b) {
            this();
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public final void onPageScrollStateChanged(int arg0) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public final void onPageScrolled(int arg0, float arg1, int arg2) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public final void onPageSelected(int arg0) {
            for (int i = 0; i < FloatWindow.this.k.length; i++) {
                FloatWindow.this.k[i].setSelected(false);
            }
            FloatWindow.this.k[arg0].setSelected(true);
        }
    }

    public boolean onTouchEvent(MotionEvent event) {
        this.o = event.getRawX();
        this.p = event.getRawY() - 25.0f;
        if (!this.q) {
            this.m = this.o;
            this.n = this.p;
            this.q = true;
        }
        switch (event.getAction()) {
            case 1:
                this.q = false;
                float f2 = this.m;
                float f3 = this.n;
                Rect rect = new Rect();
                rect.top = this.d.getTop();
                rect.left = this.d.getLeft();
                rect.right = this.d.getRight();
                rect.bottom = this.d.getBottom();
                if (!rect.contains((int) event.getX(), (int) event.getY())) {
                    delFloatWindow();
                    break;
                }
                break;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void onFocusLost() {
        super.onFocusLost();
        if (SwitcherContainerView.screenWindowDel) {
            delFloatWindow();
        }
        SwitcherContainerView.screenWindowDel = true;
    }
}
