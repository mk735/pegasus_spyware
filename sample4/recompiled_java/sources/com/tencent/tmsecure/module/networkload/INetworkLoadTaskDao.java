package com.tencent.tmsecure.module.networkload;

import com.tencent.tmsecure.module.networkload.NetworkLoadTask;
import java.util.List;

public interface INetworkLoadTaskDao<T extends NetworkLoadTask> {
    boolean delete(T t);

    boolean delete(List<T> list);

    List<T> getAll();

    long insert(T t);

    boolean insert(List<T> list);

    boolean update(T t);

    boolean update(List<T> list, int i);
}
