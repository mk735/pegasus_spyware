package com.lenovo.feedback2.message;

import android.util.Log;
import com.lenovo.feedback2.message.protocol.HeaderNames;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONStringer;

public class BasicMessageBuilder {
    private static String a = "FeedBackService";
    private int b = -1;
    private Map<String, byte[]> c;

    public BasicMessageBuilder(int protocolVersion) {
        this.b = protocolVersion;
        this.c = new HashMap();
    }

    public BasicMessageBuilder addString(Enum<? extends HeaderNames> tag, String line) {
        addString(tag, line, "utf-8");
        return this;
    }

    public BasicMessageBuilder addString(Enum<? extends HeaderNames> tag, String line, String charsetName) {
        try {
            this.c.put(tag.name(), line.getBytes(charsetName));
        } catch (UnsupportedEncodingException e) {
            Log.i(a, "BasicMessageBuilder::addString encoding fail", e);
        }
        return this;
    }

    public BasicMessageBuilder addBinary(Enum<? extends HeaderNames> tag, byte[] binaryData) {
        this.c.put(tag.name(), binaryData);
        return this;
    }

    public Message build() {
        a headerBuilder = new a(this, (byte) 0);
        ByteArrayOutputStream dataStream = new ByteArrayOutputStream();
        int offset = 0;
        for (Map.Entry<String, byte[]> entry : this.c.entrySet()) {
            String key = entry.getKey();
            byte[] data = entry.getValue();
            try {
                headerBuilder.a(key, (long) data.length, offset);
                dataStream.write(data);
                offset += data.length;
            } catch (IOException e) {
                Log.e(a, "BasicMessageBuilder::build write data to stream err", e);
                try {
                    dataStream.close();
                    return null;
                } catch (IOException e2) {
                    return null;
                }
            } catch (JSONException e3) {
                Log.e(a, "BasicMessageBuilder::build write key to json err", e3);
                try {
                    dataStream.close();
                    return null;
                } catch (IOException e4) {
                    return null;
                }
            }
        }
        try {
            String header = headerBuilder.a();
            Message message = new Message();
            message.setVersion(this.b);
            message.setHeader(header);
            message.setData(dataStream.toByteArray());
            return message;
        } catch (JSONException e5) {
            Log.e(a, "BasicMessageBuilder::build make json header fail", e5);
            return null;
        }
    }

    /* access modifiers changed from: private */
    public class a {
        private JSONStringer b;

        private a() {
        }

        /* synthetic */ a(BasicMessageBuilder basicMessageBuilder, byte b2) {
            this();
        }

        public final a a(String tag, long dataLength, int dataOffset) throws JSONException {
            if (this.b == null) {
                this.b = new JSONStringer();
                this.b.object();
            }
            this.b.key(tag).array().value(dataLength).value((long) dataOffset).endArray();
            return this;
        }

        public final String a() throws JSONException {
            return this.b.endObject().toString();
        }
    }
}
