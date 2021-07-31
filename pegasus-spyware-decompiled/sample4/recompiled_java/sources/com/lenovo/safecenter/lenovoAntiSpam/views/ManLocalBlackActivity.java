package com.lenovo.safecenter.lenovoAntiSpam.views;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.BlackInfo;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import com.lenovo.safecenter.lenovoAntiSpam.utils.SafeCenter;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class ManLocalBlackActivity extends Activity {
    Button a;
    AppDatabase b;
    private ExpandableListView c;
    private List<BlackInfo> d;
    private int e;
    private TextView f;
    private a g;
    private ProgressDialog h;
    private Handler i = new b(this, (byte) 0);
    private int j;

    static /* synthetic */ void i(ManLocalBlackActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.notify).setColorPositiveButton(true).setColorNegativeButton(false).setMessage(R.string.del_blackinfo).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.AnonymousClass7 */

            public final void onClick(DialogInterface dialog, int which) {
                ManLocalBlackActivity.this.deleteBlack();
                Toast.makeText(ManLocalBlackActivity.this, (int) R.string.del_sucess, 0).show();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.AnonymousClass6 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    private class b extends Handler {
        private b() {
        }

        /* synthetic */ b(ManLocalBlackActivity x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    Log.i("handler", "progress.dismiss()1;");
                    ContractHelpUtils.sendBraodcast(ManLocalBlackActivity.this, "com.lenovo.antispam.blackperson.change");
                    if (ManLocalBlackActivity.this.d.size() == 0) {
                        ManLocalBlackActivity.this.initViewSys();
                        return;
                    }
                    ManLocalBlackActivity.this.g.notifyDataSetChanged();
                    ManLocalBlackActivity.this.c.invalidateViews();
                    return;
                case 2:
                    if (ManLocalBlackActivity.this.h != null) {
                        try {
                            ManLocalBlackActivity.this.h.dismiss();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    Log.i("handler", "progress.dismiss()2;");
                    int str = msg.getData().getInt(QueryPermissions.ID);
                    int result = msg.getData().getInt(QueryPermissions.RECOMMENDEDACTION);
                    if (result == 2) {
                        ManLocalBlackActivity.this.b.updateLocalBlack(str);
                        Toast.makeText(ManLocalBlackActivity.this, (int) R.string.antispamlocalblack_successNotice, 0).show();
                        ((BlackInfo) ManLocalBlackActivity.this.d.get(ManLocalBlackActivity.this.j)).setIsUpload(1);
                        ManLocalBlackActivity.this.g.notifyDataSetChanged();
                        ManLocalBlackActivity.this.c.invalidateViews();
                        return;
                    } else if (result == 1) {
                        Toast.makeText(ManLocalBlackActivity.this, (int) R.string.antispamnetdesc, 0).show();
                        return;
                    } else {
                        Toast.makeText(ManLocalBlackActivity.this, (int) R.string.antispamserver_disconnect, 0).show();
                        return;
                    }
                case 3:
                case 4:
                default:
                    return;
                case 5:
                    Log.i("handler", "progress.dismiss()5;");
                    if (ManLocalBlackActivity.this.h != null) {
                        try {
                            ManLocalBlackActivity.this.h.dismiss();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (ManLocalBlackActivity.this.d != null) {
                        ManLocalBlackActivity.this.f.setVisibility(8);
                        ManLocalBlackActivity.this.g = new a(ManLocalBlackActivity.this);
                        ManLocalBlackActivity.this.c.setAdapter(ManLocalBlackActivity.this.g);
                        ManLocalBlackActivity.this.c.setVisibility(0);
                        return;
                    }
                    ManLocalBlackActivity.this.f.setVisibility(0);
                    ManLocalBlackActivity.this.c.setVisibility(8);
                    return;
                case 6:
                    ManLocalBlackActivity.this.c.invalidateViews();
                    return;
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.e = getIntent().getExtras().getInt("type");
        this.b = new AppDatabase(this);
        setContentView(R.layout.antispamlocalblack_view);
        this.c = (ExpandableListView) findViewById(R.id.addblacklist);
        this.c.setDivider(getResources().getDrawable(R.drawable.space_line));
        this.c.setGroupIndicator(null);
        this.a = (Button) findViewById(R.id.sigleadd_btn);
        this.f = (TextView) findViewById(R.id.antispamcallempty);
        this.c.setEmptyView(this.f);
        if (Settings.System.getInt(getContentResolver(), "guest_mode_on", 0) == 1) {
            this.a.setEnabled(false);
        }
        setOnClick();
    }

    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void initDate() {
        this.d = this.b.getLocalBlackList(this.e);
        if (Settings.System.getInt(getContentResolver(), "guest_mode_on", 0) == 1) {
            this.d = new ArrayList();
        }
        this.g = new a(this);
        this.c.setAdapter(this.g);
    }

    public void initViewSys() {
        initDate();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        initViewSys();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void setOnClick() {
        this.c.setOnGroupExpandListener(new ExpandableListView.OnGroupExpandListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.AnonymousClass1 */

            public final void onGroupExpand(int groupPosition) {
                ManLocalBlackActivity.this.j = groupPosition;
                if (groupPosition == ManLocalBlackActivity.this.d.size() - 1) {
                    ManLocalBlackActivity.this.c.setTranscriptMode(2);
                } else {
                    ManLocalBlackActivity.this.c.setTranscriptMode(1);
                }
                for (int i = 0; i < ManLocalBlackActivity.this.g.getGroupCount(); i++) {
                    if (groupPosition != i) {
                        ManLocalBlackActivity.this.c.collapseGroup(i);
                    }
                }
            }
        });
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.AnonymousClass2 */

            public final void onClick(View v) {
                if (new AppDatabase(ManLocalBlackActivity.this).getBlackListcount(ManLocalBlackActivity.this.e) >= 500) {
                    Toast.makeText(ManLocalBlackActivity.this, (int) R.string.antispamdata_limit1, 0).show();
                } else {
                    ManLocalBlackActivity.this.showDialog(1);
                }
            }
        });
    }

    public Dialog onCreateDialog(int id, Bundle args) {
        switch (id) {
            case 1:
                return new CustomDialog.Builder(this).setTitle(getString(R.string.antispamquick_operation)).setItems(R.array.quick_add, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.AnonymousClass3 */

                    public final void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:
                                Intent intent = new Intent(ManLocalBlackActivity.this, ManLocalBlackAddActivity.class);
                                intent.putExtra("type", 1);
                                ManLocalBlackActivity.this.startActivity(intent);
                                return;
                            case 1:
                                Intent intentSMS = new Intent(ManLocalBlackActivity.this, ManLocalBlackAddActivity.class);
                                intentSMS.putExtra("type", 0);
                                ManLocalBlackActivity.this.startActivity(intentSMS);
                                return;
                            case 2:
                                Intent intentContract = new Intent(ManLocalBlackActivity.this, ManLocalBlackAddActivity.class);
                                intentContract.putExtra("type", 4);
                                ManLocalBlackActivity.this.startActivity(intentContract);
                                return;
                            case 3:
                                Intent intentHand = new Intent(ManLocalBlackActivity.this, HandBlackActivity.class);
                                intentHand.putExtra("type", ManLocalBlackActivity.this.e);
                                intentHand.putExtra("method", "add");
                                ManLocalBlackActivity.this.startActivity(intentHand);
                                return;
                            default:
                                return;
                        }
                    }
                }).create();
            default:
                return null;
        }
    }

    public void showReportDialog() {
        new CustomDialog.Builder(this).setTitle(R.string.notify).setMessage(R.string.report_tonet).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
                ManLocalBlackActivity.this.report(((BlackInfo) ManLocalBlackActivity.this.d.get(ManLocalBlackActivity.this.j)).getPhoneNumber(), ((BlackInfo) ManLocalBlackActivity.this.d.get(ManLocalBlackActivity.this.j)).getId());
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    public void deleteBlack() {
        this.b.deleteLocalBlack(this.d.get(this.j).getId());
        this.d.remove(this.j);
        this.g.notifyDataSetChanged();
        if (this.j < this.d.size()) {
            this.c.collapseGroup(this.j);
        }
        ContractHelpUtils.sendBraodcast(this, "com.lenovo.antispam.blackperson.change");
    }

    public void report(final String numbers, final int sb_id) {
        this.h = new ProgressDialog(this);
        this.h.setProgressStyle(0);
        this.h.setCanceledOnTouchOutside(false);
        this.h.setMessage(getResources().getString(R.string.antispamupload_state));
        this.h.show();
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.AnonymousClass8 */

            public final void run() {
                try {
                    int result = SafeCenter.upBlackToNet(ManLocalBlackActivity.this, numbers, 1);
                    Message mes = new Message();
                    mes.what = 2;
                    mes.getData().putInt(QueryPermissions.RECOMMENDEDACTION, result);
                    mes.getData().putInt(QueryPermissions.ID, sb_id);
                    ManLocalBlackActivity.this.i.sendMessage(mes);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void transteToEdit() {
        Intent intent = new Intent(this, HandBlackActivity.class);
        intent.putExtra("method", "modify");
        intent.putExtra(QueryPermissions.ID, this.d.get(this.j).getId());
        startActivity(intent);
    }

    /* access modifiers changed from: package-private */
    public class a extends BaseExpandableListAdapter {
        Context a;
        b b;
        C0006a c;
        private LayoutInflater e;

        public a(Context context) {
            this.e = LayoutInflater.from(context);
            this.a = context;
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

        public final View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = this.e.inflate(R.layout.dealitemequal, (ViewGroup) null);
                this.c = new C0006a();
                this.c.a = (TextView) convertView.findViewById(R.id.deal1);
                this.c.b = (TextView) convertView.findViewById(R.id.deal2);
                this.c.c = (TextView) convertView.findViewById(R.id.deal3);
                convertView.setTag(this.c);
            } else {
                this.c = (C0006a) convertView.getTag();
            }
            this.c.a.setText(R.string.send_off_report);
            this.c.b.setText(R.string.mutil_edit);
            this.c.c.setText(R.string.delete);
            this.c.a.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.a.AnonymousClass1 */

                public final void onClick(View v) {
                    if (((BlackInfo) ManLocalBlackActivity.this.d.get(ManLocalBlackActivity.this.j)).getIsUpload() == 0) {
                        ManLocalBlackActivity.this.showReportDialog();
                    } else {
                        Toast.makeText(ManLocalBlackActivity.this, (int) R.string.havedup, 0).show();
                    }
                }
            });
            this.c.b.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.a.AnonymousClass2 */

                public final void onClick(View v) {
                    ManLocalBlackActivity.this.transteToEdit();
                }
            });
            this.c.c.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity.a.AnonymousClass3 */

                public final void onClick(View v) {
                    ManLocalBlackActivity.i(ManLocalBlackActivity.this);
                }
            });
            return convertView;
        }

        public final Object getGroup(int groupPosition) {
            return ManLocalBlackActivity.this.d.get(groupPosition);
        }

        public final int getGroupCount() {
            return ManLocalBlackActivity.this.d.size();
        }

        public final long getGroupId(int groupPosition) {
            return (long) groupPosition;
        }

        public final View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(this.a).inflate(R.layout.antispamblackinfo_item1, (ViewGroup) null);
                this.b = new b();
                this.b.a = (ImageView) convertView.findViewById(R.id.antispamblack_image);
                this.b.d = (TextView) convertView.findViewById(R.id.antispamlocalblack_name);
                this.b.e = (TextView) convertView.findViewById(R.id.antispamlocalblack_number);
                this.b.c = (ImageView) convertView.findViewById(R.id.antispamisupload);
                this.b.b = (ImageView) convertView.findViewById(R.id.antispamblack_check);
                convertView.setTag(this.b);
            } else {
                this.b = (b) convertView.getTag();
            }
            BlackInfo info = (BlackInfo) ManLocalBlackActivity.this.d.get(groupPosition);
            this.b.b.setVisibility(8);
            if (info.getIsUpload() == 0) {
                this.b.c.setVisibility(8);
            } else if (info.getIsUpload() == 1) {
                this.b.c.setVisibility(0);
            }
            this.b.e.setText(info.getPhoneNumber());
            if (info.getName() == null || info.getName().equals("")) {
                this.b.d.setText(a(info.getType()));
            } else {
                this.b.d.setText(info.getName() + a(info.getType()));
            }
            this.b.a.setImageResource(R.drawable.antispamblack);
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
            ImageView b;
            ImageView c;
            TextView d;
            TextView e;

            b() {
            }
        }

        /* renamed from: com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity$a$a  reason: collision with other inner class name */
        class C0006a {
            TextView a;
            TextView b;
            TextView c;

            C0006a() {
            }
        }

        private String a(int type) {
            if (type == 2) {
                return this.a.getResources().getString(R.string.harss_method1);
            }
            if (type == 1) {
                return this.a.getResources().getString(R.string.harss_method2);
            }
            if (type == 0) {
                return this.a.getResources().getString(R.string.harss_method3);
            }
            return this.a.getResources().getString(R.string.harss_method4);
        }
    }
}
