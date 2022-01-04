package com.lenovo.lps.reaper.sdk.request;

import com.lenovo.lps.reaper.sdk.util.TLog;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class TaskHandler {
    private static TaskHandler b = new TaskHandler();
    private final ThreadPoolExecutor a = new ThreadPoolExecutor(10, 10, 0, TimeUnit.SECONDS, new LinkedBlockingQueue(1000));

    public static TaskHandler getInstance() {
        return b;
    }

    public void addTask(Runnable task) {
        try {
            this.a.submit(task);
        } catch (RejectedExecutionException e) {
            TLog.e("TaskHandler", "Too Many Task At a Time. Please Wait...");
        } catch (Exception e2) {
            TLog.e("TaskHandler", e2.getMessage(), e2);
        }
    }
}
