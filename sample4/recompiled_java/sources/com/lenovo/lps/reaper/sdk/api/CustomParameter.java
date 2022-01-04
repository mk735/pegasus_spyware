package com.lenovo.lps.reaper.sdk.api;

import com.lenovo.lps.reaper.sdk.util.AnalyticsTrackerUtils;
import com.lenovo.lps.reaper.sdk.util.Messages;
import com.lenovo.lps.reaper.sdk.util.TLog;

public final class CustomParameter {
    public static final int ACTIVITY_SCOPE = 3;
    public static final int MAX_INDEX = 5;
    public static final int MAX_LENGTH = 256;
    public static final int SESSION_SCOPE = 2;
    public static final int VISITOR_SCOPE = 1;
    private int a;
    private String b;
    private String c;
    private int d;

    public CustomParameter() {
        this(3);
    }

    public CustomParameter(int scope) {
        this.d = scope;
    }

    public CustomParameter(int index, String name, String value, int scope) {
        this.a = index;
        this.b = name;
        this.c = value;
        this.d = scope;
    }

    public final void reset() {
        this.a = 0;
    }

    public final boolean isValid() {
        return this.a > 0 && this.a <= 5;
    }

    public static boolean check(int index, String name, String value) {
        if (index < 1 || index > 5) {
            TLog.w("CustomParameter", String.format(Messages.CUSTOM_PARAMETER_INDEX_MESSAGE, 0, 6));
            return false;
        } else if (name == null || name.length() == 0) {
            TLog.w("CustomParameter", Messages.CUSTOM_PARAMETER_NAME_MESSAGE);
            return false;
        } else if (value != null && value.length() != 0) {
            return true;
        } else {
            TLog.w("CustomParameter", Messages.CUSTOM_PARAMETER_VALUE_MESSAGE);
            return false;
        }
    }

    public final int getIndex() {
        return this.a;
    }

    public final String getName() {
        return this.b;
    }

    public final String getValue() {
        return this.c;
    }

    public final int getScope() {
        return this.d;
    }

    public final void setIndex(int index) {
        this.a = index;
    }

    public final void setName(String name) {
        this.b = name;
    }

    public final void setValue(String value) {
        this.c = value;
    }

    public final String toString() {
        if (!isValid()) {
            return "";
        }
        StringBuilder sb = new StringBuilder(200);
        sb.append("(");
        sb.append(this.a);
        sb.append("!");
        sb.append(AnalyticsTrackerUtils.encode(this.b));
        sb.append("!");
        sb.append(AnalyticsTrackerUtils.encode(this.c));
        sb.append("!");
        sb.append(this.d);
        sb.append(")");
        return sb.toString();
    }
}
