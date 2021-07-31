package ledroid.root;

import android.content.Context;
import ledroid.root.internal.LeNacTransport;
import ledroid.root.internal.SelfRootTransport;
import ledroid.root.internal.ShellTransport;
import ledroid.root.internal.SuTransport;

public final class ShellTerminalController {
    private static int b = 0;
    private static TransportType c = null;
    private Context a;

    public enum TransportType {
        NORMAL_TRANSPORT,
        NAC_TRANSPORT,
        SU_TRANSPORT,
        SELF_ROOT_TRANSPORT
    }

    public ShellTerminalController(Context ctx) {
        this.a = ctx;
    }

    public final ICommandTransport getRootTransport() {
        ICommandTransport selfSuTransport;
        if (!a()) {
            ICommandTransport st = getTransport(this.a, TransportType.SELF_ROOT_TRANSPORT);
            if (st == null) {
                st = getTransport(this.a, TransportType.SU_TRANSPORT);
                if (st == null) {
                    st = getTransport(this.a, TransportType.NAC_TRANSPORT);
                }
                if (!(st == null || (selfSuTransport = SelfRootTransport.deploySelfSu(st)) == null)) {
                    st.destory();
                    st = selfSuTransport;
                }
            }
            if (st != null) {
                a(1, st.getType());
                return st;
            }
            a(-1, null);
            return st;
        } else if (b()) {
            return getTransport(this.a, c);
        } else {
            return null;
        }
    }

    public final ICommandTransport getTransport(Context ctx, TransportType type) {
        ICommandTransport st = null;
        switch (type) {
            case NAC_TRANSPORT:
                st = LeNacTransport.getInstance(ctx);
                break;
            case SELF_ROOT_TRANSPORT:
                st = new SelfRootTransport(ctx);
                break;
            case SU_TRANSPORT:
                st = new SuTransport(ctx);
                break;
            case NORMAL_TRANSPORT:
                st = new ShellTransport(ctx);
                break;
        }
        if (st == null || !st.prepare()) {
            return null;
        }
        return st;
    }

    public final boolean hasRootPermission() {
        if (a()) {
            return b();
        }
        ICommandTransport rootTransport = getRootTransport();
        if (rootTransport == null || !rootTransport.isRootTransport()) {
            return false;
        }
        return true;
    }

    private static boolean a() {
        return b != 0;
    }

    private static boolean b() {
        return b == 1;
    }

    private static void a(int status, TransportType usableType) {
        b = status;
        c = usableType;
    }
}
