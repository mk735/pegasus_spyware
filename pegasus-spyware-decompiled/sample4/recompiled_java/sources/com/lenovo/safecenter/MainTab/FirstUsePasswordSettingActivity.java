package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;

public class FirstUsePasswordSettingActivity extends Activity implements View.OnClickListener {
    private String a = null;
    private Button b;
    private int c = 0;
    private String d;
    private EditText e;
    private EditText f;
    private EditText g;
    private View h;
    private View i;
    private View j;
    private String[] k;
    private long l;
    private ImageView m;
    private ImageView n;

    static /* synthetic */ void a(FirstUsePasswordSettingActivity x0) {
        Intent intent = new Intent();
        if (Const.ACTION_JUMP_CHILD_MODE.equals(x0.a)) {
            intent.setAction(Const.ACTION_JUMP_CHILD_MODE);
            x0.startActivity(intent);
        } else if (Const.ACTION_JUMP_KID_MODE.equals(x0.a)) {
            WflUtils.jumpKidModeOrDownloadpage(x0);
        } else if (Const.ACTION_JUMP_GUEST_MODE.equals(x0.a)) {
            intent.setAction(Const.ACTION_JUMP_GUEST_MODE);
            x0.startActivity(intent);
        } else if (Const.ACTION_JUMP_RPIVACY_SAFE.equals(x0.a)) {
            WflUtils.jumpPrivatezoneOrDownloadpage(x0);
        } else if (Const.ACTION_JUMP_APP_LOCK.equals(x0.a)) {
            WflUtils.jumpAppLockOrDownloadpage(x0);
        } else if (Const.ACTION_JUMP_PROTECT_THIEF.equals(x0.a)) {
            intent.setAction(Const.ACTION_JUMP_PROTECT_THIEF);
            x0.startActivity(intent);
        } else if (Const.ACTION_JUMP_CHILD_MODE_SWITCH.equals(x0.a)) {
            LeSafeObservable.get(x0).noticeChangeGuestModeSuccess();
        } else if (Const.ACTION_JUMP_GUEST_MODE_SWITCH.equals(x0.a)) {
            LeSafeObservable.get(x0).noticeChangeGuestModeSuccess();
        } else if (Const.ACTION_JUMP_SETTING_PASSWORD.equals(x0.a) || Const.ACTION_MODIFY_PASSWORD_USE_ANSWER.equals(x0.a) || Const.ACTION_MODIFY_PASSWORD_USE_PRE_PASSWORD.equals(x0.a)) {
            LeSafeObservable.get(x0).noticeChangePassword();
        } else if (Const.ACTION_JUMP_SET_GESTURE.equals(x0.a)) {
            intent.setAction(Const.ACTION_JUMP_SET_GESTURE);
            x0.startActivity(intent);
        } else if (Const.ACTION_JUMP_ADMIN_GESTURE.equals(x0.a)) {
            intent.setAction(Const.ACTION_JUMP_ADMIN_GESTURE);
            x0.startActivity(intent);
        }
        x0.finish();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_first_use_password_setting_layout);
        getWindow().setSoftInputMode(34);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.pwd_set);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.MainTab.FirstUsePasswordSettingActivity.AnonymousClass1 */

            public final void onClick(View v) {
                FirstUsePasswordSettingActivity.this.finish();
            }
        });
        this.k = getResources().getStringArray(R.array.array_pwd_question);
        this.a = getIntent().getAction();
        Log.i("wu0wu", "FirstUsePasswordSettingActivity mAction=" + this.a);
        this.h = findViewById(R.id.inputPwd_layout);
        this.j = findViewById(R.id.input_pwd_bg);
        this.j.setOnClickListener(this);
        this.m = (ImageView) findViewById(R.id.img_pwd_Set);
        this.n = (ImageView) findViewById(R.id.img_pwd_question);
        this.i = findViewById(R.id.inputQuestion_layout);
        this.e = (EditText) findViewById(R.id.first_inputPwd_editText);
        this.f = (EditText) findViewById(R.id.second_inputPwd_editText);
        this.g = (EditText) findViewById(R.id.answer_editText);
        this.b = (Button) findViewById(R.id.submitBtn);
        this.b.setOnClickListener(this);
        a();
    }

    private void a() {
        switch (this.c) {
            case 0:
                this.m.setBackgroundResource(R.drawable.first_set_password_tab_seleted);
                this.n.setBackgroundResource(R.drawable.first_set_password_tab_normal);
                this.b.setText(R.string.next_step);
                this.h.setVisibility(0);
                this.i.setVisibility(8);
                return;
            case 1:
                this.m.setBackgroundResource(R.drawable.first_set_password_tab_normal);
                this.n.setBackgroundResource(R.drawable.first_set_password_tab_seleted);
                this.b.setText(R.string.Complete);
                this.h.setVisibility(8);
                this.i.setVisibility(0);
                String[] preAnswer = PwdUtil.queryPwdQuestionAndAnswerWithJieMi(this);
                if (!Const.ACTION_MODIFY_PASSWORD_USE_ANSWER.equals(this.a) && !Const.ACTION_MODIFY_PASSWORD_USE_PRE_PASSWORD.equals(this.a)) {
                    this.g.setHint(R.string.antispamhand_number_hit);
                } else if (TextUtils.isEmpty(preAnswer[1])) {
                    this.g.setHint(R.string.antispamhand_number_hit);
                } else {
                    this.g.setText(preAnswer[1]);
                }
                ArrayAdapter arrayAdapter = new ArrayAdapter(this, 17367048, this.k);
                arrayAdapter.setDropDownViewResource(17367049);
                Spinner spinner = (Spinner) findViewById(R.id.spinner_question);
                spinner.setAdapter((SpinnerAdapter) arrayAdapter);
                int i2 = 0;
                while (true) {
                    if (i2 < this.k.length) {
                        if (this.k[i2].equals(preAnswer[0])) {
                            spinner.setSelection(i2);
                        } else {
                            i2++;
                        }
                    }
                }
                spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                    /* class com.lenovo.safecenter.MainTab.FirstUsePasswordSettingActivity.AnonymousClass2 */

                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public final void onItemSelected(AdapterView<?> adapterView, View view, int position, long id) {
                        FirstUsePasswordSettingActivity.this.l = id;
                    }

                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public final void onNothingSelected(AdapterView<?> adapterView) {
                    }
                });
                return;
            default:
                return;
        }
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.input_pwd_bg /*{ENCODED_INT: 2131296305}*/:
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.j.getWindowToken(), 0);
                return;
            case R.id.submitBtn /*{ENCODED_INT: 2131296318}*/:
                switch (this.c) {
                    case 0:
                        String obj = this.e.getText().toString();
                        String obj2 = this.f.getText().toString();
                        if (obj.length() == 6 && obj2.length() == 6) {
                            if (obj.equals(obj2)) {
                                this.d = obj2;
                                this.c = 1;
                                a();
                                return;
                            }
                            Toast.makeText(this, getString(R.string.error_diff), 0).show();
                            return;
                        } else if (obj.length() != 6) {
                            Toast.makeText(this, getString(R.string.first_pwd_error_insuff), 0).show();
                            return;
                        } else if (obj2.length() != 6) {
                            Toast.makeText(this, getString(R.string.second_pwd_error_insuff), 0).show();
                            return;
                        } else {
                            return;
                        }
                    case 1:
                        String str = this.k[(int) this.l];
                        String obj3 = this.g.getText() == null ? null : this.g.getText().toString();
                        if (TextUtils.isEmpty(str)) {
                            Toast.makeText(this, getString(R.string.password_question_no_null_text), 0).show();
                            return;
                        } else if (TextUtils.isEmpty(obj3)) {
                            Toast.makeText(this, getString(R.string.password_answer_no_null_text), 0).show();
                            return;
                        } else {
                            PwdUtil.insertPwdQuestionAndAnswer(this, this.d, str, obj3);
                            new CustomDialog.Builder(this).setTitle(getString(R.string.password_notice_title)).setMessage(getString(R.string.password_notice)).setPositiveButton(getString(R.string.known), new DialogInterface.OnClickListener() {
                                /* class com.lenovo.safecenter.MainTab.FirstUsePasswordSettingActivity.AnonymousClass3 */

                                public final void onClick(DialogInterface dialog, int which) {
                                    FirstUsePasswordSettingActivity.a(FirstUsePasswordSettingActivity.this);
                                }
                            }).show();
                            return;
                        }
                    default:
                        return;
                }
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
