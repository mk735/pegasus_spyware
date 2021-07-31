package ledroid.app;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import ledroid.root.LedroidServiceLauncher;
import ledroid.root.RootPermissionException;
import ledroid.root.ShellTerminalController;
import ledroid.services.ILedroidService;
import ledroid.services.LedroidActivityManager;
import ledroid.services.LedroidPackageManager;
import ledroid.services.LedroidSettings;
import ledroid.services.LedroidStatusBarManager;
import ledroid.utils.FileUtils;

public class LedroidApplication extends Application implements LedroidContext {
    private LedroidContextImpl a;

    public void onCreate() {
        super.onCreate();
        if (this.a == null) {
            this.a = new LedroidContextImpl(this);
        }
        LedroidServiceLauncher.initialize(this);
    }

    @Override // android.content.Context, ledroid.app.LedroidContext, android.content.ContextWrapper
    public Object getSystemService(String name) {
        Object service = this.a.getSystemService(name);
        return service != null ? service : super.getSystemService(name);
    }

    public void onLedroidServiceLaunchFailed(File errFile) {
        Throwable th;
        IOException e;
        BufferedReader errReader = null;
        try {
            BufferedReader errReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(errFile)));
            while (true) {
                try {
                    String errInfo = errReader2.readLine();
                    if (errInfo != null) {
                        Log.w("LedroidApplication", "Error: " + errInfo);
                    } else {
                        errFile.delete();
                        FileUtils.closeIOCloseable(errReader2);
                        return;
                    }
                } catch (FileNotFoundException e2) {
                    e = e2;
                    errReader = errReader2;
                    try {
                        e.printStackTrace();
                        FileUtils.closeIOCloseable(errReader);
                    } catch (Throwable th2) {
                        th = th2;
                        FileUtils.closeIOCloseable(errReader);
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    errReader = errReader2;
                    e.printStackTrace();
                    FileUtils.closeIOCloseable(errReader);
                } catch (Throwable th3) {
                    th = th3;
                    errReader = errReader2;
                    FileUtils.closeIOCloseable(errReader);
                    throw th;
                }
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            e.printStackTrace();
            FileUtils.closeIOCloseable(errReader);
        } catch (IOException e5) {
            e = e5;
            e.printStackTrace();
            FileUtils.closeIOCloseable(errReader);
        }
    }

    @Override // ledroid.app.LedroidContext
    public boolean hasRootPermission() {
        return this.a.hasRootPermission();
    }

    @Override // ledroid.app.LedroidContext
    public LedroidSettings getLedroidSettings() {
        return this.a.getLedroidSettings();
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
    public Context getContext() {
        return this;
    }

    public ILedroidService getLedroidService() {
        return LedroidServiceLauncher.getLedroidService();
    }

    public void tryToLaunchLedroidService() throws RootPermissionException {
        LedroidServiceLauncher.launchLedroidService();
    }
}
