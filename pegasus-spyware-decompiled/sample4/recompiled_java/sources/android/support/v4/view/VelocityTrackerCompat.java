package android.support.v4.view;

import android.os.Build;
import android.view.VelocityTracker;

public class VelocityTrackerCompat {
    static final c a;

    interface c {
        float a(VelocityTracker velocityTracker, int i);

        float b(VelocityTracker velocityTracker, int i);
    }

    static class a implements c {
        a() {
        }

        @Override // android.support.v4.view.VelocityTrackerCompat.c
        public final float a(VelocityTracker tracker, int pointerId) {
            return tracker.getXVelocity();
        }

        @Override // android.support.v4.view.VelocityTrackerCompat.c
        public final float b(VelocityTracker tracker, int pointerId) {
            return tracker.getYVelocity();
        }
    }

    static class b implements c {
        b() {
        }

        @Override // android.support.v4.view.VelocityTrackerCompat.c
        public final float a(VelocityTracker tracker, int pointerId) {
            return tracker.getXVelocity(pointerId);
        }

        @Override // android.support.v4.view.VelocityTrackerCompat.c
        public final float b(VelocityTracker tracker, int pointerId) {
            return tracker.getYVelocity(pointerId);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static float getXVelocity(VelocityTracker tracker, int pointerId) {
        return a.a(tracker, pointerId);
    }

    public static float getYVelocity(VelocityTracker tracker, int pointerId) {
        return a.b(tracker, pointerId);
    }
}
