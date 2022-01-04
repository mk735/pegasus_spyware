package com.lenovo.lps.reaper.sdk.storage;

import com.lenovo.lps.reaper.sdk.util.TLog;
import java.nio.ByteBuffer;

public class FileStorageMeta {
    public static final int META_BLOCK_SIZE = 4096;
    private static final char[] k = "ReaperSDK".toCharArray();
    private long a = 0;
    private int b;
    private int c = 0;
    private int d = 0;
    private ByteBuffer e = ByteBuffer.allocate(4096);
    private long f;
    private long g;
    private long h;
    private int i;
    private int j;

    public FileStorageMeta(int capability) {
        this.b = capability;
    }

    public FileStorageMeta(int capability, int head, int tail, long sequence) {
        this.b = capability;
        this.c = head;
        this.d = tail;
        this.a = sequence;
    }

    public int tail() {
        return this.d;
    }

    public int head() {
        return this.c;
    }

    public int offer() {
        this.c = next(this.c);
        if (this.c == this.d) {
            TLog.i("FileStorageMeta", "Drop record at " + this.d);
            this.d = next(this.d);
        }
        return this.c;
    }

    public int pull() {
        if (empty()) {
            return -1;
        }
        int result = this.d;
        this.d = next(this.d);
        return result;
    }

    public ByteBuffer byteBuffer() {
        this.e.clear();
        for (char c2 : k) {
            this.e.putChar(Character.valueOf(c2).charValue());
        }
        this.e.putInt(1);
        this.e.putInt(this.c);
        this.e.putInt(this.d);
        this.e.putInt(this.b);
        this.e.putLong(this.a);
        this.e.putInt(this.i);
        this.e.putLong(this.f);
        this.e.putLong(this.g);
        this.e.putLong(this.h);
        this.e.putInt(this.j);
        this.e.flip();
        return this.e;
    }

    public boolean load(ByteBuffer buffer) {
        char[] cArr = new char[k.length];
        for (int i2 = 0; i2 < k.length; i2++) {
            if (buffer.hasRemaining()) {
                cArr[i2] = buffer.getChar();
            }
        }
        if (!"ReaperSDK".equals(new String(cArr))) {
            reset();
            return false;
        }
        int version = buffer.getInt();
        if (version < 1) {
            upgrade(buffer, version, 1);
        }
        if (version == 1) {
            this.c = buffer.getInt();
            this.d = buffer.getInt();
            this.b = buffer.getInt();
            this.a = buffer.getLong();
            this.i = buffer.getInt();
            this.f = buffer.getLong();
            this.g = buffer.getLong();
            this.h = buffer.getLong();
            this.j = buffer.getInt();
            TLog.v("FileStorageMeta", "CurrentTime:" + this.h);
            TLog.i("FileStorageMeta", "Loading DB...");
            TLog.v("FileStorageMeta", "Head:" + this.c);
            TLog.v("FileStorageMeta", "Tail:" + this.d);
            TLog.v("FileStorageMeta", "Capability:" + this.b);
            TLog.v("FileStorageMeta", "Sequence:" + this.a);
            TLog.v("FileStorageMeta", "SessionID:" + this.i);
            TLog.v("FileStorageMeta", "FirstView:" + this.f);
            TLog.v("FileStorageMeta", "PreviousView:" + this.g);
            TLog.v("FileStorageMeta", "visits:" + this.j);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void upgrade(ByteBuffer buf, int fromVersion, int toVersion) {
    }

    public void reset() {
        this.a = 0;
        this.c = 0;
        this.d = 0;
    }

    public boolean empty() {
        return this.c == this.d;
    }

    public boolean full() {
        return next(this.c) == this.d;
    }

    public int next(int pointer) {
        int p = pointer + 1;
        if (p > this.b) {
            return 0;
        }
        return p;
    }

    public int size() {
        return this.c >= this.d ? this.c - this.d : ((this.c + this.b) - this.d) + 1;
    }

    public long nextId() {
        long j2 = this.a + 1;
        this.a = j2;
        return j2;
    }

    public long getFirstView() {
        return this.f;
    }

    public void setFirstView(long firstView) {
        this.f = firstView;
    }

    public long getPreviousView() {
        return this.g;
    }

    public void setPreviousView(long previousView) {
        this.g = previousView;
    }

    public long getCurrentTime() {
        return this.h;
    }

    public void setCurrentTime(long currentTime) {
        this.h = currentTime;
    }

    public int getSessionId() {
        return this.i;
    }

    public void setSessionId(int sessionId) {
        this.i = sessionId;
    }

    public int getSessionCounter() {
        return this.j;
    }

    public void setSessionCounter(int sessionCounter) {
        this.j = sessionCounter;
    }
}
