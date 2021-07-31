package ledroid.root.internal;

import android.content.Context;
import android.util.Log;
import com.lenovo.providers.querypermissions.QueryPermissions;
import java.io.IOException;
import ledroid.root.ShellCommand;
import ledroid.root.ShellTerminalController;
import ledroid.utils.FileUtils;

public class SuTransport extends ShellTransport {
    public SuTransport(Context ctx) {
        super(ctx);
    }

    @Override // ledroid.root.ICommandTransport, ledroid.root.internal.ShellTransport
    public boolean prepare() {
        if (!FileUtils.fileExist("/system/xbin/su") && !FileUtils.fileExist("/system/bin/su")) {
            return false;
        }
        try {
            return becomeProcess("su");
        } catch (IOException e) {
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public final boolean becomeProcess(String suCmd) throws IOException {
        ShellCommand sc = new ShellCommand(this);
        a response = new a(this, (byte) 0);
        sc.setResponseCallBack(response);
        if (resetTransportProcess(suCmd)) {
            sc.addCommand(QueryPermissions.ID).exec(1).waitResponse(1, 0);
        }
        return response.b;
    }

    @Override // ledroid.root.ICommandTransport, ledroid.root.internal.ShellTransport
    public String getDesc() {
        return "SuShellTransport";
    }

    @Override // ledroid.root.ICommandTransport, ledroid.root.internal.ShellTransport
    public boolean isRootTransport() {
        return true;
    }

    @Override // ledroid.root.ICommandTransport, ledroid.root.internal.ShellTransport
    public ShellTerminalController.TransportType getType() {
        return ShellTerminalController.TransportType.SU_TRANSPORT;
    }

    /* access modifiers changed from: private */
    public class a implements ShellCommand.ShellCommandResponse {
        private boolean b;

        private a() {
            this.b = false;
        }

        /* synthetic */ a(SuTransport x0, byte b2) {
            this();
        }

        @Override // ledroid.root.ShellCommand.ShellCommandResponse
        public final void onShellCommandResponse(int exeId, String reply) {
            switch (exeId) {
                case 1:
                    if (reply.contains("not allowed to su") || reply.contains("permission denied")) {
                        this.b = false;
                        return;
                    } else if (reply.contains("uid=0")) {
                        this.b = true;
                        return;
                    } else {
                        return;
                    }
                default:
                    Log.w("SuShellTransport", "CommandResponse: unkown exeId=" + exeId);
                    return;
            }
        }
    }
}
