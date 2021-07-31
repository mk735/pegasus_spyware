package com.lenovo.safecenter.lenovoAntiSpam.views;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Patterns;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Toast;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.BlackInfo;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.TrackEvent;

public class HandBlackActivity extends BaseTitleActivity {
    private int a;
    private EditText b;
    private EditText c;
    private Button d;
    private Button e;
    private ContractHelpUtils f;
    private CheckBox g;
    private CheckBox h;
    private AppDatabase i;
    private String j;

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.j = getIntent().getStringExtra("method");
        this.a = getIntent().getIntExtra("type", 0);
        setContentView(R.layout.antispamhandblack);
        this.i = new AppDatabase(this);
        this.g = (CheckBox) findViewById(R.id.harass_call);
        this.h = (CheckBox) findViewById(R.id.harass_sms);
        this.b = (EditText) findViewById(R.id.antispamhand_number_value);
        this.c = (EditText) findViewById(R.id.antispamhand_name_value);
        this.d = (Button) findViewById(R.id.antispamhand_numbre_add);
        this.e = (Button) findViewById(R.id.antispamhand_numbre_back);
        this.f = new ContractHelpUtils();
        onBtnClick();
        if (this.j.equals("add")) {
            this.b.setEnabled(true);
            setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antispamaddcall, (Integer) null);
            this.g.setChecked(true);
            this.h.setChecked(true);
        } else if (this.j.equals("modify")) {
            this.d.setBackgroundResource(R.drawable.signbtn_bg);
            BlackInfo info = this.i.getLocalBlackDemo(getIntent().getIntExtra(QueryPermissions.ID, 0));
            Log.i("info", info + "==" + getIntent().getIntExtra(QueryPermissions.ID, 0));
            if (info != null) {
                this.d.setText(R.string.change);
                setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.modify_black, (Integer) null);
                if (info.getType() == 2) {
                    this.g.setChecked(true);
                    this.h.setChecked(true);
                } else if (info.getType() == 1) {
                    this.g.setChecked(true);
                    this.h.setChecked(false);
                } else if (info.getType() == 0) {
                    this.g.setChecked(false);
                    this.h.setChecked(true);
                } else {
                    this.g.setChecked(false);
                    this.h.setChecked(false);
                }
                this.b.setText(info.getPhoneNumber());
                if (info.getIsUpload() == 1) {
                    this.b.setEnabled(false);
                } else {
                    this.b.setEnabled(true);
                }
                if (info.getName() != null && !info.getName().equals("")) {
                    this.c.setText(info.getName());
                }
            }
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    public void onBtnClick() {
        this.d.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.HandBlackActivity.AnonymousClass1 */

            public final void onClick(View v) {
                String name;
                if (HandBlackActivity.this.b.getText() == null || HandBlackActivity.this.b.getText().toString().trim().equalsIgnoreCase("")) {
                    Toast.makeText(HandBlackActivity.this, (int) R.string.antispamhand_number_null, 0).show();
                    return;
                }
                String number = HandBlackActivity.this.b.getText().toString();
                if (TextUtils.isDigitsOnly(number.trim()) || Patterns.PHONE.matcher(number.trim()).matches()) {
                    String checknumber = HandBlackActivity.this.f.getRealPhoneNumber(number);
                    Cursor phoneCursor = HandBlackActivity.this.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"), new String[]{"_id"}, "realnumber=?", new String[]{checknumber}, null);
                    int count = phoneCursor.getCount();
                    phoneCursor.close();
                    if (count > 0) {
                        Toast.makeText(HandBlackActivity.this, (int) R.string.antispamhand_number_error3, 0).show();
                        return;
                    }
                    if (HandBlackActivity.this.c.getText() == null || HandBlackActivity.this.c.getText().toString().equalsIgnoreCase("")) {
                        Cursor contract_Cursor = HandBlackActivity.this.getContentResolver().query(Uri.parse("content://com.android.contacts/data/phones"), new String[]{"display_name"}, "PHONE_NUMBERS_EQUAL(data1,'" + checknumber + "',0)", null, null);
                        if (contract_Cursor.moveToFirst()) {
                            name = contract_Cursor.getString(contract_Cursor.getColumnIndex("display_name"));
                        } else {
                            name = null;
                        }
                        if (name == null || name.equals("")) {
                            name = null;
                        }
                        contract_Cursor.close();
                    } else {
                        name = HandBlackActivity.this.c.getText().toString();
                    }
                    if (HandBlackActivity.this.g.isChecked() && HandBlackActivity.this.h.isChecked()) {
                        HandBlackActivity.this.a = 2;
                    }
                    if (HandBlackActivity.this.g.isChecked() && !HandBlackActivity.this.h.isChecked()) {
                        HandBlackActivity.this.a = 1;
                    }
                    if (!HandBlackActivity.this.g.isChecked() && HandBlackActivity.this.h.isChecked()) {
                        HandBlackActivity.this.a = 0;
                    }
                    if (!HandBlackActivity.this.g.isChecked() && !HandBlackActivity.this.h.isChecked()) {
                        HandBlackActivity.this.a = 4;
                    }
                    if (HandBlackActivity.this.j.equals("modify")) {
                        if (HandBlackActivity.this.isLocalBlackEdit(number, HandBlackActivity.this.getIntent().getIntExtra(QueryPermissions.ID, 0))) {
                            Toast.makeText(HandBlackActivity.this, (int) R.string.antispamhand_number_error1, 0).show();
                            return;
                        }
                        HandBlackActivity.this.i.updateLocalBlack_Demo(HandBlackActivity.this.getIntent().getIntExtra(QueryPermissions.ID, 0), name, number, checknumber, HandBlackActivity.this.a, 0);
                        ContractHelpUtils.sendBraodcast(HandBlackActivity.this, "com.lenovo.antispam.blackperson.change");
                        HandBlackActivity.this.finish();
                    } else if (!HandBlackActivity.isLocalBlack(HandBlackActivity.this, number)) {
                        BlackInfo newinfo = new BlackInfo(name, number, HandBlackActivity.this.a, 0);
                        newinfo.setRealnumber(HandBlackActivity.this.f.getRealPhoneNumber(number));
                        HandBlackActivity.this.i.insertLocalBlack(newinfo);
                        ContractHelpUtils.sendBraodcast(HandBlackActivity.this, "com.lenovo.antispam.blackperson.change");
                        Toast.makeText(HandBlackActivity.this, (int) R.string.info_success, 0).show();
                        HandBlackActivity.this.finish();
                    } else {
                        Toast.makeText(HandBlackActivity.this, (int) R.string.antispamhand_number_error1, 0).show();
                    }
                } else {
                    Toast.makeText(HandBlackActivity.this, (int) R.string.hand_number_error, 0).show();
                }
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.HandBlackActivity.AnonymousClass2 */

            public final void onClick(View v) {
                HandBlackActivity.this.finish();
            }
        });
    }

    public static boolean isLocalBlack(Context context, String number) {
        try {
            ContentResolver resolver = context.getContentResolver();
            ContractHelpUtils help = new ContractHelpUtils();
            if (help.isMobileNO(number)) {
                number = help.optNUmber(number);
            }
            Cursor cursor = resolver.query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0)", null, null);
            int count = cursor.getCount();
            cursor.close();
            if (count > 0) {
                return true;
            }
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    public boolean isLocalBlackEdit(String number, int id) {
        try {
            Cursor cursor = getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0) and _id<>?", new String[]{String.valueOf(id)}, null);
            int count = cursor.getCount();
            cursor.close();
            return count > 0;
        } catch (Exception e2) {
            return false;
        }
    }
}
