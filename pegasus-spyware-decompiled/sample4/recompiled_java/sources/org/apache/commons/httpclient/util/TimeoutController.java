package org.apache.commons.httpclient.util;

public final class TimeoutController {

    public static class TimeoutException extends Exception {
    }

    private TimeoutController() {
    }

    public static void execute(Thread task, long timeout) throws TimeoutException {
        task.start();
        try {
            task.join(timeout);
        } catch (InterruptedException e) {
        }
        if (task.isAlive()) {
            task.interrupt();
            throw new TimeoutException();
        }
    }

    public static void execute(Runnable task, long timeout) throws TimeoutException {
        Thread t = new Thread(task, "Timeout guard");
        t.setDaemon(true);
        execute(t, timeout);
    }
}
