package ledroid.services;

import android.content.Context;
import ledroid.app.LedroidApplication;
import ledroid.app.LedroidContext;
import ledroid.app.LedroidContextException;
import ledroid.root.RootPermissionException;
import ledroid.root.ShellTerminalController;

public class LedroidSupport {
    private Context a;

    public LedroidSupport(Context ctx) {
        this.a = ctx;
    }

    public Context getContext() {
        return this.a;
    }

    public boolean hasRootPermission() {
        return ((ShellTerminalController) this.a.getSystemService(LedroidContext.LEDROID_ROOT_TIMINAL)).hasRootPermission();
    }

    /* access modifiers changed from: protected */
    public ILedroidService getLenovoManager() throws RootPermissionException {
        if (!hasRootPermission()) {
            throw new RootPermissionException();
        }
        LedroidApplication ledroidApplication = null;
        if (this.a instanceof LedroidApplication) {
            ledroidApplication = (LedroidApplication) this.a;
        } else {
            Context application = this.a.getApplicationContext();
            if (application instanceof LedroidApplication) {
                ledroidApplication = (LedroidApplication) application;
            }
        }
        if (ledroidApplication == null) {
            throw new LedroidContextException("Application must be LedroidApplication Instance!");
        }
        ILedroidService service = ledroidApplication.getLedroidService();
        if (service == null) {
            ledroidApplication.tryToLaunchLedroidService();
            service = ledroidApplication.getLedroidService();
            if (service == null) {
                throw new RootPermissionException("Cannt get Ledroid Service");
            }
        }
        return service;
    }
}
