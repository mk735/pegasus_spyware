package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;

abstract class BaseFragmentActivityGingerbread extends Activity {
    boolean mStartedIntentSenderFromFragment;

    /* access modifiers changed from: package-private */
    public abstract View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet);

    BaseFragmentActivityGingerbread() {
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        if (Build.VERSION.SDK_INT < 11 && getLayoutInflater().getFactory() == null) {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(savedInstanceState);
    }

    public View onCreateView(String name, Context context, AttributeSet attrs) {
        View v = dispatchFragmentsOnCreateView(null, name, context, attrs);
        if (v == null) {
            return super.onCreateView(name, context, attrs);
        }
        return v;
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intent, int requestCode, @Nullable Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags) throws IntentSender.SendIntentException {
        if (!this.mStartedIntentSenderFromFragment && requestCode != -1) {
            checkForValidRequestCode(requestCode);
        }
        super.startIntentSenderForResult(intent, requestCode, fillInIntent, flagsMask, flagsValues, extraFlags);
    }

    static void checkForValidRequestCode(int requestCode) {
        if ((-65536 & requestCode) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }
}
