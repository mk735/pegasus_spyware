package com.lenovo.lps.sus.control;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import com.lenovo.lps.sus.EventType;
import com.lenovo.lps.sus.SUSListener;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;
import java.io.File;

public class x extends Thread {
    private SUSListener a = null;
    private Handler b = null;
    private boolean c = false;
    private boolean d = false;
    private Context e = null;
    private String f = null;
    private String g = null;
    private boolean h = false;
    private Integer i = -100;
    private int j = 0;
    private boolean k = false;

    public x(Context context, String str, String str2, Handler handler, SUSListener sUSListener, int i2, boolean z) {
        this.e = context;
        this.f = str;
        this.g = str2;
        this.b = handler;
        this.a = sUSListener;
        this.j = i2;
        this.k = z;
        i.a(c.b, "InstallThread, myContext=" + this.e + "; myFilePath=" + this.f + "; myInstallerPackageName=" + this.g + "; myMSGHandler=" + this.b + "; mySUSListener=" + this.a + "; myInstallType=" + this.j + "; myOnlySilentInstallFlag=" + this.k);
    }

    public void run() {
        String str;
        String str2;
        int i2 = 0;
        i.a(c.b, "InstallThread run myInstallType=" + this.j);
        switch (this.j) {
            case 0:
                File file = new File(this.f);
                if (!(!file.exists() || ("file://" + file.getAbsolutePath()) == null || this.e == null)) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setFlags(268435456);
                    intent.putExtra("apk_from", "com.lenovo.appstore");
                    i.a(c.b, "InstallThread 0 apk_from=com.lenovo.appstore");
                    intent.setDataAndType(Uri.parse(str2), "application/vnd.android.package-archive");
                    this.e.startActivity(intent);
                    this.d = true;
                    i.a(c.b, "InstallThread 0 isInstalledFlag=" + this.d);
                    break;
                }
            case 1:
                this.h = true;
                if (this.e.checkCallingOrSelfPermission("android.permission.INSTALL_PACKAGES") == 0) {
                    Uri fromFile = Uri.fromFile(new File(this.f));
                    PackageManager packageManager = this.e.getPackageManager();
                    h hVar = new h(this);
                    if (packageManager != null) {
                        try {
                            packageManager.installPackage(fromFile, hVar, 2, this.g);
                            i.a(c.b, "InstallThread 1 execute pm.installPackage");
                        } catch (SecurityException e2) {
                            this.c = true;
                            this.i = -100;
                            i.a(c.b, "InstallThread 1 SecurityException=" + e2.getMessage());
                        }
                        while (!this.c && !this.d) {
                            int i3 = i2 + 1;
                            if (i2 >= 300) {
                                break;
                            } else {
                                try {
                                    i.a(c.b, "InstallThread 1 sleep 200ms");
                                    sleep(200);
                                    i2 = i3;
                                } catch (InterruptedException e3) {
                                    i.a(c.b, "InstallThread 1 sleep InterruptedException e=" + e3.getMessage());
                                    i2 = i3;
                                }
                            }
                        }
                    }
                }
                break;
            case 2:
                Uri fromFile2 = Uri.fromFile(new File(this.f));
                PackageManager packageManager2 = this.e.getPackageManager();
                this.c = false;
                this.h = true;
                g gVar = new g(this);
                if (packageManager2 != null) {
                    try {
                        packageManager2.installPackage(fromFile2, gVar, 2, this.g);
                        i.a(c.b, "InstallThread 1 execute pm.installPackage");
                    } catch (SecurityException e4) {
                        this.c = true;
                        this.i = -100;
                        i.a(c.b, "InstallThread 1 SecurityException=" + e4.getMessage());
                    }
                    while (!this.c && !this.d) {
                        int i4 = i2 + 1;
                        if (i2 < 300) {
                            try {
                                i.a(c.b, "InstallThread 1 sleep 200ms");
                                sleep(200);
                                i2 = i4;
                            } catch (InterruptedException e5) {
                                i.a(c.b, "InstallThread 1 sleep InterruptedException e=" + e5.getMessage());
                                i2 = i4;
                            }
                        }
                    }
                    if (this.c) {
                        c.d(this.e, this.f);
                        break;
                    }
                }
                break;
            case 3:
                Uri fromFile3 = Uri.fromFile(new File(this.f));
                PackageManager packageManager3 = this.e.getPackageManager();
                this.h = true;
                i iVar = new i(this);
                if (packageManager3 != null) {
                    try {
                        packageManager3.installPackage(fromFile3, iVar, 2, this.g);
                        i.a(c.b, "InstallThread 2 execute pm.installPackage");
                    } catch (SecurityException e6) {
                        this.c = true;
                        this.i = -100;
                        i.a(c.b, "InstallThread 2 SecurityException=" + e6.getMessage());
                        File file2 = new File(this.f);
                        if (!(!file2.exists() || ("file://" + file2.getAbsolutePath()) == null || this.e == null)) {
                            Intent intent2 = new Intent("android.intent.action.VIEW");
                            intent2.setFlags(268435456);
                            intent2.putExtra("apk_from", "com.lenovo.appstore");
                            intent2.setDataAndType(Uri.parse(str), "application/vnd.android.package-archive");
                            this.e.startActivity(intent2);
                            this.d = true;
                        }
                    }
                    while (!this.c && !this.d) {
                        int i5 = i2 + 1;
                        if (i2 >= 300) {
                            break;
                        } else {
                            try {
                                i.a(c.b, "InstallThread 2 sleep 200ms");
                                sleep(200);
                                i2 = i5;
                            } catch (InterruptedException e7) {
                                i.a(c.b, "InstallThread 2 sleep InterruptedException e=" + e7.getMessage());
                                i2 = i5;
                            }
                        }
                    }
                }
                break;
        }
        if (this.a != null && this.h) {
            if (1 == this.i.intValue()) {
                this.a.onUpdateNotification(EventType.SUS_SILENCEINSTALL_FINISH, c.S);
            } else {
                this.a.onUpdateNotification(EventType.SUS_SILENCEINSTALL_FAIL, String.valueOf(this.i));
            }
        }
        i.a(c.b, "InstallThread exit,isInstalledFlag=" + this.d + "; mySilenceInstallResultCode=" + this.i);
    }
}
