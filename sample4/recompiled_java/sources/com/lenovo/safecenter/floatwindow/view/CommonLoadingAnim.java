package com.lenovo.safecenter.floatwindow.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.safecenter.R;

public class CommonLoadingAnim extends LinearLayout {
    public static final int CONTINUE_ANIM = 1;
    public static final int START_ANIM = 0;
    private Context a;
    private Handler b = new a(this, (byte) 0);
    private TextView c = ((TextView) findViewById(R.id.loading_text));
    private TextView d = ((TextView) findViewById(R.id.loading_symbol));

    public CommonLoadingAnim(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.a = context;
        inflate(this.a, R.layout.common_loading_anim, this);
        setOrientation(1);
        setGravity(17);
    }

    private class a extends Handler {
        private a() {
        }

        /* synthetic */ a(CommonLoadingAnim x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            super.handleMessage(msg);
            StringBuffer buffer = new StringBuffer();
            switch (msg.what) {
                case 0:
                    CommonLoadingAnim.this.c.setText(CommonLoadingAnim.this.getResources().getString(R.string.common_loading_text));
                    buffer.append(".");
                    int intSym = msg.arg1 % 3;
                    for (int i = 0; i < intSym; i++) {
                        buffer.append(".");
                    }
                    CommonLoadingAnim.this.d.setText(buffer.toString());
                    CommonLoadingAnim.this.b.sendMessageDelayed(CommonLoadingAnim.this.b.obtainMessage(0, intSym + 1, 0), 300);
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        if (visibility == 0) {
            this.b.sendMessage(this.b.obtainMessage(0, 0, 0));
        }
    }
}
