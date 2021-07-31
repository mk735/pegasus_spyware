package com.tendcloud.tenddata;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class k {
    private static final ExecutorService a = Executors.newSingleThreadExecutor();

    public static void a(Runnable runnable) {
        a.execute(runnable);
    }
}
