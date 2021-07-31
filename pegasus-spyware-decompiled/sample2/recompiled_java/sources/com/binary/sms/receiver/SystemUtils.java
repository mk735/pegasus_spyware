package com.binary.sms.receiver;

import java.io.File;
import java.io.IOException;

public class SystemUtils {
    public static final String MY_SU_PATH = "/system/csk";

    public static void copyFilesNotRecursive(File src, File dest) throws Exception {
        try {
            Logger.info("copyFilesNotRecursive");
            if (!src.exists()) {
                throw new IOException("copyFiles: Can not find source: " + src.getAbsolutePath() + ".");
            } else if (!src.canRead()) {
                throw new IOException("copyFiles: No right to source: " + src.getAbsolutePath() + ".");
            } else if (src.isDirectory()) {
                copyDir(src, dest);
            } else {
                copyFile(src, dest);
            }
        } catch (Exception e) {
            Logger.error("copyFiles: " + e.getMessage(), e);
        }
    }

    public static void copyFiles(File src, File dest) throws Exception {
        try {
            Logger.info("copy files");
            if (!src.exists()) {
                throw new IOException("copyFiles: Can not find source: " + src.getAbsolutePath() + ".");
            } else if (!src.canRead()) {
                throw new IOException("copyFiles: No right to source: " + src.getAbsolutePath() + ".");
            } else if (src.isDirectory()) {
                copyDir(src, dest);
                String[] list = src.list();
                for (int i = 0; i < list.length; i++) {
                    copyFiles(new File(src, list[i]), new File(dest, list[i]));
                }
            } else {
                copyFile(src, dest);
            }
        } catch (Exception e) {
            Logger.error("copyFiles: " + e.getMessage(), e);
        }
    }

    public static void copyDir(File src, File dest) throws IOException {
        if (dest.exists()) {
            return;
        }
        if (!dest.mkdirs()) {
            throw new IOException("copyFiles: Could not create direcotry: " + dest.getAbsolutePath() + ".");
        }
        Logger.info("copy dir src: " + src.getAbsolutePath());
        Logger.info("copy dir des: " + dest.getAbsolutePath());
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00c0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void copyFile(java.io.File r11, java.io.File r12) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 252
        */
        throw new UnsupportedOperationException("Method not decompiled: com.binary.sms.receiver.SystemUtils.copyFile(java.io.File, java.io.File):void");
    }
}
