package com.lenovo.safecenter.systeminfo.service;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.format.Formatter;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class MemoryInfoService {
    private static final String a = MemoryInfoService.class.getSimpleName();
    private static MemoryInfoService b = new MemoryInfoService();

    private MemoryInfoService() {
    }

    public static MemoryInfoService getInstance() {
        return b;
    }

    public long getFreeMem(Context context) {
        ActivityManager.MemoryInfo info = new ActivityManager.MemoryInfo();
        ((ActivityManager) Const.mContext.getSystemService("activity")).getMemoryInfo(info);
        return info.availMem;
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x0087 A[SYNTHETIC, Splitter:B:36:0x0087] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x008c A[SYNTHETIC, Splitter:B:39:0x008c] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00b2 A[SYNTHETIC, Splitter:B:48:0x00b2] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00b7 A[SYNTHETIC, Splitter:B:51:0x00b7] */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00d4 A[SYNTHETIC, Splitter:B:59:0x00d4] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x00d9 A[SYNTHETIC, Splitter:B:62:0x00d9] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long getTotalMem(android.content.Context r12) {
        /*
        // Method dump skipped, instructions count: 270
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.systeminfo.service.MemoryInfoService.getTotalMem(android.content.Context):long");
    }

    public static float SystemVersion() {
        String v = Build.VERSION.RELEASE.trim();
        if (v == null || v.length() < 3) {
            return 0.0f;
        }
        return Float.parseFloat(v.substring(0, 3));
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x00fc A[SYNTHETIC, Splitter:B:49:0x00fc] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x0141 A[SYNTHETIC, Splitter:B:67:0x0141] */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0146  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x0153 A[SYNTHETIC, Splitter:B:75:0x0153] */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0158  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized long readAvailMem(java.lang.String r26) {
        /*
        // Method dump skipped, instructions count: 364
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.systeminfo.service.MemoryInfoService.readAvailMem(java.lang.String):long");
    }

    private static boolean a(byte[] buffer, int index, String text) {
        int N = text.length();
        if (index + N >= buffer.length) {
            return false;
        }
        for (int i = 0; i < N; i++) {
            if (buffer[index + i] != text.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    private static long a(byte[] buffer, int index) {
        while (index < buffer.length && buffer[index] != 10) {
            if (buffer[index] < 48 || buffer[index] > 57) {
                index++;
            } else {
                while (true) {
                    index++;
                    if (index >= buffer.length || buffer[index] < 48 || buffer[index] > 57) {
                    }
                }
                return ((long) Integer.parseInt(new String(buffer, 0, index, index - index))) * 1024;
            }
        }
        return 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x00ae A[SYNTHETIC, Splitter:B:36:0x00ae] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00b3 A[SYNTHETIC, Splitter:B:39:0x00b3] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00d9 A[SYNTHETIC, Splitter:B:48:0x00d9] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00de A[SYNTHETIC, Splitter:B:51:0x00de] */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00fb A[SYNTHETIC, Splitter:B:59:0x00fb] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0100 A[SYNTHETIC, Splitter:B:62:0x0100] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String getMemeryInfo() {
        /*
        // Method dump skipped, instructions count: 309
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.systeminfo.service.MemoryInfoService.getMemeryInfo():java.lang.String");
    }

    public String getRomAndSDcardSizeInfo(Context c) {
        String info = "";
        try {
            ArrayList<String> extendStorageList = a();
            if (extendStorageList != null && extendStorageList.size() == 2) {
                StatFs extraStatFs = new StatFs(extendStorageList.get(0));
                long extraBlockSize = (long) extraStatFs.getBlockSize();
                String info2 = c.getString(R.string.sysinfo_size_sd_extra, Formatter.formatFileSize(c, ((long) extraStatFs.getBlockCount()) * extraBlockSize), Formatter.formatFileSize(c, ((long) extraStatFs.getAvailableBlocks()) * extraBlockSize));
                StatFs innerStatFs = new StatFs(extendStorageList.get(1));
                long inblockSize = (long) innerStatFs.getBlockSize();
                long inblockCount = (long) innerStatFs.getBlockCount();
                long inavailCount = (long) innerStatFs.getAvailableBlocks();
                info = c.getString(R.string.sysinfo_size_sd_inner, Formatter.formatFileSize(c, inblockCount * inblockSize), Formatter.formatFileSize(c, inavailCount * inblockSize)) + "\n" + info2;
            } else if (extendStorageList.size() == 1) {
                StatFs innerStatFs2 = new StatFs(extendStorageList.get(0).toString());
                long blockSize = (long) innerStatFs2.getBlockSize();
                info = c.getString(R.string.sysinfo_size_sd_inner, Formatter.formatFileSize(c, ((long) innerStatFs2.getBlockCount()) * blockSize), Formatter.formatFileSize(c, ((long) innerStatFs2.getAvailableBlocks()) * blockSize));
            }
            if (info.equals("")) {
                return c.getString(R.string.sysinfo_rom_total, Formatter.formatFileSize(c, getRomTotalSize()), Formatter.formatFileSize(c, getRomAvailableSize()));
            }
            return c.getString(R.string.sysinfo_rom_total, Formatter.formatFileSize(c, getRomTotalSize()), Formatter.formatFileSize(c, getRomAvailableSize())) + "\n" + info;
        } catch (Exception localException) {
            localException.printStackTrace();
            if ("".equals("")) {
                return c.getString(R.string.sysinfo_rom_total, Formatter.formatFileSize(c, getRomTotalSize()), Formatter.formatFileSize(c, getRomAvailableSize()));
            }
            return c.getString(R.string.sysinfo_rom_total, Formatter.formatFileSize(c, getRomTotalSize()), Formatter.formatFileSize(c, getRomAvailableSize())) + "\n" + "";
        } catch (Throwable th) {
            if (info.equals("")) {
                c.getString(R.string.sysinfo_rom_total, Formatter.formatFileSize(c, getRomTotalSize()), Formatter.formatFileSize(c, getRomAvailableSize()));
            } else {
                String info3 = c.getString(R.string.sysinfo_rom_total, Formatter.formatFileSize(c, getRomTotalSize()), Formatter.formatFileSize(c, getRomAvailableSize())) + "\n" + info;
            }
            throw th;
        }
    }

    private static ArrayList<String> a() {
        ArrayList<String> extendStorageList = new ArrayList<>();
        try {
            BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/proc/mounts"))));
            while (true) {
                String buffer = localBufferedReader.readLine();
                if (buffer == null) {
                    break;
                } else if (buffer.contains("uid=1000") && buffer.contains("gid=1015") && !buffer.contains("asec")) {
                    String[] arrayOfString = buffer.split(" ");
                    if (arrayOfString.length >= 4 && !extendStorageList.contains(arrayOfString[1])) {
                        extendStorageList.add(arrayOfString[1]);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return extendStorageList;
    }

    public long getRomTotalSize() {
        StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) localStatFs.getBlockSize()) * ((long) localStatFs.getBlockCount());
    }

    public long getRomAvailableSize() {
        StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) localStatFs.getBlockSize()) * ((long) localStatFs.getAvailableBlocks());
    }
}
