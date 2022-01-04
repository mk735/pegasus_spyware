package com.tencent.tmsecure.module.optimize;

import java.util.ArrayList;

public interface IAutoBootHelper {

    public static final class Pair<T1, T2> {
        public T1 first;
        public T2 second;

        public Pair(T1 t1, T2 t2) {
            this.first = t1;
            this.second = t2;
        }
    }

    ArrayList<Pair<String, Boolean>> getAllAutoBootApps();

    boolean setAutoBootEnable(String str, boolean z);
}
