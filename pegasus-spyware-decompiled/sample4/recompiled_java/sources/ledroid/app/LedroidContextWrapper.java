package ledroid.app;

import android.content.Context;
import ledroid.root.ShellTerminalController;
import ledroid.services.LedroidActivityManager;
import ledroid.services.LedroidPackageManager;
import ledroid.services.LedroidSettings;
import ledroid.services.LedroidStatusBarManager;

public class LedroidContextWrapper implements LedroidContext {
    private LedroidContext a;

    public LedroidContextWrapper(LedroidContext context) {
        this.a = context;
    }

    @Override // ledroid.app.LedroidContext
    public Object getSystemService(String name) {
        return this.a.getSystemService(name);
    }

    @Override // ledroid.app.LedroidContext
    public boolean hasRootPermission() {
        return this.a.hasRootPermission();
    }

    @Override // ledroid.app.LedroidContext
    public Context getContext() {
        return this.a.getContext();
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
