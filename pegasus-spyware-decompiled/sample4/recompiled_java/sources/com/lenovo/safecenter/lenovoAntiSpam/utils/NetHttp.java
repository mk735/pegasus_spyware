package com.lenovo.safecenter.lenovoAntiSpam.utils;

import com.lenovo.lps.sus.a.a.a.b;
import java.net.URLEncoder;
import java.util.Map;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class NetHttp {
    public static HttpResponse sendGETRequest(String path, Map<String, String> pathParams, Map<String, String> httpClientParams, Map<String, String> httpHeadParams) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(path);
            if (pathParams != null && !pathParams.isEmpty()) {
                sb.append('?');
                for (Map.Entry<String, String> entry : pathParams.entrySet()) {
                    sb.append(entry.getKey()).append('=').append(URLEncoder.encode(entry.getValue(), b.a)).append('&');
                }
                sb.deleteCharAt(sb.length() - 1);
            }
            HttpGet httpGet = new HttpGet(sb.toString());
            DefaultHttpClient httpClient = new DefaultHttpClient();
            httpClient.getParams().setParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 5000);
            httpClient.getParams().setParameter("http.socket.timeout", 5000);
            if (httpClientParams != null && !httpClientParams.isEmpty()) {
                for (Map.Entry<String, String> entry2 : httpClientParams.entrySet()) {
                    httpClient.getParams().setParameter(entry2.getKey(), entry2.getValue());
                }
            }
            if (httpHeadParams != null && !httpHeadParams.isEmpty()) {
                for (Map.Entry<String, String> entry3 : httpHeadParams.entrySet()) {
                    httpGet.setHeader(entry3.getKey(), entry3.getValue());
                }
            }
            return httpClient.execute(httpGet);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static HttpResponse sendGETRequest(String path, Map<String, String> pathParams, Map<String, String> httpHeadParams) {
        return sendGETRequest(path, pathParams, null, httpHeadParams);
    }

    public static HttpResponse sendGETRequest(String path, Map<String, String> pathParams) {
        return sendGETRequest(path, pathParams, null, null);
    }
}
