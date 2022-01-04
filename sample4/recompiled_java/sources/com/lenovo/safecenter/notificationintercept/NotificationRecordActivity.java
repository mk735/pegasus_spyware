package com.lenovo.safecenter.notificationintercept;

import android.app.Activity;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.notificationintercept.support.InterceptPermission;
import com.lenovo.safecenter.notificationintercept.support.InterceptRecord;
import com.lenovo.safecenter.notificationintercept.support.PermissionDB;
import com.lenovo.safecenter.notificationintercept.support.RecordDB;
import com.lenovo.safecenter.utils.TrackEvent;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class NotificationRecordActivity extends Activity implements View.OnClickListener {
    private b a;
    private ExpandableListView b;
    private List<a> c = new ArrayList();
    private PackageManager d;
    private ImageView e;
    private LinearLayout f;
    private RelativeLayout g;
    private int h = -1;
    private TextView i;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.notification_record);
        this.i = (TextView) findViewById(R.id.txt_title);
        findViewById(R.id.title_back).setOnClickListener(this);
        findViewById(R.id.record_clear_all).setOnClickListener(this);
        this.g = (RelativeLayout) findViewById(R.id.record_empty);
        this.f = (LinearLayout) findViewById(R.id.layout_record_clearn);
        this.e = (ImageView) findViewById(R.id.divide_record_clearn);
        this.b = (ExpandableListView) findViewById(R.id.expandListView_record);
        this.d = getPackageManager();
        this.i.setText(getString(R.string.notification_record_intercept));
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
        a();
        this.a = new b();
        this.b.setAdapter(this.a);
        this.b.setGroupIndicator(null);
        this.b.setOnGroupExpandListener(new ExpandableListView.OnGroupExpandListener() {
            /* class com.lenovo.safecenter.notificationintercept.NotificationRecordActivity.AnonymousClass1 */

            public final void onGroupExpand(int groupPosition) {
                if (!(NotificationRecordActivity.this.h == -1 || NotificationRecordActivity.this.h == groupPosition)) {
                    NotificationRecordActivity.this.b.collapseGroup(NotificationRecordActivity.this.h);
                }
                NotificationRecordActivity.this.h = groupPosition;
                if (groupPosition == NotificationRecordActivity.this.c.size() - 1) {
                    NotificationRecordActivity.this.b.setTranscriptMode(2);
                } else {
                    NotificationRecordActivity.this.b.setTranscriptMode(1);
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        edit.putInt(InterceptUtils.INTERCEPT_NEW_COUNT, 0);
        edit.commit();
        super.onPause();
    }

    private void a() {
        Drawable applicationIcon;
        this.c.clear();
        RecordDB recordDB = new RecordDB(this);
        List<InterceptRecord> findAll = recordDB.findAll();
        recordDB.closeDatabase();
        Log.i("yincc", " findAll.size == " + findAll.size());
        for (int i2 = 0; i2 < findAll.size(); i2++) {
            InterceptRecord record = findAll.get(i2);
            a bean = new a();
            bean.a = record.timestamp;
            String pkgname = record.pkgname;
            String applicationLabel = record.applabel;
            try {
                applicationIcon = this.d.getApplicationIcon(pkgname);
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
                Log.e("yincc", " NameNotFoundException !" + pkgname);
                applicationIcon = getResources().getDrawable(R.drawable.icon3);
            }
            bean.b = applicationIcon;
            bean.c = applicationLabel;
            if ("".equals(record.notificationContent)) {
                bean.d = getString(R.string.intercept_record_none);
            } else {
                bean.d = record.notificationContent;
            }
            bean.e = record.pkgname;
            bean.f = record._id;
            bean.g = record.recordPermission;
            this.c.add(bean);
        }
        if (this.c.size() == 0) {
            this.g.setVisibility(0);
            this.f.setVisibility(8);
            this.e.setVisibility(8);
            return;
        }
        this.g.setVisibility(8);
        this.f.setVisibility(0);
        this.e.setVisibility(0);
    }

    class b extends BaseExpandableListAdapter {
        private LayoutInflater b;

        public b() {
            this.b = (LayoutInflater) NotificationRecordActivity.this.getSystemService("layout_inflater");
        }

        public final Object getChild(int groupPosition, int childPosition) {
            return null;
        }

        public final long getChildId(int groupPosition, int childPosition) {
            return (long) childPosition;
        }

        public final View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
            return convertView == null ? this.b.inflate(R.layout.notification_expand_child_record, (ViewGroup) null) : convertView;
        }

        public final int getChildrenCount(int groupPosition) {
            return 1;
        }

        public final Object getGroup(int groupPosition) {
            return NotificationRecordActivity.this.c.get(groupPosition);
        }

        public final int getGroupCount() {
            return NotificationRecordActivity.this.c.size();
        }

        public final long getGroupId(int groupPosition) {
            return (long) groupPosition;
        }

        public final View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
            c groupHolder;
            if (convertView == null) {
                groupHolder = new c();
                convertView = this.b.inflate(R.layout.notification_expand_group_record, (ViewGroup) null);
                groupHolder.a = (ImageView) convertView.findViewById(R.id.app_icon);
                groupHolder.b = (TextView) convertView.findViewById(R.id.app_label);
                groupHolder.c = (TextView) convertView.findViewById(R.id.notification_content_text);
                groupHolder.d = (TextView) convertView.findViewById(R.id.notification_intecept_time);
                groupHolder.e = (TextView) convertView.findViewById(R.id.notification_intecept_permission);
                convertView.setTag(groupHolder);
            } else {
                groupHolder = (c) convertView.getTag();
            }
            a notiBean = (a) NotificationRecordActivity.this.c.get(groupPosition);
            if (notiBean != null) {
                synchronized (notiBean) {
                    groupHolder.a.setImageDrawable(notiBean.b);
                    groupHolder.b.setText(notiBean.c);
                    groupHolder.c.setText(notiBean.d);
                    groupHolder.d.setText(new SimpleDateFormat("HH:mm MM-dd").format(Long.valueOf(notiBean.a)));
                    if (notiBean.g == 1) {
                        groupHolder.e.setText(NotificationRecordActivity.this.getString(R.string.notification_record_allow));
                        groupHolder.e.setTextColor(NotificationRecordActivity.this.getResources().getColor(R.color.green_allow));
                    } else {
                        groupHolder.e.setText(NotificationRecordActivity.this.getString(R.string.notification_record_forbid));
                        groupHolder.e.setTextColor(NotificationRecordActivity.this.getResources().getColor(R.color.red_forbid));
                    }
                    if (NotificationRecordActivity.this.h != groupPosition) {
                        groupHolder.c.setSingleLine(true);
                    } else if (NotificationRecordActivity.this.b.isGroupExpanded(groupPosition)) {
                        groupHolder.c.setSingleLine(false);
                    } else {
                        groupHolder.c.setSingleLine(true);
                    }
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

    /* access modifiers changed from: package-private */
    public class a {
        public long a;
        public Drawable b;
        public CharSequence c;
        public CharSequence d;
        public String e;
        public int f;
        public int g;

        a() {
        }
    }

    class c {
        public ImageView a;
        public TextView b;
        public TextView c;
        public TextView d;
        public TextView e;

        c() {
        }
    }

    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.notification_slide_left:
                PermissionDB pDB = new PermissionDB(this);
                a notiBean = this.c.get(this.h);
                String packageName = notiBean.e;
                InterceptPermission findByName = pDB.findByName(packageName);
                ContentValues values = new ContentValues();
                values.put(QueryPermissions.PACKAGENAME, packageName);
                values.put(QueryPermissions.PERMISSION, (Integer) 2);
                pDB.update(findByName._id, values);
                pDB.closeDatabase();
                this.b.collapseGroup(this.h);
                ScanApplicationInfo.killProcess(this, packageName);
                Toast.makeText(this, String.format(getString(R.string.notification_forbid_feedback), notiBean.c), 1).show();
                return;
            case R.id.notification_slide_center:
                a removeBean = this.c.get(this.h);
                ContentValues values2 = new ContentValues();
                values2.put(QueryPermissions.PACKAGENAME, removeBean.e);
                values2.put(QueryPermissions.PERMISSION, (Integer) 1);
                PermissionDB pDB2 = new PermissionDB(this);
                pDB2.update(pDB2.findByName(removeBean.e)._id, values2);
                pDB2.closeDatabase();
                this.b.collapseGroup(this.h);
                a();
                this.a.notifyDataSetChanged();
                Toast.makeText(this, String.format(getString(R.string.notification_allow_feedback), removeBean.c), 1).show();
                return;
            case R.id.notification_slide_right:
                try {
                    a removeBean2 = this.c.get(this.h);
                    RecordDB db = new RecordDB(this);
                    db.delete(removeBean2.f);
                    db.closeDatabase();
                    this.b.collapseGroup(this.h);
                    this.h = -1;
                    a();
                    this.a.notifyDataSetChanged();
                    InterceptUtils.updateRecordListRemove(removeBean2.a);
                    return;
                } catch (Exception e2) {
                    return;
                }
            case R.id.record_clear_all:
                RecordDB recordDB = new RecordDB(this);
                recordDB.deleteAll();
                recordDB.closeDatabase();
                Toast.makeText(this, getString(R.string.intercept_record_clearn_all), 1).show();
                a();
                this.a.notifyDataSetChanged();
                return;
            case R.id.title_back:
                finish();
                return;
            default:
                return;
        }
    }
}
