package com.lenovo.safecenter.lenovoAntiSpam.newview;

import android.app.TabActivity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity;
import com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;

public class WhiteABlackMain extends TabActivity implements View.OnClickListener {
    private TabHost a;
    private GestureDetector b;
    private View.OnTouchListener c;

    public void setTitle(Integer leftImgId, int titleStrId, Integer rightImgId) {
        getWindow().setFeatureInt(7, R.layout.rf_perf_basetitle);
        ((TextView) findViewById(R.id.base_title_center)).setText(titleStrId);
        findViewById(R.id.base_title_center).setOnClickListener(this);
        if (leftImgId != null) {
            findViewById(R.id.base_title_left).setOnClickListener(this);
        } else {
            setLeftImgGone(8);
        }
        if (rightImgId != null) {
            findViewById(R.id.base_title_right).setOnClickListener(this);
        } else {
            setRightImgGone(8);
        }
    }

    public void setLeftImgGone(int gone) {
        findViewById(R.id.base_title_left).setVisibility(gone);
    }

    public void setRightImgGone(int gone) {
        findViewById(R.id.base_title_right).setVisibility(gone);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(7);
        Const.addEntryPrivacySpaceCount();
        setContentView(R.layout.common_tab);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antispammancall, null);
        DataHelpUtils.allActivity.add(this);
        this.a = getTabHost();
        View view = getView(getString(R.string.tab_black), 0, R.drawable.filter_sms_click_img);
        TabHost.TabSpec filterMsgSpec = this.a.newTabSpec("0");
        filterMsgSpec.setIndicator(view);
        Intent filterMsgIntent = new Intent(this, ManLocalBlackActivity.class);
        filterMsgIntent.putExtra("type", 1);
        filterMsgSpec.setContent(filterMsgIntent);
        View view2 = getView(getString(R.string.tab_white), 1, R.drawable.filter_call_click_img);
        TabHost.TabSpec filterCallSpec = this.a.newTabSpec(DatabaseTables.SYSTEM_MARK);
        filterCallSpec.setIndicator(view2);
        filterCallSpec.setContent(new Intent(this, ManLocalWhiteActivity.class));
        this.a.addTab(filterMsgSpec);
        this.a.addTab(filterCallSpec);
        this.a.setOnTabChangedListener(new TabHost.OnTabChangeListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.WhiteABlackMain.AnonymousClass1 */

            public final void onTabChanged(String tabId) {
                int tabID = Integer.valueOf(tabId).intValue();
                for (int i = 0; i < 2; i++) {
                    if (i == tabID) {
                        WhiteABlackMain.this.a.getChildAt(Integer.valueOf(i).intValue());
                        ((TextView) WhiteABlackMain.this.a.getTabWidget().getChildAt(Integer.valueOf(i).intValue()).findViewById(R.id.tab_name)).setTextColor(WhiteABlackMain.this.getResources().getColor(R.color.blue));
                    } else {
                        WhiteABlackMain.this.a.getChildAt(Integer.valueOf(i).intValue());
                        ((TextView) WhiteABlackMain.this.a.getTabWidget().getChildAt(Integer.valueOf(i).intValue()).findViewById(R.id.tab_name)).setTextColor(WhiteABlackMain.this.getResources().getColor(R.color.black4));
                    }
                }
            }
        });
        Integer num = 0;
        ((TextView) this.a.getTabWidget().getChildAt(num.intValue()).findViewById(R.id.tab_name)).setTextColor(getResources().getColor(R.color.black4));
        this.a.setCurrentTab(0);
        this.b = new GestureDetector(new a());
        this.c = new View.OnTouchListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.WhiteABlackMain.AnonymousClass2 */

            public final boolean onTouch(View v, MotionEvent event) {
                if (WhiteABlackMain.this.b.onTouchEvent(event)) {
                    return true;
                }
                return false;
            }
        };
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
    }

    public View getView(String str, int pos, int drawID) {
        View view1 = LayoutInflater.from(this).inflate(R.layout.tadview, (ViewGroup) null);
        TextView txtnumber = (TextView) view1.findViewById(R.id.tab_name);
        ImageView tab_img = (ImageView) view1.findViewById(R.id.tab_img);
        View img = view1.findViewById(R.id.div1);
        Log.i("ss", "img==" + img);
        img.setVisibility(8);
        if (pos == 1) {
            img.setVisibility(8);
        } else {
            img.setVisibility(0);
        }
        txtnumber.setText(str);
        tab_img.setVisibility(8);
        return view1;
    }

    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        public final boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            try {
                if (Math.abs(e1.getY() - e2.getY()) <= 250.0f) {
                    if (e1.getX() - e2.getX() > 120.0f && Math.abs(velocityX) > 200.0f && WhiteABlackMain.this.a.getCurrentTab() == 0) {
                        Log.i("test ", "right");
                        WhiteABlackMain.this.a.setCurrentTab(1);
                    } else if (e2.getX() - e1.getX() > 120.0f && Math.abs(velocityX) > 200.0f && WhiteABlackMain.this.a.getCurrentTab() == 1) {
                        Log.i("test ", "left");
                        WhiteABlackMain.this.a.setCurrentTab(0);
                    }
                }
            } catch (Exception e) {
            }
            return false;
        }
    }

    public boolean dispatchTouchEvent(MotionEvent event) {
        if (this.b.onTouchEvent(event)) {
            event.setAction(3);
        }
        return super.dispatchTouchEvent(event);
    }
}
