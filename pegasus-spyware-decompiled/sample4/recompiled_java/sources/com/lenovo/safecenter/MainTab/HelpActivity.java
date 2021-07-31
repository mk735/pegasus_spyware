package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.URLSpan;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.notificationintercept.InterceptUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;

public class HelpActivity extends Activity implements OnViewChangeListener {
    static boolean a = false;
    private MyScrollLayout b;
    private TextView c;
    private TextView d;
    private TextView e;
    private SharedPreferences f;
    private ImageView[] g;
    private ImageView[] h;
    private Bitmap[] i;
    private int j;
    private int k;
    private LinearLayout l;
    private boolean m = false;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.help_layout);
        this.f = getSharedPreferences("antitheft", 0);
        this.m = this.f.getBoolean("frommain", false);
        try {
            this.b = (MyScrollLayout) findViewById(R.id.ScrollLayout);
            this.j = this.b.getChildCount();
            this.i = new Bitmap[this.j];
            this.h = new ImageView[this.j];
            this.i[0] = WflUtils.readBitmap(this, R.drawable.help1);
            this.h[0] = (ImageView) findViewById(R.id.help1_img);
            this.h[0].setImageBitmap(this.i[0]);
            this.l = (LinearLayout) findViewById(R.id.llayout);
            this.c = (TextView) findViewById(R.id.startBtn);
            this.d = (TextView) findViewById(R.id.skip_Btn);
            this.e = (TextView) findViewById(R.id.help5_text3);
            String help5 = getString(R.string.help5_tv3) + getString(R.string.permission_server) + getString(R.string.help5_tv4) + getString(R.string.permission_contract) + getString(R.string.help5_tv5);
            SpannableString ss = new SpannableString(help5);
            Log.i("ydp", " " + getString(R.string.help5_tv3).length() + " " + (getString(R.string.help5_tv3).length() + getString(R.string.permission_server).length()) + "  " + help5.indexOf(getString(R.string.permission_contract)) + "  " + (help5.indexOf(getString(R.string.permission_contract)) + getString(R.string.permission_contract).length()));
            ss.setSpan(new URLSpan("http://safe.lenovo.com/new/safeMobile/permission.html"), getString(R.string.help5_tv3).length(), getString(R.string.help5_tv3).length() + getString(R.string.permission_server).length(), 33);
            ss.setSpan(new ForegroundColorSpan(-16150038), getString(R.string.help5_tv3).length(), getString(R.string.help5_tv3).length() + getString(R.string.permission_server).length(), 33);
            ss.setSpan(new URLSpan("http://safe.lenovo.com/new/safeMobile/contract.html"), help5.indexOf(getString(R.string.permission_contract)), help5.indexOf(getString(R.string.permission_contract)) + getString(R.string.permission_contract).length(), 33);
            ss.setSpan(new ForegroundColorSpan(-16150038), help5.indexOf(getString(R.string.permission_contract)), help5.indexOf(getString(R.string.permission_contract)) + getString(R.string.permission_contract).length(), 33);
            Log.i("ydp", "help5:" + this.e + "  ss:" + ((Object) ss));
            this.e.setText(ss);
            this.e.setMovementMethod(new LinkMovementMethod() {
                /* class com.lenovo.safecenter.MainTab.HelpActivity.AnonymousClass1 */

                public final boolean onTouchEvent(TextView widget, Spannable buffer, MotionEvent event) {
                    int action = event.getAction();
                    if (action == 1 || action == 0) {
                        int x = (int) event.getX();
                        int y = (int) event.getY();
                        int x2 = x - widget.getTotalPaddingLeft();
                        int y2 = y - widget.getTotalPaddingTop();
                        int x3 = x2 + widget.getScrollX();
                        Layout layout = widget.getLayout();
                        int off = layout.getOffsetForHorizontal(layout.getLineForVertical(y2 + widget.getScrollY()), (float) x3);
                        ClickableSpan[] link = (ClickableSpan[]) buffer.getSpans(off, off, ClickableSpan.class);
                        if (link.length != 0) {
                            if (action == 1) {
                                try {
                                    Uri uri = Uri.parse(((URLSpan) link[0]).getURL());
                                    Context context = widget.getContext();
                                    Intent intent = new Intent("android.intent.action.VIEW", uri);
                                    intent.putExtra("com.android.browser.application_id", context.getPackageName());
                                    context.startActivity(intent);
                                } catch (Exception e) {
                                    Toast.makeText(HelpActivity.this, (int) R.string.no_browser, 1).show();
                                }
                            } else if (action == 0) {
                                Selection.setSelection(buffer, buffer.getSpanStart(link[0]), buffer.getSpanEnd(link[0]));
                            }
                            return true;
                        }
                        Selection.removeSelection(buffer);
                    }
                    return super.onTouchEvent(widget, buffer, event);
                }
            });
            this.g = new ImageView[this.j];
            for (int i2 = 0; i2 < this.j; i2++) {
                this.g[i2] = (ImageView) this.l.getChildAt(i2);
                this.g[i2].setEnabled(true);
                this.g[i2].setTag(Integer.valueOf(i2));
            }
            this.k = 0;
            this.g[this.k].setEnabled(false);
            this.b.SetOnViewChangeListener(this);
            this.c.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.MainTab.HelpActivity.AnonymousClass2 */

                public final void onClick(View v) {
                    try {
                        if (HelpActivity.this.f.getBoolean("help" + HelpActivity.this.getPackageManager().getPackageInfo(HelpActivity.this.getPackageName(), 0).versionCode, true)) {
                            HelpActivity.this.f.edit().putBoolean("help" + HelpActivity.this.getPackageManager().getPackageInfo(HelpActivity.this.getPackageName(), 0).versionCode, false).commit();
                            HelpActivity.this.startActivity(new Intent(HelpActivity.this, LeSafeMainActivity.class));
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        e.printStackTrace();
                    }
                    InterceptUtils.appInit(HelpActivity.this);
                    HelpActivity.this.finish();
                }
            });
            this.d.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.MainTab.HelpActivity.AnonymousClass3 */

                public final void onClick(View v) {
                    if (!HelpActivity.this.m && HelpActivity.this.b.mCurScreen + 1 < HelpActivity.this.j) {
                        HelpActivity.this.b.snapToScreen(HelpActivity.this.b.mCurScreen + 1);
                    }
                }
            });
        } catch (Exception e2) {
            Log.e("ydp", "load new app error!!!!!");
            Toast.makeText(this, (int) R.string.loading_error, 1).show();
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    @Override // com.lenovo.safecenter.MainTab.OnViewChangeListener
    public void OnViewChange(int position) {
        if (position >= 0 && position <= this.j - 1 && this.k != position) {
            this.g[this.k].setEnabled(true);
            this.g[position].setEnabled(false);
            this.k = position;
            if (position == this.j - 1) {
                this.d.setVisibility(8);
            } else {
                this.d.setVisibility(0);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        this.i[0].recycle();
        super.onDestroy();
    }
}
