package ledroid.app;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import ledroid.root.ShellTerminalController;
import ledroid.services.LedroidActivityManager;
import ledroid.services.LedroidPackageManager;
import ledroid.services.LedroidSettings;
import ledroid.services.LedroidStatusBarManager;

public class LedroidActivity extends Activity implements LedroidContext {
    private LedroidContext a = null;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        a();
    }

    @Override // android.content.Context, ledroid.app.LedroidContext, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.app.Activity
    public Object getSystemService(String name) {
        a();
        if (this.a == null) {
            return super.getSystemService(name);
        }
        Object service = super.getSystemService(name);
        return service == null ? this.a.getSystemService(name) : service;
    }

    private void a() {
        if (this.a == null) {
            try {
                Application application = getApplication();
                if (application != null) {
                    this.a = (LedroidContext) application;
                }
            } catch (ClassCastException e) {
                throw new LedroidContextException("Are you sure that your application is implemented LedroidApplication and configured in AndroidManifest.xml.", e);
            }
        }
    }

    @Override // ledroid.app.LedroidContext
    public boolean hasRootPermission() {
        return this.a.hasRootPermission();
    }

    @Override // ledroid.app.LedroidContext
    public Context getContext() {
        return this;
    }

    public LedroidContext getLedroidContext() {
        return this.a;
    }

    @Override // ledroid.app.LedroidContext
    public LedroidActivityManager getLedroidActivityManager() {
        return this.a.getLedroidActivityManager();
    }

    @Override // ledroid.app.LedroidContext
    public LedroidPackageManager getLedroidPackageManager() {
        return this.a.getLedroidPackageManager();
    }

    @Override // ledroid.app.LedroidContext
    public LedroidStatusBarManager getLedroidStatusBarManager() {
        return this.a.getLedroidStatusBarManager();
    }

    @Override // ledroid.app.LedroidContext
    public ShellTerminalController getShellTerminalController() {
        return this.a.getShellTerminalController();
    }

    @Override // ledroid.app.LedroidContext
    public LedroidSettings getLedroidSettings() {
        return this.a.getLedroidSettings();
    }
}
