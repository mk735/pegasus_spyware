package ledroid.services;

import android.content.Context;
import android.os.RemoteException;
import ledroid.root.RootPermissionException;

public class LedroidStatusBarManager extends LedroidSupport {
    public LedroidStatusBarManager(Context ctx) {
        super(ctx);
    }

    public void setUsable(boolean usable) throws RootPermissionException {
        try {
            getLenovoManager().setStatusBarUsable(usable);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void clearRecentTask(int flags) throws RootPermissionException {
        try {
            getLenovoManager().clearRecentTask(flags);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
