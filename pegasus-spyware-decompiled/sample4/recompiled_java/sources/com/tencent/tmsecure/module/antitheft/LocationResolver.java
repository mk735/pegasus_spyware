package com.tencent.tmsecure.module.antitheft;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Handler;
import android.os.HandlerThread;
import tms.ap;
import tms.aq;
import tms.ar;

public final class LocationResolver {
    private LocationManager a;
    private boolean b = false;
    private boolean c = false;
    private HandlerThread d;
    private Handler e;
    private LocCallback f;
    private boolean g = false;
    private byte[] h = new byte[0];
    private final LocationListener i = new aq(this);
    private final LocationListener j = new ar(this);

    public interface LocCallback {
        void gotLocation(Location location);
    }

    LocationResolver() {
    }

    /* access modifiers changed from: private */
    public void a() {
        this.a.removeUpdates(this.i);
        this.a.removeUpdates(this.j);
        Location lastKnownLocation = this.b ? this.a.getLastKnownLocation("gps") : null;
        Location lastKnownLocation2 = this.c ? this.a.getLastKnownLocation("network") : null;
        if (lastKnownLocation == null || lastKnownLocation2 == null) {
            if (lastKnownLocation != null) {
                this.f.gotLocation(lastKnownLocation);
            } else if (lastKnownLocation2 != null) {
                this.f.gotLocation(lastKnownLocation2);
            } else {
                this.f.gotLocation(null);
            }
        } else if (lastKnownLocation.getTime() > lastKnownLocation2.getTime()) {
            this.f.gotLocation(lastKnownLocation);
        } else {
            this.f.gotLocation(lastKnownLocation2);
        }
    }

    /* access modifiers changed from: private */
    public boolean b() {
        boolean z = true;
        synchronized (this.h) {
            if (!this.g) {
                if (this.d != null && this.d.isAlive()) {
                    this.d.interrupt();
                    this.d = null;
                }
                this.g = true;
                z = false;
            }
        }
        return z;
    }

    public final synchronized boolean a(Context context, LocCallback locCallback, int i2) {
        boolean z;
        this.f = locCallback;
        this.g = false;
        if (this.a == null) {
            this.a = (LocationManager) context.getSystemService("location");
        }
        try {
            this.b = this.a.isProviderEnabled("gps");
        } catch (Exception e2) {
        }
        try {
            this.c = this.a.isProviderEnabled("network");
        } catch (Exception e3) {
        }
        if (this.b || this.c) {
            this.d = new HandlerThread("location");
            this.d.start();
            this.e = new ap(this, this.d.getLooper());
            this.e.sendEmptyMessageDelayed(0, (long) i2);
            if (this.b) {
                this.a.requestLocationUpdates("gps", 0, 0.0f, this.i);
            }
            if (this.c) {
                this.a.requestLocationUpdates("network", 0, 0.0f, this.j);
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
