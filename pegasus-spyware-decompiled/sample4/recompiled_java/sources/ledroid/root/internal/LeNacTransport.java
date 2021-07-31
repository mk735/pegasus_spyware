package ledroid.root.internal;

import QQPIM.EModelID;
import android.content.Context;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import ledroid.root.ICommandTransport;
import ledroid.root.ShellCommand;
import ledroid.root.ShellTerminalController;

public final class LeNacTransport implements ICommandTransport {
    private static int d = 0;
    private static LeNacTransport e = new LeNacTransport();
    private boolean a = false;
    private a b = null;
    private Context c = null;

    private LeNacTransport() {
    }

    public static LeNacTransport getInstance(Context ctx) {
        e.c = ctx;
        return e;
    }

    /* access modifiers changed from: protected */
    public final void finalize() throws Throwable {
        if (e == this) {
            e = null;
        }
        if (this.b != null) {
            this.b.c();
        }
        super.finalize();
    }

    /* access modifiers changed from: private */
    public static final class a {
        private Socket a = null;
        private LocalSocket b = null;
        private BufferedReader c = null;
        private PrintWriter d = null;

        public a() {
            try {
                d();
            } catch (Exception e) {
                try {
                    LocalSocketAddress localSocketAddress = new LocalSocketAddress("nac_server");
                    this.b = new LocalSocket();
                    this.b.connect(localSocketAddress);
                    this.d = new PrintWriter(this.b.getOutputStream(), true);
                    this.c = new BufferedReader(new InputStreamReader(this.b.getInputStream()));
                } catch (Exception e2) {
                }
            }
        }

        /* access modifiers changed from: protected */
        public final void finalize() throws Throwable {
            c();
            super.finalize();
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private void c() {
            try {
                if (this.a != null) {
                    this.a.close();
                    this.a = null;
                }
                if (this.b != null) {
                    this.b.close();
                    this.b = null;
                }
                this.c = null;
                this.d = null;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        /* access modifiers changed from: protected */
        public final boolean a() {
            boolean isConnected = this.a == null ? false : this.a.isConnected();
            if (isConnected) {
                return isConnected;
            }
            if (this.b == null) {
                return false;
            }
            return this.b.isConnected();
        }

        /* access modifiers changed from: private */
        /* renamed from: ledroid.root.internal.LeNacTransport$a$a  reason: collision with other inner class name */
        public final class C0009a extends Thread {
            private Exception b;

            private C0009a() {
                this.b = null;
            }

            /* synthetic */ C0009a(a x0, byte b2) {
                this();
            }

            public final void run() {
                try {
                    a.this.a = new Socket("127.0.0.1", (int) EModelID._EMID_QQPIM_Install);
                    a.this.c = new BufferedReader(new InputStreamReader(a.this.a.getInputStream()));
                    a.this.d = new PrintWriter(a.this.a.getOutputStream(), true);
                } catch (IOException e) {
                    if (a.this.a != null) {
                        if (!a.this.a.isClosed()) {
                            try {
                                a.this.a.close();
                            } catch (IOException e2) {
                            }
                        }
                        a.this.a = null;
                    }
                    a.this.c = null;
                    a.this.d = null;
                    this.b = e;
                }
            }
        }

        private final class b extends Thread {
            private String b;

            private b() {
            }

            /* synthetic */ b(a x0, byte b2) {
                this();
            }

            public final void run() {
                this.b = null;
                try {
                    this.b = a.this.c.readLine();
                } catch (IOException e) {
                }
            }

            public final String a() {
                start();
                while (true) {
                    try {
                        join(500);
                        interrupt();
                        break;
                    } catch (InterruptedException e) {
                    }
                }
                return this.b;
            }
        }

        private void d() throws Exception {
            if (!a()) {
                C0009a thread = new C0009a(this, (byte) 0);
                thread.start();
                while (true) {
                    try {
                        thread.join();
                        break;
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                if (thread.b != null) {
                    throw thread.b;
                }
            }
        }

        public final void a(String cmd) {
            this.d.write(cmd);
        }

        public final void b() {
            this.d.println();
            this.d.flush();
        }
    }

    private boolean a() {
        if (this.b != null && this.b.a()) {
            return true;
        }
        this.b = null;
        return false;
    }

    @Override // ledroid.root.ICommandTransport
    public final boolean prepare() {
        if (this.b == null) {
            this.b = new a();
        }
        final File testr = new File("/data", "testr");
        if (this.b.a()) {
            if (!testr.exists()) {
                ShellCommand sc = new ShellCommand(this);
                sc.setResponseCallBack(new ShellCommand.ShellCommandResponse() {
                    /* class ledroid.root.internal.LeNacTransport.AnonymousClass1 */

                    @Override // ledroid.root.ShellCommand.ShellCommandResponse
                    public final void onShellCommandResponse(int exeId, String reply) {
                        if (exeId == 1 && testr.exists()) {
                            LeNacTransport.this.a = true;
                        }
                    }
                });
                try {
                    sc.addCommand("echo '1' > ", testr.getAbsolutePath()).addCommand("exit").exec(1).waitResponse(1);
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            } else {
                this.a = true;
            }
        }
        return this.a;
    }

    @Override // ledroid.root.ICommandTransport
    public final synchronized String readLine() throws IOException {
        return "useless response.";
    }

    @Override // ledroid.root.ICommandTransport
    public final synchronized void write(String cmd) throws IOException {
        if (a()) {
            this.b.a(cmd);
        }
    }

    @Override // ledroid.root.ICommandTransport
    public final synchronized void flush() throws IOException {
        if (a()) {
            this.b.b();
        }
    }

    @Override // ledroid.root.ICommandTransport
    public final boolean onlyAsScriptBatchExec() {
        return true;
    }

    @Override // ledroid.root.ICommandTransport
    public final Context getContext() {
        return this.c;
    }

    @Override // ledroid.root.ICommandTransport
    public final String getDesc() {
        return "LeNacTransport";
    }

    @Override // ledroid.root.ICommandTransport
    public final boolean isRootTransport() {
        return true;
    }

    @Override // ledroid.root.ICommandTransport
    public final void onBeforeExec() {
        if (!a()) {
            prepare();
        }
    }

    @Override // ledroid.root.ICommandTransport
    public final void onAfterExec() {
        try {
            Log.d("LeNacTransport", "NAC Response: " + new a.b(this.b, (byte) 0).a());
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        destory();
    }

    @Override // ledroid.root.ICommandTransport
    public final void destory() {
        if (this.b != null) {
            this.b.c();
            this.b = null;
        }
    }

    @Override // ledroid.root.ICommandTransport
    public final ShellTerminalController.TransportType getType() {
        return ShellTerminalController.TransportType.NAC_TRANSPORT;
    }
}
