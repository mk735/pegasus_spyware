package org.apache.commons.httpclient.auth;

import com.lenovo.lps.sus.c.c;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.commons.httpclient.Credentials;
import org.apache.commons.httpclient.HttpClientError;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.UsernamePasswordCredentials;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.httpclient.util.ParameterFormatter;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class DigestScheme extends RFC2617Scheme {
    static Class a;
    private static final Log b;
    private static final char[] c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private boolean d;
    private int e;
    private String f;
    private final ParameterFormatter g;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.auth.DigestScheme");
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

    public DigestScheme() {
        this.e = 0;
        this.d = false;
        this.g = new ParameterFormatter();
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme, org.apache.commons.httpclient.auth.RFC2617Scheme
    public String getID() {
        String id = getRealm();
        String nonce = getParameter("nonce");
        if (nonce != null) {
            return new StringBuffer().append(id).append("-").append(nonce).toString();
        }
        return id;
    }

    public DigestScheme(String challenge) throws MalformedChallengeException {
        this();
        processChallenge(challenge);
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme, org.apache.commons.httpclient.auth.RFC2617Scheme
    public void processChallenge(String challenge) throws MalformedChallengeException {
        super.processChallenge(challenge);
        if (getParameter("realm") == null) {
            throw new MalformedChallengeException("missing realm in challange");
        } else if (getParameter("nonce") == null) {
            throw new MalformedChallengeException("missing nonce in challange");
        } else {
            boolean unsupportedQop = false;
            String qop = getParameter("qop");
            if (qop != null) {
                StringTokenizer tok = new StringTokenizer(qop, ",");
                while (true) {
                    if (!tok.hasMoreTokens()) {
                        break;
                    }
                    String variant = tok.nextToken().trim();
                    if (variant.equals("auth")) {
                        this.e = 2;
                        break;
                    } else if (variant.equals("auth-int")) {
                        this.e = 1;
                    } else {
                        unsupportedQop = true;
                        b.warn(new StringBuffer().append("Unsupported qop detected: ").append(variant).toString());
                    }
                }
            }
            if (!unsupportedQop || this.e != 0) {
                this.f = createCnonce();
                this.d = true;
                return;
            }
            throw new MalformedChallengeException("None of the qop methods is supported");
        }
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public boolean isComplete() {
        if ("true".equalsIgnoreCase(getParameter("stale"))) {
            return false;
        }
        return this.d;
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String getSchemeName() {
        return "digest";
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public boolean isConnectionBased() {
        return false;
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String authenticate(Credentials credentials, String method, String uri) throws AuthenticationException {
        b.trace("enter DigestScheme.authenticate(Credentials, String, String)");
        try {
            UsernamePasswordCredentials usernamepassword = (UsernamePasswordCredentials) credentials;
            getParameters().put("methodname", method);
            getParameters().put("uri", uri);
            return new StringBuffer().append("Digest ").append(b(usernamepassword.getUserName(), a(usernamepassword.getUserName(), usernamepassword.getPassword()))).toString();
        } catch (ClassCastException e2) {
            throw new InvalidCredentialsException(new StringBuffer().append("Credentials cannot be used for digest authentication: ").append(credentials.getClass().getName()).toString());
        }
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String authenticate(Credentials credentials, HttpMethod method) throws AuthenticationException {
        b.trace("enter DigestScheme.authenticate(Credentials, HttpMethod)");
        try {
            UsernamePasswordCredentials usernamepassword = (UsernamePasswordCredentials) credentials;
            getParameters().put("methodname", method.getName());
            StringBuffer buffer = new StringBuffer(method.getPath());
            String query = method.getQueryString();
            if (query != null) {
                if (query.indexOf("?") != 0) {
                    buffer.append("?");
                }
                buffer.append(method.getQueryString());
            }
            getParameters().put("uri", buffer.toString());
            if (getParameter("charset") == null) {
                getParameters().put("charset", method.getParams().getCredentialCharset());
            }
            return new StringBuffer().append("Digest ").append(b(usernamepassword.getUserName(), a(usernamepassword.getUserName(), usernamepassword.getPassword()))).toString();
        } catch (ClassCastException e2) {
            throw new InvalidCredentialsException(new StringBuffer().append("Credentials cannot be used for digest authentication: ").append(credentials.getClass().getName()).toString());
        }
    }

    private String a(String uname, String pwd) throws AuthenticationException {
        String serverDigestValue;
        b.trace("enter DigestScheme.createDigest(String, String, Map)");
        String uri = getParameter("uri");
        String realm = getParameter("realm");
        String nonce = getParameter("nonce");
        String qop = getParameter("qop");
        String method = getParameter("methodname");
        String algorithm = getParameter("algorithm");
        if (algorithm == null) {
            algorithm = "MD5";
        }
        String charset = getParameter("charset");
        if (charset == null) {
            charset = "ISO-8859-1";
        }
        if (this.e == 1) {
            b.warn("qop=auth-int is not supported");
            throw new AuthenticationException("Unsupported qop in HTTP Digest authentication");
        }
        try {
            MessageDigest md5Helper = MessageDigest.getInstance("MD5");
            StringBuffer tmp = new StringBuffer(uname.length() + realm.length() + pwd.length() + 2);
            tmp.append(uname);
            tmp.append(':');
            tmp.append(realm);
            tmp.append(':');
            tmp.append(pwd);
            String a1 = tmp.toString();
            if (algorithm.equals("MD5-sess")) {
                String tmp2 = a(md5Helper.digest(EncodingUtil.getBytes(a1, charset)));
                StringBuffer tmp3 = new StringBuffer(tmp2.length() + nonce.length() + this.f.length() + 2);
                tmp3.append(tmp2);
                tmp3.append(':');
                tmp3.append(nonce);
                tmp3.append(':');
                tmp3.append(this.f);
                a1 = tmp3.toString();
            } else if (!algorithm.equals("MD5")) {
                b.warn(new StringBuffer().append("Unhandled algorithm ").append(algorithm).append(" requested").toString());
            }
            String md5a1 = a(md5Helper.digest(EncodingUtil.getBytes(a1, charset)));
            String a2 = null;
            if (this.e == 1) {
                b.error("Unhandled qop auth-int");
            } else {
                a2 = new StringBuffer().append(method).append(c.N).append(uri).toString();
            }
            String md5a2 = a(md5Helper.digest(EncodingUtil.getAsciiBytes(a2)));
            if (this.e == 0) {
                b.debug("Using null qop method");
                StringBuffer tmp22 = new StringBuffer(md5a1.length() + nonce.length() + md5a2.length());
                tmp22.append(md5a1);
                tmp22.append(':');
                tmp22.append(nonce);
                tmp22.append(':');
                tmp22.append(md5a2);
                serverDigestValue = tmp22.toString();
            } else {
                if (b.isDebugEnabled()) {
                    b.debug(new StringBuffer().append("Using qop method ").append(qop).toString());
                }
                String qopOption = a();
                StringBuffer tmp23 = new StringBuffer(md5a1.length() + nonce.length() + "00000001".length() + this.f.length() + qopOption.length() + md5a2.length() + 5);
                tmp23.append(md5a1);
                tmp23.append(':');
                tmp23.append(nonce);
                tmp23.append(':');
                tmp23.append("00000001");
                tmp23.append(':');
                tmp23.append(this.f);
                tmp23.append(':');
                tmp23.append(qopOption);
                tmp23.append(':');
                tmp23.append(md5a2);
                serverDigestValue = tmp23.toString();
            }
            return a(md5Helper.digest(EncodingUtil.getAsciiBytes(serverDigestValue)));
        } catch (Exception e2) {
            throw new AuthenticationException("Unsupported algorithm in HTTP Digest authentication: MD5");
        }
    }

    private String b(String uname, String digest) throws AuthenticationException {
        b.trace("enter DigestScheme.createDigestHeader(String, Map, String)");
        String uri = getParameter("uri");
        String realm = getParameter("realm");
        String nonce = getParameter("nonce");
        String opaque = getParameter("opaque");
        String algorithm = getParameter("algorithm");
        List params = new ArrayList(20);
        params.add(new NameValuePair("username", uname));
        params.add(new NameValuePair("realm", realm));
        params.add(new NameValuePair("nonce", nonce));
        params.add(new NameValuePair("uri", uri));
        params.add(new NameValuePair("response", digest));
        if (this.e != 0) {
            params.add(new NameValuePair("qop", a()));
            params.add(new NameValuePair("nc", "00000001"));
            params.add(new NameValuePair("cnonce", this.f));
        }
        if (algorithm != null) {
            params.add(new NameValuePair("algorithm", algorithm));
        }
        if (opaque != null) {
            params.add(new NameValuePair("opaque", opaque));
        }
        StringBuffer buffer = new StringBuffer();
        for (int i = 0; i < params.size(); i++) {
            NameValuePair param = (NameValuePair) params.get(i);
            if (i > 0) {
                buffer.append(", ");
            }
            this.g.setAlwaysUseQuotes(!("nc".equals(param.getName()) || "qop".equals(param.getName())));
            this.g.format(buffer, param);
        }
        return buffer.toString();
    }

    private String a() {
        if (this.e == 1) {
            return "auth-int";
        }
        return "auth";
    }

    private static String a(byte[] binaryData) {
        b.trace("enter DigestScheme.encode(byte[])");
        if (binaryData.length != 16) {
            return null;
        }
        char[] buffer = new char[32];
        for (int i = 0; i < 16; i++) {
            int low = binaryData[i] & 15;
            buffer[i * 2] = c[(binaryData[i] & 240) >> 4];
            buffer[(i * 2) + 1] = c[low];
        }
        return new String(buffer);
    }

    public static String createCnonce() {
        b.trace("enter DigestScheme.createCnonce()");
        try {
            return a(MessageDigest.getInstance("MD5").digest(EncodingUtil.getAsciiBytes(Long.toString(System.currentTimeMillis()))));
        } catch (NoSuchAlgorithmException e2) {
            throw new HttpClientError("Unsupported algorithm in HTTP Digest authentication: MD5");
        }
    }
}
