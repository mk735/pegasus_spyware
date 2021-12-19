package com.network.android;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.network.android.c.a.a;

public final class v implements LocationListener {

    /* renamed from: a  reason: collision with root package name */
    private Location f130a;
    private long b;
    private boolean c;
    private String d;

    public v() {
        this("LocationListener");
    }

    public v(String str) {
        this.f130a = null;
        this.b = 0;
        this.c = true;
        this.d = str;
    }

    public final Location a() {
        return this.f130a;
    }

    public final void a(boolean z) {
        this.c = z;
        if (!z) {
            this.f130a = null;
        }
    }

    public final void b() {
        this.f130a = null;
    }

    public final boolean c() {
        return this.c;
    }

    public final void onLocationChanged(Location location) {
        try {
            this.f130a = location;
            a.a("LocationListener onLocationChanged LocationListener:" + this.d + ", provider:" + location.getProvider());
        } catch (Throwable th) {
            a.a("LocationListener onLocationChanged Exception- " + th.getMessage(), th);
        }
    }

    public final void onProviderDisabled(String str) {
    }

    public final void onProviderEnabled(String str) {
    }

    public final void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
