package org.apache.commons.httpclient.util;

import com.lenovo.lps.sus.c.c;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.httpclient.HttpConnectionManager;

public class IdleConnectionTimeoutThread extends Thread {
    private List a = new ArrayList();
    private boolean b = false;
    private long c = 1000;
    private long d = c.ap;

    public IdleConnectionTimeoutThread() {
        setDaemon(true);
    }

    public synchronized void addConnectionManager(HttpConnectionManager connectionManager) {
        if (this.b) {
            throw new IllegalStateException("IdleConnectionTimeoutThread has been shutdown");
        }
        this.a.add(connectionManager);
    }

    public synchronized void removeConnectionManager(HttpConnectionManager connectionManager) {
        if (this.b) {
            throw new IllegalStateException("IdleConnectionTimeoutThread has been shutdown");
        }
        this.a.remove(connectionManager);
    }

    /* access modifiers changed from: protected */
    public void handleCloseIdleConnections(HttpConnectionManager connectionManager) {
        connectionManager.closeIdleConnections(this.d);
    }

    public synchronized void run() {
        while (!this.b) {
            for (HttpConnectionManager connectionManager : this.a) {
                handleCloseIdleConnections(connectionManager);
            }
            try {
                wait(this.c);
            } catch (InterruptedException e) {
            }
        }
        this.a.clear();
    }

    public synchronized void shutdown() {
        this.b = true;
        notifyAll();
    }

    public synchronized void setConnectionTimeout(long connectionTimeout) {
        if (this.b) {
            throw new IllegalStateException("IdleConnectionTimeoutThread has been shutdown");
        }
        this.d = connectionTimeout;
    }

    public synchronized void setTimeoutInterval(long timeoutInterval) {
        if (this.b) {
            throw new IllegalStateException("IdleConnectionTimeoutThread has been shutdown");
        }
        this.c = timeoutInterval;
    }
}
