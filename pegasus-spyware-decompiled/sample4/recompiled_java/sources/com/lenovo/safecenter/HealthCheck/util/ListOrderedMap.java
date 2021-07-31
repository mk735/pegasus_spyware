package com.lenovo.safecenter.HealthCheck.util;

import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;

public class ListOrderedMap {
    private HashMap<Integer, HealthItemResult> a = new HashMap<>();
    private ArrayList<HealthItemResult> b;
    private Comparator<HealthItemResult> c = new Comparator<HealthItemResult>() {
        /* class com.lenovo.safecenter.HealthCheck.util.ListOrderedMap.AnonymousClass1 */

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(HealthItemResult healthItemResult, HealthItemResult healthItemResult2) {
            HealthItemResult healthItemResult3 = healthItemResult;
            HealthItemResult healthItemResult4 = healthItemResult2;
            int i = healthItemResult3.weight;
            int i2 = healthItemResult4.weight;
            return i - i2 == 0 ? healthItemResult3.key - healthItemResult4.key : i - i2;
        }
    };
    private boolean d;

    public HealthItemResult put(int key, HealthItemResult value) {
        HealthItemResult put;
        synchronized (this.a) {
            this.d = false;
            put = this.a.put(Integer.valueOf(key), value);
        }
        return put;
    }

    public HealthItemResult remove(int key) {
        HealthItemResult remove;
        synchronized (this.a) {
            this.d = false;
            remove = this.a.remove(Integer.valueOf(key));
        }
        return remove;
    }

    public void clear() {
        synchronized (this.a) {
            this.a.clear();
            this.b.clear();
        }
    }

    public HealthItemResult getValueByIndex(int index) {
        HealthItemResult healthItemResult;
        synchronized (this.a) {
            while (!this.d) {
                synchronized (this.a) {
                    ArrayList<HealthItemResult> arrayList = new ArrayList<>(this.a.values());
                    Collections.sort(arrayList, this.c);
                    this.b = arrayList;
                    this.d = true;
                }
            }
            healthItemResult = this.b.get(index);
        }
        return healthItemResult;
    }

    public HealthItemResult getValueByKey(int key) {
        HealthItemResult healthItemResult;
        synchronized (this.a) {
            healthItemResult = this.a.get(Integer.valueOf(key));
        }
        return healthItemResult;
    }

    public int size() {
        int size;
        synchronized (this.a) {
            size = this.a.size();
        }
        return size;
    }
}
