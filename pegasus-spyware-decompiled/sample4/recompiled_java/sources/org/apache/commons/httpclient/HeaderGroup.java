package org.apache.commons.httpclient;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class HeaderGroup {
    private List a = new ArrayList();

    public void clear() {
        this.a.clear();
    }

    public void addHeader(Header header) {
        this.a.add(header);
    }

    public void removeHeader(Header header) {
        this.a.remove(header);
    }

    public void setHeaders(Header[] headers) {
        clear();
        for (Header header : headers) {
            addHeader(header);
        }
    }

    public Header getCondensedHeader(String name) {
        Header[] headers = getHeaders(name);
        if (headers.length == 0) {
            return null;
        }
        if (headers.length == 1) {
            return new Header(headers[0].getName(), headers[0].getValue());
        }
        StringBuffer valueBuffer = new StringBuffer(headers[0].getValue());
        for (int i = 1; i < headers.length; i++) {
            valueBuffer.append(", ");
            valueBuffer.append(headers[i].getValue());
        }
        return new Header(name.toLowerCase(), valueBuffer.toString());
    }

    public Header[] getHeaders(String name) {
        ArrayList headersFound = new ArrayList();
        for (Header header : this.a) {
            if (header.getName().equalsIgnoreCase(name)) {
                headersFound.add(header);
            }
        }
        return (Header[]) headersFound.toArray(new Header[headersFound.size()]);
    }

    public Header getFirstHeader(String name) {
        for (Header header : this.a) {
            if (header.getName().equalsIgnoreCase(name)) {
                return header;
            }
        }
        return null;
    }

    public Header getLastHeader(String name) {
        for (int i = this.a.size() - 1; i >= 0; i--) {
            Header header = (Header) this.a.get(i);
            if (header.getName().equalsIgnoreCase(name)) {
                return header;
            }
        }
        return null;
    }

    public Header[] getAllHeaders() {
        return (Header[]) this.a.toArray(new Header[this.a.size()]);
    }

    public boolean containsHeader(String name) {
        for (Header header : this.a) {
            if (header.getName().equalsIgnoreCase(name)) {
                return true;
            }
        }
        return false;
    }

    public Iterator getIterator() {
        return this.a.iterator();
    }
}
