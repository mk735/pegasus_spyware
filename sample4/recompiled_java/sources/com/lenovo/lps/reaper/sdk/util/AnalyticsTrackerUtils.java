package com.lenovo.lps.reaper.sdk.util;

import com.lenovo.lps.reaper.sdk.AnalyticsTrackerBuilder;
import com.lenovo.lps.reaper.sdk.api.CustomParameter;
import com.lenovo.lps.reaper.sdk.api.Event;
import com.lenovo.lps.reaper.sdk.config.Configuration;
import com.lenovo.lps.sus.a.a.a.b;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Stack;

public final class AnalyticsTrackerUtils {
    private static final String a = AnalyticsTrackerUtils.class.getName();
    private static boolean b;
    private static ThreadLocal<Stack<a>> c = new ThreadLocal<>();

    public static AnalyticsTrackerBuilder getAnalyticsTrackerBuilder() {
        try {
            return (AnalyticsTrackerBuilder) Configuration.getAnalyticsTrackerBuilderClass().newInstance();
        } catch (Exception e) {
            TLog.e(a, "Error when initialize AnalyticsTrackerBuilder. " + e.getMessage());
            return null;
        }
    }

    public static String getCustomVariableParams(Event event) {
        StringBuilder sb = new StringBuilder(64);
        CustomParameter[] customParameters = event.getCustomParameters();
        if (customParameters == null) {
            return "";
        }
        for (CustomParameter customParameter : customParameters) {
            sb.append(customParameter);
        }
        return sb.toString();
    }

    public static String encode(String str) {
        try {
            return URLEncoder.encode(str, b.a).replace("+", "%20");
        } catch (UnsupportedEncodingException e) {
            TLog.e(a, "exception when encode, str is: " + str);
            return str;
        }
    }

    public static String replaceInvalidCharacter(String str) {
        try {
            return str.replaceAll("[^0-9a-zA-Z /():,;*+=_.-]", "?");
        } catch (Exception e) {
            TLog.e(a, "exception when replace, str is: " + str);
            return str;
        }
    }

    public static boolean isTestMode() {
        return b;
    }

    public static void setTestMode(boolean testMode) {
        b = testMode;
    }

    public static void push(String name) {
        if (b) {
            Stack<a> timeStack = c.get();
            if (timeStack == null) {
                timeStack = new Stack<>();
                c.set(timeStack);
            }
            timeStack.push(new a(name, System.currentTimeMillis()));
        }
    }

    public static void pop() {
        if (b) {
            a element = c.get().pop();
            TLog.i("TimeTracker", element.a + " use " + (System.currentTimeMillis() - element.b) + "ms.");
        }
    }

    static class a {
        private String a;
        private long b;

        public a(String name, long start) {
            this.a = name;
            this.b = start;
        }
    }
}
