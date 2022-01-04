package android.support.v4.view;

import android.os.Build;
import android.view.MotionEvent;

public class MotionEventCompat {
    public static final int ACTION_HOVER_MOVE = 7;
    public static final int ACTION_MASK = 255;
    public static final int ACTION_POINTER_DOWN = 5;
    public static final int ACTION_POINTER_INDEX_MASK = 65280;
    public static final int ACTION_POINTER_INDEX_SHIFT = 8;
    public static final int ACTION_POINTER_UP = 6;
    public static final int ACTION_SCROLL = 8;
    static final c a;

    interface c {
        int a(MotionEvent motionEvent, int i);

        int b(MotionEvent motionEvent, int i);

        float c(MotionEvent motionEvent, int i);

        float d(MotionEvent motionEvent, int i);
    }

    static class a implements c {
        a() {
        }

        @Override // android.support.v4.view.MotionEventCompat.c
        public final int a(MotionEvent event, int pointerId) {
            return -1;
        }

        @Override // android.support.v4.view.MotionEventCompat.c
        public final int b(MotionEvent event, int pointerIndex) {
            throw new IndexOutOfBoundsException("Pre-Eclair does not support pointers");
        }

        @Override // android.support.v4.view.MotionEventCompat.c
        public final float c(MotionEvent event, int pointerIndex) {
            throw new IndexOutOfBoundsException("Pre-Eclair does not support pointers");
        }

        @Override // android.support.v4.view.MotionEventCompat.c
        public final float d(MotionEvent event, int pointerIndex) {
            throw new IndexOutOfBoundsException("Pre-Eclair does not support pointers");
        }
    }

    static class b implements c {
        b() {
        }

        @Override // android.support.v4.view.MotionEventCompat.c
        public final int a(MotionEvent event, int pointerId) {
            return event.findPointerIndex(pointerId);
        }

        @Override // android.support.v4.view.MotionEventCompat.c
        public final int b(MotionEvent event, int pointerIndex) {
            return event.getPointerId(pointerIndex);
        }

        @Override // android.support.v4.view.MotionEventCompat.c
        public final float c(MotionEvent event, int pointerIndex) {
            return event.getX(pointerIndex);
        }

        @Override // android.support.v4.view.MotionEventCompat.c
        public final float d(MotionEvent event, int pointerIndex) {
            return event.getY(pointerIndex);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 5) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static int getActionMasked(MotionEvent event) {
        return event.getAction() & 255;
    }

    public static int getActionIndex(MotionEvent event) {
        return (event.getAction() & ACTION_POINTER_INDEX_MASK) >> 8;
    }

    public static int findPointerIndex(MotionEvent event, int pointerId) {
        return a.a(event, pointerId);
    }

    public static int getPointerId(MotionEvent event, int pointerIndex) {
        return a.b(event, pointerIndex);
    }

    public static float getX(MotionEvent event, int pointerIndex) {
        return a.c(event, pointerIndex);
    }

    public static float getY(MotionEvent event, int pointerIndex) {
        return a.d(event, pointerIndex);
    }
}
