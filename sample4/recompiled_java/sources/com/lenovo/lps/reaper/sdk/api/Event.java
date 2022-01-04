package com.lenovo.lps.reaper.sdk.api;

import java.util.Date;

public final class Event {
    private long a;
    private int b;
    private String c;
    private int d;
    private long e;
    private long f;
    private long g;
    private int h;
    private String i;
    private String j;
    private String k;
    private int l;
    private int m;
    private String n;
    private String o;
    private long p;
    private CustomParameter[] q;

    public Event(String account, String category, String action, String label, int value) {
        this.c = account;
        this.i = category;
        this.j = action;
        this.k = label;
        this.l = value;
        this.p = System.currentTimeMillis();
    }

    public Event(long id, int sessionId, String account, int randomVal, long timestampFirst, long timestampPre, long timestampCur, long timestampEvent, int visits, String category, String action, String label, int value, int networkStauts, String userId, String userIdClass) {
        this.a = id;
        this.b = sessionId;
        this.c = account;
        this.d = randomVal;
        this.h = visits;
        this.i = category;
        this.j = action;
        this.k = label == null ? "" : label;
        this.l = value;
        this.m = networkStauts;
        this.n = userId == null ? "" : userId;
        this.o = userIdClass == null ? "" : userIdClass;
        this.m = networkStauts;
        this.e = timestampFirst;
        this.f = timestampPre;
        this.g = timestampCur;
        this.p = timestampEvent;
    }

    public final String toString() {
        return String.valueOf(this.a);
    }

    public final String toStringFull() {
        StringBuilder strBuff = new StringBuilder(200);
        strBuff.append("ID:").append(this.a).append(" SessionID:").append(this.b).append(" Visits:").append(this.h).append(" Category:").append(this.i).append(" Action:").append(this.j).append(" Label:").append(this.k).append(" Value:").append(this.l).append(" NetworkStatus:").append(this.m).append(" TimestampFirst:").append(new Date(this.e).toLocaleString()).append(" TimestampPre:").append(new Date(this.f).toLocaleString()).append(" TimestampCur:").append(new Date(this.g).toLocaleString()).append(" TimestampEvent:").append(new Date(this.p).toLocaleString());
        return strBuff.toString();
    }

    public final CustomParameter[] getCustomParameters() {
        return this.q;
    }

    public final void setCustomParameters(CustomParameter[] customParameters) {
        this.q = new CustomParameter[customParameters.length];
        for (int i2 = 0; i2 < customParameters.length; i2++) {
            this.q[i2] = new CustomParameter();
            this.q[i2].setIndex(customParameters[i2].getIndex());
            this.q[i2].setName(customParameters[i2].getName());
            this.q[i2].setValue(customParameters[i2].getValue());
        }
    }

    public final long getId() {
        return this.a;
    }

    public final int getSessionId() {
        return this.b;
    }

    public final String getAccount() {
        return this.c;
    }

    public final int getRandomVal() {
        return this.d;
    }

    public final long getTimestampFirst() {
        return this.e;
    }

    public final long getTimestampPre() {
        return this.f;
    }

    public final long getTimestampCur() {
        return this.g;
    }

    public final int getVisits() {
        return this.h;
    }

    public final String getCategory() {
        return this.i;
    }

    public final String getAction() {
        return this.j;
    }

    public final String getLabel() {
        return this.k;
    }

    public final int getValue() {
        return this.l;
    }

    public final int getNetworkStatus() {
        return this.m;
    }

    public final String getUserId() {
        return this.n;
    }

    public final String getUserIdClass() {
        return this.o;
    }

    public final long getTimestampEvent() {
        return this.p;
    }

    public final void setId(long id) {
        this.a = id;
    }

    public final void setSessionId(int sessionId) {
        this.b = sessionId;
    }

    public final void setAccount(String account) {
        this.c = account;
    }

    public final void setRandomVal(int randomVal) {
        this.d = randomVal;
    }

    public final void setTimestampFirst(long timestampFirst) {
        this.e = timestampFirst;
    }

    public final void setTimestampPre(long timestampPre) {
        this.f = timestampPre;
    }

    public final void setTimestampCur(long timestampCur) {
        this.g = timestampCur;
    }

    public final void setVisits(int visits) {
        this.h = visits;
    }

    public final void setCategory(String category) {
        this.i = category;
    }

    public final void setAction(String action) {
        this.j = action;
    }

    public final void setLabel(String label) {
        this.k = label;
    }

    public final void setValue(int value) {
        this.l = value;
    }

    public final void setNetworkStatus(int networkStatus) {
        this.m = networkStatus;
    }

    public final void setTimestampEvent(long timestampEvent) {
        this.p = timestampEvent;
    }
}
