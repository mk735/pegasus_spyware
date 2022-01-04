package com.tendcloud.tenddata;

import android.content.Context;
import android.telephony.gsm.GsmCellLocation;
import java.io.File;

/* access modifiers changed from: package-private */
public class ab {
    private ab() {
    }

    static long a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 64).firstInstallTime;
        } catch (Exception e) {
            return -1;
        }
    }

    static long a(GsmCellLocation gsmCellLocation) {
        try {
            return (long) gsmCellLocation.getPsc();
        } catch (Exception e) {
            return -1;
        }
    }

    static void a(File file) {
        file.setReadable(true, false);
    }

    static long b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 64).lastUpdateTime;
        } catch (Exception e) {
            return -1;
        }
    }
}
