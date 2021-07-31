package org.apache.commons.httpclient;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.net.InetAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.commons.httpclient.params.HttpConnectionManagerParams;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.commons.httpclient.protocol.Protocol;
import org.apache.commons.httpclient.util.IdleConnectionHandler;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class MultiThreadedHttpConnectionManager implements HttpConnectionManager {
    public static final int DEFAULT_MAX_HOST_CONNECTIONS = 2;
    public static final int DEFAULT_MAX_TOTAL_CONNECTIONS = 20;
    static Class a;
    private static final Log b;
    private static final Map c = new HashMap();
    private static final ReferenceQueue d = new ReferenceQueue();
    private static f e;
    private static WeakHashMap f = new WeakHashMap();
    private HttpConnectionManagerParams g = new HttpConnectionManagerParams();
    private a h = new a(this, (byte) 0);
    private volatile boolean i = false;

    static HostConfiguration a(HttpConnection x1) {
        HostConfiguration hostConfiguration = new HostConfiguration();
        hostConfiguration.setHost(x1.getHost(), x1.getPort(), x1.getProtocol());
        if (x1.getLocalAddress() != null) {
            hostConfiguration.setLocalAddress(x1.getLocalAddress());
        }
        if (x1.getProxyHost() != null) {
            hostConfiguration.setProxy(x1.getProxyHost(), x1.getProxyPort());
        }
        return hostConfiguration;
    }

    static HttpConnectionManagerParams a(MultiThreadedHttpConnectionManager x0) {
        return x0.g;
    }

    static Log a() {
        return b;
    }

    static void a(a x0) {
        ArrayList arrayList = new ArrayList();
        synchronized (c) {
            Iterator it = c.keySet().iterator();
            while (it.hasNext()) {
                Reference reference = (Reference) it.next();
                if (((b) c.get(reference)).a == x0) {
                    it.remove();
                    HttpConnection httpConnection = (HttpConnection) reference.get();
                    if (httpConnection != null) {
                        arrayList.add(httpConnection);
                    }
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            HttpConnection httpConnection2 = (HttpConnection) it2.next();
            httpConnection2.close();
            httpConnection2.setHttpConnectionManager(null);
            httpConnection2.releaseConnection();
        }
    }

    static void a(e x0) {
        synchronized (c) {
            c.remove(x0.b);
        }
    }

    static void a(e x0, HostConfiguration x1, a x2) {
        b bVar = new b((byte) 0);
        bVar.a = x2;
        bVar.b = x1;
        synchronized (c) {
            if (e == null) {
                e = new f();
                e.start();
            }
            c.put(x0.b, bVar);
        }
    }

    static Map b() {
        return c;
    }

    static boolean b(MultiThreadedHttpConnectionManager x0) {
        return x0.i;
    }

    static ReferenceQueue c() {
        return d;
    }

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.MultiThreadedHttpConnectionManager");
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

    public static void shutdownAll() {
        synchronized (c) {
            synchronized (f) {
                MultiThreadedHttpConnectionManager[] connManagers = (MultiThreadedHttpConnectionManager[]) f.keySet().toArray(new MultiThreadedHttpConnectionManager[f.size()]);
                for (int i2 = 0; i2 < connManagers.length; i2++) {
                    if (connManagers[i2] != null) {
                        connManagers[i2].shutdown();
                    }
                }
            }
            if (e != null) {
                e.a();
                e = null;
            }
            c.clear();
        }
    }

    public MultiThreadedHttpConnectionManager() {
        synchronized (f) {
            f.put(this, null);
        }
    }

    public synchronized void shutdown() {
        synchronized (this.h) {
            if (!this.i) {
                this.i = true;
                this.h.a();
            }
        }
    }

    public boolean isConnectionStaleCheckingEnabled() {
        return this.g.isStaleCheckingEnabled();
    }

    public void setConnectionStaleCheckingEnabled(boolean connectionStaleCheckingEnabled) {
        this.g.setStaleCheckingEnabled(connectionStaleCheckingEnabled);
    }

    public void setMaxConnectionsPerHost(int maxHostConnections) {
        this.g.setDefaultMaxConnectionsPerHost(maxHostConnections);
    }

    public int getMaxConnectionsPerHost() {
        return this.g.getDefaultMaxConnectionsPerHost();
    }

    public void setMaxTotalConnections(int maxTotalConnections) {
        this.g.setMaxTotalConnections(maxTotalConnections);
    }

    public int getMaxTotalConnections() {
        return this.g.getMaxTotalConnections();
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public HttpConnection getConnection(HostConfiguration hostConfiguration) {
        while (true) {
            try {
                break;
            } catch (ConnectionPoolTimeoutException e2) {
                b.debug("Unexpected exception while waiting for connection", e2);
            }
        }
        return getConnectionWithTimeout(hostConfiguration, 0);
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public HttpConnection getConnectionWithTimeout(HostConfiguration hostConfiguration, long timeout) throws ConnectionPoolTimeoutException {
        b.trace("enter HttpConnectionManager.getConnectionWithTimeout(HostConfiguration, long)");
        if (hostConfiguration == null) {
            throw new IllegalArgumentException("hostConfiguration is null");
        }
        if (b.isDebugEnabled()) {
            b.debug(new StringBuffer().append("HttpConnectionManager.getConnection:  config = ").append(hostConfiguration).append(", timeout = ").append(timeout).toString());
        }
        return new d(a(hostConfiguration, timeout));
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public HttpConnection getConnection(HostConfiguration hostConfiguration, long timeout) throws HttpException {
        b.trace("enter HttpConnectionManager.getConnection(HostConfiguration, long)");
        try {
            return getConnectionWithTimeout(hostConfiguration, timeout);
        } catch (ConnectionPoolTimeoutException e2) {
            throw new HttpException(e2.getMessage());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x0108  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0122  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x01c1  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x00ea A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private org.apache.commons.httpclient.HttpConnection a(org.apache.commons.httpclient.HostConfiguration r22, long r23) throws org.apache.commons.httpclient.ConnectionPoolTimeoutException {
        /*
        // Method dump skipped, instructions count: 503
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.httpclient.MultiThreadedHttpConnectionManager.a(org.apache.commons.httpclient.HostConfiguration, long):org.apache.commons.httpclient.HttpConnection");
    }

    public int getConnectionsInPool(HostConfiguration hostConfiguration) {
        int i2 = 0;
        synchronized (this.h) {
            c hostPool = this.h.a(hostConfiguration, false);
            if (hostPool != null) {
                i2 = hostPool.d;
            }
        }
        return i2;
    }

    public int getConnectionsInPool() {
        int a2;
        synchronized (this.h) {
            a2 = a.a(this.h);
        }
        return a2;
    }

    public int getConnectionsInUse(HostConfiguration hostConfiguration) {
        return getConnectionsInPool(hostConfiguration);
    }

    public int getConnectionsInUse() {
        return getConnectionsInPool();
    }

    public void deleteClosedConnections() {
        this.h.b();
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public void closeIdleConnections(long idleTimeout) {
        this.h.a(idleTimeout);
        deleteClosedConnections();
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public void releaseConnection(HttpConnection conn) {
        b.trace("enter HttpConnectionManager.releaseConnection(HttpConnection)");
        if (conn instanceof d) {
            conn = ((d) conn).a();
        }
        SimpleHttpConnectionManager.a(conn);
        this.h.a(conn);
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public HttpConnectionManagerParams getParams() {
        return this.g;
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public void setParams(HttpConnectionManagerParams params) {
        if (params == null) {
            throw new IllegalArgumentException("Parameters may not be null");
        }
        this.g = params;
    }

    /* access modifiers changed from: private */
    public class a {
        private LinkedList a;
        private LinkedList b;
        private final Map c;
        private IdleConnectionHandler d;
        private int e;
        private final MultiThreadedHttpConnectionManager f;

        private a(MultiThreadedHttpConnectionManager multiThreadedHttpConnectionManager) {
            this.f = multiThreadedHttpConnectionManager;
            this.a = new LinkedList();
            this.b = new LinkedList();
            this.c = new HashMap();
            this.d = new IdleConnectionHandler();
            this.e = 0;
        }

        a(MultiThreadedHttpConnectionManager x0, byte b2) {
            this(x0);
        }

        static int a(a x0) {
            return x0.e;
        }

        static LinkedList b(a x0) {
            return x0.a;
        }

        static LinkedList c(a x0) {
            return x0.b;
        }

        public final synchronized void a() {
            Iterator iter = this.a.iterator();
            while (iter.hasNext()) {
                iter.remove();
                ((HttpConnection) iter.next()).close();
            }
            MultiThreadedHttpConnectionManager.a(this);
            Iterator iter2 = this.b.iterator();
            while (iter2.hasNext()) {
                g waiter = (g) iter2.next();
                iter2.remove();
                waiter.c = true;
                waiter.a.interrupt();
            }
            this.c.clear();
            this.d.removeAll();
        }

        public final synchronized HttpConnection a(HostConfiguration hostConfiguration) {
            e connection;
            c hostPool = a(hostConfiguration, true);
            if (MultiThreadedHttpConnectionManager.a().isDebugEnabled()) {
                MultiThreadedHttpConnectionManager.a().debug(new StringBuffer().append("Allocating new connection, hostConfig=").append(hostConfiguration).toString());
            }
            connection = new e(hostConfiguration);
            connection.getParams().setDefaults(MultiThreadedHttpConnectionManager.a(this.f));
            connection.setHttpConnectionManager(this.f);
            this.e++;
            hostPool.d++;
            MultiThreadedHttpConnectionManager.a(connection, hostConfiguration, this);
            return connection;
        }

        public final synchronized void b(HostConfiguration config) {
            c hostPool = a(config, true);
            hostPool.d--;
            if (hostPool.d == 0 && hostPool.c.isEmpty()) {
                this.c.remove(config);
            }
            this.e--;
            d(config);
        }

        public final synchronized c a(HostConfiguration hostConfiguration, boolean create) {
            c listConnections;
            MultiThreadedHttpConnectionManager.a().trace("enter HttpConnectionManager.ConnectionPool.getHostPool(HostConfiguration)");
            listConnections = (c) this.c.get(hostConfiguration);
            if (listConnections == null && create) {
                listConnections = new c((byte) 0);
                listConnections.a = hostConfiguration;
                this.c.put(hostConfiguration, listConnections);
            }
            return listConnections;
        }

        public final synchronized HttpConnection c(HostConfiguration hostConfiguration) {
            e connection;
            connection = null;
            c hostPool = a(hostConfiguration, false);
            if (hostPool != null && hostPool.b.size() > 0) {
                connection = (e) hostPool.b.removeLast();
                this.a.remove(connection);
                MultiThreadedHttpConnectionManager.a(connection, hostConfiguration, this);
                if (MultiThreadedHttpConnectionManager.a().isDebugEnabled()) {
                    MultiThreadedHttpConnectionManager.a().debug(new StringBuffer().append("Getting free connection, hostConfig=").append(hostConfiguration).toString());
                }
                this.d.remove(connection);
            } else if (MultiThreadedHttpConnectionManager.a().isDebugEnabled()) {
                MultiThreadedHttpConnectionManager.a().debug(new StringBuffer().append("There were no free connections to get, hostConfig=").append(hostConfiguration).toString());
            }
            return connection;
        }

        public final synchronized void b() {
            Iterator iter = this.a.iterator();
            while (iter.hasNext()) {
                HttpConnection conn = (HttpConnection) iter.next();
                if (!conn.isOpen()) {
                    iter.remove();
                    b(conn);
                }
            }
        }

        public final synchronized void a(long idleTimeout) {
            this.d.closeIdleConnections(idleTimeout);
        }

        private synchronized void b(HttpConnection connection) {
            MultiThreadedHttpConnectionManager multiThreadedHttpConnectionManager = this.f;
            HostConfiguration connectionConfiguration = MultiThreadedHttpConnectionManager.a(connection);
            if (MultiThreadedHttpConnectionManager.a().isDebugEnabled()) {
                MultiThreadedHttpConnectionManager.a().debug(new StringBuffer().append("Reclaiming connection, hostConfig=").append(connectionConfiguration).toString());
            }
            connection.close();
            c hostPool = a(connectionConfiguration, true);
            hostPool.b.remove(connection);
            hostPool.d--;
            this.e--;
            if (hostPool.d == 0 && hostPool.c.isEmpty()) {
                this.c.remove(connectionConfiguration);
            }
            this.d.remove(connection);
        }

        public final synchronized void c() {
            HttpConnection connection = (HttpConnection) this.a.removeFirst();
            if (connection != null) {
                b(connection);
            } else if (MultiThreadedHttpConnectionManager.a().isDebugEnabled()) {
                MultiThreadedHttpConnectionManager.a().debug("Attempted to reclaim an unused connection but there were none.");
            }
        }

        private synchronized void d(HostConfiguration configuration) {
            a(a(configuration, true));
        }

        private synchronized void a(c hostPool) {
            g waitingThread = null;
            if (hostPool.c.size() > 0) {
                if (MultiThreadedHttpConnectionManager.a().isDebugEnabled()) {
                    MultiThreadedHttpConnectionManager.a().debug(new StringBuffer().append("Notifying thread waiting on host pool, hostConfig=").append(hostPool.a).toString());
                }
                waitingThread = (g) hostPool.c.removeFirst();
                this.b.remove(waitingThread);
            } else if (this.b.size() > 0) {
                if (MultiThreadedHttpConnectionManager.a().isDebugEnabled()) {
                    MultiThreadedHttpConnectionManager.a().debug("No-one waiting on host pool, notifying next waiting thread.");
                }
                waitingThread = (g) this.b.removeFirst();
                waitingThread.b.c.remove(waitingThread);
            } else if (MultiThreadedHttpConnectionManager.a().isDebugEnabled()) {
                MultiThreadedHttpConnectionManager.a().debug("Notifying no-one, there are no waiting threads");
            }
            if (waitingThread != null) {
                waitingThread.c = true;
                waitingThread.a.interrupt();
            }
        }

        public final void a(HttpConnection conn) {
            MultiThreadedHttpConnectionManager multiThreadedHttpConnectionManager = this.f;
            HostConfiguration connectionConfiguration = MultiThreadedHttpConnectionManager.a(conn);
            if (MultiThreadedHttpConnectionManager.a().isDebugEnabled()) {
                MultiThreadedHttpConnectionManager.a().debug(new StringBuffer().append("Freeing connection, hostConfig=").append(connectionConfiguration).toString());
            }
            synchronized (this) {
                if (MultiThreadedHttpConnectionManager.b(this.f)) {
                    conn.close();
                    return;
                }
                c hostPool = a(connectionConfiguration, true);
                hostPool.b.add(conn);
                if (hostPool.d == 0) {
                    MultiThreadedHttpConnectionManager.a().error(new StringBuffer().append("Host connection pool not found, hostConfig=").append(connectionConfiguration).toString());
                    hostPool.d = 1;
                }
                this.a.add(conn);
                MultiThreadedHttpConnectionManager.a((e) conn);
                if (this.e == 0) {
                    MultiThreadedHttpConnectionManager.a().error(new StringBuffer().append("Host connection pool not found, hostConfig=").append(connectionConfiguration).toString());
                    this.e = 1;
                }
                this.d.add(conn);
                a(hostPool);
            }
        }
    }

    /* access modifiers changed from: private */
    public static class b {
        public a a;
        public HostConfiguration b;

        private b() {
        }

        b(byte b2) {
            this();
        }
    }

    /* access modifiers changed from: private */
    public static class c {
        public HostConfiguration a;
        public LinkedList b;
        public LinkedList c;
        public int d;

        private c() {
            this.b = new LinkedList();
            this.c = new LinkedList();
            this.d = 0;
        }

        c(byte b2) {
            this();
        }
    }

    /* access modifiers changed from: private */
    public static class g {
        public Thread a;
        public c b;
        public boolean c;

        private g() {
            this.c = false;
        }

        g(byte b2) {
            this();
        }
    }

    /* access modifiers changed from: private */
    public static class f extends Thread {
        private volatile boolean a = false;

        public f() {
            setDaemon(true);
            setName("MultiThreadedHttpConnectionManager cleanup");
        }

        public final void a() {
            this.a = true;
            interrupt();
        }

        public final void run() {
            b bVar;
            while (!this.a) {
                try {
                    Reference ref = MultiThreadedHttpConnectionManager.c().remove();
                    if (ref != null) {
                        synchronized (MultiThreadedHttpConnectionManager.b()) {
                            bVar = (b) MultiThreadedHttpConnectionManager.b().remove(ref);
                        }
                        if (bVar != null) {
                            if (MultiThreadedHttpConnectionManager.a().isDebugEnabled()) {
                                MultiThreadedHttpConnectionManager.a().debug(new StringBuffer().append("Connection reclaimed by garbage collector, hostConfig=").append(bVar.b).toString());
                            }
                            bVar.a.b(bVar.b);
                        }
                    } else {
                        continue;
                    }
                } catch (InterruptedException e) {
                    MultiThreadedHttpConnectionManager.a().debug("ReferenceQueueThread interrupted", e);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public static class e extends HttpConnection {
        public WeakReference b = new WeakReference(this, MultiThreadedHttpConnectionManager.c());

        public e(HostConfiguration hostConfiguration) {
            super(hostConfiguration);
        }
    }

    /* access modifiers changed from: private */
    public static class d extends HttpConnection {
        private HttpConnection b;

        public d(HttpConnection connection) {
            super(connection.getHost(), connection.getPort(), connection.getProtocol());
            this.b = connection;
        }

        private boolean b() {
            return this.b != null;
        }

        /* access modifiers changed from: package-private */
        public final HttpConnection a() {
            return this.b;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void close() {
            if (b()) {
                this.b.close();
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final InetAddress getLocalAddress() {
            if (b()) {
                return this.b.getLocalAddress();
            }
            return null;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final boolean isStaleCheckingEnabled() {
            if (b()) {
                return this.b.isStaleCheckingEnabled();
            }
            return false;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setLocalAddress(InetAddress localAddress) {
            if (b()) {
                this.b.setLocalAddress(localAddress);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setStaleCheckingEnabled(boolean staleCheckEnabled) {
            if (b()) {
                this.b.setStaleCheckingEnabled(staleCheckEnabled);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final String getHost() {
            if (b()) {
                return this.b.getHost();
            }
            return null;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final HttpConnectionManager getHttpConnectionManager() {
            if (b()) {
                return this.b.getHttpConnectionManager();
            }
            return null;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final InputStream getLastResponseInputStream() {
            if (b()) {
                return this.b.getLastResponseInputStream();
            }
            return null;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final int getPort() {
            if (b()) {
                return this.b.getPort();
            }
            return -1;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final Protocol getProtocol() {
            if (b()) {
                return this.b.getProtocol();
            }
            return null;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final String getProxyHost() {
            if (b()) {
                return this.b.getProxyHost();
            }
            return null;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final int getProxyPort() {
            if (b()) {
                return this.b.getProxyPort();
            }
            return -1;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final OutputStream getRequestOutputStream() throws IOException, IllegalStateException {
            if (b()) {
                return this.b.getRequestOutputStream();
            }
            return null;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final InputStream getResponseInputStream() throws IOException, IllegalStateException {
            if (b()) {
                return this.b.getResponseInputStream();
            }
            return null;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final boolean isOpen() {
            if (b()) {
                return this.b.isOpen();
            }
            return false;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final boolean closeIfStale() throws IOException {
            if (b()) {
                return this.b.closeIfStale();
            }
            return false;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final boolean isProxied() {
            if (b()) {
                return this.b.isProxied();
            }
            return false;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final boolean isResponseAvailable() throws IOException {
            if (b()) {
                return this.b.isResponseAvailable();
            }
            return false;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final boolean isResponseAvailable(int timeout) throws IOException {
            if (b()) {
                return this.b.isResponseAvailable(timeout);
            }
            return false;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final boolean isSecure() {
            if (b()) {
                return this.b.isSecure();
            }
            return false;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final boolean isTransparent() {
            if (b()) {
                return this.b.isTransparent();
            }
            return false;
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void open() throws IOException {
            if (b()) {
                this.b.open();
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void print(String data) throws IOException, IllegalStateException {
            if (b()) {
                this.b.print(data);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void printLine() throws IOException, IllegalStateException {
            if (b()) {
                this.b.printLine();
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void printLine(String data) throws IOException, IllegalStateException {
            if (b()) {
                this.b.printLine(data);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final String readLine() throws IOException, IllegalStateException {
            if (b()) {
                return this.b.readLine();
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final String readLine(String charset) throws IOException, IllegalStateException {
            if (b()) {
                return this.b.readLine(charset);
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void releaseConnection() {
            if (!isLocked() && b()) {
                HttpConnection wrappedConnection = this.b;
                this.b = null;
                wrappedConnection.releaseConnection();
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setConnectionTimeout(int timeout) {
            if (b()) {
                this.b.setConnectionTimeout(timeout);
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setHost(String host) throws IllegalStateException {
            if (b()) {
                this.b.setHost(host);
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setHttpConnectionManager(HttpConnectionManager httpConnectionManager) {
            if (b()) {
                this.b.setHttpConnectionManager(httpConnectionManager);
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setLastResponseInputStream(InputStream inStream) {
            if (b()) {
                this.b.setLastResponseInputStream(inStream);
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setPort(int port) throws IllegalStateException {
            if (b()) {
                this.b.setPort(port);
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setProtocol(Protocol protocol) {
            if (b()) {
                this.b.setProtocol(protocol);
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setProxyHost(String host) throws IllegalStateException {
            if (b()) {
                this.b.setProxyHost(host);
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setProxyPort(int port) throws IllegalStateException {
            if (b()) {
                this.b.setProxyPort(port);
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setSoTimeout(int timeout) throws SocketException, IllegalStateException {
            if (b()) {
                this.b.setSoTimeout(timeout);
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void shutdownOutput() {
            if (b()) {
                this.b.shutdownOutput();
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void tunnelCreated() throws IllegalStateException, IOException {
            if (b()) {
                this.b.tunnelCreated();
            }
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void write(byte[] data, int offset, int length) throws IOException, IllegalStateException {
            if (b()) {
                this.b.write(data, offset, length);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void write(byte[] data) throws IOException, IllegalStateException {
            if (b()) {
                this.b.write(data);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void writeLine() throws IOException, IllegalStateException {
            if (b()) {
                this.b.writeLine();
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void writeLine(byte[] data) throws IOException, IllegalStateException {
            if (b()) {
                this.b.writeLine(data);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void flushRequestOutputStream() throws IOException {
            if (b()) {
                this.b.flushRequestOutputStream();
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final int getSoTimeout() throws SocketException {
            if (b()) {
                return this.b.getSoTimeout();
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final String getVirtualHost() {
            if (b()) {
                return this.b.getVirtualHost();
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setVirtualHost(String host) throws IllegalStateException {
            if (b()) {
                this.b.setVirtualHost(host);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final int getSendBufferSize() throws SocketException {
            if (b()) {
                return this.b.getSendBufferSize();
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setSendBufferSize(int sendBufferSize) throws SocketException {
            if (b()) {
                this.b.setSendBufferSize(sendBufferSize);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final HttpConnectionParams getParams() {
            if (b()) {
                return this.b.getParams();
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setParams(HttpConnectionParams params) {
            if (b()) {
                this.b.setParams(params);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void print(String data, String charset) throws IOException, IllegalStateException {
            if (b()) {
                this.b.print(data, charset);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void printLine(String data, String charset) throws IOException, IllegalStateException {
            if (b()) {
                this.b.printLine(data, charset);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }

        @Override // org.apache.commons.httpclient.HttpConnection
        public final void setSocketTimeout(int timeout) throws SocketException, IllegalStateException {
            if (b()) {
                this.b.setSocketTimeout(timeout);
                return;
            }
            throw new IllegalStateException("Connection has been released");
        }
    }
}
