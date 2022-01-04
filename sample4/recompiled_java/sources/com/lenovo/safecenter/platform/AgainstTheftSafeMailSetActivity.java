package com.lenovo.safecenter.platform;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.regex.Pattern;

public class AgainstTheftSafeMailSetActivity extends Activity {
    TextView a;
    EditText b;
    private String c;
    private String d;
    private ActivityManager e;

    static /* synthetic */ void c(AgainstTheftSafeMailSetActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.error).setMessage(R.string.mail_error).setNegativeButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSafeMailSetActivity.AnonymousClass3 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_antitheft_safemail_layout);
        getWindow().setSoftInputMode(34);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.backup_mail_set);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSafeMailSetActivity.AnonymousClass1 */

            public final void onClick(View v) {
                AgainstTheftSafeMailSetActivity.this.finish();
            }
        });
        this.e = (ActivityManager) getSystemService("activity");
        this.c = Const.getSafeMail();
        this.b = (EditText) findViewById(R.id.set_safemail_edittext);
        this.b.setText(this.c);
        this.a = (TextView) findViewById(R.id.okbtn);
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSafeMailSetActivity.AnonymousClass2 */

            public final void onClick(View v) {
                AgainstTheftSafeMailSetActivity.this.d = AgainstTheftSafeMailSetActivity.this.b.getText().toString();
                if (AgainstTheftSafeMailSetActivity.this.c.equals(AgainstTheftSafeMailSetActivity.this.d) && !AgainstTheftSafeMailSetActivity.this.d.equals("")) {
                    Toast.makeText(AgainstTheftSafeMailSetActivity.this.getApplicationContext(), (int) R.string.no_edit, 1).show();
                    AgainstTheftSafeMailSetActivity.this.finish();
                }
                if (AgainstTheftSafeMailSetActivity.this.d.length() == 0 || AgainstTheftSafeMailSetActivity.this.isMailNO(AgainstTheftSafeMailSetActivity.this.d)) {
                    Const.setSafeMail(AgainstTheftSafeMailSetActivity.this.d);
                    if (AgainstTheftSafeMailSetActivity.this.d.equals("")) {
                        AgainstTheftSafeMailSetActivity.this.finish();
                    }
                    if (!AgainstTheftSafeMailSetActivity.this.c.equals(AgainstTheftSafeMailSetActivity.this.d) && !AgainstTheftSafeMailSetActivity.this.d.equals("")) {
                        AgainstTheftSafeMailSetActivity.this.finish();
                        return;
                    }
                    return;
                }
                AgainstTheftSafeMailSetActivity.c(AgainstTheftSafeMailSetActivity.this);
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        if (!this.e.getRunningTasks(1).get(0).topActivity.getPackageName().equals(getPackageName())) {
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

    public boolean isMailNO(String mail) {
        return Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$").matcher(mail).matches();
    }
}
