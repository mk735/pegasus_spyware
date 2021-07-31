package org.apache.commons.httpclient.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.httpclient.HttpConnection;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class IdleConnectionHandler {
    static Class a;
    private static final Log b;
    private Map c = new HashMap();

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.util.IdleConnectionHandler");
            a = cls;
        } else {
            cls = a;
        }
        b = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public void add(HttpConnection connection) {
        Long timeAdded = new Long(System.currentTimeMillis());
        if (b.isDebugEnabled()) {
            b.debug(new StringBuffer().append("Adding connection at: ").append(timeAdded).toString());
        }
        this.c.put(connection, timeAdded);
    }

    public void remove(HttpConnection connection) {
        this.c.remove(connection);
    }

    public void removeAll() {
        this.c.clear();
    }

    public void closeIdleConnections(long idleTime) {
        long idleTimeout = System.currentTimeMillis() - idleTime;
        if (b.isDebugEnabled()) {
            b.debug(new StringBuffer().append("Checking for connections, idleTimeout: ").append(idleTimeout).toString());
        }
        Iterator connectionIter = this.c.keySet().iterator();
        while (connectionIter.hasNext()) {
            HttpConnection conn = (HttpConnection) connectionIter.next();
            Long connectionTime = (Long) this.c.get(conn);
            if (connectionTime.longValue() <= idleTimeout) {
                if (b.isDebugEnabled()) {
                    b.debug(new StringBuffer().append("Closing connection, connection time: ").append(connectionTime).toString());
                }
                connectionIter.remove();
                conn.close();
            }
        }
    }
}
