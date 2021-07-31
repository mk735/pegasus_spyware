package com.tencent.tmsecure.module.networkload;

import com.tencent.tmsecure.module.networkload.NetworkLoadTask;
import java.util.List;

public class NetworkLoadTaskListener<T extends NetworkLoadTask> {
    public void onDeleted(T t) {
    }

    public void onDeleted(List<T> list) {
    }

    public void onFailed(T t) {
    }

    public void onFinished(T t) {
    }

    public void onPaused(T t) {
    }

    public void onPaused(List<T> list) {
    }

    public void onProgressChanged(T t) {
    }

    public void onRunning(T t) {
    }

    public void onWaiting(T t) {
    }

    public void onWaiting(List<T> list) {
    }
}
