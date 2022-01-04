package com.lenovo.safecenter.support;

import java.io.File;
import java.io.InputStream;

/* compiled from: InfoUntil */
final class a {
    a() {
    }

    public final synchronized String a(String[] cmd, String workdirectory) {
        String result;
        result = "";
        try {
            ProcessBuilder builder = new ProcessBuilder(cmd);
            InputStream in = null;
            if (workdirectory != null) {
                builder.directory(new File(workdirectory));
                builder.redirectErrorStream(true);
                in = builder.start().getInputStream();
                byte[] re = new byte[1024];
                while (in.read(re) != -1) {
                    result = result + new String(re);
                }
            }
            if (in != null) {
                in.close();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
