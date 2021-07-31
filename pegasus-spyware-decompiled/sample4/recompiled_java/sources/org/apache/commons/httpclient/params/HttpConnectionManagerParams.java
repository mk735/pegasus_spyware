package org.apache.commons.httpclient.params;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.httpclient.HostConfiguration;

public class HttpConnectionManagerParams extends HttpConnectionParams {
    public static final String MAX_HOST_CONNECTIONS = "http.connection-manager.max-per-host";
    public static final String MAX_TOTAL_CONNECTIONS = "http.connection-manager.max-total";

    public void setDefaultMaxConnectionsPerHost(int maxHostConnections) {
        setMaxConnectionsPerHost(HostConfiguration.ANY_HOST_CONFIGURATION, maxHostConnections);
    }

    public void setMaxConnectionsPerHost(HostConfiguration hostConfiguration, int maxHostConnections) {
        Map newValues;
        if (maxHostConnections <= 0) {
            throw new IllegalArgumentException("maxHostConnections must be greater than 0");
        }
        Map currentValues = (Map) getParameter(MAX_HOST_CONNECTIONS);
        if (currentValues == null) {
            newValues = new HashMap();
        } else {
            newValues = new HashMap(currentValues);
        }
        newValues.put(hostConfiguration, new Integer(maxHostConnections));
        setParameter(MAX_HOST_CONNECTIONS, newValues);
    }

    public int getDefaultMaxConnectionsPerHost() {
        return getMaxConnectionsPerHost(HostConfiguration.ANY_HOST_CONFIGURATION);
    }

    public int getMaxConnectionsPerHost(HostConfiguration hostConfiguration) {
        Map m = (Map) getParameter(MAX_HOST_CONNECTIONS);
        if (m == null) {
            return 2;
        }
        Integer max = (Integer) m.get(hostConfiguration);
        if (max == null && hostConfiguration != HostConfiguration.ANY_HOST_CONFIGURATION) {
            return getMaxConnectionsPerHost(HostConfiguration.ANY_HOST_CONFIGURATION);
        }
        if (max != null) {
            return max.intValue();
        }
        return 2;
    }

    public void setMaxTotalConnections(int maxTotalConnections) {
        setIntParameter(MAX_TOTAL_CONNECTIONS, maxTotalConnections);
    }

    public int getMaxTotalConnections() {
        return getIntParameter(MAX_TOTAL_CONNECTIONS, 20);
    }
}
