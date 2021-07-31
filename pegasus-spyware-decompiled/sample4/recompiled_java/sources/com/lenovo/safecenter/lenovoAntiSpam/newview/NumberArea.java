package com.lenovo.safecenter.lenovoAntiSpam.newview;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.LocationManager;

public class NumberArea extends BaseTitleActivity {
    public static final String ERR_TAG = "NumberArea.java";
    EditText a;
    TextView b;
    ImageView c;
    private LocationManager d;

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.number_area);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.locale_phone_number, (Integer) null);
        this.d = (LocationManager) ManagerCreator.getManager(LocationManager.class);
        this.a = (EditText) findViewById(R.id.number_editor);
        this.c = (ImageView) findViewById(R.id.img_find);
        this.b = (TextView) findViewById(R.id.number_text);
        this.a.addTextChangedListener(new TextWatcher() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.NumberArea.AnonymousClass1 */

            public final void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            public final void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public final void afterTextChanged(Editable s) {
                String number = NumberArea.this.a.getText().toString();
                if (!TextUtils.isEmpty(number)) {
                    String number2 = number.trim();
                    if (number2.length() > 0) {
                        String area = NumberArea.this.d.getLocation(number2);
                        if (!TextUtils.isEmpty(area)) {
                            NumberArea.this.b.setText(area);
                        } else {
                            NumberArea.this.b.setText("");
                        }
                    }
                } else {
                    NumberArea.this.b.setText("");
                }
            }
        });
        this.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.NumberArea.AnonymousClass2 */

            public final void onClick(View v) {
                String number = NumberArea.this.a.getText().toString();
                if (!TextUtils.isEmpty(number)) {
                    String number2 = number.trim();
                    if (number2.length() > 0) {
                        String area = NumberArea.this.d.getLocation(number2);
                        if (!TextUtils.isEmpty(area)) {
                            NumberArea.this.b.setText(area);
                        } else {
                            NumberArea.this.b.setText(R.string.no_record);
                        }
                    }
                } else {
                    NumberArea.this.b.setText("");
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            try {
                finish();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
