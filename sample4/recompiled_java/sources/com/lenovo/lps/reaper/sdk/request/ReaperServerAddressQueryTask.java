package com.lenovo.lps.reaper.sdk.request;

import android.os.Handler;
import android.util.Xml;
import com.lenovo.lps.reaper.sdk.config.Configuration;
import com.lenovo.lps.reaper.sdk.storage.ServerConfigStorage;
import com.lenovo.lps.reaper.sdk.util.Constants;
import com.lenovo.lps.reaper.sdk.util.TLog;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public final class ReaperServerAddressQueryTask implements Runnable {
    private final Configuration a;

    public ReaperServerAddressQueryTask(Configuration configuration, Handler handler) {
        this.a = configuration;
    }

    public ReaperServerAddressQueryTask(Configuration configuration) {
        this.a = configuration;
    }

    public final void run() {
        boolean z = false;
        if (this.a.getCustomReaperServer() != null && this.a.getCustomReaperServer().length() > 0) {
            TLog.d("ReaperServerAddressQueryTask", "Using Custom ReaperServerAddress.");
        } else if (!this.a.isCollectData()) {
            TLog.i("ReaperServerAddressQueryTask", "data collection setting is false.");
            this.a.initReportAndConfigurationUrl("http://fsr.lenovomm.com");
        } else if (!ServerConfigStorage.DispatchStrategy.readyForReport(Constants.DispatchMode.NORMAL_DISPATCH)) {
            TLog.i("ReaperServerAddressQueryTask", "network is not ok.");
            this.a.initReportAndConfigurationUrl("http://fsr.lenovomm.com");
        } else if (!this.a.checkTimestamp()) {
            String serverUrlFromFile = this.a.getServerUrlFromFile();
            if (serverUrlFromFile == null || serverUrlFromFile.length() <= 0) {
                TLog.i("ReaperServerAddressQueryTask", "CheckTimestamp is not pass, use default ReaperServerAddress.");
                this.a.initReportAndConfigurationUrl("http://fsr.lenovomm.com");
            } else {
                TLog.i("ReaperServerAddressQueryTask", "Load ReaperServerAddress From SharedPreference. : " + serverUrlFromFile);
                this.a.initReportAndConfigurationUrl(serverUrlFromFile);
            }
        } else {
            z = true;
        }
        if (z) {
            HttpParams httpParams = new BasicHttpParams();
            httpParams.setParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 6000);
            httpParams.setParameter("http.socket.timeout", 6000);
            HttpGet httpGet = new HttpGet("http://lds.lenovomm.com/addr/1.0/query?sid=rfsr001&didt=1");
            httpGet.setParams(httpParams);
            boolean queryResult = false;
            HttpClient httpclient = new DefaultHttpClient();
            try {
                HttpResponse response = httpclient.execute(httpGet);
                int code = response.getStatusLine().getStatusCode();
                if (code == 200) {
                    queryResult = a(EntityUtils.toString(response.getEntity()));
                } else {
                    TLog.w("ReaperServerAddressQueryTask", new StringBuilder(64).append("query reaper server address fail, status code: ").append(code).toString());
                }
                TLog.d("ReaperServerAddressQueryTask", "ServerAddress Query Success: " + queryResult);
            } catch (Exception e) {
                TLog.e("ReaperServerAddressQueryTask", "query reaper server address fail. " + e.getMessage());
            } finally {
                httpclient.getConnectionManager().shutdown();
            }
            if (!queryResult) {
                this.a.initReportAndConfigurationUrl("http://fsr.lenovomm.com");
            }
        }
    }

    private boolean a(String result) {
        a ldsResponseHandler = new a();
        try {
            Xml.parse(result, ldsResponseHandler);
            TLog.i("ReaperServerAddressQueryTask", String.valueOf(ldsResponseHandler.b()));
            TLog.i("ReaperServerAddressQueryTask", ldsResponseHandler.a().toString());
            ldsResponseHandler.b();
            List<String> a2 = ldsResponseHandler.a();
            if (a2 != null) {
                if (a2.size() == 1) {
                    this.a.initReportAndConfigurationUrl(a2.get(0));
                    this.a.saveServerUrlToFile(a2.get(0));
                    return true;
                } else if (a2.size() > 1) {
                    int size = (int) (((double) a2.size()) * Math.random());
                    this.a.initReportAndConfigurationUrl(a2.get(size));
                    this.a.saveServerUrlToFile(a2.get(size));
                    return true;
                } else {
                    TLog.w("ReaperServerAddressQueryTask", "don't get reaper server url from lds.");
                }
            }
            return false;
        } catch (Exception e) {
            TLog.e("ReaperServerAddressQueryTask", "processResponseResult fail. " + e.getMessage());
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public class a extends DefaultHandler {
        private List<String> b;
        private long c;
        private StringBuilder d;

        a() {
        }

        public final List<String> a() {
            return this.b;
        }

        public final long b() {
            return this.c;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void characters(char[] ch, int start, int length) throws SAXException {
            super.characters(ch, start, length);
            this.d.append(ch, start, length);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endElement(String uri, String localName, String name) throws SAXException {
            super.endElement(uri, localName, name);
            if (localName.equalsIgnoreCase("Address")) {
                this.b.add(this.d.toString());
            } else if (localName.equalsIgnoreCase("TTL")) {
                this.c = Long.parseLong(this.d.toString());
            }
            this.d.setLength(0);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startDocument() throws SAXException {
            super.startDocument();
            this.b = new ArrayList(1);
            this.d = new StringBuilder();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startElement(String uri, String localName, String name, Attributes attributes) throws SAXException {
            super.startElement(uri, localName, name, attributes);
        }
    }
}
