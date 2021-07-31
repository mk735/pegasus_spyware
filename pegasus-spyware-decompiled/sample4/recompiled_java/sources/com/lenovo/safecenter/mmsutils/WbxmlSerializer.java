package com.lenovo.safecenter.mmsutils;

import com.lenovo.lps.sus.a.a.a.b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.Hashtable;
import java.util.Vector;
import org.xmlpull.v1.XmlSerializer;

public class WbxmlSerializer implements XmlSerializer {
    public static final String ERR_TAG = "WbxmlSerializer.java";
    Hashtable a = new Hashtable();
    OutputStream b;
    ByteArrayOutputStream c = new ByteArrayOutputStream();
    ByteArrayOutputStream d = new ByteArrayOutputStream();
    String e;
    int f;
    Vector g = new Vector();
    Hashtable h = new Hashtable();
    Hashtable i = new Hashtable();
    Hashtable j = new Hashtable();
    private int k;
    private int l;
    private String m;

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer attribute(String namespace, String name, String value) {
        this.g.addElement(name);
        this.g.addElement(value);
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void cdsect(String cdsect) throws IOException {
        text(cdsect);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void comment(String comment) {
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void docdecl(String docdecl) {
        throw new RuntimeException("Cannot write docdecl for WBXML");
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void entityRef(String er) {
        throw new RuntimeException("EntityReference not supported for WBXML");
    }

    public int getDepth() {
        return this.f;
    }

    public boolean getFeature(String name) {
        return false;
    }

    public String getNamespace() {
        throw new RuntimeException("NYI");
    }

    public String getName() {
        throw new RuntimeException("NYI");
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getPrefix(String nsp, boolean create) {
        throw new RuntimeException("NYI");
    }

    public Object getProperty(String name) {
        return null;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void ignorableWhitespace(String sp) {
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void endDocument() throws IOException {
        a(this.b, this.d.size());
        this.b.write(this.d.toByteArray());
        this.b.write(this.c.toByteArray());
        this.b.flush();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void flush() {
    }

    public void checkPending(boolean degenerated) throws IOException {
        if (this.e != null) {
            int len = this.g.size();
            int[] idx = (int[]) this.j.get(this.e);
            if (idx == null) {
                this.c.write(len == 0 ? degenerated ? 4 : 68 : degenerated ? 132 : 196);
                a(this.e, false);
            } else {
                if (idx[0] != this.l) {
                    this.l = idx[0];
                    this.c.write(0);
                    this.c.write(this.l);
                }
                this.c.write(len == 0 ? degenerated ? idx[1] : idx[1] | 64 : degenerated ? idx[1] | 128 : idx[1] | 192);
            }
            int i2 = 0;
            while (i2 < len) {
                int[] idx2 = (int[]) this.h.get(this.g.elementAt(i2));
                if (idx2 == null) {
                    this.c.write(4);
                    a((String) this.g.elementAt(i2), false);
                } else {
                    if (idx2[0] != this.k) {
                        this.k = idx2[0];
                        this.c.write(0);
                        this.c.write(this.k);
                    }
                    this.c.write(idx2[1]);
                }
                int i3 = i2 + 1;
                int[] idx3 = (int[]) this.i.get(this.g.elementAt(i3));
                if (idx3 == null) {
                    a((String) this.g.elementAt(i3));
                } else {
                    if (idx3[0] != this.k) {
                        this.k = idx3[0];
                        this.c.write(0);
                        this.c.write(this.k);
                    }
                    this.c.write(idx3[1]);
                }
                i2 = i3 + 1;
            }
            if (len > 0) {
                this.c.write(1);
            }
            this.e = null;
            this.g.removeAllElements();
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void processingInstruction(String pi) {
        throw new RuntimeException("PI NYI");
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setFeature(String name, boolean value) {
        throw new IllegalArgumentException("unknown feature " + name);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(Writer writer) {
        throw new RuntimeException("Wbxml requires an OutputStream!");
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(OutputStream out, String encoding) throws IOException {
        if (encoding == null) {
            encoding = b.a;
        }
        this.m = encoding;
        this.b = out;
        this.c = new ByteArrayOutputStream();
        this.d = new ByteArrayOutputStream();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setPrefix(String prefix, String nsp) {
        throw new RuntimeException("NYI");
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setProperty(String property, Object value) {
        throw new IllegalArgumentException("unknown property " + property);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void startDocument(String s, Boolean b2) throws IOException {
        this.b.write(3);
        this.b.write(1);
        if (s != null) {
            this.m = s;
        }
        if (this.m.toUpperCase().equals(b.a)) {
            this.b.write(106);
        } else if (this.m.toUpperCase().equals("ISO-8859-1")) {
            this.b.write(4);
        } else {
            throw new UnsupportedEncodingException(s);
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer startTag(String namespace, String name) throws IOException {
        if (namespace == null || "".equals(namespace)) {
            checkPending(false);
            this.e = name;
            this.f++;
            return this;
        }
        throw new RuntimeException("NSP NYI");
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(char[] chars, int start, int len) throws IOException {
        checkPending(false);
        a(new String(chars, start, len));
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(String text) throws IOException {
        checkPending(false);
        a(text);
        return this;
    }

    private void a(String text) throws IOException {
        int p0 = 0;
        int lastCut = 0;
        int len = text.length();
        while (p0 < len) {
            while (p0 < len && text.charAt(p0) < 'A') {
                p0++;
            }
            int p1 = p0;
            while (p1 < len && text.charAt(p1) >= 'A') {
                p1++;
            }
            if (p1 - p0 > 10) {
                if (p0 > lastCut && text.charAt(p0 - 1) == ' ' && this.a.get(text.substring(p0, p1)) == null) {
                    this.c.write(131);
                    a(text.substring(lastCut, p1), false);
                } else {
                    if (p0 > lastCut && text.charAt(p0 - 1) == ' ') {
                        p0--;
                    }
                    if (p0 > lastCut) {
                        this.c.write(131);
                        a(text.substring(lastCut, p0), false);
                    }
                    this.c.write(131);
                    a(text.substring(p0, p1), true);
                }
                lastCut = p1;
            }
            p0 = p1;
        }
        if (lastCut < len) {
            this.c.write(131);
            a(text.substring(lastCut, len), false);
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer endTag(String namespace, String name) throws IOException {
        if (this.e != null) {
            checkPending(true);
        } else {
            this.c.write(1);
        }
        this.f--;
        return this;
    }

    public void writeWapExtension(int type, Object data) throws IOException {
        checkPending(false);
        this.c.write(type);
        switch (type) {
            case 64:
            case Wbxml.EXT_I_1:
            case Wbxml.EXT_I_2:
                a(this.c, (String) data);
                return;
            case 128:
            case 129:
            case 130:
                a((String) data, false);
                return;
            case 192:
            case 193:
            case 194:
                return;
            case 195:
                Object bytes = (byte[]) data;
                a(this.c, bytes.length);
                this.c.write((byte[]) bytes);
                return;
            default:
                throw new IllegalArgumentException();
        }
    }

    private static void a(OutputStream out, int i2) throws IOException {
        int idx;
        byte[] buf = new byte[5];
        int idx2 = 0;
        while (true) {
            idx = idx2 + 1;
            buf[idx2] = (byte) (i2 & 127);
            i2 >>= 7;
            if (i2 == 0) {
                break;
            }
            idx2 = idx;
        }
        int idx3 = idx;
        while (idx3 > 1) {
            idx3--;
            out.write(buf[idx3] | 128);
        }
        out.write(buf[0]);
    }

    private void a(OutputStream out, String s) throws IOException {
        out.write(s.getBytes(this.m));
        out.write(0);
    }

    private final void a(String s, boolean mayPrependSpace) throws IOException {
        Integer idx = (Integer) this.a.get(s);
        if (idx != null) {
            a(this.c, idx.intValue());
            return;
        }
        int i2 = this.d.size();
        if (s.charAt(0) < '0' || !mayPrependSpace) {
            a(this.c, i2);
        } else {
            s = ' ' + s;
            a(this.c, i2 + 1);
        }
        this.a.put(s, new Integer(i2));
        if (s.charAt(0) == ' ') {
            this.a.put(s.substring(1), new Integer(i2 + 1));
        }
        int j2 = s.lastIndexOf(32);
        if (j2 > 1) {
            this.a.put(s.substring(j2), new Integer(i2 + j2));
            this.a.put(s.substring(j2 + 1), new Integer(i2 + j2 + 1));
        }
        a(this.d, s);
        this.d.flush();
    }

    public void setTagTable(int page, String[] tagTable) {
        for (int i2 = 0; i2 < tagTable.length; i2++) {
            if (tagTable[i2] != null) {
                this.j.put(tagTable[i2], new int[]{page, i2 + 5});
            }
        }
    }

    public void setAttrStartTable(int page, String[] attrStartTable) {
        for (int i2 = 0; i2 < attrStartTable.length; i2++) {
            if (attrStartTable[i2] != null) {
                this.h.put(attrStartTable[i2], new int[]{page, i2 + 5});
            }
        }
    }

    public void setAttrValueTable(int page, String[] attrValueTable) {
        for (int i2 = 0; i2 < attrValueTable.length; i2++) {
            if (attrValueTable[i2] != null) {
                this.i.put(attrValueTable[i2], new int[]{page, i2 + 133});
            }
        }
    }
}
