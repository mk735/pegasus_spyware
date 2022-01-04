package com.lenovo.safecenter.notificationintercept;

import android.app.Activity;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.notificationintercept.support.InterceptPermission;
import com.lenovo.safecenter.notificationintercept.support.NotiAdBean;
import com.lenovo.safecenter.notificationintercept.support.NotificationDB;
import com.lenovo.safecenter.notificationintercept.support.PermissionDB;
import com.lenovo.safecenter.notificationintercept.support.RecordDB;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NotificationTabActivity extends Activity implements View.OnClickListener, RadioGroup.OnCheckedChangeListener {
    private RadioGroup a;
    private RadioButton b;
    private RadioButton c;
    private TextView d;
    private ImageView e;
    private ImageView f;
    private LayoutInflater g;
    private int h = -1;
    private PackageManager i;
    private ExpandableListView j;
    private TextView k;
    private TextView l;
    private List<c> m = new ArrayList();
    private b n;
    private ProgressDialog o;
    private ToggleButton p;
    private RelativeLayout q;
    private LinearLayout r;
    private TextView s;
    private TextView t;
    private ViewPager u;
    private List<View> v;
    private Handler w = new Handler() {
        /* class com.lenovo.safecenter.notificationintercept.NotificationTabActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    if (msg.getData().getBoolean("replace")) {
                        NotificationTabActivity.this.p.setChecked(!NotificationTabActivity.this.p.isChecked());
                        UrlOptionUtils.writeSwitch(NotificationTabActivity.this, NotificationTabActivity.this.p.isChecked());
                    }
                    if (NotificationTabActivity.this.o != null) {
                        NotificationTabActivity.this.o.dismiss();
                        NotificationTabActivity.this.o = null;
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };

    class e extends PagerAdapter {
        e() {
        }

        @Override // android.support.v4.view.PagerAdapter
        public final void destroyItem(View collection, int position, Object view) {
            if (collection instanceof ViewPager) {
                ((ViewPager) collection).removeView((View) NotificationTabActivity.this.v.get(position));
            }
        }

        @Override // android.support.v4.view.PagerAdapter
        public final void finishUpdate(View arg0) {
        }

        @Override // android.support.v4.view.PagerAdapter
        public final int getCount() {
            return NotificationTabActivity.this.v.size();
        }

        @Override // android.support.v4.view.PagerAdapter
        public final Object instantiateItem(View collection, int position) {
            if (collection instanceof ViewPager) {
                ((ViewPager) collection).addView((View) NotificationTabActivity.this.v.get(position), 0);
            }
            return NotificationTabActivity.this.v.get(position);
        }

        @Override // android.support.v4.view.PagerAdapter
        public final boolean isViewFromObject(View view, Object object) {
            return view == object;
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

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.notification_intercept);
        this.a = (RadioGroup) findViewById(R.id.notification_tab_radiogroup);
        this.a.setOnCheckedChangeListener(this);
        this.b = (RadioButton) findViewById(R.id.notification_permission);
        this.c = (RadioButton) findViewById(R.id.ad_inline);
        this.u = (ViewPager) findViewById(R.id.intercept_viewpager);
        this.g = (LayoutInflater) getSystemService("layout_inflater");
        View notiView = this.g.inflate(R.layout.notification_intercept_noti_tab, (ViewGroup) null);
        View adView = this.g.inflate(R.layout.notification_intercept_ad_tab, (ViewGroup) null);
        this.v = new ArrayList();
        this.v.add(notiView);
        this.v.add(adView);
        this.u.setAdapter(new e());
        this.u.setOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() {
            /* class com.lenovo.safecenter.notificationintercept.NotificationTabActivity.AnonymousClass2 */

            @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageSelected(int position) {
                if (position == 0) {
                    NotificationTabActivity.this.b.setChecked(true);
                } else {
                    NotificationTabActivity.this.c.setChecked(true);
                }
            }
        });
        this.d = (TextView) findViewById(R.id.txt_title);
        this.e = (ImageView) findViewById(R.id.title_back);
        this.f = (ImageView) findViewById(R.id.title_set);
        this.f.setVisibility(0);
        this.e.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.d.setText(getString(R.string.adv_setting));
        this.k = (TextView) findViewById(R.id.show_root_info);
        this.l = (TextView) findViewById(R.id.show_root_info_select);
        this.j = (ExpandableListView) notiView.findViewById(R.id.expandListView_intercept);
        this.t = (TextView) notiView.findViewById(R.id.text_record_new);
        notiView.findViewById(R.id.layout_record_skip).setOnClickListener(this);
        this.r = (LinearLayout) notiView.findViewById(R.id.empty_linearlayout);
        this.p = (ToggleButton) adView.findViewById(R.id.intercept_app_add_switch);
        this.q = (RelativeLayout) adView.findViewById(R.id.ad_intercept_switch_layout);
        this.q.setOnClickListener(this);
        this.p.setChecked(UrlOptionUtils.isAdOpen(this));
        this.s = (TextView) adView.findViewById(R.id.show_proxy_tip);
        this.i = getPackageManager();
        Utils.isPerfRoot = WflUtils.isRoot();
        if (!Utils.isPerfRoot) {
            this.k.setVisibility(0);
            this.k.setText(getString(R.string.notification_need_root));
            this.r.setVisibility(0);
            this.j.setVisibility(8);
            this.t.setVisibility(8);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
        if (Utils.isPerfRoot) {
            Intent intent = getIntent();
            if (!(intent == null || intent.getStringExtra("tab") == null)) {
                ((NotificationManager) getSystemService(DatabaseTables.LOG_NOTIFICATION)).cancel(InterceptUtils.NOTIFY_ID);
            }
            a();
            this.n = new b();
            this.j.setAdapter(this.n);
            this.j.setGroupIndicator(null);
            this.j.setOnGroupExpandListener(new ExpandableListView.OnGroupExpandListener() {
                /* class com.lenovo.safecenter.notificationintercept.NotificationTabActivity.AnonymousClass3 */

                public final void onGroupExpand(int groupPosition) {
                    if (groupPosition == NotificationTabActivity.this.m.size() - 1) {
                        NotificationTabActivity.this.j.setTranscriptMode(2);
                    } else {
                        NotificationTabActivity.this.j.setTranscriptMode(0);
                    }
                    if (!(NotificationTabActivity.this.h == -1 || NotificationTabActivity.this.h == groupPosition)) {
                        NotificationTabActivity.this.j.collapseGroup(NotificationTabActivity.this.h);
                    }
                    NotificationTabActivity.this.h = groupPosition;
                }
            });
            new RecordDB(this).closeDatabase();
            int i2 = PreferenceManager.getDefaultSharedPreferences(this).getInt(InterceptUtils.INTERCEPT_NEW_COUNT, 0);
            if (i2 > 0) {
                this.t.setVisibility(0);
                if (i2 < 100) {
                    this.t.setText(i2 + "");
                } else {
                    this.t.setText("99+");
                }
            } else {
                this.t.setVisibility(8);
            }
            if (isApnProxySet(this)) {
                this.s.setVisibility(0);
            } else {
                this.s.setVisibility(8);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    private void a() {
        this.m.clear();
        List<c> allowList = new ArrayList<>();
        List<c> forbidList = new ArrayList<>();
        List<PackageInfo> packages = this.i.getInstalledPackages(0);
        PermissionDB permissionDB = new PermissionDB(this);
        List<InterceptPermission> findAll = permissionDB.findAll();
        permissionDB.closeDatabase();
        NotificationDB db = new NotificationDB(this);
        List<NotiAdBean> adBeans = db.findAll();
        db.closeDatabase();
        for (int i2 = 0; i2 < findAll.size(); i2++) {
            InterceptPermission interceptPermission = findAll.get(i2);
            c bean = new c();
            String pkgname = interceptPermission.pkgname;
            String applicationLabel = "";
            try {
                Drawable applicationIcon = this.i.getApplicationIcon(pkgname);
                try {
                    Iterator i$ = packages.iterator();
                    while (true) {
                        if (!i$.hasNext()) {
                            break;
                        }
                        ApplicationInfo ai = i$.next().applicationInfo;
                        if (pkgname.equals(ai.packageName)) {
                            applicationLabel = ai.loadLabel(this.i).toString();
                            break;
                        }
                    }
                } catch (Exception e2) {
                }
                bean.b = applicationIcon;
                bean.d = applicationLabel;
                bean.c = interceptPermission.permission;
                bean.e = interceptPermission.pkgname;
                bean.a = interceptPermission._id;
                boolean pushAd = false;
                Iterator i$2 = adBeans.iterator();
                while (true) {
                    if (i$2.hasNext()) {
                        if (i$2.next().getPkgName().equals(interceptPermission.pkgname)) {
                            pushAd = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                bean.f = pushAd;
                if (bean.c == 1) {
                    allowList.add(bean);
                } else {
                    forbidList.add(bean);
                }
            } catch (PackageManager.NameNotFoundException e3) {
                e3.printStackTrace();
            }
        }
        this.m.addAll(allowList);
        this.m.addAll(forbidList);
        if (this.m.size() == 0) {
            this.r.setVisibility(0);
            this.j.setVisibility(8);
            return;
        }
        this.r.setVisibility(8);
        this.j.setVisibility(0);
    }

    /* access modifiers changed from: package-private */
    public class c {
        public int a;
        public Drawable b;
        public int c;
        public String d;
        public String e;
        public boolean f;

        c() {
        }
    }

    class b extends BaseExpandableListAdapter {
        public b() {
            NotificationTabActivity.this.g = (LayoutInflater) NotificationTabActivity.this.getSystemService("layout_inflater");
        }

        public final Object getChild(int groupPosition, int childPosition) {
            return null;
        }

        public final long getChildId(int groupPosition, int childPosition) {
            return (long) childPosition;
        }

        public final View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
            a childHolder;
            if (convertView == null) {
                childHolder = new a();
                convertView = NotificationTabActivity.this.g.inflate(R.layout.notification_expand_child, (ViewGroup) null);
                childHolder.a = (Button) convertView.findViewById(R.id.notification_slide_left);
                childHolder.b = (Button) convertView.findViewById(R.id.notification_slide_center);
                childHolder.c = (Button) convertView.findViewById(R.id.notification_slide_right);
                convertView.setTag(childHolder);
            } else {
                childHolder = (a) convertView.getTag();
            }
            childHolder.a.setOnClickListener(NotificationTabActivity.this);
            childHolder.b.setOnClickListener(NotificationTabActivity.this);
            childHolder.c.setOnClickListener(NotificationTabActivity.this);
            return convertView;
        }

        public final int getChildrenCount(int groupPosition) {
            return 1;
        }

        public final Object getGroup(int groupPosition) {
            return NotificationTabActivity.this.m.get(groupPosition);
        }

        public final int getGroupCount() {
            return NotificationTabActivity.this.m.size();
        }

        public final long getGroupId(int groupPosition) {
            return (long) groupPosition;
        }

        public final View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
            d groupHolder;
            if (convertView == null) {
                groupHolder = new d();
                convertView = NotificationTabActivity.this.g.inflate(R.layout.notification_expand_group_permission, (ViewGroup) null);
                groupHolder.a = (ImageView) convertView.findViewById(R.id.app_icon);
                groupHolder.b = (TextView) convertView.findViewById(R.id.app_label);
                groupHolder.c = (TextView) convertView.findViewById(R.id.notification_summary);
                groupHolder.d = (TextView) convertView.findViewById(R.id.notification_perm);
                groupHolder.e = (ImageView) convertView.findViewById(R.id.notificaiton_perm_expand);
                convertView.setTag(groupHolder);
            } else {
                groupHolder = (d) convertView.getTag();
            }
            c notiBean = (c) NotificationTabActivity.this.m.get(groupPosition);
            if (notiBean != null) {
                synchronized (notiBean) {
                    groupHolder.a.setImageDrawable(notiBean.b);
                    groupHolder.b.setText(notiBean.d);
                    if (notiBean.c == 1) {
                        groupHolder.d.setText(NotificationTabActivity.this.getString(R.string.notification_string_allow));
                        groupHolder.d.setTextColor(NotificationTabActivity.this.getResources().getColor(R.color.green_allow));
                    } else if (notiBean.c == 2) {
                        groupHolder.d.setText(NotificationTabActivity.this.getString(R.string.notification_string_forbid));
                        groupHolder.d.setTextColor(NotificationTabActivity.this.getResources().getColor(R.color.red_forbid));
                    } else {
                        groupHolder.d.setText(NotificationTabActivity.this.getString(R.string.notification_string_notify));
                        groupHolder.d.setTextColor(NotificationTabActivity.this.getResources().getColor(R.color.orange_msg));
                    }
                    if (notiBean.f) {
                        groupHolder.c.setText(NotificationTabActivity.this.getString(R.string.notfication_push_ad));
                    } else {
                        groupHolder.c.setText(NotificationTabActivity.this.getString(R.string.notification_permission_summary));
                    }
                }
                if (NotificationTabActivity.this.h != groupPosition) {
                    groupHolder.e.setImageResource(R.drawable.arrow_down);
                } else if (NotificationTabActivity.this.j.isGroupExpanded(groupPosition)) {
                    groupHolder.e.setImageResource(R.drawable.arrow_up);
                } else {
                    groupHolder.e.setImageResource(R.drawable.arrow_down);
                }
            }
            return convertView;
        }

        public final boolean hasStableIds() {
            return false;
        }

        public final boolean isChildSelectable(int groupPosition, int childPosition) {
            return false;
        }
    }

    public void onCheckedChanged(RadioGroup group, int checkedId) {
        switch (checkedId) {
            case R.id.notification_permission:
                this.u.setCurrentItem(0);
                return;
            case R.id.ad_inline:
                this.u.setCurrentItem(1);
                return;
            default:
                return;
        }
    }

    public void onClick(View v2) {
        if (v2.getId() == R.id.title_back) {
            finish();
        } else if (!Utils.isPerfRoot) {
            this.l.setVisibility(0);
            this.k.setVisibility(8);
            this.l.setText(getString(R.string.notification_need_root));
        } else {
            switch (v2.getId()) {
                case R.id.notification_slide_left:
                    c permissionBean = this.m.get(this.h);
                    InterceptUtils.notificationForbid(this, permissionBean.e);
                    this.j.collapseGroup(this.h);
                    a();
                    this.n.notifyDataSetChanged();
                    ScanApplicationInfo.killProcess(this, permissionBean.e);
                    return;
                case R.id.notification_slide_center:
                    InterceptUtils.notificationAllow(this, this.m.get(this.h).e);
                    this.j.collapseGroup(this.h);
                    a();
                    this.n.notifyDataSetChanged();
                    return;
                case R.id.notification_slide_right:
                    startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + this.m.get(this.h).e)));
                    return;
                case R.id.ad_intercept_switch_layout:
                    if (!this.p.isChecked()) {
                        if (this.o == null) {
                            this.o = new ProgressDialog(this);
                            this.o.setMessage(getString(R.string.ads_wait));
                            this.o.setCanceledOnTouchOutside(false);
                            this.o.setCancelable(false);
                            this.o.show();
                        }
                        UrlOptionUtils.replaceURL(this, this.w);
                        return;
                    }
                    UrlOptionUtils.resumeURL(this, this.w);
                    return;
                case R.id.layout_record_skip:
                    startActivity(new Intent(this, NotificationRecordActivity.class));
                    return;
                case R.id.title_set:
                    startActivity(new Intent(this, AdManager.class));
                    return;
                default:
                    return;
            }
        }
    }

    class d {
        public ImageView a;
        public TextView b;
        public TextView c;
        public TextView d;
        public ImageView e;

        d() {
        }
    }

    class a {
        public Button a;
        public Button b;
        public Button c;

        a() {
        }
    }

    public static boolean isApnProxySet(Context context) {
        boolean result = false;
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://telephony/carriers/preferapn"), new String[]{"_id", "name", "proxy"}, null, null, null);
            if (cursor != null) {
                int nameColumn = cursor.getColumnIndex("name");
                int proxyColumn = cursor.getColumnIndex("proxy");
                if (cursor.moveToFirst()) {
                    String name = cursor.getString(nameColumn);
                    String proxy = cursor.getString(proxyColumn);
                    Log.d("yincc", "APN " + name + " has proxy: " + proxy);
                    if (!proxy.matches("\\s*")) {
                        result = true;
                    }
                }
                cursor.close();
            } else {
                Log.d("yincc", "Could not get APN cursor!");
            }
        } catch (Exception e2) {
            Log.e("yincc", "Error on get APN!", e2);
        }
        return result;
    }

    public void onBackPressed() {
        super.onBackPressed();
    }
}
