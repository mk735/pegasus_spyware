package ledroid.root.internal;

import android.content.Context;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import ledroid.root.ICommandTransport;
import ledroid.root.ShellTerminalController;

public class ShellTransport implements ICommandTransport {
    private Context a;
    private Process b = null;
    private DataOutputStream c = null;
    private BufferedReader d = null;

    public ShellTransport(Context ctx) {
        this.a = ctx;
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        super.finalize();
    }

    @Override // ledroid.root.ICommandTransport
    public String readLine() throws IOException {
        if (this.d == null) {
            return null;
        }
        return this.d.readLine();
    }

    @Override // ledroid.root.ICommandTransport
    public void write(String cmd) throws IOException {
        if (this.c != null) {
            this.c.writeBytes(cmd);
        }
    }

    @Override // ledroid.root.ICommandTransport
    public void flush() throws IOException {
        if (this.c != null) {
            this.c.flush();
        }
    }

    /* access modifiers changed from: protected */
    public boolean resetTransportProcess(String cmd) throws IOException {
        destory();
        this.b = new ProcessBuilder(new String[0]).command(cmd).redirectErrorStream(true).start();
        this.c = new DataOutputStream(this.b.getOutputStream());
        this.d = new BufferedReader(new InputStreamReader(this.b.getInputStream()));
        return true;
    }

    @Override // ledroid.root.ICommandTransport
    public boolean prepare() {
        try {
            resetTransportProcess("sh");
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // ledroid.root.ICommandTransport
    public boolean onlyAsScriptBatchExec() {
        return false;
    }

    @Override // ledroid.root.ICommandTransport
    public Context getContext() {
        return this.a;
    }

    @Override // ledroid.root.ICommandTransport
    public String getDesc() {
        return "ShellTransport";
    }

    @Override // ledroid.root.ICommandTransport
    public boolean isRootTransport() {
        return false;
    }

    @Override // ledroid.root.ICommandTransport
    public void onBeforeExec() {
    }

    @Override // ledroid.root.ICommandTransport
    public void onAfterExec() {
    }

    @Override // ledroid.root.ICommandTransport
    public void destory() {
        if (this.b != null) {
            this.b.destroy();
            this.b = null;
        }
        this.c = null;
        this.d = null;
    }

    @Override // ledroid.root.ICommandTransport
    public ShellTerminalController.TransportType getType() {
        return ShellTerminalController.TransportType.NORMAL_TRANSPORT;
    }
}
