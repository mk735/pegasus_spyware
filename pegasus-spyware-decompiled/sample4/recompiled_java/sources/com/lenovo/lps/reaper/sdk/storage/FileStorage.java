package com.lenovo.lps.reaper.sdk.storage;

import android.content.Context;
import android.os.Environment;
import com.lenovo.lps.reaper.sdk.util.TLog;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public class FileStorage {
    private String a;
    private Context b;
    private RandomAccessFile c;
    private FileChannel d;

    public FileStorage(String fileName, Context context) {
        this.a = fileName;
        this.b = context;
    }

    public void initialize() throws FileNotFoundException {
        String dir = Environment.getDataDirectory() + "/data/" + this.b.getPackageName() + "/files/";
        File file = new File(dir);
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            destroy();
            this.c = new RandomAccessFile(new File(dir + this.a), "rw");
        } catch (IOException e) {
            TLog.e("FileStorage", "Error to Close or Create DataFile. " + e.getMessage());
        }
        this.d = this.c.getChannel();
    }

    public void truncate(long size) throws IOException {
        this.d.truncate(size);
    }

    public void destroy() {
        if (this.d != null) {
            try {
                this.d.close();
            } catch (IOException e) {
            }
        }
        if (this.c != null) {
            try {
                this.c.close();
            } catch (IOException e2) {
            }
        }
    }

    public void position(Long offset) throws IOException {
        this.d.position(offset.longValue());
    }

    public int writeRecord(ByteBuffer buffer) throws IOException {
        return this.d.write(buffer);
    }

    public void readRecord(ByteBuffer buffer) throws IOException {
        buffer.clear();
        this.d.read(buffer);
        buffer.flip();
    }

    public void flush() throws IOException {
        this.d.force(true);
    }
}
