package com.lenovo.safecenter.floatwindow.view;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.model.ResolveModel;
import com.lenovo.safecenter.floatwindow.model.ViewHolder;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.utils.Const;
import java.util.ArrayList;
import java.util.List;

public class RecentTaskView extends FrameLayout {
    private GridView a;
    private RecentTaskAdapter b;
    private List<ResolveModel> c;
    public Context context;
    private ResolveModel d;
    private String e;

    public RecentTaskView(Context _context) {
        super(_context);
        this.e = RecentTaskView.class.getSimpleName();
        this.context = _context;
        this.c = new ArrayList();
        inflate(this.context, R.layout.assist_task_view, this);
        this.a = (GridView) findViewById(R.id.float_grid);
        this.b = new RecentTaskAdapter(_context, getTaskList(this.c));
        this.a.setAdapter((ListAdapter) this.b);
        this.a.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.floatwindow.view.RecentTaskView.AnonymousClass1 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                FloatWindow.instanceFloatWindow.delFloatWindow();
                Intent intent = new Intent();
                intent.setAction("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.LAUNCHER");
                intent.setComponent(new ComponentName(((ResolveModel) RecentTaskView.this.c.get(position)).getPackagename(), ((ResolveModel) RecentTaskView.this.c.get(position)).getMainname()));
                intent.setFlags(268435456);
                RecentTaskView.this.context.startActivity(intent);
            }
        });
    }

    public RecentTaskView(Context _context, AttributeSet attrs) {
        super(_context, attrs);
    }

    public List<ResolveModel> getTaskList(List<ResolveModel> lists) {
        List<ResolveInfo> apps;
        Context context2 = this.context;
        Context context3 = this.context;
        ActivityManager am = (ActivityManager) context2.getSystemService("activity");
        PackageManager pm = this.context.getPackageManager();
        try {
            ActivityInfo homeInfo = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").resolveActivityInfo(pm, 0);
            for (ActivityManager.RecentTaskInfo recentTaskInfo : am.getRecentTasks(64, 2)) {
                Intent intentRecentTask = new Intent(recentTaskInfo.baseIntent);
                if (recentTaskInfo.origActivity != null) {
                    intentRecentTask.setComponent(recentTaskInfo.origActivity);
                }
                if (!((homeInfo != null && homeInfo.packageName.equals(recentTaskInfo.baseIntent.getComponent().getPackageName()) && homeInfo.name.equals(recentTaskInfo.baseIntent.getComponent().getClassName())) || (apps = pm.queryIntentActivities(intentRecentTask, 0)) == null || apps.size() == 0)) {
                    ResolveInfo resolveInfo = apps.iterator().next();
                    if (resolveInfo != null && !Const.PACKAGENAME_KID_MODE.equals(resolveInfo.activityInfo.packageName) && !Const.PACKAGENAME_APP_LOCK.equals(resolveInfo.activityInfo.packageName) && !NetConstant.TRAFFIC_PLUGIN.equals(resolveInfo.activityInfo.packageName)) {
                        this.d = new ResolveModel();
                        if ("com.lenovo.safecenter.floatwindow.shortcut.ShortcutActivity".equals(resolveInfo.activityInfo.name)) {
                            this.d.setName(this.context.getString(R.string.safecenter));
                            this.d.setMainname("com.lenovo.safecenter.MainTab.SplashActivity");
                            this.d.setDrawable(getResources().getDrawable(R.drawable.icon));
                            this.d.setPackagename(TrafficStatsService.PACKAGE_NAME);
                        } else if (resolveInfo.activityInfo.exported) {
                            this.d.setDrawable(resolveInfo.activityInfo.loadIcon(pm));
                            this.d.setName(resolveInfo.activityInfo.loadLabel(pm).toString());
                            this.d.setPackagename(resolveInfo.activityInfo.packageName);
                            this.d.setMainname(resolveInfo.activityInfo.name);
                        } else {
                            Intent exportedTask = new Intent();
                            exportedTask.setAction("android.intent.action.MAIN");
                            exportedTask.addCategory("android.intent.category.LAUNCHER");
                            exportedTask.setPackage(resolveInfo.activityInfo.packageName);
                            List<ResolveInfo> exportedapps = pm.queryIntentActivities(exportedTask, 0);
                            if (!(exportedapps == null || exportedapps.size() == 0)) {
                                ResolveInfo exportedInfo = exportedapps.iterator().next();
                                this.d.setDrawable(exportedInfo.activityInfo.loadIcon(pm));
                                this.d.setName(exportedInfo.activityInfo.loadLabel(pm).toString());
                                this.d.setPackagename(exportedInfo.activityInfo.packageName);
                                this.d.setMainname(exportedInfo.activityInfo.name);
                            }
                        }
                    }
                    boolean containFlag = false;
                    if (lists.size() == 0) {
                        lists.add(this.d);
                    } else {
                        int i = 0;
                        while (true) {
                            if (i >= lists.size()) {
                                break;
                            }
                            if (lists.get(i).getPackagename().equals(this.d.getPackagename()) && lists.get(i).getName().equals(this.d.getName())) {
                                containFlag = true;
                                break;
                            }
                            i++;
                        }
                        if (!containFlag) {
                            lists.add(this.d);
                        }
                    }
                }
            }
        } catch (SecurityException se) {
            se.printStackTrace();
        }
        return lists;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    protected class RecentTaskAdapter extends BaseAdapter {
        private List<ResolveModel> b;
        private ViewHolder c;
        private LayoutInflater d;

        RecentTaskAdapter(Context ctx, List<ResolveModel> lists) {
            this.b = lists;
            this.d = LayoutInflater.from(ctx);
        }

        public int getCount() {
            return this.b.size();
        }

        public Object getItem(int position) {
            return Integer.valueOf(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            View view = convertView;
            if (view == null) {
                this.c = new ViewHolder();
                view = this.d.inflate(R.layout.assist_task_item, (ViewGroup) null);
                this.c.img = (ImageView) view.findViewById(R.id.item_icon);
                this.c.text = (TextView) view.findViewById(R.id.item_label);
                view.setTag(this.c);
            } else {
                this.c = (ViewHolder) view.getTag();
            }
            this.c.img.setBackgroundDrawable(this.b.get(position).getDrawable());
            this.c.text.setText(this.b.get(position).getName());
            return view;
        }
    }
}
