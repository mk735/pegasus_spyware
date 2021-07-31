package android.support.v4.util;

import java.util.LinkedHashMap;
import java.util.Map;

public class LruCache<K, V> {
    private final LinkedHashMap<K, V> a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    public LruCache(int maxSize) {
        if (maxSize <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.c = maxSize;
        this.a = new LinkedHashMap<>(0, 0.75f, true);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0023, code lost:
        r0 = create(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0027, code lost:
        if (r0 != null) goto L_0x002e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0029, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002e, code lost:
        monitor-enter(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
        r4.e++;
        r1 = r4.a.put(r5, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x003b, code lost:
        if (r1 == null) goto L_0x004b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x003d, code lost:
        r4.a.put(r5, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0042, code lost:
        monitor-exit(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0043, code lost:
        if (r1 == null) goto L_0x0058;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0045, code lost:
        entryRemoved(false, r5, r0, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x004b, code lost:
        r4.b += a(r5, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0058, code lost:
        a(r4.c);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final V get(K r5) {
        /*
            r4 = this;
            if (r5 != 0) goto L_0x000a
            java.lang.NullPointerException r2 = new java.lang.NullPointerException
            java.lang.String r3 = "key == null"
            r2.<init>(r3)
            throw r2
        L_0x000a:
            monitor-enter(r4)
            java.util.LinkedHashMap<K, V> r2 = r4.a     // Catch:{ all -> 0x002b }
            java.lang.Object r1 = r2.get(r5)     // Catch:{ all -> 0x002b }
            if (r1 == 0) goto L_0x001c
            int r2 = r4.g     // Catch:{ all -> 0x002b }
            int r2 = r2 + 1
            r4.g = r2     // Catch:{ all -> 0x002b }
            monitor-exit(r4)     // Catch:{ all -> 0x002b }
            r0 = r1
        L_0x001b:
            return r0
        L_0x001c:
            int r2 = r4.h     // Catch:{ all -> 0x002b }
            int r2 = r2 + 1
            r4.h = r2     // Catch:{ all -> 0x002b }
            monitor-exit(r4)     // Catch:{ all -> 0x002b }
            java.lang.Object r0 = r4.create(r5)
            if (r0 != 0) goto L_0x002e
            r0 = 0
            goto L_0x001b
        L_0x002b:
            r2 = move-exception
            monitor-exit(r4)
            throw r2
        L_0x002e:
            monitor-enter(r4)
            int r2 = r4.e     // Catch:{ all -> 0x0055 }
            int r2 = r2 + 1
            r4.e = r2     // Catch:{ all -> 0x0055 }
            java.util.LinkedHashMap<K, V> r2 = r4.a     // Catch:{ all -> 0x0055 }
            java.lang.Object r1 = r2.put(r5, r0)     // Catch:{ all -> 0x0055 }
            if (r1 == 0) goto L_0x004b
            java.util.LinkedHashMap<K, V> r2 = r4.a     // Catch:{ all -> 0x0055 }
            r2.put(r5, r1)     // Catch:{ all -> 0x0055 }
        L_0x0042:
            monitor-exit(r4)     // Catch:{ all -> 0x0055 }
            if (r1 == 0) goto L_0x0058
            r2 = 0
            r4.entryRemoved(r2, r5, r0, r1)
            r0 = r1
            goto L_0x001b
        L_0x004b:
            int r2 = r4.b
            int r3 = r4.a(r5, r0)
            int r2 = r2 + r3
            r4.b = r2
            goto L_0x0042
        L_0x0055:
            r2 = move-exception
            monitor-exit(r4)
            throw r2
        L_0x0058:
            int r2 = r4.c
            r4.a(r2)
            goto L_0x001b
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.util.LruCache.get(java.lang.Object):java.lang.Object");
    }

    public final V put(K key, V value) {
        V previous;
        if (key == null || value == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.d++;
            this.b += a(key, value);
            previous = this.a.put(key, value);
            if (previous != null) {
                this.b -= a(key, previous);
            }
        }
        if (previous != null) {
            entryRemoved(false, key, previous, value);
        }
        a(this.c);
        return previous;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0031, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(int r7) {
        /*
        // Method dump skipped, instructions count: 118
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.util.LruCache.a(int):void");
    }

    public final V remove(K key) {
        V previous;
        if (key == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            previous = this.a.remove(key);
            if (previous != null) {
                this.b -= a(key, previous);
            }
        }
        if (previous != null) {
            entryRemoved(false, key, previous, null);
        }
        return previous;
    }

    /* access modifiers changed from: protected */
    public void entryRemoved(boolean evicted, K k, V v, V v2) {
    }

    /* access modifiers changed from: protected */
    public V create(K k) {
        return null;
    }

    private int a(K key, V value) {
        int result = sizeOf(key, value);
        if (result >= 0) {
            return result;
        }
        throw new IllegalStateException("Negative size: " + ((Object) key) + "=" + ((Object) value));
    }

    /* access modifiers changed from: protected */
    public int sizeOf(K k, V v) {
        return 1;
    }

    public final void evictAll() {
        a(-1);
    }

    public final synchronized int size() {
        return this.b;
    }

    public final synchronized int maxSize() {
        return this.c;
    }

    public final synchronized int hitCount() {
        return this.g;
    }

    public final synchronized int missCount() {
        return this.h;
    }

    public final synchronized int createCount() {
        return this.e;
    }

    public final synchronized int putCount() {
        return this.d;
    }

    public final synchronized int evictionCount() {
        return this.f;
    }

    public final synchronized Map<K, V> snapshot() {
        return new LinkedHashMap(this.a);
    }

    public final synchronized String toString() {
        String format;
        int hitPercent = 0;
        synchronized (this) {
            int accesses = this.g + this.h;
            if (accesses != 0) {
                hitPercent = (this.g * 100) / accesses;
            }
            format = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.c), Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(hitPercent));
        }
        return format;
    }
}
