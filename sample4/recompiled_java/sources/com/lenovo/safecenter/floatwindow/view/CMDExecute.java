package com.lenovo.safecenter.floatwindow.view;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class CMDExecute {
    public synchronized String run(String[] cmd, String workdirectory) throws IOException {
        String result;
        result = "";
        try {
            ProcessBuilder builder = new ProcessBuilder(cmd);
            if (workdirectory != null) {
                builder.directory(new File(workdirectory));
            }
            builder.redirectErrorStream(true);
            InputStream in = builder.start().getInputStream();
            byte[] re = new byte[1024];
            while (in.read(re) != -1) {
                result = result + new String(re);
            }
            in.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
