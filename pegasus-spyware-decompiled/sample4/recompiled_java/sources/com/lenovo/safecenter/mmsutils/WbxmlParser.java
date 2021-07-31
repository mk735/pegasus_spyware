package com.lenovo.safecenter.mmsutils;

import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.lps.sus.c.c;
import com.tencent.tmsecure.module.permission.IDummyService;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class WbxmlParser implements XmlPullParser {
    public static final String ERR_TAG = "WbxmlParser.java";
    public static final int WAP_EXTENSION = 64;
    private int A;
    private boolean B;
    private boolean C;
    private String D;
    private InputStream a;
    private int b = 0;
    private int c = 1;
    private int d = 2;
    private String[] e;
    private String[] f;
    private String[] g;
    private byte[] h;
    private Hashtable i = null;
    private boolean j;
    private int k;
    private String[] l = new String[16];
    private String[] m = new String[8];
    private int[] n = new int[4];
    private int o;
    private String[] p = new String[16];
    private int q = -2;
    private Vector r = new Vector();
    private int s;
    private int t;
    private String u;
    private String v;
    private String w;
    private String x;
    private Object y;
    private int z;

    public boolean getFeature(String feature) {
        if ("http://xmlpull.org/v1/doc/features.html#process-namespaces".equals(feature)) {
            return this.j;
        }
        return false;
    }

    public String getInputEncoding() {
        return this.D;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void defineEntityReplacementText(String entity, String value) throws XmlPullParserException {
    }

    public Object getProperty(String property) {
        return null;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int getNamespaceCount(int depth) {
        if (depth <= this.k) {
            return this.n[depth];
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getNamespacePrefix(int pos) {
        return this.m[pos << 1];
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getNamespaceUri(int pos) {
        return this.m[(pos << 1) + 1];
    }

    public String getNamespace(String prefix) {
        if ("xml".equals(prefix)) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        if ("xmlns".equals(prefix)) {
            return "http://www.w3.org/2000/xmlns/";
        }
        for (int i2 = (getNamespaceCount(this.k) << 1) - 2; i2 >= 0; i2 -= 2) {
            if (prefix == null) {
                if (this.m[i2] == null) {
                    return this.m[i2 + 1];
                }
            } else if (prefix.equals(this.m[i2])) {
                return this.m[i2 + 1];
            }
        }
        return null;
    }

    public int getDepth() {
        return this.k;
    }

    public String getPositionDescription() {
        StringBuffer buf = new StringBuffer(this.A < TYPES.length ? TYPES[this.A] : "unknown");
        buf.append(' ');
        if (this.A == 2 || this.A == 3) {
            if (this.B) {
                buf.append("(empty) ");
            }
            buf.append('<');
            if (this.A == 3) {
                buf.append('/');
            }
            if (this.u != null) {
                buf.append(c.P + this.v + c.Q + this.u + c.N);
            }
            buf.append(this.w);
            int cnt = this.o << 2;
            for (int i2 = 0; i2 < cnt; i2 += 4) {
                buf.append(' ');
                if (this.p[i2 + 1] != null) {
                    buf.append(c.P + this.p[i2] + c.Q + this.p[i2 + 1] + c.N);
                }
                buf.append(this.p[i2 + 2] + "='" + this.p[i2 + 3] + "'");
            }
            buf.append('>');
        } else if (this.A != 7) {
            if (this.A != 4) {
                buf.append(getText());
            } else if (this.C) {
                buf.append("(whitespace)");
            } else {
                String text = getText();
                if (text.length() > 16) {
                    text = text.substring(0, 16) + "...";
                }
                buf.append(text);
            }
        }
        return buf.toString();
    }

    public int getLineNumber() {
        return -1;
    }

    public int getColumnNumber() {
        return -1;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public boolean isWhitespace() throws XmlPullParserException {
        if (!(this.A == 4 || this.A == 7 || this.A == 5)) {
            a("Wrong event type");
        }
        return this.C;
    }

    public String getText() {
        return this.x;
    }

    public char[] getTextCharacters(int[] poslen) {
        if (this.A >= 4) {
            poslen[0] = 0;
            poslen[1] = this.x.length();
            char[] buf = new char[this.x.length()];
            this.x.getChars(0, this.x.length(), buf, 0);
            return buf;
        }
        poslen[0] = -1;
        poslen[1] = -1;
        return null;
    }

    public String getNamespace() {
        return this.v;
    }

    public String getName() {
        return this.w;
    }

    public String getPrefix() {
        return this.u;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public boolean isEmptyElementTag() throws XmlPullParserException {
        if (this.A != 2) {
            a("Wrong event type");
        }
        return this.B;
    }

    public int getAttributeCount() {
        return this.o;
    }

    public String getAttributeType(int index) {
        return "CDATA";
    }

    public boolean isAttributeDefault(int index) {
        return false;
    }

    public String getAttributeNamespace(int index) {
        if (index < this.o) {
            return this.p[index << 2];
        }
        throw new IndexOutOfBoundsException();
    }

    public String getAttributeName(int index) {
        if (index < this.o) {
            return this.p[(index << 2) + 2];
        }
        throw new IndexOutOfBoundsException();
    }

    public String getAttributePrefix(int index) {
        if (index < this.o) {
            return this.p[(index << 2) + 1];
        }
        throw new IndexOutOfBoundsException();
    }

    public String getAttributeValue(int index) {
        if (index < this.o) {
            return this.p[(index << 2) + 3];
        }
        throw new IndexOutOfBoundsException();
    }

    public String getAttributeValue(String namespace, String name) {
        for (int i2 = (this.o << 2) - 4; i2 >= 0; i2 -= 4) {
            if (this.p[i2 + 2].equals(name) && (namespace == null || this.p[i2].equals(namespace))) {
                return this.p[i2 + 3];
            }
        }
        return null;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int getEventType() throws XmlPullParserException {
        return this.A;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int next() throws XmlPullParserException, IOException {
        this.C = true;
        int minType = IDummyService.m;
        while (true) {
            String save = this.x;
            b();
            if (this.A < minType) {
                minType = this.A;
            }
            if (minType <= 5) {
                if (minType >= 4) {
                    if (save != null) {
                        if (this.x != null) {
                            save = save + this.x;
                        }
                        this.x = save;
                    }
                    switch (c()) {
                        case 2:
                        case 3:
                        case 4:
                        case Wbxml.LITERAL_C:
                        case 131:
                        case 132:
                        case 196:
                            break;
                    }
                }
            }
        }
        this.A = minType;
        if (this.A > 4) {
            this.A = 4;
        }
        return this.A;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int nextToken() throws XmlPullParserException, IOException {
        this.C = true;
        b();
        return this.A;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int nextTag() throws XmlPullParserException, IOException {
        next();
        if (this.A == 4 && this.C) {
            next();
        }
        if (!(this.A == 3 || this.A == 2)) {
            a("unexpected type");
        }
        return this.A;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String nextText() throws XmlPullParserException, IOException {
        String result;
        if (this.A != 2) {
            a("precondition: START_TAG");
        }
        next();
        if (this.A == 4) {
            result = getText();
            next();
        } else {
            result = "";
        }
        if (this.A != 3) {
            a("END_TAG expected");
        }
        return result;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void require(int type, String namespace, String name) throws XmlPullParserException, IOException {
        if (type != this.A || ((namespace != null && !namespace.equals(getNamespace())) || (name != null && !name.equals(getName())))) {
            a("expected: " + (type == 64 ? "WAP Ext." : TYPES[type] + " {" + namespace + c.Q + name));
        }
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void setInput(Reader reader) throws XmlPullParserException {
        a("InputStream required");
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void setInput(InputStream in, String enc) throws XmlPullParserException {
        this.a = in;
        try {
            this.s = d();
            this.t = e();
            if (this.t == 0) {
                e();
            }
            int charset = e();
            if (enc == null) {
                switch (charset) {
                    case 4:
                        this.D = "ISO-8859-1";
                        break;
                    case 106:
                        this.D = b.a;
                        break;
                    default:
                        throw new UnsupportedEncodingException("" + charset);
                }
            } else {
                this.D = enc;
            }
            int strTabSize = e();
            this.h = new byte[strTabSize];
            int ok = 0;
            while (ok < strTabSize) {
                int cnt = in.read(this.h, ok, strTabSize - ok);
                if (cnt <= 0) {
                    a(0, true);
                    a(0, false);
                }
                ok += cnt;
            }
            a(0, true);
            a(0, false);
        } catch (IOException e2) {
            a("Illegal input format");
        }
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void setFeature(String feature, boolean value) throws XmlPullParserException {
        if ("http://xmlpull.org/v1/doc/features.html#process-namespaces".equals(feature)) {
            this.j = value;
        } else {
            a("unsupported feature: " + feature);
        }
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void setProperty(String property, Object value) throws XmlPullParserException {
        throw new XmlPullParserException("unsupported property: " + property);
    }

    private final boolean a() throws XmlPullParserException {
        String prefix;
        String attrName;
        boolean any = false;
        int i2 = 0;
        while (i2 < (this.o << 2)) {
            String attrName2 = this.p[i2 + 2];
            int cut = attrName2.indexOf(58);
            if (cut != -1) {
                prefix = attrName2.substring(0, cut);
                attrName = attrName2.substring(cut + 1);
            } else if (attrName2.equals("xmlns")) {
                prefix = attrName2;
                attrName = null;
            } else {
                i2 += 4;
            }
            if (!prefix.equals("xmlns")) {
                any = true;
            } else {
                int[] iArr = this.n;
                int i3 = this.k;
                int i4 = iArr[i3];
                iArr[i3] = i4 + 1;
                int j2 = i4 << 1;
                this.m = b(this.m, j2 + 2);
                this.m[j2] = attrName;
                this.m[j2 + 1] = this.p[i2 + 3];
                if (attrName != null && this.p[i2 + 3].equals("")) {
                    a("illegal empty namespace");
                }
                String[] strArr = this.p;
                int i5 = this.o - 1;
                this.o = i5;
                System.arraycopy(this.p, i2 + 4, strArr, i2, (i5 << 2) - i2);
                i2 -= 4;
            }
            i2 += 4;
        }
        if (any) {
            for (int i6 = (this.o << 2) - 4; i6 >= 0; i6 -= 4) {
                String attrName3 = this.p[i6 + 2];
                int cut2 = attrName3.indexOf(58);
                if (cut2 == 0) {
                    throw new RuntimeException("illegal attribute name: " + attrName3 + " at " + this);
                }
                if (cut2 != -1) {
                    String attrPrefix = attrName3.substring(0, cut2);
                    String attrName4 = attrName3.substring(cut2 + 1);
                    String attrNs = getNamespace(attrPrefix);
                    if (attrNs == null) {
                        throw new RuntimeException("Undefined Prefix: " + attrPrefix + " in " + this);
                    }
                    this.p[i6] = attrNs;
                    this.p[i6 + 1] = attrPrefix;
                    this.p[i6 + 2] = attrName4;
                    for (int j3 = (this.o << 2) - 4; j3 > i6; j3 -= 4) {
                        if (attrName4.equals(this.p[j3 + 2]) && attrNs.equals(this.p[j3])) {
                            a("Duplicate Attribute: {" + attrNs + c.Q + attrName4);
                        }
                    }
                }
            }
        }
        int cut3 = this.w.indexOf(58);
        if (cut3 == 0) {
            a("illegal tag name: " + this.w);
        } else if (cut3 != -1) {
            this.u = this.w.substring(0, cut3);
            this.w = this.w.substring(cut3 + 1);
        }
        this.v = getNamespace(this.u);
        if (this.v == null) {
            if (this.u != null) {
                a("undefined prefix: " + this.u);
            }
            this.v = "";
        }
        return any;
    }

    private final void a(int page, int type, String[] table) {
        if (this.h != null) {
            throw new RuntimeException("setXxxTable must be called before setInput!");
        }
        while (this.r.size() < (page * 3) + 3) {
            this.r.addElement(null);
        }
        this.r.setElementAt(table, (page * 3) + type);
    }

    private final void a(String desc) throws XmlPullParserException {
        throw new XmlPullParserException(desc, this, null);
    }

    private void a(int nr, boolean tags) throws XmlPullParserException {
        if (this.r.size() != 0 || nr != 0) {
            if (nr * 3 > this.r.size()) {
                a("Code Page " + nr + " undefined!");
            }
            if (tags) {
                this.g = (String[]) this.r.elementAt((nr * 3) + this.b);
                return;
            }
            this.e = (String[]) this.r.elementAt((nr * 3) + this.c);
            this.f = (String[]) this.r.elementAt((nr * 3) + this.d);
        }
    }

    private final void b() throws IOException, XmlPullParserException {
        if (this.A == 3) {
            this.k--;
        }
        if (this.B) {
            this.A = 3;
            this.B = false;
            return;
        }
        this.x = null;
        this.u = null;
        this.w = null;
        int id = c();
        while (id == 0) {
            this.q = -2;
            a(d(), true);
            id = c();
        }
        this.q = -2;
        switch (id) {
            case -1:
                this.A = 1;
                return;
            case 1:
                int sp = (this.k - 1) << 2;
                this.A = 3;
                this.v = this.l[sp];
                this.u = this.l[sp + 1];
                this.w = this.l[sp + 2];
                return;
            case 2:
                this.A = 6;
                char c2 = (char) e();
                this.x = "" + c2;
                this.w = "#" + ((int) c2);
                return;
            case 3:
                this.A = 4;
                this.x = f();
                return;
            case 64:
            case Wbxml.EXT_I_1:
            case Wbxml.EXT_I_2:
            case 128:
            case 129:
            case 130:
            case 192:
            case 193:
            case 194:
            case 195:
                this.A = 64;
                this.z = id;
                this.y = parseWapExtension(id);
                return;
            case Wbxml.PI:
                throw new RuntimeException("PI curr. not supp.");
            case 131:
                this.A = 4;
                this.x = g();
                return;
            default:
                a(id);
                return;
        }
    }

    public Object parseWapExtension(int id) throws IOException, XmlPullParserException {
        switch (id) {
            case 64:
            case Wbxml.EXT_I_1:
            case Wbxml.EXT_I_2:
                return f();
            case 128:
            case 129:
            case 130:
                return new Integer(e());
            case 192:
            case 193:
            case 194:
                return null;
            case 195:
                int count = e();
                byte[] buf = new byte[count];
                while (count > 0) {
                    count -= this.a.read(buf, buf.length - count, count);
                }
                return buf;
            default:
                a("illegal id: " + id);
                return null;
        }
    }

    public void readAttr() throws IOException, XmlPullParserException {
        StringBuffer value;
        int id = d();
        int i2 = 0;
        while (id != 1) {
            while (id == 0) {
                a(d(), false);
                id = d();
            }
            String name = a(this.e, id);
            int cut = name.indexOf(61);
            if (cut == -1) {
                value = new StringBuffer();
            } else {
                value = new StringBuffer(name.substring(cut + 1));
                name = name.substring(0, cut);
            }
            id = d();
            while (true) {
                if (id > 128 || id == 0 || id == 2 || id == 3 || id == 131 || ((id >= 64 && id <= 66) || (id >= 128 && id <= 130))) {
                    switch (id) {
                        case 0:
                            a(d(), false);
                            break;
                        case 2:
                            value.append((char) e());
                            break;
                        case 3:
                            value.append(f());
                            break;
                        case 64:
                        case Wbxml.EXT_I_1:
                        case Wbxml.EXT_I_2:
                        case 128:
                        case 129:
                        case 130:
                        case 192:
                        case 193:
                        case 194:
                        case 195:
                            value.append(resolveWapExtension(id, parseWapExtension(id)));
                            break;
                        case 131:
                            value.append(g());
                            break;
                        default:
                            value.append(a(this.f, id));
                            break;
                    }
                    id = d();
                }
            }
            this.p = b(this.p, i2 + 4);
            int i3 = i2 + 1;
            this.p[i2] = "";
            int i4 = i3 + 1;
            this.p[i3] = null;
            int i5 = i4 + 1;
            this.p[i4] = name;
            i2 = i5 + 1;
            this.p[i5] = value.toString();
            this.o++;
        }
    }

    private int c() throws IOException {
        if (this.q == -2) {
            this.q = this.a.read();
        }
        return this.q;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type byte[] to java.lang.Object for r0v1 'b'  byte[]
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:100)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:358)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:144)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:93)
        */
    protected java.lang.String resolveWapExtension(int r6, java.lang.Object r7) {
        /*
            r5 = this;
            boolean r3 = r7 instanceof byte[]
            if (r3 == 0) goto L_0x0036
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
            byte[] r7 = (byte[]) r7
            r0 = r7
            byte[] r0 = (byte[]) r0
            r1 = 0
        L_0x000f:
            int r3 = r0.length
            if (r1 >= r3) goto L_0x0031
            java.lang.String r3 = "0123456789abcdef"
            byte r4 = r0[r1]
            int r4 = r4 >> 4
            r4 = r4 & 15
            char r3 = r3.charAt(r4)
            r2.append(r3)
            java.lang.String r3 = "0123456789abcdef"
            byte r4 = r0[r1]
            r4 = r4 & 15
            char r3 = r3.charAt(r4)
            r2.append(r3)
            int r1 = r1 + 1
            goto L_0x000f
        L_0x0031:
            java.lang.String r3 = r2.toString()
        L_0x0035:
            return r3
        L_0x0036:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "$("
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r7)
            java.lang.String r4 = ")"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            goto L_0x0035
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.mmsutils.WbxmlParser.resolveWapExtension(int, java.lang.Object):java.lang.String");
    }

    private String a(String[] tab, int id) throws IOException {
        int idx = (id & 127) - 5;
        if (idx == -1) {
            this.z = -1;
            return g();
        } else if (idx < 0 || tab == null || idx >= tab.length || tab[idx] == null) {
            throw new IOException("id " + id + " undef.");
        } else {
            this.z = idx + 5;
            return tab[idx];
        }
    }

    private void a(int id) throws IOException, XmlPullParserException {
        this.A = 2;
        this.w = a(this.g, id & 63);
        this.o = 0;
        if ((id & 128) != 0) {
            readAttr();
        }
        this.B = (id & 64) == 0;
        int i2 = this.k;
        this.k = i2 + 1;
        int sp = i2 << 2;
        this.l = b(this.l, sp + 4);
        this.l[sp + 3] = this.w;
        if (this.k >= this.n.length) {
            int[] bigger = new int[(this.k + 4)];
            System.arraycopy(this.n, 0, bigger, 0, this.n.length);
            this.n = bigger;
        }
        this.n[this.k] = this.n[this.k - 1];
        for (int i3 = this.o - 1; i3 > 0; i3--) {
            for (int j2 = 0; j2 < i3; j2++) {
                if (getAttributeName(i3).equals(getAttributeName(j2))) {
                    a("Duplicate Attribute: " + getAttributeName(i3));
                }
            }
        }
        if (this.j) {
            a();
        } else {
            this.v = "";
        }
        this.l[sp] = this.v;
        this.l[sp + 1] = this.u;
        this.l[sp + 2] = this.w;
    }

    private static String[] b(String[] arr, int required) {
        if (arr.length >= required) {
            return arr;
        }
        String[] bigger = new String[(required + 16)];
        System.arraycopy(arr, 0, bigger, 0, arr.length);
        return bigger;
    }

    private int d() throws IOException {
        int i2 = this.a.read();
        if (i2 != -1) {
            return i2;
        }
        throw new IOException("Unexpected EOF");
    }

    private int e() throws IOException {
        int i2;
        int result = 0;
        do {
            i2 = d();
            result = (result << 7) | (i2 & 127);
        } while ((i2 & 128) != 0);
        return result;
    }

    private String f() throws IOException {
        ByteArrayOutputStream buf = new ByteArrayOutputStream();
        boolean wsp = true;
        while (true) {
            int i2 = this.a.read();
            if (i2 == 0) {
                this.C = wsp;
                String result = new String(buf.toByteArray(), this.D);
                buf.close();
                return result;
            } else if (i2 == -1) {
                throw new IOException("Unexpected EOF");
            } else {
                if (i2 > 32) {
                    wsp = false;
                }
                buf.write(i2);
            }
        }
    }

    private String g() throws IOException {
        int pos = e();
        if (this.i == null) {
            this.i = new Hashtable();
        }
        String forReturn = (String) this.i.get(new Integer(pos));
        if (forReturn != null) {
            return forReturn;
        }
        int end = pos;
        while (end < this.h.length && this.h[end] != 0) {
            end++;
        }
        String forReturn2 = new String(this.h, pos, end - pos, this.D);
        this.i.put(new Integer(pos), forReturn2);
        return forReturn2;
    }

    public void setTagTable(int page, String[] table) {
        a(page, this.b, table);
    }

    public void setAttrStartTable(int page, String[] table) {
        a(page, this.c, table);
    }

    public void setAttrValueTable(int page, String[] table) {
        a(page, this.d, table);
    }

    public int getWapCode() {
        return this.z;
    }

    public Object getWapExtensionData() {
        return this.y;
    }
}
