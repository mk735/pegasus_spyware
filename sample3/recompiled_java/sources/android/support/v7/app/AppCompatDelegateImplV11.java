package android.support.v7.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;

/* access modifiers changed from: package-private */
public class AppCompatDelegateImplV11 extends AppCompatDelegateImplV9 {
    AppCompatDelegateImplV11(Context context, Window window, AppCompatCallback callback) {
        super(context, window, callback);
    }

    /* access modifiers changed from: package-private */
    @Override // android.support.v7.app.AppCompatDelegateImplV9
    public View callActivityOnCreateView(View parent, String name, Context context, AttributeSet attrs) {
        return null;
    }
}
