package com.lenovo.safecenter.lenovoAntiSpam.newview;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.CallLog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.database.NetAppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.SignCall;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.Untils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class SignActivity extends BaseTitleActivity {
    private LinearLayout a;
    private LinearLayout b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private TextView g;
    private ListView h;
    private int i = 0;
    private AppDatabase j;
    private SignCallBlackApater k;
    private List<SignCall> l;
    private NetAppDatabase m;
    private List<SignCall> n;
    private Handler o = new Handler() {
        /* class com.lenovo.safecenter.lenovoAntiSpam.newview.SignActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 5:
                    if (SignActivity.this.n != null && SignActivity.this.n.size() > 0) {
                        SignCall ss = new SignCall();
                        ss.setId(-8);
                        SignActivity.this.n.add(0, ss);
                        SignActivity.this.l.addAll(SignActivity.this.n);
                        SignActivity.this.k.notifyDataSetChanged();
                        SignActivity.this.h.invalidateViews();
                    }
                    TextView textView = SignActivity.this.g;
                    String string = SignActivity.this.getString(R.string.strange_income_count);
                    Object[] objArr = new Object[1];
                    objArr[0] = Integer.valueOf(SignActivity.this.n.size() > 1 ? SignActivity.this.n.size() - 1 : 0);
                    textView.setText(String.format(string, objArr));
                    return;
                default:
                    return;
            }
        }
    };

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.signmain);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.harsssign_lin, (Integer) null);
        findViews();
        this.h.setDivider(null);
        this.j = new AppDatabase(this);
        this.k = new SignCallBlackApater();
        this.m = new NetAppDatabase(this);
        try {
            initData(this.i);
        } catch (Exception e2) {
            e2.printStackTrace();
            finish();
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        } else if (v.getId() == R.id.signcalled_lin) {
            initData(1);
        } else if (v.getId() == R.id.tagcall_lin) {
            initData(0);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void initData(int type) {
        if (type == 0) {
            this.l = this.j.getSignList();
            if (this.l.size() > 0) {
                SignCall ss = new SignCall();
                ss.setId(-5);
                this.l.add(0, ss);
            }
            this.k = new SignCallBlackApater();
            this.a.setBackgroundResource(R.drawable.tab_select);
            this.b.setBackgroundResource(R.drawable.tab_normal);
            this.d.setText(R.string.sign_tagnull);
            this.e.setTextColor(getResources().getColor(R.color.blue));
            this.f.setTextColor(getResources().getColor(R.color.black4));
            this.i = 0;
            this.h.setAdapter((ListAdapter) this.k);
            this.c.setText(String.format(getString(R.string.sign_totalshow), Integer.valueOf(this.j.getSignCount())));
        } else if (type == 1) {
            this.l = this.j.getSignList();
            this.k = new SignCallBlackApater();
            this.a.setBackgroundResource(R.drawable.tab_select);
            this.b.setBackgroundResource(R.drawable.tab_normal);
            this.d.setText(R.string.sign_tagnull);
            this.e.setTextColor(getResources().getColor(R.color.blue));
            this.f.setTextColor(getResources().getColor(R.color.black4));
            this.i = 0;
            this.h.setAdapter((ListAdapter) this.k);
            this.c.setText(String.format(getString(R.string.sign_totalshow), Integer.valueOf(this.j.getSignCount())));
        }
        if (this.n == null) {
            new Thread() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.newview.SignActivity.AnonymousClass2 */

                public final void run() {
                    try {
                        SignActivity.this.getSignCallList();
                        SignActivity.this.o.sendEmptyMessage(5);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }.start();
        }
    }

    public void findViews() {
        this.a = (LinearLayout) findViewById(R.id.tagcall_lin);
        this.b = (LinearLayout) findViewById(R.id.signcalled_lin);
        this.c = (TextView) findViewById(R.id.signmain_title);
        this.h = (ListView) findViewById(R.id.signmain_list);
        this.d = (TextView) findViewById(R.id.signmain_empty);
        this.h.setItemsCanFocus(false);
        this.h.setEmptyView(this.d);
        this.e = (TextView) findViewById(R.id.taglist_btn);
        this.f = (TextView) findViewById(R.id.calling_btn);
        this.g = (TextView) findViewById(R.id.signstr_title);
        this.a.setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.h.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.SignActivity.AnonymousClass3 */

            @Override // android.widget.AdapterView.OnItemLongClickListener
            public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int position, long id) {
                return false;
            }
        });
    }

    public void getSignCallList() {
        SignCall signCall;
        Cursor cursor = getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{com.lenovo.safecenter.database.AppDatabase.NUMBER, "date", "type", "duration"}, "type=? or type=?", new String[]{String.valueOf(1), String.valueOf(3)}, "number,date desc ");
        this.n = new ArrayList();
        String preNum = "";
        while (cursor.moveToNext()) {
            String number = cursor.getString(cursor.getColumnIndex(com.lenovo.safecenter.database.AppDatabase.NUMBER));
            if (Untils.isPhoneNUmber(number) && !number.equals(preNum)) {
                preNum = number;
                if (isStangerPhoneNumber(number) && (signCall = getStrange_sign(number)) != null) {
                    signCall.setAddTime(cursor.getString(cursor.getColumnIndex("date")));
                    if (cursor.getInt(cursor.getColumnIndex("type")) == 3) {
                        signCall.setCallDur(1000);
                    } else {
                        signCall.setCallDur(cursor.getInt(cursor.getColumnIndex("duration")));
                    }
                    signCall.setNumber(number);
                    this.n.add(signCall);
                }
            }
        }
        cursor.close();
        if (this.n.size() > 0) {
            Collections.sort(this.n, new a());
        }
    }

    public SignCall getStrange_sign(String number) {
        try {
            SignCall sign = this.m.local_netSign(number);
            if (sign == null) {
                return this.m.get_netSign(number);
            }
            return sign;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public boolean isStangerPhoneNumber(String number) {
        if (SecurityService.secutityPerson.contains(number) || SecurityService.localBlackPerson.contains(number) || SecurityService.netBlackPerson.contains(number) || SecurityService.whitePerson.contains(number) || isInContactsdia(this, number) || isSign(number)) {
            return false;
        }
        return true;
    }

    public boolean isSign(String number) {
        if (this.j.getSignCall(number) != null) {
            return true;
        }
        return false;
    }

    public boolean isInContactsdia(Context act, String number) {
        Cursor phoneCursor = act.getContentResolver().query(Uri.parse("content://com.android.contacts/data/phones"), null, "PHONE_NUMBERS_EQUAL(data1,'" + number + "',0)", null, null);
        int count = phoneCursor.getCount();
        phoneCursor.close();
        if (count > 0) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public class a implements Comparator {
        public a() {
        }

        @Override // java.util.Comparator
        public final int compare(Object o1, Object o2) {
            long installed1 = Long.parseLong(((SignCall) o1).getAddTime());
            long installed2 = Long.parseLong(((SignCall) o2).getAddTime());
            if (installed1 > installed2) {
                return -1;
            }
            if (installed1 == installed2) {
                return 0;
            }
            return 1;
        }
    }

    public String getDescFromType(int stype) {
        if (stype == 1) {
            return getString(R.string.signtype1);
        }
        if (stype == 2) {
            return getString(R.string.signtype2);
        }
        if (stype == 3) {
            return getString(R.string.signtype3);
        }
        if (stype == 11) {
            return getString(R.string.signtype4);
        }
        if (stype == 12) {
            return getString(R.string.signtype5);
        }
        if (stype == 13) {
            return getString(R.string.signtype6);
        }
        return getString(R.string.signtype1);
    }

    public String getStr(int time) {
        if (time < 60) {
            return time + getString(R.string.seconds);
        }
        int minite = time / 60;
        if (minite < 60) {
            return minite + getString(R.string.minute) + (time - (minite * 60)) + getString(R.string.seconds);
        }
        int hour = time / 3600;
        int min = (time - ((hour * 60) * 60)) / 60;
        return hour + getString(R.string.hour_text) + min + getString(R.string.minute) + ((time - ((hour * 60) * 60)) - (min * 60)) + getString(R.string.seconds);
    }

    public void deleteSign(SignCall sing_call) {
        this.j.delSignCall(sing_call);
        int i2 = 0;
        while (true) {
            if (i2 >= this.l.size()) {
                break;
            } else if (sing_call.getNumber().equals(this.l.get(i2).getNumber())) {
                this.l.remove(i2);
                break;
            } else {
                i2++;
            }
        }
        if (this.j.getSignCount() == 0) {
            this.l.remove(0);
        }
        this.k.notifyDataSetChanged();
        this.h.invalidateViews();
        this.c.setText(String.format(getString(R.string.sign_totalshow), Integer.valueOf(this.j.getSignCount())));
    }

    public void showReport_fail(final SignCall sing_call) {
        new CustomDialog.Builder(this).setTitle(getString(R.string.signcancel) + sing_call.getNumber()).setMessage(R.string.signcancel_dialog).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.SignActivity.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
                SignActivity.this.deleteSign(sing_call);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.SignActivity.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
                dialog.cancel();
            }
        }).show();
    }

    public class SignCallBlackApater extends BaseAdapter {
        public SignCallBlackApater() {
        }

        public int getCount() {
            return SignActivity.this.l.size();
        }

        public Object getItem(int position) {
            return SignActivity.this.l.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            View convertView2;
            a holder;
            SignCall tag = (SignCall) SignActivity.this.l.get(position);
            if (tag.getId() == -5 || tag.getId() == -8) {
                convertView2 = LayoutInflater.from(SignActivity.this).inflate(R.layout.health_list_title, (ViewGroup) null);
                holder = new a(this, (byte) 0);
                convertView2.setBackgroundDrawable(SignActivity.this.getResources().getDrawable(R.drawable.notification_text));
                holder.a = (TextView) convertView2.findViewById(R.id.title);
            } else {
                convertView2 = LayoutInflater.from(SignActivity.this).inflate(R.layout.signmain_item, (ViewGroup) null);
                holder = new a(this, (byte) 0);
                holder.a = (TextView) convertView2.findViewById(R.id.sign_number);
                holder.b = (TextView) convertView2.findViewById(R.id.sign_time);
                holder.c = (TextView) convertView2.findViewById(R.id.sign_tag);
                holder.d = (TextView) convertView2.findViewById(R.id.sign_type);
            }
            if (tag.getId() == -8) {
                holder.a.setText(R.string.strange_income);
            } else if (tag.getId() == -5) {
                holder.a.setText(R.string.hadsign_title);
            } else {
                holder.c.setTag(tag);
                if (tag.getCallDur() >= 0) {
                    holder.a.setText(tag.getNumber());
                    if (tag.getCallDur() == 1000) {
                        holder.b.setText(R.string.misscall);
                    } else {
                        holder.b.setText(String.format(SignActivity.this.getString(R.string.sign_timedesc), SignActivity.this.getStr(tag.getCallDur())));
                    }
                    holder.c.setVisibility(8);
                    holder.d.setVisibility(0);
                    holder.d.setText(String.format(SignActivity.this.getString(R.string.netsign_showtype), SignActivity.this.getDescFromType(tag.getsType())));
                } else {
                    holder.c.setVisibility(0);
                    holder.d.setVisibility(8);
                    holder.a.setText(tag.getNumber() + " " + SignActivity.this.getDescFromType(tag.getsType()));
                    holder.b.setText(String.format(SignActivity.this.getString(R.string.sign_timedesc), SignActivity.this.getStr(tag.getTotalCall())));
                }
                holder.c.setOnClickListener(new View.OnClickListener() {
                    /* class com.lenovo.safecenter.lenovoAntiSpam.newview.SignActivity.SignCallBlackApater.AnonymousClass1 */

                    public final void onClick(View v) {
                        SignActivity.this.showReport_fail((SignCall) v.getTag());
                    }
                });
            }
            return convertView2;
        }

        private class a {
            TextView a;
            TextView b;
            TextView c;
            TextView d;

            private a() {
            }

            /* synthetic */ a(SignCallBlackApater x0, byte b2) {
                this();
            }
        }
    }
}
