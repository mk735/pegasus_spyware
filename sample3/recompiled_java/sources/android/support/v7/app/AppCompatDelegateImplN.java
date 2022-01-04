package android.support.v7.app;

import android.content.Context;
import android.support.v7.app.AppCompatDelegateImplV23;
import android.support.v7.app.AppCompatDelegateImplV9;
import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.Window;
import java.util.List;

class AppCompatDelegateImplN extends AppCompatDelegateImplV23 {
    AppCompatDelegateImplN(Context context, Window window, AppCompatCallback callback) {
        super(context, window, callback);
    }

    /* access modifiers changed from: package-private */
    @Override // android.support.v7.app.AppCompatDelegateImplV23, android.support.v7.app.AppCompatDelegateImplBase, android.support.v7.app.AppCompatDelegateImplV14
    public Window.Callback wrapWindowCallback(Window.Callback callback) {
        return new AppCompatWindowCallbackN(callback);
    }

    class AppCompatWindowCallbackN extends AppCompatDelegateImplV23.AppCompatWindowCallbackV23 {
        AppCompatWindowCallbackN(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> data, Menu menu, int deviceId) {
            AppCompatDelegateImplV9.PanelFeatureState panel = AppCompatDelegateImplN.this.getPanelState(0, true);
            if (panel == null || panel.menu == null) {
                super.onProvideKeyboardShortcuts(data, menu, deviceId);
            } else {
                super.onProvideKeyboardShortcuts(data, panel.menu, deviceId);
            }
        }
    }
}
