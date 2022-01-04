package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.PermAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.support.AppInfo;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;

public class MessageBlackList extends Activity {
    private PackageManager a;
    private AppDatabase b = null;
    private ArrayList<AppInfo> c;
    private TextView d;
    private TextView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private ProgressBar i;
    private TextView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private ExpandableListView n;
    private ListView o;
    private a p;
    private String q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private Context v;
    private Handler w = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    MessageBlackList.this.f.setText(String.format(MessageBlackList.this.getString(R.string.deny_apps_count), Integer.valueOf(MessageBlackList.this.r), MessageBlackList.this.getString(R.string.to_sms_back), Integer.valueOf(MessageBlackList.this.s)));
                    if (MessageBlackList.this.s == 0) {
                        MyUtils.showToast(MessageBlackList.this.v, MessageBlackList.this.getString(R.string.toast_allow_all));
                        return;
                    } else if (MessageBlackList.this.s == MessageBlackList.this.r) {
                        MyUtils.showToast(MessageBlackList.this.v, MessageBlackList.this.getString(R.string.toast_deny_all));
                        return;
                    } else {
                        return;
                    }
                case 1:
                    MessageBlackList.this.g.setVisibility(8);
                    MessageBlackList.this.h.setVisibility(0);
                    return;
                case 2:
                    MessageBlackList.this.f.setText(String.format(MessageBlackList.this.getString(R.string.deny_apps_count), Integer.valueOf(MessageBlackList.this.r), MessageBlackList.this.getString(R.string.to_sms_back), Integer.valueOf(MessageBlackList.this.s)));
                    MyUtils.showToast(MessageBlackList.this.v, String.format(MessageBlackList.this.getString(R.string.toast_deny_num), Integer.valueOf(MessageBlackList.this.s), MessageBlackList.this.getString(R.string.to_sms_back)));
                    return;
                case 3:
                    MessageBlackList.this.f.setText(String.format(MessageBlackList.this.getString(R.string.deny_apps_count), Integer.valueOf(MessageBlackList.this.r), MessageBlackList.this.getString(R.string.to_sms_back), Integer.valueOf(MessageBlackList.this.s)));
                    MyUtils.showToast(MessageBlackList.this.v, MessageBlackList.this.getString(R.string.toast_tip_all));
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(MessageBlackList x0, AppInfo x1, int x2) {
        x1.selected = x2;
        x0.b.updateApp(x1, x0.q);
    }

    static /* synthetic */ void h(MessageBlackList x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setIcon(17301543).setMessage(R.string.allow_all_tip).setColorPositiveButton(false).setColorNegativeButton(true).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass2 */

            public final void onClick(DialogInterface dialog, int which) {
                try {
                    MessageBlackList.this.u = true;
                    MessageBlackList.this.b.updateApp(MessageBlackList.this.c, 0);
                    MessageBlackList.this.s = 0;
                    MessageBlackList.this.w.sendMessage(MessageBlackList.this.w.obtainMessage(0));
                    for (int i = 0; i < MessageBlackList.this.p.getGroupCount(); i++) {
                        if (MessageBlackList.this.n.expandGroup(i)) {
                            MessageBlackList.this.n.collapseGroup(i);
                        }
                    }
                    MessageBlackList.this.n.setTranscriptMode(1);
                    MessageBlackList.this.n.invalidateViews();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass12 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    static /* synthetic */ int n(MessageBlackList x0) {
        int i2 = x0.s;
        x0.s = i2 + 1;
        return i2;
    }

    static /* synthetic */ void q(MessageBlackList x0) {
        if (x0.t) {
            x0.p = new a(x0);
            x0.n.setAdapter(x0.p);
            return;
        }
        x0.o.setAdapter((ListAdapter) new PermAdapter(x0, x0.c));
    }

    static /* synthetic */ void w(MessageBlackList x0) {
        x0.q = AppDatabase.DB_APP_SENDMESSAGE;
        x0.c = x0.b.loadApps(x0, x0.q, x0.t);
        x0.r = x0.c.size();
        for (int i2 = 0; i2 < x0.r; i2++) {
            if (x0.c.get(i2).selected == 1) {
                x0.s++;
            }
        }
    }

    static /* synthetic */ int x(MessageBlackList x0) {
        int i2 = x0.s;
        x0.s = i2 - 1;
        return i2;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.second_main);
        this.v = this;
        this.t = WflUtils.isRoot();
        this.d = (TextView) findViewById(R.id.txt_title);
        this.d.setText(R.string.sms_background);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass5 */

            public final void onClick(View v) {
                MessageBlackList.this.finish();
            }
        });
        this.f = (TextView) findViewById(R.id.deny_apps_des);
        if (this.t) {
            ((LinearLayout) findViewById(R.id.expandablelistview_layout)).setVisibility(0);
            this.n = (ExpandableListView) findViewById(R.id.expandListView);
            this.n.setGroupIndicator(null);
        } else {
            ((LinearLayout) findViewById(R.id.listView_layout)).setVisibility(0);
            this.o = (ListView) findViewById(R.id.listView);
        }
        setOnclick();
        this.e = (TextView) findViewById(R.id.txt_empty);
        this.i = (ProgressBar) findViewById(R.id.progress_bar);
        this.j = (TextView) findViewById(R.id.selectall);
        this.k = (TextView) findViewById(R.id.offall);
        this.l = (TextView) findViewById(R.id.infoall);
        this.m = (TextView) findViewById(R.id.suggest);
        this.g = (TextView) findViewById(R.id.show_root_info);
        this.h = (TextView) findViewById(R.id.show_root_info_select);
        this.j.setEnabled(false);
        this.k.setEnabled(false);
        this.l.setEnabled(false);
        this.m.setEnabled(false);
        this.j.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass6 */

            public final void onClick(View v) {
                if (MessageBlackList.this.s != 0 || !MessageBlackList.this.u) {
                    MessageBlackList.h(MessageBlackList.this);
                } else {
                    MessageBlackList.this.w.sendMessage(MessageBlackList.this.w.obtainMessage(0));
                }
            }
        });
        this.k.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass7 */

            public final void onClick(View v) {
                try {
                    if (MessageBlackList.this.s != MessageBlackList.this.r) {
                        MessageBlackList.this.u = false;
                        MessageBlackList.this.b.updateApp(MessageBlackList.this.c, 1);
                        for (int i = 0; i < MessageBlackList.this.p.getGroupCount(); i++) {
                            if (MessageBlackList.this.n.expandGroup(i)) {
                                MessageBlackList.this.n.collapseGroup(i);
                            }
                        }
                        MessageBlackList.this.n.setTranscriptMode(1);
                        MessageBlackList.this.n.invalidateViews();
                        MessageBlackList.this.s = MessageBlackList.this.r;
                    }
                    MessageBlackList.this.w.sendMessage(MessageBlackList.this.w.obtainMessage(0));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        this.l.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass8 */

            public final void onClick(View v) {
                try {
                    MessageBlackList.this.u = false;
                    MessageBlackList.this.b.updateApp(MessageBlackList.this.c, 2);
                    for (int i = 0; i < MessageBlackList.this.p.getGroupCount(); i++) {
                        if (MessageBlackList.this.n.expandGroup(i)) {
                            MessageBlackList.this.n.collapseGroup(i);
                        }
                    }
                    MessageBlackList.this.n.setTranscriptMode(1);
                    MessageBlackList.this.n.invalidateViews();
                    MessageBlackList.this.s = 0;
                    MessageBlackList.this.w.sendMessage(MessageBlackList.this.w.obtainMessage(3));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        this.m.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass9 */

            public final void onClick(View v) {
                MessageBlackList.this.s = 0;
                MessageBlackList.this.u = false;
                MessageBlackList.this.b.expertSuggest(MessageBlackList.this.v, MessageBlackList.this.c, true);
                for (int i = 0; i < MessageBlackList.this.p.getGroupCount(); i++) {
                    if (MessageBlackList.this.n.expandGroup(i)) {
                        MessageBlackList.this.n.collapseGroup(i);
                    }
                }
                MessageBlackList.this.n.setTranscriptMode(1);
                MessageBlackList.this.n.invalidateViews();
                for (int i2 = 0; i2 < MessageBlackList.this.r; i2++) {
                    if (((AppInfo) MessageBlackList.this.c.get(i2)).selected == 1) {
                        MessageBlackList.n(MessageBlackList.this);
                    }
                }
                MessageBlackList.this.w.sendMessage(MessageBlackList.this.w.obtainMessage(2));
            }
        });
        this.a = getPackageManager();
        this.b = new AppDatabase(this);
        initApps();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        if (this.t) {
            startService(new Intent(this, SafeCenterService.class));
        }
        sendBroadcast(new Intent("com.lenovo.safecenter.refreshAppsManager"));
        TrackEvent.trackPause(this);
    }

    public void initApps() {
        this.i.setVisibility(0);
        final Handler handler = new Handler() {
            /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass10 */

            public final void handleMessage(Message msg) {
                MessageBlackList.this.i.setVisibility(8);
                MessageBlackList.this.f.setText(String.format(MessageBlackList.this.getString(R.string.deny_apps_count), Integer.valueOf(MessageBlackList.this.r), MessageBlackList.this.getString(R.string.to_sms_back), Integer.valueOf(MessageBlackList.this.s)));
                if (MessageBlackList.this.c.size() == 0) {
                    MessageBlackList.this.e.setVisibility(0);
                    return;
                }
                MessageBlackList.this.e.setVisibility(8);
                MessageBlackList.q(MessageBlackList.this);
                if (MessageBlackList.this.t) {
                    MessageBlackList.this.g.setVisibility(8);
                    MessageBlackList.this.j.setEnabled(true);
                    MessageBlackList.this.k.setEnabled(true);
                    MessageBlackList.this.l.setEnabled(true);
                    MessageBlackList.this.m.setEnabled(true);
                    return;
                }
                MessageBlackList.this.g.setVisibility(0);
            }
        };
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass11 */

            public final void run() {
                MessageBlackList.w(MessageBlackList.this);
                Message msg = new Message();
                msg.what = 0;
                handler.sendMessage(msg);
            }
        }.start();
    }

    public void setOnclick() {
        if (!this.t) {
            this.o.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass3 */

                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView<?> adapterView, View arg1, int arg2, long arg3) {
                    MessageBlackList.this.w.sendMessage(MessageBlackList.this.w.obtainMessage(1));
                }
            });
        } else {
            this.n.setOnGroupExpandListener(new ExpandableListView.OnGroupExpandListener() {
                /* class com.lenovo.safecenter.AppsManager.MessageBlackList.AnonymousClass4 */

                public final void onGroupExpand(int groupPosition) {
                    if (groupPosition == MessageBlackList.this.c.size() - 1) {
                        MessageBlackList.this.n.setTranscriptMode(2);
                    } else {
                        MessageBlackList.this.n.setTranscriptMode(1);
                    }
                    for (int i = 0; i < MessageBlackList.this.p.getGroupCount(); i++) {
                        if (groupPosition != i) {
                            MessageBlackList.this.n.collapseGroup(i);
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public class a extends BaseExpandableListAdapter {
        private Context b;
        private LayoutInflater c;
        private b d;
        private C0002a e;

        public a(Context context) {
            this.c = LayoutInflater.from(context);
            this.b = context;
        }

        public final Object getChild(int groupPosition, int childPosition) {
            return null;
        }

        public final long getChildId(int groupPosition, int childPosition) {
            return (long) childPosition;
        }

        public final int getChildrenCount(int groupPosition) {
            return 1;
        }

        public final View getChildView(final int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = this.c.inflate(R.layout.changeitemxml, (ViewGroup) null);
                this.e = new C0002a();
                this.e.a = (LinearLayout) convertView.findViewById(R.id.allow);
                this.e.b = (LinearLayout) convertView.findViewById(R.id.tip);
                this.e.c = (LinearLayout) convertView.findViewById(R.id.deny);
                convertView.setTag(this.e);
            } else {
                this.e = (C0002a) convertView.getTag();
            }
            final AppInfo aInfo = (AppInfo) MessageBlackList.this.c.get(groupPosition);
            this.e.a.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.AppsManager.MessageBlackList.a.AnonymousClass1 */

                public final void onClick(View v) {
                    if (aInfo.selected == 1) {
                        MessageBlackList.x(MessageBlackList.this);
                        MessageBlackList.this.w.sendMessage(MessageBlackList.this.w.obtainMessage(0));
                    }
                    aInfo.selected = 0;
                    MessageBlackList.this.n.invalidateViews();
                    MessageBlackList.this.n.collapseGroup(groupPosition);
                    MessageBlackList.a(MessageBlackList.this, aInfo, aInfo.selected);
                }
            });
            this.e.b.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.AppsManager.MessageBlackList.a.AnonymousClass2 */

                public final void onClick(View v) {
                    if (aInfo.selected == 1) {
                        MessageBlackList.x(MessageBlackList.this);
                        MessageBlackList.this.w.sendMessage(MessageBlackList.this.w.obtainMessage(0));
                    }
                    aInfo.selected = 2;
                    MessageBlackList.this.n.invalidateViews();
                    MessageBlackList.this.n.collapseGroup(groupPosition);
                    MessageBlackList.a(MessageBlackList.this, aInfo, aInfo.selected);
                }
            });
            this.e.c.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.AppsManager.MessageBlackList.a.AnonymousClass3 */

                public final void onClick(View v) {
                    if (aInfo.selected != 1) {
                        MessageBlackList.n(MessageBlackList.this);
                        MessageBlackList.this.w.sendMessage(MessageBlackList.this.w.obtainMessage(0));
                    }
                    aInfo.selected = 1;
                    MessageBlackList.this.n.invalidateViews();
                    MessageBlackList.this.n.collapseGroup(groupPosition);
                    MessageBlackList.a(MessageBlackList.this, aInfo, aInfo.selected);
                }
            });
            return convertView;
        }

        public final Object getGroup(int groupPosition) {
            return MessageBlackList.this.c.get(groupPosition);
        }

        public final int getGroupCount() {
            return MessageBlackList.this.c.size();
        }

        public final long getGroupId(int groupPosition) {
            return (long) groupPosition;
        }

        public final View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = this.c.inflate(R.layout.second_item, (ViewGroup) null);
                this.d = new b();
                this.d.a = (ImageView) convertView.findViewById(R.id.app_icon);
                this.d.b = (TextView) convertView.findViewById(R.id.app_name);
                this.d.c = (TextView) convertView.findViewById(R.id.app_suggest);
                this.d.d = (ImageView) convertView.findViewById(R.id.itemcheck);
                convertView.setTag(this.d);
            } else {
                this.d = (b) convertView.getTag();
            }
            AppInfo appInfo = (AppInfo) MessageBlackList.this.c.get(groupPosition);
            convertView.setVisibility(0);
            try {
                this.d.b.setText(appInfo.applicationInfo.loadLabel(MessageBlackList.this.a).toString());
                this.d.a.setImageDrawable(appInfo.applicationInfo.loadIcon(MessageBlackList.this.a));
            } catch (Exception e2) {
                e2.printStackTrace();
                this.d.b.setText(appInfo.name);
                this.d.a.setImageResource(R.drawable.icon3);
            }
            ImageView tButton = this.d.d;
            tButton.setTag(appInfo);
            if (appInfo.selected == 0) {
                tButton.setBackgroundResource(R.drawable.perm_grant);
            } else if (appInfo.selected == 2) {
                tButton.setBackgroundResource(R.drawable.perm_prompt);
            } else if (appInfo.selected == 1) {
                tButton.setBackgroundResource(R.drawable.perm_deny);
            }
            if (appInfo.suggest == 0) {
                this.d.c.setVisibility(0);
                this.d.c.setTextColor(this.b.getResources().getColor(R.color.green_allow));
                this.d.c.setText(R.string.suggest_allow);
            } else if (appInfo.suggest == 1) {
                this.d.c.setVisibility(0);
                this.d.c.setTextColor(this.b.getResources().getColor(R.color.red_forbid));
                this.d.c.setText(R.string.suggest_forbid);
            } else if (appInfo.suggest == 2 || appInfo.suggest == -1) {
                this.d.c.setVisibility(4);
            }
            return convertView;
        }

        public final boolean hasStableIds() {
            return false;
        }

        public final boolean isChildSelectable(int groupPosition, int childPosition) {
            return false;
        }

        class b {
            ImageView a;
            TextView b;
            TextView c;
            ImageView d;

            b() {
            }
        }

        /* renamed from: com.lenovo.safecenter.AppsManager.MessageBlackList$a$a  reason: collision with other inner class name */
        class C0002a {
            LinearLayout a;
            LinearLayout b;
            LinearLayout c;

            C0002a() {
            }
        }
    }
}
