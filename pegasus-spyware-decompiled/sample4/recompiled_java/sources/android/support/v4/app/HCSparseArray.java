package android.support.v4.app;

public class HCSparseArray<E> {
    private static final Object a = new Object();
    private boolean b;
    private int[] c;
    private Object[] d;
    private int e;

    public HCSparseArray() {
        this(10);
    }

    public HCSparseArray(int initialCapacity) {
        this.b = false;
        int initialCapacity2 = a(initialCapacity);
        this.c = new int[initialCapacity2];
        this.d = new Object[initialCapacity2];
        this.e = 0;
    }

    public E get(int key) {
        return get(key, null);
    }

    public E get(int key, E valueIfKeyNotFound) {
        int i = a(this.c, this.e, key);
        return (i < 0 || this.d[i] == a) ? valueIfKeyNotFound : (E) this.d[i];
    }

    public void delete(int key) {
        int i = a(this.c, this.e, key);
        if (i >= 0 && this.d[i] != a) {
            this.d[i] = a;
            this.b = true;
        }
    }

    public void remove(int key) {
        delete(key);
    }

    public void removeAt(int index) {
        if (this.d[index] != a) {
            this.d[index] = a;
            this.b = true;
        }
    }

    private void a() {
        int n = this.e;
        int o = 0;
        int[] keys = this.c;
        Object[] values = this.d;
        for (int i = 0; i < n; i++) {
            Object val = values[i];
            if (val != a) {
                if (i != o) {
                    keys[o] = keys[i];
                    values[o] = val;
                }
                o++;
            }
        }
        this.b = false;
        this.e = o;
    }

    public void put(int key, E value) {
        int i = a(this.c, this.e, key);
        if (i >= 0) {
            this.d[i] = value;
            return;
        }
        int i2 = i ^ -1;
        if (i2 >= this.e || this.d[i2] != a) {
            if (this.b && this.e >= this.c.length) {
                a();
                i2 = a(this.c, this.e, key) ^ -1;
            }
            if (this.e >= this.c.length) {
                int n = a(this.e + 1);
                int[] nkeys = new int[n];
                Object[] nvalues = new Object[n];
                System.arraycopy(this.c, 0, nkeys, 0, this.c.length);
                System.arraycopy(this.d, 0, nvalues, 0, this.d.length);
                this.c = nkeys;
                this.d = nvalues;
            }
            if (this.e - i2 != 0) {
                System.arraycopy(this.c, i2, this.c, i2 + 1, this.e - i2);
                System.arraycopy(this.d, i2, this.d, i2 + 1, this.e - i2);
            }
            this.c[i2] = key;
            this.d[i2] = value;
            this.e++;
            return;
        }
        this.c[i2] = key;
        this.d[i2] = value;
    }

    public int size() {
        if (this.b) {
            a();
        }
        return this.e;
    }

    public int keyAt(int index) {
        if (this.b) {
            a();
        }
        return this.c[index];
    }

    public E valueAt(int index) {
        if (this.b) {
            a();
        }
        return (E) this.d[index];
    }

    public void setValueAt(int index, E value) {
        if (this.b) {
            a();
        }
        this.d[index] = value;
    }

    public int indexOfKey(int key) {
        if (this.b) {
            a();
        }
        return a(this.c, this.e, key);
    }

    public int indexOfValue(E value) {
        if (this.b) {
            a();
        }
        for (int i = 0; i < this.e; i++) {
            if (this.d[i] == value) {
                return i;
            }
        }
        return -1;
    }

    public void clear() {
        int n = this.e;
        Object[] values = this.d;
        for (int i = 0; i < n; i++) {
            values[i] = null;
        }
        this.e = 0;
        this.b = false;
    }

    public void append(int key, E value) {
        if (this.e == 0 || key > this.c[this.e - 1]) {
            if (this.b && this.e >= this.c.length) {
                a();
            }
            int pos = this.e;
            if (pos >= this.c.length) {
                int n = a(pos + 1);
                int[] nkeys = new int[n];
                Object[] nvalues = new Object[n];
                System.arraycopy(this.c, 0, nkeys, 0, this.c.length);
                System.arraycopy(this.d, 0, nvalues, 0, this.d.length);
                this.c = nkeys;
                this.d = nvalues;
            }
            this.c[pos] = key;
            this.d[pos] = value;
            this.e = pos + 1;
            return;
        }
        put(key, value);
    }

    private static int a(int[] a2, int len, int key) {
        int high = len + 0;
        int low = -1;
        while (high - low > 1) {
            int guess = (high + low) / 2;
            if (a2[guess] < key) {
                low = guess;
            } else {
                high = guess;
            }
        }
        if (high == len + 0) {
            return (len + 0) ^ -1;
        }
        return a2[high] != key ? high ^ -1 : high;
    }

    private static int a(int need) {
        int i = need * 4;
        int i2 = 4;
        while (true) {
            if (i2 >= 32) {
                break;
            } else if (i <= (1 << i2) - 12) {
                i = (1 << i2) - 12;
                break;
            } else {
                i2++;
            }
        }
        return i / 4;
    }
}
