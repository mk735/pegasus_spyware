package org.apache.commons.httpclient.methods;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class FileRequestEntity implements RequestEntity {
    final File a;
    final String b;

    public FileRequestEntity(File file, String contentType) {
        if (file == null) {
            throw new IllegalArgumentException("File may not be null");
        }
        this.a = file;
        this.b = contentType;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public long getContentLength() {
        return this.a.length();
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public String getContentType() {
        return this.b;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public void writeRequest(OutputStream out) throws IOException {
        byte[] tmp = new byte[4096];
        InputStream instream = new FileInputStream(this.a);
        while (true) {
            try {
                int i = instream.read(tmp);
                if (i >= 0) {
                    out.write(tmp, 0, i);
                } else {
                    return;
                }
            } finally {
                instream.close();
            }
        }
    }
}
