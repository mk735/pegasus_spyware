package com.lenovo.safecenter.safemode;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.platform.BaseTitlePreferenceActivity;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ContractSetting extends BaseTitlePreferenceActivity {
    Preference a;
    Preference b;
    Preference c;
    Preference d;
    Preference e;
    Preference f;
    Preference g;
    SharedPreferences h;
    SharedPreferences i;
    private int j = 0;
    private int k = 0;
    private int l = 0;
    private int m;
    private int n;
    private List<Map<String, Object>> o;
    private int[] p = {R.string.no_notify, R.string.callnotify, R.string.notify1, R.string.notify2};
    private int[] q = {R.string.call_notify1, R.string.call_notify2, R.string.call_notify3};
    private Handler r = new Handler() {
        /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            int i = msg.what;
        }
    };
    private a s;

    static /* synthetic */ void e(ContractSetting x0) {
        View inflate = LayoutInflater.from(x0).inflate(R.layout.replaymes, (ViewGroup) null);
        ((LinearLayout) inflate.findViewById(R.id.input_bottom_layout)).setVisibility(8);
        ((TextView) inflate.findViewById(R.id.txt_message)).setText(R.string.con_setting_size);
        final EditText editText = (EditText) inflate.findViewById(R.id.edt_input_pwd);
        editText.setText(x0.h.getString("replypri_content", x0.getString(R.string.no_replaysms)));
        editText.setInputType(144);
        new CustomDialog.Builder(x0).setTitle(R.string.replymes_dialogtitle).setContentView(inflate).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass19 */

            public final void onClick(DialogInterface dialog, int which) {
                if (TextUtils.isEmpty(editText.getText().toString().trim())) {
                    Toast.makeText(ContractSetting.this, (int) R.string.setting_pwdfail, 0).show();
                } else if (editText.getText().toString().trim().length() > 50) {
                    Toast.makeText(ContractSetting.this, (int) R.string.msg_long_error, 0).show();
                } else {
                    ContractSetting.this.h.edit().putString("replypri_content", editText.getText().toString()).commit();
                    dialog.dismiss();
                }
            }
        }, false).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass12 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
        x0.r.sendEmptyMessageDelayed(1, 1000);
    }

    static /* synthetic */ void f(ContractSetting x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.smsnotifymode_title).setSingleChoiceItems(R.array.sms_mode, Integer.parseInt(x0.h.getString("sms_mode", DatabaseTables.SYSTEM_MARK)), new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass23 */

            public final void onClick(DialogInterface dialog, int which) {
                ContractSetting.this.n = which;
            }
        }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass22 */

            public final void onClick(DialogInterface dialog, int which) {
                ContractSetting.this.e.setSummary(ContractSetting.this.getSpan(ContractSetting.this.getString(ContractSetting.this.p[ContractSetting.this.n]), R.color.gray2));
                ContractSetting.this.h.edit().putString("sms_mode", String.valueOf(ContractSetting.this.n)).commit();
                if (ContractSetting.this.n == 0) {
                    ContractSetting.this.a.setEnabled(false);
                } else {
                    ContractSetting.this.a.setEnabled(true);
                }
            }
        }).show();
    }

    static /* synthetic */ void g(ContractSetting x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.callnotifymode_title).setSingleChoiceItems(R.array.call_mode, Settings.System.getInt(x0.getContentResolver(), "privateCall_mode_on", 0), new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass21 */

            public final void onClick(DialogInterface dialog, int which) {
                ContractSetting.this.m = which;
            }
        }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass20 */

            public final void onClick(DialogInterface dialog, int which) {
                ContractSetting.this.d.setSummary(ContractSetting.this.getSpan(ContractSetting.this.getString(ContractSetting.this.q[ContractSetting.this.m]), R.color.gray2));
                Settings.System.putInt(ContractSetting.this.getContentResolver(), "privateCall_mode_on", ContractSetting.this.m);
                if (ContractSetting.this.m == 0) {
                    ContractSetting.this.f.setEnabled(false);
                    ContractSetting.this.b.setEnabled(true);
                    ContractSetting.this.f.setTitle(ContractSetting.this.getSpan(ContractSetting.this.getString(R.string.replymes_title), R.color.gray2));
                } else if (ContractSetting.this.m == 1) {
                    ContractSetting.this.f.setEnabled(false);
                    ContractSetting.this.b.setEnabled(true);
                    ContractSetting.this.f.setTitle(ContractSetting.this.getSpan(ContractSetting.this.getString(R.string.replymes_title), R.color.gray2));
                } else if (ContractSetting.this.m == 2) {
                    ContractSetting.this.f.setEnabled(true);
                    ContractSetting.this.b.setEnabled(true);
                    ContractSetting.this.f.setTitle(ContractSetting.this.getSpan(ContractSetting.this.getString(R.string.replymes_title), R.color.black2));
                }
            }
        }).show();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.safemode_settings, null);
        setPreferenceScreen(createPrefence());
        getListView().setBackgroundDrawable(getResources().getDrawable(R.drawable.blue));
        this.i = PreferenceManager.getDefaultSharedPreferences(this);
        this.h = this.c.getSharedPreferences();
        this.n = Integer.parseInt(this.h.getString("sms_mode", DatabaseTables.SYSTEM_MARK));
        this.e.setSummary(getSpan(getString(this.p[this.n]), R.color.gray2));
        this.m = Settings.System.getInt(getContentResolver(), "privateCall_mode_on", 0);
        this.d.setSummary(getSpan(getString(this.q[this.m]), R.color.gray2));
        this.s = new a(this, (byte) 0);
        registerReceiver(this.s, new IntentFilter("android.intent.action.SCREEN_OFF"));
        Log.i(AppDatabase.CONTENT, "DataHelpUtils===" + DataHelpUtils.execService("changeimg", this));
        if (this.n == 0) {
            this.a.setEnabled(false);
        }
        if (Settings.System.getInt(getContentResolver(), "privateCall_mode_on", 0) == 0) {
            this.f.setEnabled(false);
            this.b.setEnabled(true);
            this.f.setTitle(getSpan(getString(R.string.replymes_title), R.color.gray2));
        } else if (Settings.System.getInt(getContentResolver(), "privateCall_mode_on", 0) == 1) {
            this.f.setEnabled(false);
            this.b.setEnabled(true);
            this.f.setTitle(getSpan(getString(R.string.replymes_title), R.color.gray2));
        } else if (Settings.System.getInt(getContentResolver(), "privateCall_mode_on", 0) == 2) {
            this.f.setEnabled(true);
            this.b.setEnabled(true);
            this.f.setTitle(getSpan(getString(R.string.replymes_title), R.color.black2));
        }
        onChang();
    }

    public SpannableString getSpan(int resID) {
        SpannableString spannable = new SpannableString(getString(resID));
        spannable.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.black4)), 0, getString(resID).length(), 0);
        return spannable;
    }

    public PreferenceScreen createPrefence() {
        PreferenceScreen root = getPreferenceManager().createPreferenceScreen(this);
        PreferenceCategory mainCategory = new PreferenceCategory(this);
        mainCategory.setTitle(getSpan(R.string.private_settitile));
        root.addPreference(mainCategory);
        this.c = new Preference(this);
        this.c.setLayoutResource(R.layout.pref_list_item);
        this.c.setWidgetLayoutResource(R.layout.pref_widget_more);
        this.c.setKey("changename");
        this.c.setTitle(R.string.changename_title);
        mainCategory.addPreference(this.c);
        this.g = new Preference(this);
        this.g.setKey("error_pwd");
        this.g.setLayoutResource(R.layout.pref_list_item);
        this.g.setWidgetLayoutResource(R.layout.pref_widget_more);
        this.g.setTitle(R.string.error_pwdtitle);
        mainCategory.addPreference(this.g);
        PreferenceCategory categoryset = new PreferenceCategory(this);
        categoryset.setTitle(getSpan(R.string.smsmodesetting));
        root.addPreference(categoryset);
        this.e = new Preference(this);
        this.e.setKey("smsnotifymode");
        this.e.setLayoutResource(R.layout.pref_list_item);
        this.e.setWidgetLayoutResource(R.layout.pref_widget_more);
        this.e.setTitle(R.string.smsnotifymode_title);
        categoryset.addPreference(this.e);
        this.a = new Preference(this);
        this.a.setKey("smsnotify");
        this.a.setLayoutResource(R.layout.pref_list_item);
        this.a.setWidgetLayoutResource(R.layout.pref_widget_more);
        this.a.setTitle(R.string.callnotify);
        categoryset.addPreference(this.a);
        PreferenceCategory categoryMode = new PreferenceCategory(this);
        categoryMode.setTitle(getSpan(R.string.callmodesetting));
        root.addPreference(categoryMode);
        this.d = new Preference(this);
        this.d.setKey("callnotifymode");
        this.d.setLayoutResource(R.layout.pref_list_item);
        this.d.setWidgetLayoutResource(R.layout.pref_widget_more);
        this.d.setTitle(R.string.callnotifymode_title);
        categoryMode.addPreference(this.d);
        this.f = new Preference(this);
        this.f.setKey("replymes");
        this.f.setLayoutResource(R.layout.pref_list_item);
        this.f.setWidgetLayoutResource(R.layout.pref_widget_more);
        categoryMode.addPreference(this.f);
        this.b = new Preference(this);
        this.b.setKey("callnotify");
        this.b.setTitle(R.string.callnotify);
        this.b.setLayoutResource(R.layout.pref_list_item);
        this.b.setWidgetLayoutResource(R.layout.pref_widget_more);
        categoryMode.addPreference(this.b);
        return root;
    }

    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(ContractSetting x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                ContractSetting.this.finish();
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.s);
    }

    public SpannableString getSpan(String str, int color) {
        SpannableString spannable = new SpannableString(str);
        spannable.setSpan(new ForegroundColorSpan(getResources().getColor(color)), 0, str.length(), 0);
        return spannable;
    }

    public void onChang() {
        this.f.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass24 */

            public final boolean onPreferenceClick(Preference preference) {
                ContractSetting.e(ContractSetting.this);
                return true;
            }
        });
        this.e.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass25 */

            public final boolean onPreferenceClick(Preference preference) {
                ContractSetting.f(ContractSetting.this);
                return true;
            }
        });
        this.d.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass2 */

            public final boolean onPreferenceClick(Preference preference) {
                ContractSetting.g(ContractSetting.this);
                return true;
            }
        });
    }

    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.i(AppDatabase.CONTENT, preference.getKey());
        if (preference.getKey().equals("changepwd")) {
            showChangePwdDialog();
        } else if (preference.getKey().equals("smsnotify")) {
            startActivity(new Intent(this, EditSettingActivity.class).putExtra(DatabaseTables.APPLICATIONS_FLAG, 2));
        } else if (preference.getKey().equals("callnotify")) {
            startActivity(new Intent(this, EditSettingActivity.class).putExtra(DatabaseTables.APPLICATIONS_FLAG, 3));
        } else if (preference.getKey().equals("changename")) {
            startActivity(new Intent(this, EditSettingActivity.class).putExtra(DatabaseTables.APPLICATIONS_FLAG, 1));
        } else if (preference.getKey().equals("changeimg")) {
            if (DataHelpUtils.execService("changeimg", this).equals("") || DataHelpUtils.execService("changeimg", this).equals("0")) {
                this.j = 0;
            } else {
                this.j = 1;
            }
            showDialogImage();
        } else if (preference.getKey().equals("smsimg")) {
            if (DataHelpUtils.execService("changesmsimg", this).equals("") || DataHelpUtils.execService("changesmsimg", this).equals("0")) {
                this.l = 0;
            } else {
                this.l = 1;
            }
            showDialogImageSms();
        } else if (preference.getKey().equals("callimg")) {
            if (DataHelpUtils.execService("changecallimg", this).equals("") || DataHelpUtils.execService("changecallimg", this).equals("0")) {
                this.k = 0;
            } else {
                this.k = 1;
            }
            showDialogImageCall();
        } else if (preference.getKey().equals("error_pwd")) {
            showChangePwdDialog();
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    public void showChangePwdDialog() {
        View view = LayoutInflater.from(this).inflate(R.layout.safemode_error_password, (ViewGroup) null);
        final EditText pwd = (EditText) view.findViewById(R.id.safemode_input_pwd);
        final EditText pwd2 = (EditText) view.findViewById(R.id.safemode_input_pwd_again);
        if (!DataHelpUtils.execService("pwd", this).equals("")) {
            pwd.setText(DataHelpUtils.execService("pwd", this));
            pwd2.setText(DataHelpUtils.execService("pwd", this));
        }
        new CustomDialog.Builder(this).setTitle(R.string.changpwd_title).setContentView(view).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
                if (TextUtils.isEmpty(pwd.getText().toString().trim()) && TextUtils.isEmpty(pwd2.getText().toString().trim())) {
                    Toast.makeText(ContractSetting.this, (int) R.string.error_tips_null, 0).show();
                } else if (TextUtils.isEmpty(pwd.getText().toString().trim()) || TextUtils.isEmpty(pwd2.getText().toString().trim()) || pwd.getText().toString().length() != 6 || !pwd.getText().toString().equals(pwd2.getText().toString())) {
                    if (pwd.getText().toString().trim().length() < 6 || pwd2.getText().toString().trim().length() < 6) {
                        Toast.makeText(ContractSetting.this, (int) R.string.safemode_input_pwd, 0).show();
                    } else {
                        Toast.makeText(ContractSetting.this, (int) R.string.error_diff, 0).show();
                    }
                } else if (PwdUtil.checkPassword(ContractSetting.this.getApplicationContext(), pwd2.getText().toString())) {
                    pwd2.setText("");
                    pwd.setText("");
                    Toast.makeText(ContractSetting.this, (int) R.string.error_password_set, 0).show();
                } else {
                    DataHelpUtils.UpdateConfig("pwd", pwd.getText().toString(), ContractSetting.this);
                    Toast.makeText(ContractSetting.this, (int) R.string.setting_pwdok, 0).show();
                    dialog.dismiss();
                }
            }
        }, false).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass3 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
        this.r.sendEmptyMessageDelayed(1, 1000);
    }

    public void showChangeNotifyDialog(final int type) {
        View view = LayoutInflater.from(this).inflate(R.layout.safemode_input_password, (ViewGroup) null);
        final EditText pwd = (EditText) view.findViewById(R.id.safemode_input_pwd);
        final EditText pwd2 = (EditText) view.findViewById(R.id.safemode_input_pwd_again);
        TextView txt2 = (TextView) view.findViewById(R.id.safemode_dailog_title2);
        ((TextView) view.findViewById(R.id.safemode_dailog_title1)).setText(R.string.dialog_title1);
        txt2.setVisibility(8);
        pwd2.setVisibility(8);
        txt2.setText(R.string.dialog_title2);
        pwd2.setInputType(144);
        if (type == 0) {
            if (DataHelpUtils.execService("smsnotifytitle", this).equals("")) {
                pwd.setText(R.string.newsms);
                pwd2.setText(R.string.notify);
            } else {
                pwd.setText(DataHelpUtils.execService("smsnotifytitle", this));
                pwd2.setText(DataHelpUtils.execService("smsnotifycontent", this));
            }
        } else if (type == 1) {
            if (DataHelpUtils.execService("callnotifytitle", this).equals("")) {
                pwd.setText(R.string.newcall);
                pwd2.setText(R.string.notify);
            } else {
                pwd.setText(DataHelpUtils.execService("callnotifytitle", this));
                pwd2.setText(DataHelpUtils.execService("callnotifycontent", this));
            }
        }
        new CustomDialog.Builder(this).setTitle(R.string.dialog_title).setContentView(view).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass6 */

            public final void onClick(DialogInterface dialog, int which) {
                if (!TextUtils.isEmpty(pwd.getText().toString().trim())) {
                    if (type == 1) {
                        DataHelpUtils.UpdateConfig("callnotifytitle", pwd.getText().toString(), ContractSetting.this);
                        DataHelpUtils.UpdateConfig("callnotifycontent", pwd2.getText().toString(), ContractSetting.this);
                    } else if (type == 0) {
                        DataHelpUtils.UpdateConfig("smsnotifytitle", pwd.getText().toString(), ContractSetting.this);
                        DataHelpUtils.UpdateConfig("smsnotifycontent", pwd2.getText().toString(), ContractSetting.this);
                    }
                    dialog.dismiss();
                    Toast.makeText(ContractSetting.this, (int) R.string.setting_pwdok, 0).show();
                    return;
                }
                Toast.makeText(ContractSetting.this, (int) R.string.setting_pwdfail, 0).show();
            }
        }, false).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
        this.r.sendEmptyMessageDelayed(1, 1000);
    }

    public int getWordCount(String s2) {
        int length = 0;
        for (int i2 = 0; i2 < s2.length(); i2++) {
            int ascii = Character.codePointAt(s2, i2);
            if (ascii < 0 || ascii > 255) {
                length += 2;
            } else {
                length++;
            }
        }
        return length;
    }

    public void showChangeNameDialog() {
        View view = LayoutInflater.from(this).inflate(R.layout.safemode_input_password, (ViewGroup) null);
        final EditText pwd = (EditText) view.findViewById(R.id.safemode_input_pwd);
        EditText pwd2 = (EditText) view.findViewById(R.id.safemode_input_pwd_again);
        TextView txt2 = (TextView) view.findViewById(R.id.safemode_dailog_title2);
        ((TextView) view.findViewById(R.id.safemode_dailog_title1)).setText(R.string.changedes_txt1);
        txt2.setText(R.string.changedes_txt2);
        pwd2.setInputType(144);
        txt2.setVisibility(8);
        pwd2.setVisibility(8);
        if (DataHelpUtils.execService("changeNametitle", this).equals("")) {
            pwd.setText(R.string.privacy_safe);
        } else {
            pwd.setText(DataHelpUtils.execService("changeNametitle", this));
        }
        new CustomDialog.Builder(this).setTitle(R.string.changename_title).setContentView(view).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass8 */

            public final void onClick(DialogInterface dialog, int which) {
                if (TextUtils.isEmpty(pwd.getText().toString().trim())) {
                    Toast.makeText(ContractSetting.this, (int) R.string.setting_pwdfail, 0).show();
                } else if (ContractSetting.this.getWordCount(pwd.getText().toString()) <= 8) {
                    DataHelpUtils.UpdateConfig("changeNametitle", pwd.getText().toString(), ContractSetting.this);
                    Toast.makeText(ContractSetting.this, (int) R.string.setting_pwdok, 0).show();
                    dialog.dismiss();
                } else {
                    Toast.makeText(ContractSetting.this, (int) R.string.long_whire, 0).show();
                }
            }
        }, false).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass7 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
        this.r.sendEmptyMessageDelayed(1, 1000);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private List<Map<String, Object>> a() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<>();
        Log.i(AppDatabase.CONTENT, String.valueOf(this.j) + "==getData");
        if (this.l == 0) {
            map.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_on));
        } else {
            map.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_off));
        }
        map.put("img", Integer.valueOf((int) R.drawable.smsnotify_show_black));
        list.add(map);
        Map<String, Object> map2 = new HashMap<>();
        if (this.l == 1) {
            map2.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_on));
        } else {
            map2.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_off));
        }
        map2.put("img", Integer.valueOf((int) R.drawable.notify_hide_black));
        list.add(map2);
        return list;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private List<Map<String, Object>> b() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<>();
        Log.i(AppDatabase.CONTENT, String.valueOf(this.j) + "==getData");
        if (this.k == 0) {
            map.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_on));
        } else {
            map.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_off));
        }
        map.put("img", Integer.valueOf((int) R.drawable.callnotify_show_black));
        list.add(map);
        Map<String, Object> map2 = new HashMap<>();
        if (this.k == 1) {
            map2.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_on));
        } else {
            map2.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_off));
        }
        map2.put("img", Integer.valueOf((int) R.drawable.notify_hide_black));
        list.add(map2);
        return list;
    }

    public void showDialogImage() {
        this.o = c();
        MyAdapter myAdapter = new MyAdapter(this);
        final ListView listview = new ListView(this);
        listview.setCacheColorHint(getResources().getColor(R.color.transparent_background));
        listview.setAdapter((ListAdapter) myAdapter);
        listview.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass9 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                ContractSetting.this.j = position;
                ContractSetting.this.o = ContractSetting.this.c();
                listview.invalidateViews();
            }
        });
        new CustomDialog.Builder(this).setTitle(R.string.changeimage_title).setContentView(listview).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass11 */

            public final void onClick(DialogInterface dialog, int which) {
                Log.i(AppDatabase.CONTENT, String.valueOf(ContractSetting.this.j));
                DataHelpUtils.UpdateConfig("changeimg", String.valueOf(ContractSetting.this.j), ContractSetting.this);
                dialog.dismiss();
            }
        }).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass10 */

            public final void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        }).show();
    }

    public void showDialogImageCall() {
        this.o = b();
        MyAdapter myAdapter = new MyAdapter(this);
        final ListView listview = new ListView(this);
        listview.setCacheColorHint(getResources().getColor(R.color.transparent_background));
        listview.setAdapter((ListAdapter) myAdapter);
        listview.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass13 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                ContractSetting.this.k = position;
                ContractSetting.this.o = ContractSetting.this.b();
                listview.invalidateViews();
            }
        });
        new CustomDialog.Builder(this).setTitle(R.string.callimg_notify).setContentView(listview).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass15 */

            public final void onClick(DialogInterface dialog, int which) {
                Log.i(AppDatabase.CONTENT, String.valueOf(ContractSetting.this.k));
                DataHelpUtils.UpdateConfig("changecallimg", String.valueOf(ContractSetting.this.k), ContractSetting.this);
                dialog.dismiss();
            }
        }).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass14 */

            public final void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        }).show();
    }

    public void showDialogImageSms() {
        this.o = a();
        MyAdapter myAdapter = new MyAdapter(this);
        final ListView listview = new ListView(this);
        listview.setAdapter((ListAdapter) myAdapter);
        listview.setCacheColorHint(getResources().getColor(R.color.transparent_background));
        listview.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass16 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                ContractSetting.this.l = position;
                ContractSetting.this.o = ContractSetting.this.a();
                listview.invalidateViews();
            }
        });
        new CustomDialog.Builder(this).setTitle(R.string.smsimg_notify).setContentView(listview).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass18 */

            public final void onClick(DialogInterface dialog, int which) {
                Log.i(AppDatabase.CONTENT, String.valueOf(ContractSetting.this.l));
                DataHelpUtils.UpdateConfig("changesmsimg", String.valueOf(ContractSetting.this.l), ContractSetting.this);
                dialog.dismiss();
            }
        }).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ContractSetting.AnonymousClass17 */

            public final void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        }).show();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private List<Map<String, Object>> c() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<>();
        Log.i(AppDatabase.CONTENT, String.valueOf(this.j) + "==getData");
        if (this.j == 0) {
            map.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_on));
        } else {
            map.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_off));
        }
        map.put("img", Integer.valueOf((int) R.drawable.home_page_drawer_privacy_safe));
        list.add(map);
        Map<String, Object> map2 = new HashMap<>();
        if (this.j == 1) {
            map2.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_on));
        } else {
            map2.put("imgon", Integer.valueOf((int) R.drawable.btn_radio_off));
        }
        map2.put("img", Integer.valueOf((int) R.drawable.safemode_hide));
        list.add(map2);
        return list;
    }

    public final class ViewHolder {
        public ImageView img;
        public ImageView imgon;

        public ViewHolder() {
        }
    }

    public class MyAdapter extends BaseAdapter {
        private LayoutInflater b;

        public MyAdapter(Context context) {
            this.b = LayoutInflater.from(context);
        }

        public int getCount() {
            return ContractSetting.this.o.size();
        }

        public Object getItem(int arg0) {
            return null;
        }

        public long getItemId(int arg0) {
            return 0;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            ViewHolder holder;
            if (convertView == null) {
                holder = new ViewHolder();
                convertView = this.b.inflate(R.layout.vlist2, (ViewGroup) null);
                holder.img = (ImageView) convertView.findViewById(R.id.changeimg_img);
                holder.imgon = (ImageView) convertView.findViewById(R.id.changeimg_on);
                convertView.setTag(holder);
            } else {
                holder = (ViewHolder) convertView.getTag();
            }
            holder.img.setBackgroundResource(((Integer) ((Map) ContractSetting.this.o.get(position)).get("img")).intValue());
            holder.imgon.setBackgroundResource(((Integer) ((Map) ContractSetting.this.o.get(position)).get("imgon")).intValue());
            return convertView;
        }
    }
}
