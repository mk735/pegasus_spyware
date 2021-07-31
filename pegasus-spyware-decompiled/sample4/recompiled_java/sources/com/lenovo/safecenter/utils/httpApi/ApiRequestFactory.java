package com.lenovo.safecenter.utils.httpApi;

import android.content.Context;
import android.util.Log;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.safecenter.utils.Const;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.HttpGet;

public class ApiRequestFactory {
    public static HttpEntity getRequestEntity(Context mContext, int mRequestAction, Object mParameter) {
        return null;
    }

    public static HttpGet getRequest(String requestUrl, int requestAction, HttpEntity requestEntity, Object params) {
        if (requestAction == 0) {
            HashMap<String, Object> requestParams = null;
            if (params instanceof HashMap) {
                requestParams = (HashMap) params;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(requestUrl);
            if (requestParams != null) {
                try {
                    if (!requestParams.isEmpty()) {
                        sb.append('?');
                        for (Map.Entry<String, Object> entry : requestParams.entrySet()) {
                            sb.append(entry.getKey()).append('=').append(URLEncoder.encode((String) entry.getValue(), b.a)).append('&');
                        }
                        sb.deleteCharAt(sb.length() - 1);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            Log.i("wu0wu", "<<<ApiRequestFactory getRequest ACTION_HOLIDAY_IMG_SYNC getUri=" + sb.toString());
            return new HttpGet(sb.toString());
        } else if (1 == requestAction) {
            String imgUrl = ApiResponseFactory.replaceAMP(Const.getHolidayImgUrl());
            Log.i("wu0wu", "<<<ApiRequestFactory getRequest ACTION_HOLIDAY_IMG_DOWNLOAD ImgUrl=" + imgUrl);
            return new HttpGet(imgUrl);
        } else if (2 == requestAction) {
            return new HttpGet(requestUrl);
        } else {
            if (3 == requestAction) {
                HashMap<String, Long> map = (HashMap) params;
                String requestUrl2 = requestUrl + "&lastintag=" + map.get("lastintag") + "&expiredtag=" + map.get("expiredtag");
                HttpGet httpGet = new HttpGet(requestUrl2);
                Log.i("yincc", " Url == " + requestUrl2);
                return httpGet;
            } else if (4 != requestAction) {
                return null;
            } else {
                HashMap<String, String> map2 = (HashMap) params;
                String requestUrl3 = requestUrl + "?lastintag=" + map2.get("lastintag") + "&expiredtag=" + map2.get("expiredtag");
                HttpGet httpGet2 = new HttpGet(requestUrl3);
                Log.i("yincc", " Url == " + requestUrl3);
                return httpGet2;
            }
        }
    }
}
