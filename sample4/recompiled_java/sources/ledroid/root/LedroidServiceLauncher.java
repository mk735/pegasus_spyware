package ledroid.root;

import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import ledroid.app.LedroidApplication;
import ledroid.root.res.NBJarFile;
import ledroid.services.ILedroidService;
import ledroid.utils.AndroidResources;
import ledroid.utils.MountPoint;

public final class LedroidServiceLauncher {
    public static final String SERVICE_NAME = "lenovo";
    private static LedroidApplication a = null;
    private static ILedroidService b = null;
    private static long c = -1;
    private static NBJarFile d = null;
    private static String e;

    private LedroidServiceLauncher() {
    }

    public static synchronized void initialize(LedroidApplication application) {
        synchronized (LedroidServiceLauncher.class) {
            a = application;
            e = application.getFilesDir() + File.separator + "LedroidServiceLauncherError";
            new Thread(new Runnable() {
                /* class ledroid.root.LedroidServiceLauncher.AnonymousClass1 */

                public final void run() {
                    try {
                        LedroidServiceLauncher.launchLedroidService();
                    } catch (RootPermissionException e) {
                        Log.w("LedroidApplication", "No Root Permission: " + e.getLocalizedMessage());
                    }
                }
            }).start();
        }
    }

    public static synchronized void launchLedroidService() throws RootPermissionException {
        synchronized (LedroidServiceLauncher.class) {
            if (a == null) {
                Log.w("LedroidApplication", "LedroidApplication is Null! Cannot launch Ledroid Service.");
            } else if (!a.hasRootPermission()) {
                throw new RootPermissionException("Need Root Permission to lauch ledroid service.");
            } else {
                d = new NBJarFile(a, new AndroidResources(a.getResources(), a.getPackageName()).getIdentifier("raw", "nb"), a.getFilesDir());
                long currentTimeMillis = System.currentTimeMillis();
                if (c == -1 && currentTimeMillis - c >= 1000) {
                    if (getLedroidService() != null) {
                        if (!e()) {
                            final int newVersionCode = d.getNewVersionCode();
                            String[] list = new File("/data/dalvik-cache/").list(new FilenameFilter() {
                                /* class ledroid.root.LedroidServiceLauncher.AnonymousClass2 */

                                public final boolean accept(File dir, String filename) {
                                    int v;
                                    if (!filename.contains("@nb.") || (v = LedroidServiceLauncher.d.getNbJarFileVersion(filename.split("@")[4])) <= 0 || v >= newVersionCode) {
                                        return false;
                                    }
                                    return true;
                                }
                            });
                            if (list != null) {
                                StringBuffer stringBuffer = new StringBuffer();
                                for (String str : list) {
                                    stringBuffer.append(str).append(" ");
                                }
                                ShellTerminalController shellTerminalController = a.getShellTerminalController();
                                if (shellTerminalController.hasRootPermission()) {
                                    try {
                                        new ShellCommand(shellTerminalController.getRootTransport()).addCommand("mount -oremount,rw /data /data").addCommand("mount -oremount,rw", MountPoint.getDeviceName("/data"), "/data").addCommand("rm ", stringBuffer.toString()).addCommand("mount -oremount,ro /data /data").addCommand("mount -oremount,ro", MountPoint.getDeviceName("/data"), "/data").exec();
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                    }
                                }
                            }
                            a("--stop-lenovo-server");
                        }
                    }
                    c = System.currentTimeMillis();
                    File errFile = new File(e);
                    if (errFile.exists()) {
                        errFile.delete();
                    }
                    try {
                        errFile.createNewFile();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    a("--start-lenovo-server");
                    a(d());
                    if (errFile.exists() && errFile.length() > 0) {
                        a.onLedroidServiceLaunchFailed(errFile);
                    }
                }
            }
        }
    }

    private static void c() {
        while (true) {
            try {
                Thread.sleep(200);
                break;
            } catch (InterruptedException e2) {
            }
        }
    }

    private static IBinder d() {
        c();
        IBinder binder = null;
        for (int cnt = 0; cnt < 5 && (binder = ServiceManager.getService(SERVICE_NAME)) == null; cnt++) {
            c();
        }
        return binder;
    }

    private static void a(String arg) {
        try {
            ShellTerminalController shellTerminalController = a.getShellTerminalController();
            if (shellTerminalController.hasRootPermission()) {
                ShellCommand cmd = new ShellCommand(shellTerminalController.getRootTransport());
                String ldLibraryPath = System.getenv("LD_LIBRARY_PATH");
                if (ldLibraryPath == null) {
                    cmd.addCommand("export", "LD_LIBRARY_PATH=/vendor/lib:/system/lib");
                } else {
                    cmd.addCommand("export", "LD_LIBRARY_PATH=" + ldLibraryPath);
                }
                cmd.addCommand("export", "CLASSPATH=" + d.getAbsolutePath()).addCommand("/system/bin/app_process", a.getFilesDir().getAbsolutePath(), "ledroid.server.LenovoServer", arg, "2>", e).exec();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private static synchronized boolean e() {
        boolean z = false;
        synchronized (LedroidServiceLauncher.class) {
            if (b != null) {
                int runningVersion = 0;
                try {
                    runningVersion = b.getVersionCode();
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
                d.updateIfNeed();
                if (runningVersion >= d.getNewVersionCode()) {
                    z = true;
                }
            }
        }
        return z;
    }

    private static void a(IBinder svrBinder) {
        Log.i("liubin", "initNativeLedroidService: [" + (svrBinder == null ? "NULL" : String.valueOf(svrBinder.hashCode())) + "]");
        if (svrBinder != null) {
            b = ILedroidService.Stub.asInterface(svrBinder);
            try {
                svrBinder.linkToDeath(new a((byte) 0), 0);
            } catch (RemoteException e2) {
            }
        }
    }

    public static synchronized ILedroidService getLedroidService() {
        ILedroidService iLedroidService;
        synchronized (LedroidServiceLauncher.class) {
            if (b != null) {
                iLedroidService = b;
            } else {
                a(ServiceManager.getService(SERVICE_NAME));
                iLedroidService = b;
            }
        }
        return iLedroidService;
    }

    /* access modifiers changed from: private */
    public static class a implements IBinder.DeathRecipient {
        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }

        public final void binderDied() {
            ILedroidService unused = LedroidServiceLauncher.b = null;
            try {
                LedroidServiceLauncher.launchLedroidService();
            } catch (RootPermissionException e) {
            }
        }
    }
}
