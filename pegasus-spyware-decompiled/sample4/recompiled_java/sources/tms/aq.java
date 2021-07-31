package tms;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.tencent.tmsecure.module.antitheft.LocationResolver;

public class aq implements LocationListener {
    final /* synthetic */ LocationResolver a;

    public aq(LocationResolver locationResolver) {
        this.a = locationResolver;
    }

    public void onLocationChanged(Location location) {
        if (!LocationResolver.b(this.a)) {
            LocationResolver.d(this.a).gotLocation(location);
            LocationResolver.e(this.a).removeUpdates(this);
            LocationResolver.e(this.a).removeUpdates(LocationResolver.f(this.a));
        }
    }

    public void onProviderDisabled(String str) {
    }

    public void onProviderEnabled(String str) {
    }

    public void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
