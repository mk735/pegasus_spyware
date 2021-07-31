package com.tencent.tmsecure.module.networkload;

import tms.af;

public class NetworkloadProperties {
    private static final String a = "networkload";
    private static final String b = "mobile_download_bytes";
    private static final String c = "mobile_upload_bytes";
    private static af d = new af(a);

    public static synchronized long getSelfMobileDownloadBytes() {
        long a2;
        synchronized (NetworkloadProperties.class) {
            a2 = d.a(b, 0L);
        }
        return a2;
    }

    public static synchronized long getSelfMobileUploadBytes() {
        long a2;
        synchronized (NetworkloadProperties.class) {
            a2 = d.a(c, 0L);
        }
        return a2;
    }

    public static synchronized void updateSelfMobileDownloadBytes(long j) {
        synchronized (NetworkloadProperties.class) {
            d.a(b, j, true);
        }
    }

    public static synchronized void updateSelfMobileUploadBytes(long j) {
        synchronized (NetworkloadProperties.class) {
            d.a(c, j, true);
        }
    }
}
