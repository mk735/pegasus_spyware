package com.lenovo.safecenter.antivirus.views;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.Virus;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.antivirus.utils.ScanUtils;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ShowVirusActivity extends BaseTitleActivity {
    private ExpandableListView a;
    private Button b;
    private List<Virus> c = new ArrayList();
    private List<Virus> d = new ArrayList();
    private List<List<Virus>> e = new ArrayList();
    private List<String> f = new ArrayList();
    private ArrayList<String> g;
    private PackageManager h;
    private a i;
    private b j;

    /* access modifiers changed from: package-private */
    public class a extends BroadcastReceiver {
        Context a;

        public a(Context c) {
            this.a = c;
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) {
                String packageName = intent.getDataString().substring(8);
                for (int i = 0; i < ShowVirusActivity.this.e.size(); i++) {
                    for (int k = 0; k < ((List) ShowVirusActivity.this.e.get(i)).size(); k++) {
                        if (((Virus) ((List) ShowVirusActivity.this.e.get(i)).get(k)).getPackageName().equals(packageName)) {
                            ((Virus) ((List) ShowVirusActivity.this.e.get(i)).get(k)).setOperate(true);
                            ShowVirusActivity.this.a.invalidateViews();
                        }
                    }
                }
                HttpUtils.removeConfig(AppUtils.getVirusDescKey(packageName), context);
            }
        }
    }

    public void registerAction() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addDataScheme("package");
        registerReceiver(this.i, filter);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.antivirusshowvirus);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antivirusapp_name, (Integer) null);
        ((NotificationManager) getSystemService(DatabaseTables.LOG_NOTIFICATION)).cancel(555);
        this.a = (ExpandableListView) findViewById(R.id.antiviruslist);
        this.a.setGroupIndicator(null);
        this.h = getPackageManager();
        if (getIntent().getStringArrayListExtra("virusPackageNameList") != null) {
            this.g = getIntent().getStringArrayListExtra("virusPackageNameList");
        } else {
            this.g = new ArrayList<>();
            for (String str : HttpUtils.execService("viruspkgname", this).split(",")) {
                this.g.add(str);
            }
        }
        List<String> errorList = new ArrayList<>();
        Iterator i$ = this.g.iterator();
        while (i$.hasNext()) {
            String virusPackageName = i$.next();
            try {
                ApplicationInfo mAppInfo = this.h.getApplicationInfo(virusPackageName, 8192);
                Virus virus = new Virus(virusPackageName, mAppInfo.loadLabel(this.h).toString(), false);
                virus.setVirusName(mAppInfo.loadLabel(getPackageManager()).toString());
                virus.setType(0);
                String desc = HttpUtils.execService(AppUtils.getVirusDescKey(virusPackageName), this);
                if (desc == null || desc.length() == 0) {
                    desc = getString(R.string.antivirusvirusdesc_default);
                }
                virus.setVirusDesc(desc);
                this.c.add(virus);
            } catch (Exception e2) {
                e2.printStackTrace();
                if (virusPackageName != null) {
                    errorList.add(virusPackageName);
                    new ScanUtils().ExecError(virusPackageName, this);
                }
            }
        }
        if (this.g.size() > 0 && errorList.size() > 0) {
            this.g.removeAll(errorList);
        }
        if (this.g.size() > 0) {
            this.b = (Button) findViewById(R.id.antivirusagainscan);
            this.i = new a(this);
            registerAction();
            if (this.c.size() > 0) {
                this.f.add(String.format(getString(R.string.antivirusvirus_suredesc), Integer.valueOf(this.c.size())));
                this.e.add(this.c);
            }
            if (this.d.size() > 0) {
                this.f.add(String.format(getString(R.string.antivirusvirus_unsuredesc), Integer.valueOf(this.d.size())));
                this.e.add(this.d);
            }
            this.b.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.antivirus.views.ShowVirusActivity.AnonymousClass1 */

                public final void onClick(View v) {
                    if (ShowVirusActivity.this.b.getText().toString().equals(ShowVirusActivity.this.getString(R.string.done))) {
                        ShowVirusActivity.this.finish();
                        return;
                    }
                    for (int k = 0; k < ((List) ShowVirusActivity.this.e.get(0)).size(); k++) {
                        if (!((Virus) ((List) ShowVirusActivity.this.e.get(0)).get(k)).isOperate()) {
                            ShowVirusActivity.this.removePackageActivity(((Virus) ((List) ShowVirusActivity.this.e.get(0)).get(k)).getPackageName());
                        }
                    }
                }
            });
            this.j = new b(this);
            this.a.setAdapter(this.j);
            for (int j2 = 0; j2 < this.f.size(); j2++) {
                this.a.expandGroup(j2);
            }
            onBtnClick();
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void onBtnClick() {
        this.a.setOnChildClickListener(new ExpandableListView.OnChildClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.ShowVirusActivity.AnonymousClass2 */

            public final boolean onChildClick(ExpandableListView parent, View v, int groupPosition, int childPosition, long id) {
                Virus vir = (Virus) ((List) ShowVirusActivity.this.e.get(groupPosition)).get(childPosition);
                if (vir.isOperate()) {
                    return false;
                }
                Intent intent = new Intent(ShowVirusActivity.this, VirusInfo.class);
                intent.putExtra(QueryPermissions.PACKAGENAME, vir.getPackageName());
                intent.putExtra("desc", vir.getVirusDesc());
                intent.putExtra("type", vir.getType());
                ShowVirusActivity.this.startActivity(intent);
                return false;
            }
        });
    }

    public void forwardAppInfo(String pkgName) {
        ComponentName comp = new ComponentName("com.android.settings", "com.android.settings.InstalledAppDetails");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setComponent(comp);
        intent.putExtra("pkg", pkgName);
        startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        boolean allOperate = true;
        int k = 0;
        while (true) {
            if (k >= this.e.get(0).size()) {
                break;
            } else if (!this.e.get(0).get(k).isOperate()) {
                allOperate = false;
                break;
            } else {
                k++;
            }
        }
        if (allOperate) {
            this.b.setText(R.string.done);
        }
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.i);
        Log.i("onDestroy", (!HttpUtils.hasVirus) + "====" + getIntent().getStringExtra("fromnotify"));
        if (!HttpUtils.hasVirus && getIntent().getStringExtra("fromnotify") != null && !HttpUtils.isOpen) {
            Intent forceBroadcast = new Intent();
            forceBroadcast.setAction("action.forcestop.antivirus");
            sendBroadcast(forceBroadcast);
        }
    }

    public void removePackageActivity(String pkgName) {
        startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + pkgName)));
    }

    private class b extends BaseExpandableListAdapter {
        private Context b;
        private LayoutInflater c;

        public b(Context context) {
            this.c = LayoutInflater.from(context);
            this.b = context;
        }

        public final Object getChild(int groupPosition, int childPosition) {
            return ((List) ShowVirusActivity.this.e.get(groupPosition)).get(childPosition);
        }

        public final long getChildId(int groupPosition, int childPosition) {
            return (long) childPosition;
        }

        public final int getChildrenCount(int groupPosition) {
            return ((List) ShowVirusActivity.this.e.get(groupPosition)).size();
        }

        public final View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
            a holder;
            Drawable drawable;
            if (convertView == null) {
                convertView = this.c.inflate(R.layout.antivirusshowviruwitem, (ViewGroup) null);
                holder = new a();
                holder.a = (TextView) convertView.findViewById(R.id.antivirusappname);
                holder.b = (TextView) convertView.findViewById(R.id.antivirusvirusname);
                holder.d = (ImageView) convertView.findViewById(R.id.antivirusviruscheckbox);
                holder.e = (ImageView) convertView.findViewById(R.id.antivirusdeletebox);
                holder.g = (TextView) convertView.findViewById(R.id.antivirusshowdesc);
                holder.c = (TextView) convertView.findViewById(R.id.antivirusvirusadvice);
                holder.f = (ImageView) convertView.findViewById(R.id.antiviruspkg_icon);
                convertView.setTag(holder);
            } else {
                holder = (a) convertView.getTag();
            }
            final Virus virus = (Virus) ((List) ShowVirusActivity.this.e.get(groupPosition)).get(childPosition);
            holder.a.setText(virus.getAppName());
            if (virus.getType() == 0) {
                holder.b.setText(String.format(ShowVirusActivity.this.getString(R.string.antivirusvirusname), virus.getVirusName()));
            } else {
                holder.b.setText(String.format(ShowVirusActivity.this.getString(R.string.antivirusvirus_carefuluse), virus.getVirusName()));
            }
            ShowVirusActivity.this.getResources().getDrawable(R.drawable.icon3);
            try {
                drawable = ShowVirusActivity.this.getPackageManager().getApplicationInfo(virus.getPackageName(), 8192).loadIcon(ShowVirusActivity.this.getPackageManager());
            } catch (Exception e) {
                e.printStackTrace();
                drawable = ShowVirusActivity.this.getResources().getDrawable(R.drawable.icon3);
            }
            holder.f.setImageDrawable(drawable);
            if (virus.isOperate()) {
                holder.g.setTextColor(this.b.getResources().getColor(R.color.gray2));
                holder.g.setClickable(false);
                holder.g.setEnabled(false);
            } else {
                Log.i("type", "type==" + virus.getType());
                if (virus.getType() == 0) {
                    holder.g.setText(R.string.uninstall);
                    holder.g.setClickable(true);
                } else if (virus.getType() == 1) {
                    holder.g.setText(R.string.uninstall);
                    holder.g.setClickable(true);
                }
            }
            holder.d.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.antivirus.views.ShowVirusActivity.b.AnonymousClass1 */

                public final void onClick(View v) {
                    ShowVirusActivity.this.forwardAppInfo(virus.getPackageName());
                }
            });
            holder.g.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.antivirus.views.ShowVirusActivity.b.AnonymousClass2 */

                public final void onClick(View v) {
                    ShowVirusActivity.this.removePackageActivity(virus.getPackageName());
                }
            });
            return convertView;
        }

        public final Object getGroup(int groupPosition) {
            return ShowVirusActivity.this.f.get(groupPosition);
        }

        public final int getGroupCount() {
            return ShowVirusActivity.this.f.size();
        }

        public final long getGroupId(int groupPosition) {
            return (long) groupPosition;
        }

        public final View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
            C0004b holder;
            if (convertView == null) {
                convertView = this.c.inflate(R.layout.antivirusshowviruwparent, (ViewGroup) null);
                holder = new C0004b();
                holder.a = (TextView) convertView.findViewById(R.id.antivirusvirus_type);
                convertView.setTag(holder);
            } else {
                holder = (C0004b) convertView.getTag();
            }
            holder.a.setText((CharSequence) ShowVirusActivity.this.f.get(groupPosition));
            return convertView;
        }

        public final boolean hasStableIds() {
            return false;
        }

        public final boolean isChildSelectable(int groupPosition, int childPosition) {
            return true;
        }

        /* renamed from: com.lenovo.safecenter.antivirus.views.ShowVirusActivity$b$b  reason: collision with other inner class name */
        class C0004b {
            TextView a;

            C0004b() {
            }
        }

        class a {
            TextView a;
            TextView b;
            TextView c;
            ImageView d;
            ImageView e;
            ImageView f;
            TextView g;

            a() {
            }
        }
    }
}
