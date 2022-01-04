package com.lenovo.safecenter.utils;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class XZip {
    public static void ZipFolder(String[] srcFileString, String zipFileString) throws Exception {
        Log.v("XZip", "ZipFolder(String, String)");
        ZipOutputStream outZip = new ZipOutputStream(new FileOutputStream(zipFileString));
        System.out.println(srcFileString.length);
        for (String str : srcFileString) {
            File file = new File(str);
            a(file.getParent() + File.separator, file.getName(), outZip);
        }
        outZip.finish();
        outZip.close();
    }

    private static void a(String folderString, String fileString, ZipOutputStream zipOutputSteam) throws Exception {
        Log.v("XZip", "ZipFiles(String, String, ZipOutputStream)");
        if (zipOutputSteam != null) {
            File file = new File(folderString + fileString);
            if (file.isFile()) {
                ZipEntry zipEntry = new ZipEntry(fileString);
                FileInputStream inputStream = new FileInputStream(file);
                zipOutputSteam.putNextEntry(zipEntry);
                byte[] buffer = new byte[4096];
                while (true) {
                    int len = inputStream.read(buffer);
                    if (len != -1) {
                        zipOutputSteam.write(buffer, 0, len);
                    } else {
                        zipOutputSteam.closeEntry();
                        return;
                    }
                }
            } else {
                String[] fileList = file.list();
                if (fileList.length <= 0) {
                    zipOutputSteam.putNextEntry(new ZipEntry(fileString + File.separator));
                    zipOutputSteam.closeEntry();
                }
                for (int i = 0; i < fileList.length; i++) {
                    a(folderString, fileString + File.separator + fileList[i], zipOutputSteam);
                }
            }
        }
    }
}
