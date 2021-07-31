package com.lenovo.safecenter.HealthCheck;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.HealthCheck.util.HealthStatus;
import com.lenovo.safecenter.HealthCheck.util.HealthViewType;
import com.lenovo.safecenter.HealthCheck.util.ListOrderedMap;
import com.lenovo.safecenter.MainTab.RotateScanHealthScoreView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.HashMap;

public class HealthCheckupActivity extends Activity implements View.OnClickListener {
    public static final int HANDLER_INIT_PROGRESS_BAR = 9;
    public static final int HANDLER_REFRESH_HEALTH_DETAIL = 2;
    public static final int HANDLER_REFRESH_HEALTH_INDETERMINATE_PROGRESS = 6;
    public static final int HANDLER_REFRESH_HEALTH_PROGRESS = 3;
    public static final int HANDLER_REFRESH_HEALTH_SCORE = 0;
    public static final int HANDLER_REFRESH_HEALTH_STATE = 1;
    public static final int HANDLER_SAVE_CHECKTIME = 7;
    public static final int HANDLER_SET_STATE = 8;
    public static final int HANDLER_SHOW_TOAST = 5;
    public static final int HANDLER_STATE_CHANGE = 4;
    private Context a;
    private ListView b;
    private HealthCheckupAdapter c;
    private Handler d = new Handler() {
        /* class com.lenovo.safecenter.HealthCheck.HealthCheckupActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    HealthCheckupActivity.c(HealthCheckupActivity.this);
                    return;
                case 1:
                    ((TextView) HealthCheckupActivity.this.findViewById(R.id.health_state)).setText(String.valueOf(msg.obj));
                    return;
                case 2:
                    HealthCheckupActivity.a(HealthCheckupActivity.this, String.valueOf(msg.obj));
                    return;
                case 3:
                    HealthCheckupActivity.e(HealthCheckupActivity.this);
                    return;
                case 4:
                    HealthCheckupActivity.c(HealthCheckupActivity.this);
                    HealthCheckupActivity.g(HealthCheckupActivity.this);
                    HealthCheckupActivity.h(HealthCheckupActivity.this);
                    HealthCheckupActivity.this.c.refresh();
                    return;
                case 5:
                    Toast.makeText(HealthCheckupActivity.this.getApplicationContext(), (String) msg.obj, 1).show();
                    return;
                case 6:
                    HealthCheckupActivity.this.d();
                    return;
                case 7:
                    HealthCheckupActivity.this.f();
                    return;
                case 8:
                default:
                    return;
                case 9:
                    HealthCheckupActivity.this.e.setMax(HealthCheckupActivity.this.j);
                    return;
            }
        }
    };
    private ProgressBar e;
    private HealthManager f;
    private int g;
    private int h;
    private int i;
    private int j;
    private HashMap<Integer, String> k = null;
    private HashMap<Integer, String> l = null;
    private HealthCheckCallback m = new HealthCheckCallback() {
        /* class com.lenovo.safecenter.HealthCheck.HealthCheckupActivity.AnonymousClass2 */

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void setProgressBarIndeterminate(boolean isIndeterminate) {
            if (isIndeterminate) {
                HealthCheckupActivity healthCheckupActivity = HealthCheckupActivity.this;
                HealthCheckupActivity.a(6, null, HealthCheckupActivity.this.d);
                return;
            }
            HealthCheckupActivity healthCheckupActivity2 = HealthCheckupActivity.this;
            HealthCheckupActivity.a(3, null, HealthCheckupActivity.this.d);
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onProgressChanged(int progress) {
            HealthCheckupActivity.this.i = progress;
            HealthCheckupActivity healthCheckupActivity = HealthCheckupActivity.this;
            HealthCheckupActivity.a(3, null, HealthCheckupActivity.this.d);
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onScoreChanged(int score) {
            HealthCheckupActivity.this.h = score;
            HealthCheckupActivity healthCheckupActivity = HealthCheckupActivity.this;
            HealthCheckupActivity.a(0, null, HealthCheckupActivity.this.d);
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onStatusChanged(int statusId) {
            HealthCheckupActivity.this.g = statusId;
            HealthCheckupActivity healthCheckupActivity = HealthCheckupActivity.this;
            HealthCheckupActivity.a(4, null, HealthCheckupActivity.this.d);
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onStarted(int maxProgress, int action) {
            Log.i("wu0wu", "onStarted action=" + action);
            HealthCheckupActivity.this.j = maxProgress;
            HealthCheckupActivity healthCheckupActivity = HealthCheckupActivity.this;
            HealthCheckupActivity.a(9, null, HealthCheckupActivity.this.d);
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onOneItemProcess(HealthItemResult result) {
            if (result != null) {
                if (!TextUtils.isEmpty(result.title)) {
                    HealthCheckupActivity healthCheckupActivity = HealthCheckupActivity.this;
                    HealthCheckupActivity.a(1, result.title, HealthCheckupActivity.this.d);
                }
                if (!TextUtils.isEmpty(result.title_detail)) {
                    HealthCheckupActivity healthCheckupActivity2 = HealthCheckupActivity.this;
                    HealthCheckupActivity.a(2, result.title_detail, HealthCheckupActivity.this.d);
                }
            }
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onResult(HealthItemResult result) {
            if (result != null) {
                HealthCheckupActivity.this.c.addData(result);
            }
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onFinished(int action) {
            Log.i("wu0wu", "onScanFinished action=" + action);
        }
    };

    static /* synthetic */ void a(int x1, Object x2, Handler x3) {
        if (x3 != null) {
            Message message = new Message();
            message.what = x1;
            message.obj = x2;
            x3.sendMessage(message);
        }
    }

    static /* synthetic */ void a(HealthCheckupActivity x0, String x1) {
        TextView textView = (TextView) x0.findViewById(R.id.health_detail);
        textView.setVisibility(0);
        textView.setText(x1);
    }

    static /* synthetic */ void c(HealthCheckupActivity x0) {
        ((RotateScanHealthScoreView) x0.findViewById(R.id.health_score_ring)).refreshHealthScore(x0.h);
    }

    static /* synthetic */ void e(HealthCheckupActivity x0) {
        int i2 = 100;
        TextView textView = (TextView) x0.findViewById(R.id.percent_progress);
        switch (x0.g) {
            case 0:
            case 4:
                x0.e.setIndeterminate(false);
                x0.e.setProgress(x0.i);
                int i3 = (x0.i * 100) / x0.j;
                WflUtils.Log("d", "wu0wu", "mScanProgress=" + x0.i + ",MAX_PROGRESS=" + x0.j);
                if (i3 <= 100) {
                    i2 = i3;
                }
                textView.setText(i2 + "%");
                return;
            case 1:
            case 3:
            default:
                return;
            case 2:
                x0.d();
                return;
        }
    }

    static /* synthetic */ void g(HealthCheckupActivity x0) {
        View findViewById = x0.findViewById(R.id.scaning_progress_layout);
        View findViewById2 = x0.findViewById(R.id.can_Optimization_layout);
        View findViewById3 = x0.findViewById(R.id.pause_layout);
        View findViewById4 = x0.findViewById(R.id.button_done);
        switch (x0.g) {
            case 0:
                findViewById.setVisibility(0);
                findViewById2.setVisibility(8);
                findViewById4.setVisibility(8);
                findViewById3.setVisibility(8);
                return;
            case 1:
                findViewById.setVisibility(8);
                findViewById2.setVisibility(0);
                findViewById4.setVisibility(8);
                findViewById3.setVisibility(8);
                return;
            case 2:
                findViewById.setVisibility(0);
                findViewById2.setVisibility(8);
                findViewById4.setVisibility(8);
                findViewById3.setVisibility(8);
                return;
            case 3:
                findViewById.setVisibility(8);
                findViewById2.setVisibility(8);
                findViewById4.setVisibility(0);
                findViewById3.setVisibility(8);
                return;
            case 4:
                findViewById.setVisibility(8);
                findViewById2.setVisibility(8);
                findViewById4.setVisibility(8);
                findViewById3.setVisibility(0);
                return;
            default:
                return;
        }
    }

    static /* synthetic */ void h(HealthCheckupActivity x0) {
        TextView textView = (TextView) x0.findViewById(R.id.health_state);
        switch (x0.g) {
            case 0:
                textView.setText(x0.k.get(0));
                x0.a();
                return;
            case 1:
                x0.b();
                x0.c();
                return;
            case 2:
                x0.a();
                textView.setText(x0.k.get(2));
                return;
            case 3:
                x0.f();
                x0.c();
                x0.b();
                return;
            case 4:
                x0.b();
                textView.setText(x0.k.get(4));
                return;
            default:
                return;
        }
    }

    static /* synthetic */ void k(HealthCheckupActivity x0) {
        x0.f.exit();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.i("wu0wu", "HealthCheckupActivity onCreate...");
        this.a = this;
        setContentView(R.layout.activity_health_checkup_layout);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.health_checkup);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.HealthCheck.HealthCheckupActivity.AnonymousClass3 */

            public final void onClick(View v) {
                HealthCheckupActivity.k(HealthCheckupActivity.this);
                HealthCheckupActivity.this.finish();
            }
        });
        this.k = HealthStatus.getStatus(this.a);
        this.l = HealthViewType.getViewTypes(this.a);
        Const.isHealthCheckNoOptimiza(true);
        if (WflUtils.isRoot()) {
            TrackEvent.reportRootEnable();
        }
        this.f = new HealthManager(this.a, false);
        this.b = (ListView) findViewById(R.id.health_scan_list);
        this.c = new HealthCheckupAdapter(this);
        this.b.setDivider(null);
        this.b.setAdapter((ListAdapter) this.c);
        ((TextView) findViewById(R.id.button_Optimization)).setOnClickListener(this);
        ((TextView) findViewById(R.id.button_back_from_pause)).setOnClickListener(this);
        ((TextView) findViewById(R.id.button_done)).setOnClickListener(this);
        ((TextView) findViewById(R.id.button_cancel)).setOnClickListener(this);
        ((TextView) findViewById(R.id.button_continue_Optimization)).setOnClickListener(this);
        this.e = (ProgressBar) findViewById(R.id.scan_progressBar);
        this.f.scan(this.m);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.f.setItemsManual();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (4 != keyCode) {
            return super.onKeyDown(keyCode, event);
        }
        this.f.exit();
        if (!isFinishing()) {
            finish();
        }
        return true;
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.button_cancel /*{ENCODED_INT: 2131296326}*/:
                if (this.g == 2) {
                    this.f.setStatus(4);
                    return;
                } else if (this.g == 0) {
                    TrackEvent.reportUserActionCancelHealthCheck();
                    this.f.exit();
                    finish();
                    return;
                } else {
                    return;
                }
            case R.id.can_Optimization_layout /*{ENCODED_INT: 2131296327}*/:
            case R.id.pause_layout /*{ENCODED_INT: 2131296329}*/:
            default:
                return;
            case R.id.button_Optimization /*{ENCODED_INT: 2131296328}*/:
                e();
                TrackEvent.reportUserActionHealthOptimizeImmediately();
                return;
            case R.id.button_continue_Optimization /*{ENCODED_INT: 2131296330}*/:
                e();
                return;
            case R.id.button_back_from_pause /*{ENCODED_INT: 2131296331}*/:
            case R.id.button_done /*{ENCODED_INT: 2131296332}*/:
                this.f.exit();
                finish();
                return;
        }
    }

    private void a() {
        ((RotateScanHealthScoreView) findViewById(R.id.health_score_ring)).beginAnim();
    }

    private void b() {
        ((RotateScanHealthScoreView) findViewById(R.id.health_score_ring)).stopAnim();
    }

    private void c() {
        SpannableString spannable = null;
        if (this.g != 3) {
            int canOptimizationItemNum = this.f.getNumCanOptimizationItem() + this.f.getNumDangerItem();
            spannable = new SpannableString(String.format(getString(R.string.optimization_datail_num_item), Integer.valueOf(canOptimizationItemNum)));
            spannable.setSpan(new AbsoluteSizeSpan(20, true), 0, String.valueOf(canOptimizationItemNum).length() + 0, 33);
            spannable.setSpan(new ForegroundColorSpan(-65536), 0, String.valueOf(canOptimizationItemNum).length() + 0, 0);
        }
        if (this.h >= 100) {
            a(getString(R.string.optimization_datail_all_safe_item));
            ((TextView) findViewById(R.id.health_detail)).setVisibility(8);
        } else if (this.h >= 76 && this.h <= 99) {
            a(getString(R.string.can_optimization76_99));
            a(spannable);
        } else if (this.h < 60 || this.h > 75) {
            a(getString(R.string.can_optimization59));
            a(spannable);
        } else {
            a(getString(R.string.can_optimization60_75));
            a(spannable);
        }
    }

    private void a(String datail) {
        ((TextView) findViewById(R.id.health_state)).setText(datail);
    }

    private void a(SpannableString datail) {
        TextView healthDetail = (TextView) findViewById(R.id.health_detail);
        healthDetail.setVisibility(0);
        healthDetail.setText(datail);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void d() {
        ((TextView) findViewById(R.id.percent_progress)).setVisibility(8);
        this.e.setIndeterminate(true);
    }

    private void e() {
        this.f.optimize(null);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void f() {
        Const.isHealthCheckNoOptimiza(false);
        WflUtils.Log("i", "wu0wu", "HealthCheckup saveHealthScoreAndCheckupTime...");
        int score = this.h;
        if (this.h > 100) {
            score = 100;
        } else if (this.h < 0) {
            score = 0;
        }
        Const.setHealthCheckupScore(score);
        Const.setHealthCheckupTime(System.currentTimeMillis());
        if (Const.isFirstHealthCheckup()) {
            Const.setFirstHealthCheckup();
        }
    }

    public class HealthCheckupAdapter extends BaseAdapter {
        private ListOrderedMap b;
        private LayoutInflater c;
        private Handler d = new Handler() {
            /* class com.lenovo.safecenter.HealthCheck.HealthCheckupActivity.HealthCheckupAdapter.AnonymousClass1 */

            public final void handleMessage(Message msg) {
                switch (msg.what) {
                    case 0:
                        HealthCheckupAdapter.this.notifyDataSetChanged();
                        return;
                    case 1:
                        HealthItemResult pushItem = (HealthItemResult) msg.obj;
                        HealthCheckupAdapter.this.b.put(pushItem.key, pushItem);
                        if (pushItem.view_type != 0) {
                            HealthCheckupAdapter.b(HealthCheckupAdapter.this);
                        }
                        HealthCheckupAdapter.this.notifyDataSetChanged();
                        return;
                    case 2:
                        HealthCheckupAdapter.this.b.remove(((Integer) msg.obj).intValue());
                        HealthCheckupAdapter.this.notifyDataSetChanged();
                        return;
                    default:
                        return;
                }
            }
        };

        static /* synthetic */ void b(HealthCheckupAdapter x0) {
            int numDangerItem = HealthCheckupActivity.this.f.getNumDangerItem();
            int numManualItem = HealthCheckupActivity.this.f.getNumManualItem();
            int numCanOptimizationItem = HealthCheckupActivity.this.f.getNumCanOptimizationItem();
            int numSafeItem = HealthCheckupActivity.this.f.getNumSafeItem();
            int numHasOptimizationItem = HealthCheckupActivity.this.f.getNumHasOptimizationItem();
            if (numDangerItem == 0) {
                x0.a(2, (Object) 22);
            } else {
                HealthItemResult healthItemResult = new HealthItemResult();
                healthItemResult.view_type = 0;
                healthItemResult.weight = 0;
                healthItemResult.key = 22;
                healthItemResult.content = ((String) HealthCheckupActivity.this.l.get(1)) + "(" + numDangerItem + ")";
                x0.a(1, healthItemResult);
            }
            if (numManualItem == 0) {
                x0.a(2, (Object) 23);
            } else {
                HealthItemResult healthItemResult2 = new HealthItemResult();
                healthItemResult2.view_type = 0;
                healthItemResult2.weight = 4;
                healthItemResult2.key = 23;
                healthItemResult2.content = ((String) HealthCheckupActivity.this.l.get(3)) + "(" + numManualItem + ")";
                x0.a(1, healthItemResult2);
            }
            if (numCanOptimizationItem == 0) {
                x0.a(2, (Object) 24);
            } else {
                HealthItemResult healthItemResult3 = new HealthItemResult();
                healthItemResult3.view_type = 0;
                healthItemResult3.weight = 2;
                healthItemResult3.key = 24;
                healthItemResult3.content = ((String) HealthCheckupActivity.this.l.get(2)) + "(" + numCanOptimizationItem + ")";
                x0.a(1, healthItemResult3);
            }
            if (numHasOptimizationItem == 0) {
                x0.a(2, (Object) 25);
            } else {
                HealthItemResult healthItemResult4 = new HealthItemResult();
                healthItemResult4.view_type = 0;
                healthItemResult4.weight = 6;
                healthItemResult4.key = 25;
                healthItemResult4.content = ((String) HealthCheckupActivity.this.l.get(4)) + "(" + numHasOptimizationItem + ")";
                x0.a(1, healthItemResult4);
            }
            if (numSafeItem == 0) {
                x0.a(2, (Object) 26);
                return;
            }
            HealthItemResult healthItemResult5 = new HealthItemResult();
            healthItemResult5.view_type = 0;
            healthItemResult5.weight = 8;
            healthItemResult5.key = 26;
            healthItemResult5.content = ((String) HealthCheckupActivity.this.l.get(5)) + "(" + numSafeItem + ")";
            x0.a(1, healthItemResult5);
        }

        public HealthCheckupAdapter(Context context) {
            this.c = (LayoutInflater) context.getSystemService("layout_inflater");
            if (this.b == null) {
                this.b = new ListOrderedMap();
            }
        }

        public void refresh() {
            this.d.sendEmptyMessage(0);
        }

        public int getCount() {
            if (this.b == null) {
                return 0;
            }
            return this.b.size();
        }

        public Object getItem(int position) {
            if (this.b == null || position >= getCount()) {
                return null;
            }
            return this.b.getValueByIndex(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public void addData(HealthItemResult newData) {
            if (newData != null) {
                a(1, newData);
            }
        }

        private void a(int what, Object obj) {
            Message msg = new Message();
            msg.what = what;
            msg.obj = obj;
            this.d.sendMessage(msg);
        }

        public boolean isEnabled(int position) {
            return false;
        }

        public int getItemViewType(int position) {
            HealthItemResult item = this.b.getValueByIndex(position);
            if (item.view_type == 0) {
                return 1;
            }
            if (item.view_type == 3) {
                return 2;
            }
            return 0;
        }

        public int getViewTypeCount() {
            return 3;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            View v;
            View[] viewArr;
            int viewType = this.b.getValueByIndex(position).view_type;
            if (convertView == null) {
                if (viewType == 0) {
                    v = this.c.inflate(R.layout.health_list_title, parent, false);
                    viewArr = new View[]{v.findViewById(R.id.title)};
                } else if (viewType == 3) {
                    v = this.c.inflate(R.layout.health_list_item_wide, parent, false);
                    viewArr = new View[]{v.findViewById(R.id.name), v.findViewById(R.id.state), v.findViewById(R.id.detail), v.findViewById(R.id.only_item_tv)};
                } else {
                    v = this.c.inflate(R.layout.health_list_item, parent, false);
                    viewArr = new View[]{v.findViewById(R.id.name), v.findViewById(R.id.state), v.findViewById(R.id.detail), v.findViewById(R.id.only_item_tv)};
                }
                v.setTag(viewArr);
            } else {
                v = convertView;
            }
            final HealthItemResult valueByIndex = this.b.getValueByIndex(position);
            if (valueByIndex != null) {
                View[] viewArr2 = (View[]) v.getTag();
                if (viewType != 0) {
                    ((TextView) viewArr2[0]).setText(valueByIndex.content);
                    LinearLayout linearLayout = (LinearLayout) viewArr2[1];
                    ((LinearLayout) viewArr2[2]).setVisibility(8);
                    switch (valueByIndex.weight) {
                        case 1:
                            a(linearLayout, (int) R.drawable.health_state_red);
                            break;
                        case 3:
                            a(linearLayout, (int) R.drawable.health_state_yellow);
                            break;
                        case 5:
                            if (HealthCheckupActivity.this.g != 0) {
                                String str = valueByIndex.action_description;
                                TextView textView = (TextView) linearLayout.findViewById(R.id.state_btn);
                                ((TextView) linearLayout.findViewById(R.id.state_text)).setVisibility(8);
                                textView.setVisibility(0);
                                textView.setText(str);
                                textView.setBackgroundResource(R.drawable.signbtn_bg);
                                linearLayout.findViewById(R.id.state_btn).setOnClickListener(new View.OnClickListener() {
                                    /* class com.lenovo.safecenter.HealthCheck.HealthCheckupActivity.HealthCheckupAdapter.AnonymousClass2 */

                                    public final void onClick(View v) {
                                        HealthCheckupActivity.this.f.getHealthCheckItemByKey(valueByIndex.key).click();
                                    }
                                });
                            }
                            if (HealthCheckupActivity.this.g == 2) {
                                linearLayout.findViewById(R.id.state_btn).setClickable(false);
                                break;
                            }
                            break;
                        case 7:
                        case 9:
                            a(linearLayout, (int) R.drawable.health_state_ok);
                            break;
                    }
                } else {
                    TextView textView2 = (TextView) viewArr2[0];
                    if (valueByIndex.weight == 0) {
                        textView2.setTextColor(HealthCheckupActivity.this.getResources().getColor(R.color.red1));
                    } else if (valueByIndex.weight == 8) {
                        textView2.setTextColor(HealthCheckupActivity.this.getResources().getColor(R.color.green4));
                    } else if (valueByIndex.weight == 6) {
                        textView2.setTextColor(HealthCheckupActivity.this.getResources().getColor(R.color.green4));
                    } else if (valueByIndex.weight == 4) {
                        textView2.setTextColor(HealthCheckupActivity.this.getResources().getColor(R.color.blue1));
                    } else {
                        textView2.setTextColor(HealthCheckupActivity.this.getResources().getColor(R.color.orange1));
                    }
                    ((TextView) viewArr2[0]).setText(valueByIndex.content);
                }
            }
            return v;
        }

        private static void a(View view, int resId) {
            ((TextView) view.findViewById(R.id.state_text)).setBackgroundResource(resId);
            ((TextView) view.findViewById(R.id.state_btn)).setVisibility(8);
        }
    }
}
