package com.lenovo.lps.reaper.sdk.request;

import com.lenovo.lps.reaper.sdk.api.Event;
import com.lenovo.lps.reaper.sdk.util.TLog;

public class ReportManager {
    private HttpRequestHandler a;

    public Event[] postEvents(Event[] events) {
        if (events == null || events.length == 0) {
            return null;
        }
        TLog.i("ReportManager", "start postEvents");
        return this.a.postEvents(events);
    }

    public void setHttpRequestHandler(HttpRequestHandler httpRequestHandler) {
        this.a = httpRequestHandler;
    }
}
