package ledroid.root.internal;

import android.content.Context;
import java.io.IOException;
import ledroid.root.ICommandTransport;
import ledroid.root.ShellTerminalController;
import ledroid.root.res.SelfSuFile;
import ledroid.utils.AndroidResources;

public class SelfRootTransport extends SuTransport {
    private SelfSuFile a;

    public SelfRootTransport(Context ctx) {
        super(ctx);
        this.a = new SelfSuFile(ctx, new AndroidResources(ctx.getResources()).getIdentifier(ctx.getPackageName(), "raw", "su"));
    }

    @Override // ledroid.root.internal.SuTransport, ledroid.root.ICommandTransport, ledroid.root.internal.ShellTransport
    public String getDesc() {
        return "SelfRootTransport";
    }

    public static SelfRootTransport deploySelfSu(ICommandTransport deployTransport) {
        SelfRootTransport selfSu = new SelfRootTransport(deployTransport.getContext());
        if (selfSu.prepare()) {
            return selfSu;
        }
        try {
            if (!selfSu.a.deployedSelfSuToSystem(deployTransport) || !selfSu.prepare()) {
                return null;
            }
            return selfSu;
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // ledroid.root.internal.SuTransport, ledroid.root.ICommandTransport, ledroid.root.internal.ShellTransport
    public boolean prepare() {
        if (this.a.deployedIsUpToData()) {
            return a();
        }
        return false;
    }

    private boolean a() {
        try {
            return becomeProcess(this.a.getExecName());
        } catch (IOException e) {
            return false;
        }
    }

    @Override // ledroid.root.internal.SuTransport, ledroid.root.ICommandTransport, ledroid.root.internal.ShellTransport
    public ShellTerminalController.TransportType getType() {
        return ShellTerminalController.TransportType.SELF_ROOT_TRANSPORT;
    }
}
