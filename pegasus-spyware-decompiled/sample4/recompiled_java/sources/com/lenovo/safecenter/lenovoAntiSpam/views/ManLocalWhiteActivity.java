package com.lenovo.safecenter.lenovoAntiSpam.views;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.BlackInfo;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class ManLocalWhiteActivity extends Activity {
    AppDatabase a;
    Button b;
    private ExpandableListView c;
    private List<BlackInfo> d;
    private ProgressDialog e;
    private TextView f;
    private ContractHelpUtils g;
    private a h;
    private Handler i = new b(this, (byte) 0);
    private int j;

    static /* synthetic */ void i(ManLocalWhiteActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.notify).setMessage(R.string.del_info).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.AnonymousClass9 */

            public final void onClick(DialogInterface dialog, int which) {
                ManLocalWhiteActivity.this.deleteWhite();
                Toast.makeText(ManLocalWhiteActivity.this, (int) R.string.del_sucess, 0).show();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.AnonymousClass8 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    private class b extends Handler {
        private b() {
        }

        /* synthetic */ b(ManLocalWhiteActivity x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ContractHelpUtils.sendBraodcast(ManLocalWhiteActivity.this, "com.lenovo.antispam.whiteperson.change");
                    if (ManLocalWhiteActivity.this.d.size() == 0) {
                        ManLocalWhiteActivity.this.initViewSys();
                        return;
                    }
                    ManLocalWhiteActivity.this.h.notifyDataSetChanged();
                    ManLocalWhiteActivity.this.c.invalidateViews();
                    return;
                case 2:
                    if (ManLocalWhiteActivity.this.e != null) {
                        try {
                            ManLocalWhiteActivity.this.e.dismiss();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (ManLocalWhiteActivity.this.d != null) {
                        ManLocalWhiteActivity.this.f.setVisibility(8);
                        ManLocalWhiteActivity.this.c.setAdapter(ManLocalWhiteActivity.this.h);
                        return;
                    }
                    ManLocalWhiteActivity.this.f.setVisibility(0);
                    return;
                case 3:
                    ManLocalWhiteActivity.this.c.invalidateViews();
                    return;
                case 4:
                    ContractHelpUtils.sendBraodcast(ManLocalWhiteActivity.this, "com.lenovo.antispam.whiteperson.change");
                    ManLocalWhiteActivity.this.initViewSys();
                    return;
                default:
                    return;
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.antispamlocalblack_view);
        this.c = (ExpandableListView) findViewById(R.id.addblacklist);
        this.c.setGroupIndicator(null);
        this.c.setDivider(getResources().getDrawable(R.drawable.space_line));
        this.f = (TextView) findViewById(R.id.antispamcallempty);
        this.f.setText(R.string.antispamnowhiteperson);
        this.b = (Button) findViewById(R.id.sigleadd_btn);
        this.g = new ContractHelpUtils();
        this.a = new AppDatabase(this);
        this.c.setEmptyView(this.f);
        if (Settings.System.getInt(getContentResolver(), "guest_mode_on", 0) == 1) {
            this.b.setEnabled(false);
        }
        setOnClick();
    }

    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void initDate() {
        this.d = this.a.getWhitePersonList();
        if (Settings.System.getInt(getContentResolver(), "guest_mode_on", 0) == 1) {
            this.d = new ArrayList();
        }
        this.h = new a(this);
        this.c.setAdapter(this.h);
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
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.AnonymousClass1 */

            public final void onGroupExpand(int groupPosition) {
                ManLocalWhiteActivity.this.j = groupPosition;
                if (groupPosition == ManLocalWhiteActivity.this.d.size() - 1) {
                    ManLocalWhiteActivity.this.c.setTranscriptMode(2);
                } else {
                    ManLocalWhiteActivity.this.c.setTranscriptMode(1);
                }
                for (int i = 0; i < ManLocalWhiteActivity.this.h.getGroupCount(); i++) {
                    if (groupPosition != i) {
                        ManLocalWhiteActivity.this.c.collapseGroup(i);
                    }
                }
            }
        });
        this.b.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.AnonymousClass2 */

            public final void onClick(View v) {
                if (ManLocalWhiteActivity.this.d == null || ManLocalWhiteActivity.this.d.size() < 500) {
                    ManLocalWhiteActivity.this.showDialog(1);
                } else {
                    Toast.makeText(ManLocalWhiteActivity.this, (int) R.string.antispamdata_limit1, 0).show();
                }
            }
        });
    }

    public Dialog onCreateDialog(int id, Bundle args) {
        switch (id) {
            case 1:
                return new CustomDialog.Builder(this).setTitle(getString(R.string.antispamquick_operation)).setItems(R.array.antispamadd_whitephone, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.AnonymousClass3 */

                    public final void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:
                                Intent intentContract = new Intent(ManLocalWhiteActivity.this, ManAddWhiteContract.class);
                                intentContract.putExtra("from", SofeModeMain.TS_CALL);
                                ManLocalWhiteActivity.this.startActivity(intentContract);
                                return;
                            case 1:
                                Intent intentSMS = new Intent(ManLocalWhiteActivity.this, ManAddWhiteContract.class);
                                intentSMS.putExtra("from", SofeModeMain.TS_SMS);
                                ManLocalWhiteActivity.this.startActivity(intentSMS);
                                return;
                            case 2:
                                Intent intent = new Intent(ManLocalWhiteActivity.this, ManAddWhiteContract.class);
                                intent.putExtra("from", "phone");
                                ManLocalWhiteActivity.this.startActivity(intent);
                                return;
                            case 3:
                                ManLocalWhiteActivity.this.showAddDialog();
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

    public void showAddDialog() {
        View view = LayoutInflater.from(this).inflate(R.layout.safemode_input_password, (ViewGroup) null);
        final EditText pwd = (EditText) view.findViewById(R.id.safemode_input_pwd);
        final EditText pwd2 = (EditText) view.findViewById(R.id.safemode_input_pwd_again);
        ((TextView) view.findViewById(R.id.safemode_dailog_title1)).setText(R.string.hand_number);
        ((TextView) view.findViewById(R.id.safemode_dailog_title2)).setText(R.string.antispamhand_name);
        pwd.setInputType(2);
        pwd2.setInputType(144);
        new CustomDialog.Builder(this).setTitle(R.string.antispamaddfromphone).setContentView(view).setPositiveButton(R.string.save, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
                if (pwd.getText() == null || pwd.getText().toString().trim().equals("")) {
                    Toast.makeText(ManLocalWhiteActivity.this, (int) R.string.hand_number_null, 0).show();
                } else if (TextUtils.isDigitsOnly(pwd.getText().toString()) || Patterns.PHONE.matcher(pwd.getText().toString()).matches()) {
                    String checknumber = pwd.getText().toString().trim().toString();
                    if (ManLocalWhiteActivity.this.iswhite(checknumber)) {
                        Toast.makeText(ManLocalWhiteActivity.this, (int) R.string.antispamhand_number_error3, 0).show();
                    } else if (!ManLocalWhiteActivity.this.isBlack(pwd.getText().toString().trim())) {
                        if (!TextUtils.isEmpty(pwd2.getText())) {
                            ManLocalWhiteActivity.this.a.insertWritePerson(checknumber, ManLocalWhiteActivity.this.g.getRealPhoneNumber(checknumber), pwd2.getText().toString().trim());
                        } else {
                            ManLocalWhiteActivity.this.a.insertWritePerson(checknumber, ManLocalWhiteActivity.this.g.getRealPhoneNumber(checknumber), null);
                        }
                        ManLocalWhiteActivity.this.i.sendEmptyMessage(4);
                    } else {
                        Toast.makeText(ManLocalWhiteActivity.this, (int) R.string.antispamhand_number_error1, 0).show();
                    }
                } else {
                    Toast.makeText(ManLocalWhiteActivity.this, (int) R.string.hand_number_error, 0).show();
                }
            }
        }).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    public void showEditDialog() {
        View view = LayoutInflater.from(this).inflate(R.layout.safemode_input_password, (ViewGroup) null);
        final EditText pwd = (EditText) view.findViewById(R.id.safemode_input_pwd);
        final EditText pwd2 = (EditText) view.findViewById(R.id.safemode_input_pwd_again);
        ((TextView) view.findViewById(R.id.safemode_dailog_title1)).setText(R.string.hand_number);
        ((TextView) view.findViewById(R.id.safemode_dailog_title2)).setText(R.string.hand_name);
        pwd.setInputType(2);
        pwd2.setInputType(144);
        pwd.setText(this.d.get(this.j).getPhoneNumber());
        pwd2.setText(TextUtils.isEmpty(this.d.get(this.j).getName()) ? "" : this.d.get(this.j).getName());
        new CustomDialog.Builder(this).setTitle(R.string.antispamaddfromphone).setContentView(view).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.AnonymousClass7 */

            public final void onClick(DialogInterface dialog, int which) {
                if (TextUtils.isEmpty(pwd.getText())) {
                    Toast.makeText(ManLocalWhiteActivity.this, (int) R.string.hand_number_null, 0).show();
                } else if (TextUtils.isDigitsOnly(pwd.getText().toString()) || Patterns.PHONE.matcher(pwd.getText().toString()).matches()) {
                    String checknumber = pwd.getText().toString();
                    if (ManLocalWhiteActivity.this.iswhiteEdit(checknumber, ((BlackInfo) ManLocalWhiteActivity.this.d.get(ManLocalWhiteActivity.this.j)).getId())) {
                        Toast.makeText(ManLocalWhiteActivity.this, (int) R.string.antispamhand_number_error3, 0).show();
                    } else if (!ManLocalWhiteActivity.this.isBlack(pwd.getText().toString().trim())) {
                        if (!TextUtils.isEmpty(pwd2.getText())) {
                            ManLocalWhiteActivity.this.a.updateWritePerson(checknumber, ManLocalWhiteActivity.this.g.getRealPhoneNumber(checknumber), pwd2.getText().toString().trim(), ((BlackInfo) ManLocalWhiteActivity.this.d.get(ManLocalWhiteActivity.this.j)).getId());
                            ((BlackInfo) ManLocalWhiteActivity.this.d.get(ManLocalWhiteActivity.this.j)).setName(pwd2.getText().toString());
                            ((BlackInfo) ManLocalWhiteActivity.this.d.get(ManLocalWhiteActivity.this.j)).setPhoneNumber(checknumber);
                            ManLocalWhiteActivity.this.h.notifyDataSetChanged();
                        } else {
                            ManLocalWhiteActivity.this.a.updateWritePerson(checknumber, ManLocalWhiteActivity.this.g.getRealPhoneNumber(checknumber), null, ((BlackInfo) ManLocalWhiteActivity.this.d.get(ManLocalWhiteActivity.this.j)).getId());
                            ((BlackInfo) ManLocalWhiteActivity.this.d.get(ManLocalWhiteActivity.this.j)).setName(null);
                            ((BlackInfo) ManLocalWhiteActivity.this.d.get(ManLocalWhiteActivity.this.j)).setPhoneNumber(checknumber);
                            ManLocalWhiteActivity.this.h.notifyDataSetChanged();
                        }
                        ContractHelpUtils.sendBraodcast(ManLocalWhiteActivity.this, "com.lenovo.antispam.whiteperson.change");
                    } else {
                        Toast.makeText(ManLocalWhiteActivity.this, (int) R.string.antispamhand_number_error1, 0).show();
                    }
                } else {
                    Toast.makeText(ManLocalWhiteActivity.this, (int) R.string.hand_number_error, 0).show();
                }
            }
        }).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.AnonymousClass6 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    public boolean iswhiteEdit(String number, int id) {
        Uri uri1 = Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson");
        Cursor phoneCursor = getContentResolver().query(uri1, null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0) and _id<>?", new String[]{String.valueOf(id)}, null);
        boolean isWhite = false;
        if (phoneCursor.getCount() > 0) {
            isWhite = true;
        }
        phoneCursor.close();
        return isWhite;
    }

    public boolean iswhite(String number) {
        Cursor phoneCursor = getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0)", null, null);
        boolean isWhite = false;
        if (phoneCursor.getCount() > 0) {
            isWhite = true;
        }
        phoneCursor.close();
        return isWhite;
    }

    public boolean isBlack(String phoneNumber) {
        Cursor phoneCursor = getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + phoneNumber + "',0)", null, null);
        boolean isBlack = false;
        if (phoneCursor.getCount() > 0) {
            isBlack = true;
        }
        phoneCursor.close();
        return isBlack;
    }

    public void deleteWhite() {
        this.a.deleteWhite(this.d.get(this.j).getId());
        this.d.remove(this.j);
        this.h.notifyDataSetChanged();
        if (this.j < this.d.size()) {
            this.c.collapseGroup(this.j);
        }
        ContractHelpUtils.sendBraodcast(this, "com.lenovo.antispam.whiteperson.change");
    }

    /* access modifiers changed from: package-private */
    public class a extends BaseExpandableListAdapter {
        Context a;
        b b;
        C0007a c;
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
                this.c = new C0007a();
                this.c.a = (TextView) convertView.findViewById(R.id.deal1);
                this.c.b = (TextView) convertView.findViewById(R.id.deal2);
                this.c.c = (TextView) convertView.findViewById(R.id.deal3);
                convertView.setTag(this.c);
            } else {
                this.c = (C0007a) convertView.getTag();
            }
            this.c.a.setText(R.string.mutil_edit);
            this.c.b.setVisibility(8);
            this.c.c.setText(R.string.delete);
            this.c.a.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.a.AnonymousClass1 */

                public final void onClick(View v) {
                    ManLocalWhiteActivity.this.showEditDialog();
                }
            });
            this.c.c.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity.a.AnonymousClass2 */

                public final void onClick(View v) {
                    ManLocalWhiteActivity.i(ManLocalWhiteActivity.this);
                }
            });
            return convertView;
        }

        public final Object getGroup(int groupPosition) {
            return ManLocalWhiteActivity.this.d.get(groupPosition);
        }

        public final int getGroupCount() {
            return ManLocalWhiteActivity.this.d.size();
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
            BlackInfo info = (BlackInfo) ManLocalWhiteActivity.this.d.get(groupPosition);
            this.b.b.setVisibility(8);
            this.b.a.setImageResource(R.drawable.antispamwhite);
            this.b.c.setVisibility(8);
            this.b.e.setText(info.getPhoneNumber());
            if (info.getName() == null || info.getName().equals("")) {
                this.b.d.setText(R.string.antispamlocalblack_noName);
            } else {
                this.b.d.setText(info.getName());
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
            ImageView b;
            ImageView c;
            TextView d;
            TextView e;

            b() {
            }
        }

        /* renamed from: com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity$a$a  reason: collision with other inner class name */
        class C0007a {
            TextView a;
            TextView b;
            TextView c;

            C0007a() {
            }
        }
    }
}
