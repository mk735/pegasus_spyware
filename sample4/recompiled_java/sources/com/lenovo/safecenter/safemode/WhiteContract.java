package com.lenovo.safecenter.safemode;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.CallLog;
import android.text.TextUtils;
import android.util.Log;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.support.HttpUtils;
import com.lenovo.safecenter.utils.ContractHelpUtils;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.Untils;
import java.util.List;

public class WhiteContract extends Activity {
    ContractHelpUtils a;
    private ExpandableListView b;
    private Button c;
    private TextView d;
    private a e;
    private AppDatabase f;
    private List<Contract> g;
    private int h = 0;
    public Handler hand = new Handler() {
        /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    String number = msg.getData().getString(AppDatabase.NUMBER);
                    List<Contract> smslist = WhiteContract.this.f.getwhiteSmsInfo(number);
                    List<Contract> calllist = WhiteContract.this.f.getCallByNumber(number);
                    if (smslist.size() > 0 || calllist.size() > 0) {
                        WhiteContract.a(WhiteContract.this, smslist, calllist, number);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(WhiteContract x0, final int x1, final String x2) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(R.string.del_confirm).setColorPositiveButton(false).setColorNegativeButton(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass9 */

            public final void onClick(DialogInterface dialog, int which) {
                WhiteContract.this.f.deleteWhite(x1);
                WhiteContract.this.g.remove(WhiteContract.this.h);
                WhiteContract.this.e.notifyDataSetChanged();
                WhiteContract.this.b.invalidateViews();
                if (WhiteContract.this.h < WhiteContract.this.g.size()) {
                    WhiteContract.this.b.collapseGroup(WhiteContract.this.h);
                }
                ContractHelpUtils.sendBraodcast(WhiteContract.this, "com.lenovo.securityperson.change");
                Message msg = new Message();
                msg.what = 1;
                msg.getData().putString(AppDatabase.NUMBER, x2);
                WhiteContract.this.hand.sendMessage(msg);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass8 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    static /* synthetic */ void a(WhiteContract x0, Contract x1) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("address", x1.getPhoneNumber());
        contentValues.put("date", x1.getDate());
        contentValues.put(PushReceiver.READ, Integer.valueOf(x1.getIsRead()));
        contentValues.put("status", (Integer) -1);
        contentValues.put("type", Integer.valueOf(x1.getSmstype()));
        contentValues.put(PushReceiver.BODY, x1.getSmsContent());
        x0.getContentResolver().insert(Uri.parse("content://sms"), contentValues);
    }

    static /* synthetic */ void a(WhiteContract x0, final List x1, final List x2, final String x3) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(String.format(x0.getString(R.string.recover_tolocal), x3)).setColorPositiveButton(true).setColorNegativeButton(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass7 */

            public final void onClick(DialogInterface dialog, int which) {
                new Thread() {
                    /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass7.AnonymousClass1 */

                    public final void run() {
                        for (Contract con : x1) {
                            WhiteContract.a(WhiteContract.this, con);
                        }
                        for (Contract con2 : x2) {
                            WhiteContract.b(WhiteContract.this, con2);
                        }
                        WhiteContract.this.f.delinfo(x3);
                    }
                }.start();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass6 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    static /* synthetic */ void b(WhiteContract x0, Contract x1) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(AppDatabase.NUMBER, x1.getPhoneNumber());
        contentValues.put("date", x1.getDate());
        contentValues.put("type", Integer.valueOf(x1.getCallType()));
        contentValues.put("new", (Integer) 0);
        contentValues.put("duration", (Integer) 0);
        x0.getContentResolver().insert(CallLog.Calls.CONTENT_URI, contentValues);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.antispamlocalblack_view);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.changedes_title);
        this.f = new AppDatabase(this);
        this.a = new ContractHelpUtils();
        DataHelpUtils.allActivity.add(this);
        this.b = (ExpandableListView) findViewById(R.id.addblacklist);
        this.b.setDivider(getResources().getDrawable(R.drawable.space_line));
        this.b.setGroupIndicator(null);
        this.c = (Button) findViewById(R.id.sigleadd_btn);
        this.d = (TextView) findViewById(R.id.antispamcallempty);
        this.d.setText(R.string.pri_adddesc);
        this.b.setEmptyView(this.d);
        onClick();
    }

    public void showAddMethod() {
        new CustomDialog.Builder(this).setTitle(getString(R.string.quick_addtitle)).setItems(R.array.private_quick_add, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass10 */

            public final void onClick(DialogInterface dialog, int which) {
                switch (which) {
                    case 0:
                        HttpUtils.private_isOpenSec = true;
                        Intent callIntent = new Intent(WhiteContract.this, AddContract.class);
                        callIntent.putExtra("fromtype", 1);
                        WhiteContract.this.startActivity(callIntent);
                        return;
                    case 1:
                        HttpUtils.private_isOpenSec = true;
                        Intent smsIntent = new Intent(WhiteContract.this, AddContract.class);
                        smsIntent.putExtra("fromtype", 2);
                        WhiteContract.this.startActivity(smsIntent);
                        return;
                    case 2:
                        HttpUtils.private_isOpenSec = true;
                        Intent contractIntent = new Intent(WhiteContract.this, AddContract.class);
                        contractIntent.putExtra("fromtype", 0);
                        WhiteContract.this.startActivity(contractIntent);
                        return;
                    case 3:
                        WhiteContract.this.showAddDialog();
                        return;
                    default:
                        return;
                }
            }
        }).show();
    }

    public void showAddDialog() {
        View view = LayoutInflater.from(this).inflate(R.layout.safemode_input_password, (ViewGroup) null);
        final EditText pwd = (EditText) view.findViewById(R.id.safemode_input_pwd);
        final EditText pwd2 = (EditText) view.findViewById(R.id.safemode_input_pwd_again);
        ((TextView) view.findViewById(R.id.safemode_dailog_title1)).setText(R.string.hand_number);
        ((TextView) view.findViewById(R.id.safemode_dailog_title2)).setText(R.string.hand_name);
        pwd.setInputType(144);
        pwd2.setInputType(144);
        new CustomDialog.Builder(this).setTitle(R.string.privacy_mode_set).setContentView(view).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass12 */

            public final void onClick(DialogInterface dialog, int which) {
                if (pwd.getText() == null || pwd.getText().toString().trim().equals("")) {
                    Toast.makeText(WhiteContract.this, (int) R.string.hand_number_null, 0).show();
                } else if (!TextUtils.isDigitsOnly(pwd.getText().toString()) && !Patterns.PHONE.matcher(pwd.getText().toString()).matches()) {
                    Toast.makeText(WhiteContract.this, (int) R.string.hand_number_error, 0).show();
                } else if (WhiteContract.this.f.getWhiteContract(pwd.getText().toString()) == null) {
                    String name = null;
                    if (pwd2.getText() != null && !pwd2.getText().toString().trim().equalsIgnoreCase("")) {
                        name = pwd2.getText().toString();
                    }
                    final Contract conAdd = new Contract();
                    conAdd.setName(name);
                    conAdd.setPhoneNumber(pwd.getText().toString());
                    conAdd.setRealnumber(WhiteContract.this.a.getRealPhoneNumber(pwd.getText().toString()));
                    WhiteContract.this.f.insertContract(conAdd);
                    ContractHelpUtils.sendBraodcast(WhiteContract.this, "com.lenovo.securityperson.change");
                    WhiteContract.this.initDate();
                    new Thread() {
                        /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass12.AnonymousClass1 */

                        public final void run() {
                            WhiteContract.this.initCopyDel(conAdd);
                        }
                    }.start();
                } else {
                    Toast.makeText(WhiteContract.this, (int) R.string.hand_number_error1, 0).show();
                }
            }
        }).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass11 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    public void onClick() {
        this.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass13 */

            public final void onClick(View v) {
                WhiteContract.this.showAddMethod();
            }
        });
        this.b.setOnGroupExpandListener(new ExpandableListView.OnGroupExpandListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass2 */

            public final void onGroupExpand(int groupPosition) {
                WhiteContract.this.h = groupPosition;
                if (groupPosition == WhiteContract.this.g.size() - 1) {
                    WhiteContract.this.b.setTranscriptMode(2);
                } else {
                    WhiteContract.this.b.setTranscriptMode(1);
                }
                for (int i = 0; i < WhiteContract.this.e.getGroupCount(); i++) {
                    if (groupPosition != i) {
                        WhiteContract.this.b.collapseGroup(i);
                    }
                }
            }
        });
    }

    public void initCopyDel(final Contract con) {
        new Thread() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass3 */

            public final void run() {
                try {
                    String optNumber = con.getPhoneNumber();
                    if (WhiteContract.this.a.isMobileNO(optNumber)) {
                        optNumber = WhiteContract.this.a.optNUmber(optNumber);
                    }
                    List<Contract> call = WhiteContract.this.a.getCallContractByNUmber(WhiteContract.this, optNumber, con.getPhoneNumber());
                    List<Contract> sms = WhiteContract.this.a.getSmsByNUmber(WhiteContract.this, optNumber, con.getPhoneNumber(), con.getName());
                    Log.i("sms_size", "smssize==" + sms.size() + call.size());
                    WhiteContract.this.f.insertCall(call);
                    WhiteContract.this.f.insertSms(sms);
                    if (call.size() > 0 || sms.size() > 0) {
                        WhiteContract.this.a.operateNumber(optNumber, WhiteContract.this, sms.size() > 0);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void showChangeContract(final Contract con) {
        for (int i = 0; i < this.e.getGroupCount(); i++) {
            this.b.collapseGroup(i);
        }
        View view = LayoutInflater.from(this).inflate(R.layout.safemode_input_password, (ViewGroup) null);
        final EditText pwd = (EditText) view.findViewById(R.id.safemode_input_pwd);
        final EditText pwd2 = (EditText) view.findViewById(R.id.safemode_input_pwd_again);
        ((TextView) view.findViewById(R.id.safemode_dailog_title1)).setText(R.string.hand_number);
        ((TextView) view.findViewById(R.id.safemode_dailog_title2)).setText(R.string.hand_name);
        pwd.setInputType(144);
        pwd2.setInputType(144);
        if (con.getName() == null || con.getName().equals("")) {
            pwd2.setText("");
        } else {
            pwd2.setText(con.getName());
        }
        pwd.setText(con.getPhoneNumber());
        new CustomDialog.Builder(this).setTitle(R.string.mutil_edit).setContentView(view).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
                if (pwd.getText().toString().equals("") || (!TextUtils.isDigitsOnly(pwd.getText().toString()) && !Patterns.PHONE.matcher(pwd.getText().toString()).matches())) {
                    Toast.makeText(WhiteContract.this, (int) R.string.setting_pwdfail, 0).show();
                    return;
                }
                String number = pwd.getText().toString();
                String name = pwd2.getText().toString();
                if (WhiteContract.this.isWhiteEdit(number, con.getId())) {
                    Toast.makeText(WhiteContract.this, (int) R.string.hand_number_error1, 0).show();
                    return;
                }
                if (pwd2.getText().toString().equals("")) {
                    name = null;
                }
                WhiteContract.this.f.updateContract(con.getId(), number, name, WhiteContract.this.a.getRealPhoneNumber(number));
                WhiteContract.this.f.updateName(name, number);
                if (!con.getPhoneNumber().equals(number)) {
                    if (Untils.compare(con.getPhoneNumber(), number, false)) {
                        WhiteContract.this.f.updateName(name, con.getPhoneNumber());
                        WhiteContract.this.f.updateNUmber(number, con.getPhoneNumber());
                    } else {
                        WhiteContract.this.f.updateName(con.getPhoneNumber(), con.getPhoneNumber());
                    }
                }
                int i = 0;
                while (true) {
                    if (i >= WhiteContract.this.g.size()) {
                        break;
                    } else if (((Contract) WhiteContract.this.g.get(i)).getId() == con.getId()) {
                        ((Contract) WhiteContract.this.g.get(i)).setPhoneNumber(number);
                        ((Contract) WhiteContract.this.g.get(i)).setName(name);
                        break;
                    } else {
                        i++;
                    }
                }
                WhiteContract.this.b.invalidateViews();
                ContractHelpUtils.sendBraodcast(WhiteContract.this, "com.lenovo.securityperson.change");
                Toast.makeText(WhiteContract.this, (int) R.string.setting_pwdok, 0).show();
            }
        }).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteContract.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    public boolean isWhiteEdit(String number, int id) {
        try {
            Cursor cursor = getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.whiteperson/whiteperson"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0) and _id<>?", new String[]{String.valueOf(id)}, null);
            int count = cursor.getCount();
            cursor.close();
            return count > 0;
        } catch (Exception e2) {
            return false;
        }
    }

    public void initDate() {
        this.g = this.f.getAllWhiteContract();
        this.e = new a(this);
        this.b.setAdapter(this.e);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        initDate();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: package-private */
    public class a extends BaseExpandableListAdapter {
        Context a;
        b b;
        C0008a c;
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
                this.c = new C0008a();
                this.c.a = (TextView) convertView.findViewById(R.id.deal1);
                this.c.b = (TextView) convertView.findViewById(R.id.deal2);
                this.c.c = (TextView) convertView.findViewById(R.id.deal3);
                convertView.setTag(this.c);
            } else {
                this.c = (C0008a) convertView.getTag();
            }
            this.c.a.setText(R.string.safemode_callto);
            this.c.b.setText(R.string.replay_sms);
            this.c.c.setText(R.string.delete);
            this.c.a.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.safemode.WhiteContract.a.AnonymousClass1 */

                public final void onClick(View v) {
                    try {
                        WhiteContract.this.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + ((Contract) WhiteContract.this.g.get(WhiteContract.this.h)).getPhoneNumber())));
                    } catch (Exception e) {
                        Toast.makeText(WhiteContract.this, (int) R.string.opensms_error, 0).show();
                    }
                }
            });
            this.c.b.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.safemode.WhiteContract.a.AnonymousClass2 */

                public final void onClick(View v) {
                    Intent smsIntent = new Intent(WhiteContract.this, WhiteSmsShowByNumber.class);
                    smsIntent.putExtra(AppDatabase.NUMBER, ((Contract) WhiteContract.this.g.get(WhiteContract.this.h)).getPhoneNumber());
                    WhiteContract.this.startActivity(smsIntent);
                }
            });
            this.c.c.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.safemode.WhiteContract.a.AnonymousClass3 */

                public final void onClick(View v) {
                    WhiteContract.a(WhiteContract.this, ((Contract) WhiteContract.this.g.get(WhiteContract.this.h)).getId(), ((Contract) WhiteContract.this.g.get(WhiteContract.this.h)).getPhoneNumber());
                }
            });
            return convertView;
        }

        public final Object getGroup(int groupPosition) {
            return WhiteContract.this.g.get(groupPosition);
        }

        public final int getGroupCount() {
            return WhiteContract.this.g.size();
        }

        public final long getGroupId(int groupPosition) {
            return (long) groupPosition;
        }

        public final View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(this.a).inflate(R.layout.whitecontractinfo, (ViewGroup) null);
                this.b = new b();
                this.b.b = (TextView) convertView.findViewById(R.id.txt_number);
                this.b.a = (TextView) convertView.findViewById(R.id.txt_edit);
                convertView.setTag(this.b);
            } else {
                this.b = (b) convertView.getTag();
            }
            Contract con = (Contract) WhiteContract.this.g.get(groupPosition);
            String name = con.getName();
            if (TextUtils.isEmpty(name)) {
                this.b.b.setText(con.getPhoneNumber());
            } else {
                this.b.b.setText(name);
            }
            this.b.a.setTag(con);
            this.b.a.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.safemode.WhiteContract.a.AnonymousClass4 */

                public final void onClick(View v) {
                    WhiteContract.this.showChangeContract((Contract) v.getTag());
                }
            });
            return convertView;
        }

        public final boolean hasStableIds() {
            return false;
        }

        public final boolean isChildSelectable(int groupPosition, int childPosition) {
            return false;
        }

        class b {
            TextView a;
            TextView b;

            b() {
            }
        }

        /* renamed from: com.lenovo.safecenter.safemode.WhiteContract$a$a  reason: collision with other inner class name */
        class C0008a {
            TextView a;
            TextView b;
            TextView c;

            C0008a() {
            }
        }
    }
}
