package ledroid.root;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public final class ShellCommand {
    private ICommandTransport a;
    private ArrayList<String> b;
    private ShellCommandResponse c;
    private ArrayList<File> d;

    public interface ShellCommandResponse {
        void onShellCommandResponse(int i, String str);
    }

    static /* synthetic */ void a(ShellCommand x0, int x1, String x2) {
        x0.c.onShellCommandResponse(x1, x2);
    }

    public ShellCommand(ICommandTransport transport) {
        this.a = null;
        this.b = new ArrayList<>();
        this.c = null;
        this.d = new ArrayList<>();
        this.a = transport;
    }

    public ShellCommand(ICommandTransport transport, String... command) {
        this(transport);
        addCommand(command);
    }

    /* access modifiers changed from: protected */
    public final void finalize() throws Throwable {
        Iterator<File> iterator = this.d.iterator();
        while (iterator.hasNext()) {
            iterator.next().delete();
        }
        this.d.clear();
        super.finalize();
    }

    public final synchronized ShellCommand addCommand(String... command) {
        ArrayList<String> cmds = new ArrayList<>(Arrays.asList(command));
        Iterator<String> iterator = cmds.iterator();
        StringBuffer sb = new StringBuffer();
        while (iterator.hasNext()) {
            sb.append(iterator.next());
            sb.append(' ');
        }
        sb.append('\n');
        this.b.add(sb.toString());
        cmds.clear();
        return this;
    }

    public final synchronized void setResponseCallBack(ShellCommandResponse callback) {
        if (callback != null) {
            this.c = callback;
        }
    }

    public final synchronized ShellCommand exec() throws IOException {
        return exec(-1);
    }

    public final synchronized ShellCommand exec(int exeId) throws IOException {
        ShellCommand shellCommand;
        if (this.b == null || this.a == null) {
            shellCommand = null;
        } else {
            this.a.onBeforeExec();
            if (this.a.onlyAsScriptBatchExec()) {
                a();
            } else {
                Iterator<String> it = this.b.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    String next = it.next();
                    if (next.startsWith("exit")) {
                        z = true;
                    }
                    this.a.write(next);
                }
                if (!z) {
                    this.a.write("echo \"SHELL COMMAND END\" \n");
                }
            }
            this.a.flush();
            this.a.onAfterExec();
            this.b.clear();
            shellCommand = this;
        }
        return shellCommand;
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0057  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized ledroid.root.ShellCommand a() throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 148
        */
        throw new UnsupportedOperationException("Method not decompiled: ledroid.root.ShellCommand.a():ledroid.root.ShellCommand");
    }

    public final void waitResponse() {
        waitResponse(-1);
    }

    public final void waitResponse(long millis) {
        waitResponse(-1, millis);
    }

    public final void waitResponse(int exeId) {
        waitResponse(exeId, 500);
    }

    public final void waitResponse(int exeId, long millis) {
        if (this.c != null) {
            Thread relayThread = new Thread(new a(this, exeId));
            relayThread.setDaemon(true);
            relayThread.setName(this.c.getClass().getName() + "_Relay");
            relayThread.start();
            Thread.yield();
            System.currentTimeMillis();
            while (true) {
                if (millis != 0) {
                    relayThread.join(millis);
                    break;
                } else {
                    try {
                        relayThread.join();
                        break;
                    } catch (InterruptedException e) {
                    }
                }
            }
            if (millis > 0) {
                System.currentTimeMillis();
            }
        } else if (millis >= 0) {
            while (true) {
                try {
                    wait(millis);
                    break;
                } catch (InterruptedException e2) {
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public class a implements Runnable {
        private ShellCommand b;
        private int c;

        public a(ShellCommand shellCmd, int exeId) {
            this.b = shellCmd;
            this.c = exeId;
        }

        public final void run() {
            if (ShellCommand.this.c != null && ShellCommand.this.a != null && this.b != null) {
                do {
                    try {
                        String line = ShellCommand.this.a.readLine();
                        if (line == null || "SHELL COMMAND END".equals(line)) {
                            this.b = null;
                        } else {
                            ShellCommand.a(this.b, this.c, line);
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                        return;
                    }
                } while (!ShellCommand.this.a.onlyAsScriptBatchExec());
                this.b = null;
            }
        }
    }
}
