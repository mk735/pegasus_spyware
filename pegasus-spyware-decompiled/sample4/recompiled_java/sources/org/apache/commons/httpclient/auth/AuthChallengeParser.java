package org.apache.commons.httpclient.auth;

import com.lenovo.safecenter.utils.Untils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.util.ParameterParser;

public final class AuthChallengeParser {
    public static String extractScheme(String challengeStr) throws MalformedChallengeException {
        String s;
        if (challengeStr == null) {
            throw new IllegalArgumentException("Challenge may not be null");
        }
        int idx = challengeStr.indexOf(32);
        if (idx == -1) {
            s = challengeStr;
        } else {
            s = challengeStr.substring(0, idx);
        }
        if (!s.equals("")) {
            return s.toLowerCase();
        }
        throw new MalformedChallengeException(new StringBuffer().append("Invalid challenge: ").append(challengeStr).toString());
    }

    public static Map extractParams(String challengeStr) throws MalformedChallengeException {
        if (challengeStr == null) {
            throw new IllegalArgumentException("Challenge may not be null");
        }
        int idx = challengeStr.indexOf(32);
        if (idx == -1) {
            throw new MalformedChallengeException(new StringBuffer().append("Invalid challenge: ").append(challengeStr).toString());
        }
        Map map = new HashMap();
        List params = new ParameterParser().parse(challengeStr.substring(idx + 1, challengeStr.length()), Untils.PAUSE);
        for (int i = 0; i < params.size(); i++) {
            NameValuePair param = (NameValuePair) params.get(i);
            map.put(param.getName().toLowerCase(), param.getValue());
        }
        return map;
    }

    public static Map parseChallenges(Header[] headers) throws MalformedChallengeException {
        if (headers == null) {
            throw new IllegalArgumentException("Array of challenges may not be null");
        }
        Map challengemap = new HashMap(headers.length);
        for (Header header : headers) {
            String challenge = header.getValue();
            challengemap.put(extractScheme(challenge), challenge);
        }
        return challengemap;
    }
}
