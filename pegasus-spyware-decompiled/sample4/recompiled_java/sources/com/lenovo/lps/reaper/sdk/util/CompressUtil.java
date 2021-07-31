package com.lenovo.lps.reaper.sdk.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.Deflater;

public class CompressUtil {
    private static final String a = CompressUtil.class.getName();

    public static final byte[] compress(byte[] data) {
        if (data == null) {
            return null;
        }
        if (data.length == 0) {
            return new byte[0];
        }
        Deflater compressor = new Deflater();
        compressor.setLevel(9);
        compressor.setInput(data);
        compressor.finish();
        ByteArrayOutputStream bos = new ByteArrayOutputStream(data.length);
        byte[] buf = new byte[1024];
        while (!compressor.finished()) {
            bos.write(buf, 0, compressor.deflate(buf));
        }
        try {
            bos.close();
        } catch (IOException e) {
            TLog.e(a, "exception when close output stream. " + e.getMessage());
        }
        compressor.end();
        return bos.toByteArray();
    }
}
