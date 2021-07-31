package com.lenovo.lps.reaper.sdk.request;

import com.lenovo.lps.reaper.sdk.api.DispatchCallback;
import com.lenovo.lps.reaper.sdk.util.TLog;

public final class WorkerTask implements Runnable {
    private static final String a = WorkerTask.class.getName();
    private final DispatchCallback b;

    public WorkerTask(DispatchCallback dispatchCallback) {
        this.b = dispatchCallback;
    }

    public final void run() {
        try {
            this.b.dispatch();
        } catch (Exception ex) {
            TLog.e(a, "Error when report events to server. " + ex.getMessage());
        }
    }
}
