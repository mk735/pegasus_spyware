package ledroid.app;

import android.content.Context;
import java.util.HashMap;
import ledroid.root.ShellTerminalController;
import ledroid.services.LedroidActivityManager;
import ledroid.services.LedroidPackageManager;
import ledroid.services.LedroidSettings;
import ledroid.services.LedroidStatusBarManager;

public class LedroidContextImpl implements LedroidContext {
    private static final HashMap<String, a> b = new HashMap<>();
    private Context a;

    public LedroidContextImpl(Context context) {
        this.a = context;
    }

    static {
        a(LedroidContext.LEDROID_SETTINGS_WRAPPER, new a() {
            /* class ledroid.app.LedroidContextImpl.AnonymousClass1 */

            @Override // ledroid.app.LedroidContextImpl.a
            public final Object a(Context context) {
                return new LedroidSettings(context);
            }
        });
        a(LedroidContext.LEDROID_ACTIVITY_MANAGER, new a() {
            /* class ledroid.app.LedroidContextImpl.AnonymousClass2 */

            @Override // ledroid.app.LedroidContextImpl.a
            public final Object a(Context context) {
                return new LedroidActivityManager(context);
            }
        });
        a(LedroidContext.LEDROID_PACKAGE_MANAGER, new a() {
            /* class ledroid.app.LedroidContextImpl.AnonymousClass3 */

            @Override // ledroid.app.LedroidContextImpl.a
            public final Object a(Context context) {
                return new LedroidPackageManager(context);
            }
        });
        a(LedroidContext.LEDROID_STATUSBAR_MANAGER, new a() {
            /* class ledroid.app.LedroidContextImpl.AnonymousClass4 */

            @Override // ledroid.app.LedroidContextImpl.a
            public final Object a(Context context) {
                return new LedroidStatusBarManager(context);
            }
        });
        a(LedroidContext.LEDROID_ROOT_TIMINAL, new a() {
            /* class ledroid.app.LedroidContextImpl.AnonymousClass5 */

            @Override // ledroid.app.LedroidContextImpl.a
            public final Object a(Context context) {
                return new ShellTerminalController(context);
            }
        });
    }

    /* access modifiers changed from: package-private */
    public static abstract class a {
        private Object a = null;

        public abstract Object a(Context context);

        a() {
        }

        public final Object b(Context context) {
            if (this.a == null) {
                this.a = a(context);
            }
            return this.a;
        }
    }

    private static void a(String name, a fetcher) {
        b.put(name, fetcher);
    }

    @Override // ledroid.app.LedroidContext
    public Object getSystemService(String name) {
        a fetcher = b.get(name);
        if (fetcher != null) {
            return fetcher.b(this.a);
        }
        return null;
    }

    @Override // ledroid.app.LedroidContext
    public boolean hasRootPermission() {
        return getShellTerminalController().hasRootPermission();
    }

    @Override // ledroid.app.LedroidContext
    public Context getContext() {
        return this.a;
    }

    @Override // ledroid.app.LedroidContext
    public LedroidActivityManager getLedroidActivityManager() {
        return (LedroidActivityManager) getSystemService(LedroidContext.LEDROID_ACTIVITY_MANAGER);
    }

    @Override // ledroid.app.LedroidContext
    public LedroidPackageManager getLedroidPackageManager() {
        return (LedroidPackageManager) getSystemService(LedroidContext.LEDROID_PACKAGE_MANAGER);
    }

    @Override // ledroid.app.LedroidContext
    public LedroidStatusBarManager getLedroidStatusBarManager() {
        return (LedroidStatusBarManager) getSystemService(LedroidContext.LEDROID_STATUSBAR_MANAGER);
    }

    @Override // ledroid.app.LedroidContext
    public ShellTerminalController getShellTerminalController() {
        return (ShellTerminalController) getSystemService(LedroidContext.LEDROID_ROOT_TIMINAL);
    }

    @Override // ledroid.app.LedroidContext
    public LedroidSettings getLedroidSettings() {
        return (LedroidSettings) getSystemService(LedroidContext.LEDROID_SETTINGS_WRAPPER);
    }
}
