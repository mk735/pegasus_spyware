package com.lenovo.lps.reaper.sdk.request;

import com.lenovo.lps.reaper.sdk.api.Event;
import com.lenovo.lps.reaper.sdk.config.Configuration;
import com.lenovo.lps.reaper.sdk.storage.ServerConfigStorage;
import com.lenovo.lps.reaper.sdk.util.AnalyticsTrackerUtils;
import com.lenovo.lps.reaper.sdk.util.CompressUtil;
import com.lenovo.lps.reaper.sdk.util.Constants;
import com.lenovo.lps.reaper.sdk.util.PlusUtil;
import com.lenovo.lps.reaper.sdk.util.TLog;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

public class HttpRequestHandler {
    private Configuration a;

    public Event[] postEvents(Event[] events) {
        int length;
        if (events == null || (length = events.length) == 0) {
            return null;
        }
        if (this.a.getReportUrl() == null) {
            TLog.w("HttpRequestHandler", "don't report events because server url is null.");
            return null;
        }
        StringBuilder data = new StringBuilder(500);
        for (Event event : events) {
            if (event == null) {
                TLog.w("HttpRequestHandler", "event is null object.");
                length--;
            } else {
                data.append(event.getCategory().equals(Constants.Event.EVENT_TYPE_VIEW) ? String.format("ctx=%s!%s!%s!%s!%s!%d!%s!%d!%d!%d!%d!%d!%d!%d!%s!%s!%s!%s!%s&evt=%s!%s", Constants.SDK_VERSION, Integer.valueOf(event.getValue()), event.getAccount(), this.a.getDeviceId(), this.a.getAndroidId(), Integer.valueOf(event.getRandomVal()), this.a.getDisplayScreen(), Integer.valueOf(event.getSessionId()), Long.valueOf(event.getTimestampFirst()), Long.valueOf(event.getTimestampPre()), Long.valueOf(event.getTimestampCur()), Long.valueOf(event.getTimestampEvent()), Integer.valueOf(event.getVisits()), Integer.valueOf(event.getNetworkStatus()), PlusUtil.DeviceIdentify.getDeviceType(), PlusUtil.DeviceIdentify.getDeviceID(), this.a.getChannel(), event.getUserId(), event.getUserIdClass(), AnalyticsTrackerUtils.encode(event.getAction()), AnalyticsTrackerUtils.getCustomVariableParams(event)) : String.format("ctx=%s!0!%s!%s!%s!%d!%s!%d!%d!%d!%d!%d!%d!%d!%s!%s!%s!%s!%s&evt=%s!%s!%s!%d!%s", Constants.SDK_VERSION, event.getAccount(), this.a.getDeviceId(), this.a.getAndroidId(), Integer.valueOf(event.getRandomVal()), this.a.getDisplayScreen(), Integer.valueOf(event.getSessionId()), Long.valueOf(event.getTimestampFirst()), Long.valueOf(event.getTimestampPre()), Long.valueOf(event.getTimestampCur()), Long.valueOf(event.getTimestampEvent()), Integer.valueOf(event.getVisits()), Integer.valueOf(event.getNetworkStatus()), PlusUtil.DeviceIdentify.getDeviceType(), PlusUtil.DeviceIdentify.getDeviceID(), this.a.getChannel(), event.getUserId(), event.getUserIdClass(), AnalyticsTrackerUtils.encode(event.getCategory()), AnalyticsTrackerUtils.encode(event.getAction()), AnalyticsTrackerUtils.encode(event.getLabel()), Integer.valueOf(event.getValue()), AnalyticsTrackerUtils.getCustomVariableParams(event)));
                data.append("\n");
            }
        }
        try {
            TLog.i("HttpRequestHandler", "events number: " + length);
            TLog.i("HttpRequestHandler", "events length: " + data.length());
            if (ServerConfigStorage.CompressStrategy.needCompress(length)) {
                byte[] bytes = CompressUtil.compress(data.toString().getBytes());
                TLog.i("HttpRequestHandler", "bytes length after compress: " + bytes.length);
                a(bytes, this.a.getReportWithCompressUrl());
            } else {
                byte[] bytes2 = data.toString().getBytes();
                TLog.i("HttpRequestHandler", "no compress: " + bytes2.length);
                a(bytes2, this.a.getReportUrl());
            }
            TLog.i("HttpRequestHandler", "post finished.");
            return events;
        } catch (Exception e) {
            TLog.w("HttpRequestHandler", "Exception when post events. " + e.getMessage());
            return null;
        }
    }

    private void a(byte[] data, String serverContext) throws Exception {
        if (data != null && data.length != 0) {
            HttpPost httppost = new HttpPost(serverContext);
            ByteArrayEntity reqEntity = new ByteArrayEntity(data);
            reqEntity.setContentType("binary/octet-stream");
            httppost.setEntity(reqEntity);
            httppost.addHeader(Constants.Http.HTTP_HEADER_USER_AGENT, this.a.getUserAgent());
            HttpParams httpParams = new BasicHttpParams();
            httpParams.setParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 6000);
            httpParams.setParameter("http.socket.timeout", 6000);
            httppost.setParams(httpParams);
            HttpClient httpclient = new DefaultHttpClient();
            httpclient.getParams().setParameter(HttpMethodParams.PROTOCOL_VERSION, HttpVersion.HTTP_1_1);
            try {
                HttpResponse response = httpclient.execute(httppost);
                HttpEntity resEntity = response.getEntity();
                if (resEntity != null) {
                    resEntity.consumeContent();
                }
                if (response.getStatusLine().getStatusCode() != 200) {
                    throw new Exception("response is not ok!");
                }
                httpclient.getConnectionManager().shutdown();
            } catch (Exception e) {
                throw e;
            } catch (Throwable th) {
                httpclient.getConnectionManager().shutdown();
                throw th;
            }
        }
    }

    public void setConfiguration(Configuration configuration) {
        this.a = configuration;
    }
}
