package com.lenovo.safecenter.lenovoAntiSpam.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.InputStreamRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;

public class NetHttpPost {
    public static PostMethod sendPostRequest(String path, RequestEntity requestEntity, Map<String, String> httpClientParams, Map<String, String> httpHeadParams) {
        try {
            HttpClient httpClient = new HttpClient();
            PostMethod post = new PostMethod(path);
            post.getParams().setParameter("http.socket.timeout", 5000);
            if (httpClientParams != null && !httpClientParams.isEmpty()) {
                for (Map.Entry<String, String> entry : httpClientParams.entrySet()) {
                    post.getParams().setParameter(entry.getKey(), entry.getValue());
                }
            }
            if (requestEntity != null) {
                post.setRequestEntity(requestEntity);
            }
            if (httpHeadParams != null && !httpHeadParams.isEmpty()) {
                for (Map.Entry<String, String> entry2 : httpHeadParams.entrySet()) {
                    post.addRequestHeader(entry2.getKey(), entry2.getValue());
                }
            }
            httpClient.executeMethod(post);
            return post;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static PostMethod sendPostRequest(String path, RequestEntity requestEntity, Map<String, String> httpHeadParams) {
        return sendPostRequest(path, requestEntity, null, httpHeadParams);
    }

    public static RequestEntity change(String sb) {
        try {
            ByteArrayInputStream bis = new ByteArrayInputStream(sb.toString().getBytes());
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            GZIPOutputStream gos = new GZIPOutputStream(bos);
            byte[] bytes = new byte[1024];
            while (true) {
                int length = bis.read(bytes, 0, bytes.length);
                if (length != -1) {
                    gos.write(bytes, 0, length);
                } else {
                    gos.close();
                    bos.close();
                    bis.close();
                    return new InputStreamRequestEntity(new ByteArrayInputStream(bos.toByteArray()), "text/xml");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
