package ledroid.app;

import android.content.Context;
import ledroid.root.ShellTerminalController;
import ledroid.services.LedroidActivityManager;
import ledroid.services.LedroidPackageManager;
import ledroid.services.LedroidSettings;
import ledroid.services.LedroidStatusBarManager;

public interface LedroidContext {
    public static final String LEDROID_ACTIVITY_MANAGER = "ledroid_activity";
    public static final String LEDROID_PACKAGE_MANAGER = "ledroid_package";
    public static final String LEDROID_ROOT_TIMINAL = "ledroid_root";
    public static final String LEDROID_SETTINGS_WRAPPER = "ledroid_settings";
    public static final String LEDROID_STATUSBAR_MANAGER = "ledroid_statusbar";

    Context getContext();

    LedroidActivityManager getLedroidActivityManager();

    LedroidPackageManager getLedroidPackageManager();

    LedroidSettings getLedroidSettings();

    LedroidStatusBarManager getLedroidStatusBarManager();

    ShellTerminalController getShellTerminalController();

    Object getSystemService(String str);

    boolean hasRootPermission();
}
