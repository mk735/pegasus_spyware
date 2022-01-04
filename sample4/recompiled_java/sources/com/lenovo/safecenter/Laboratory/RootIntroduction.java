package com.lenovo.safecenter.Laboratory;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;

public class RootIntroduction extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.rootintroduction_layout);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.root);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.RootIntroduction.AnonymousClass1 */

            public final void onClick(View v) {
                RootIntroduction.this.finish();
            }
        });
    }
}
