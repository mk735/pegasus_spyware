package com.lenovo.lps.sus.c;

import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.util.List;

public class g {
    public static boolean a() {
        return Environment.getExternalStorageState().equals("mounted") || new b().a() > 0;
    }

    public static String b() {
        List<d> b = new b().b();
        if (b != null && b.size() != 0) {
            for (d dVar : b) {
                if (dVar.c / 1024 > 10) {
                    return dVar.a;
                }
            }
            return ((d) b.get(0)).a;
        } else if (Environment.getExternalStorageDirectory() == null) {
            return null;
        } else {
            return Environment.getExternalStorageDirectory().getAbsolutePath();
        }
    }

    public static long c() {
        List<d> b = new b().b();
        if (b == null || b.size() == 0) {
            return d();
        }
        long j = 0;
        for (d dVar : b) {
            j += dVar.c;
        }
        return j;
    }

    public static long d() {
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != null) {
                StatFs statFs = new StatFs(externalStorageDirectory.getPath());
                return (((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / 1024;
            }
        } catch (Exception e) {
        }
        return 0;
    }
}
