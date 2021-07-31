package com.tencent.tmsecure.module.market;

import java.util.ArrayList;

public interface IMarketManagerListener<K, T> {
    void onReceive(K k, ArrayList<T> arrayList);
}
