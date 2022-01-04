package com.tencent.lbsapi.core;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

final class f implements LocationListener {
    final /* synthetic */ QLBSEngine a;

    f(QLBSEngine qLBSEngine) {
        this.a = qLBSEngine;
    }

    public final void onLocationChanged(Location location) {
        if (location != null) {
            QLBSEngine.a(this.a, location);
        }
    }

    public final void onProviderDisabled(String str) {
    }

    public final void onProviderEnabled(String str) {
    }

    public final void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
