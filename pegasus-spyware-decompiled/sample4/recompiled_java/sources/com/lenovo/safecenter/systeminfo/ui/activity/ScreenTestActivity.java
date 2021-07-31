package com.lenovo.safecenter.systeminfo.ui.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.lenovo.safecenter.R;

public class ScreenTestActivity extends Activity {
    int a = 0;
    private Button b;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.screen_test);
        this.b = (Button) findViewById(R.id.btn_screen_test);
        this.b.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.systeminfo.ui.activity.ScreenTestActivity.AnonymousClass1 */

            public final void onClick(View v) {
                ScreenTestActivity.this.a++;
                switch (ScreenTestActivity.this.a) {
                    case 1:
                        ScreenTestActivity.this.b.setBackgroundColor(-65536);
                        return;
                    case 2:
                        ScreenTestActivity.this.b.setBackgroundColor(-16711936);
                        return;
                    case 3:
                        ScreenTestActivity.this.b.setBackgroundColor(-16776961);
                        return;
                    case 4:
                        ScreenTestActivity.this.b.setBackgroundColor(R.color.screen_test_fianl);
                        return;
                    case 5:
                        ScreenTestActivity.this.finish();
                        return;
                    default:
                        return;
                }
            }
        });
    }
}
