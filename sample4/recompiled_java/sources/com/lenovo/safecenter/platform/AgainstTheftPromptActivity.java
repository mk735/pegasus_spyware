package com.lenovo.safecenter.platform;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.regex.Pattern;

public class AgainstTheftPromptActivity extends Activity {
    CustomDialog a;
    private TextView b;
    private EditText c;
    private String d;
    private ImageView e;
    private ActivityManager f;

    static /* synthetic */ void a(AgainstTheftPromptActivity x0) {
        View inflate = LayoutInflater.from(x0.getApplicationContext()).inflate(R.layout.dialog_send_sms_prompt, (ViewGroup) null);
        x0.c = (EditText) inflate.findViewById(R.id.dialog_send_prom_phone_number);
        if (x0.d.equals("")) {
            x0.c.setHint(R.string.input_phone_number);
        } else {
            x0.c.setText(x0.d);
        }
        if (x0.a == null) {
            x0.a = new CustomDialog.Builder(x0).setTitle(R.string.info).setContentView(inflate).setPositiveButton(R.string.send_on, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.platform.AgainstTheftPromptActivity.AnonymousClass5 */

                public final void onClick(DialogInterface arg0, int arg1) {
                    if (AgainstTheftPromptActivity.this.isMobileNO(AgainstTheftPromptActivity.this.c.getText().toString())) {
                        DoubleCardUtils.sendMessage(AgainstTheftPromptActivity.this.getApplicationContext(), AgainstTheftPromptActivity.this.c.getText().toString(), AgainstTheftPromptActivity.this.getString(R.string.distant_com) + " " + PwdUtil.getPasswordWithJieMi(AgainstTheftPromptActivity.this) + AgainstTheftPromptActivity.this.getString(R.string.command_content), true);
                        Const.isTariff = false;
                        return;
                    }
                    AgainstTheftPromptActivity.c(AgainstTheftPromptActivity.this);
                    AgainstTheftPromptActivity.this.a = null;
                }
            }).setNegativeButton(R.string.send_off_, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.platform.AgainstTheftPromptActivity.AnonymousClass4 */

                public final void onClick(DialogInterface dialog, int which) {
                    AgainstTheftPromptActivity.this.a = null;
                }
            }).create();
            x0.a.setOnDismissListener(new DialogInterface.OnDismissListener() {
                /* class com.lenovo.safecenter.platform.AgainstTheftPromptActivity.AnonymousClass6 */

                public final void onDismiss(DialogInterface dialog) {
                    AgainstTheftPromptActivity.this.a = null;
                }
            });
        }
        if (!x0.a.isShowing()) {
            x0.a.show();
        }
    }

    static /* synthetic */ void c(AgainstTheftPromptActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.error).setMessage(R.string.phonenumber_error).setNeutralButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftPromptActivity.AnonymousClass7 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_antitheft_prompt_layout);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.remind);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftPromptActivity.AnonymousClass1 */

            public final void onClick(View v) {
                AgainstTheftPromptActivity.this.finish();
            }
        });
        this.f = (ActivityManager) getSystemService("activity");
        this.d = Const.getSafePhoneNumber();
        this.b = (TextView) findViewById(R.id.sendsms_btn);
        this.b.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftPromptActivity.AnonymousClass2 */

            public final void onClick(View v) {
                AgainstTheftPromptActivity.a(AgainstTheftPromptActivity.this);
            }
        });
        this.e = (ImageView) findViewById(R.id.antitheft_safephone_imageView);
        this.e.setOnLongClickListener(new View.OnLongClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftPromptActivity.AnonymousClass3 */

            public final boolean onLongClick(View v) {
                AgainstTheftPromptActivity.this.startActivity(new Intent("com.lenovo.antivirus.gifmain"));
                return true;
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        if (!this.f.getRunningTasks(1).get(0).topActivity.getPackageName().equals(getPackageName())) {
            setResult(100);
            finish();
        }
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    public boolean isMobileNO(String mobiles) {
        return Pattern.compile("^((\\+86)|(86))?((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$").matcher(mobiles).matches();
    }
}
