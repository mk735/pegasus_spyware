package android.support.v4.view;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

public class ViewCompat {
    private static final long FAKE_FRAME_TIME = 10;
    static final ViewCompatImpl IMPL;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int LAYER_TYPE_HARDWARE = 2;
    public static final int LAYER_TYPE_NONE = 0;
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    public static final int OVER_SCROLL_ALWAYS = 0;
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    public static final int OVER_SCROLL_NEVER = 2;

    /* access modifiers changed from: package-private */
    public interface ViewCompatImpl {
        boolean canScrollHorizontally(View view, int i);

        boolean canScrollVertically(View view, int i);

        AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view);

        float getAlpha(View view);

        int getImportantForAccessibility(View view);

        int getLabelFor(View view);

        int getLayerType(View view);

        int getLayoutDirection(View view);

        int getOverScrollMode(View view);

        ViewParent getParentForAccessibility(View view);

        boolean hasTransientState(View view);

        boolean isOpaque(View view);

        void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent);

        void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

        void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent);

        boolean performAccessibilityAction(View view, int i, Bundle bundle);

        void postInvalidateOnAnimation(View view);

        void postInvalidateOnAnimation(View view, int i, int i2, int i3, int i4);

        void postOnAnimation(View view, Runnable runnable);

        void postOnAnimationDelayed(View view, Runnable runnable, long j);

        void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilityDelegateCompat);

        void setHasTransientState(View view, boolean z);

        void setImportantForAccessibility(View view, int i);

        void setLabelFor(View view, int i);

        void setLayerPaint(View view, Paint paint);

        void setLayerType(View view, int i, Paint paint);

        void setLayoutDirection(View view, int i);

        void setOverScrollMode(View view, int i);
    }

    static class BaseViewCompatImpl implements ViewCompatImpl {
        BaseViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean canScrollHorizontally(View v, int direction) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean canScrollVertically(View v, int direction) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getOverScrollMode(View v) {
            return 2;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setOverScrollMode(View v, int mode) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setAccessibilityDelegate(View v, AccessibilityDelegateCompat delegate) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void onPopulateAccessibilityEvent(View v, AccessibilityEvent event) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void onInitializeAccessibilityEvent(View v, AccessibilityEvent event) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void onInitializeAccessibilityNodeInfo(View v, AccessibilityNodeInfoCompat info) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean hasTransientState(View view) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setHasTransientState(View view, boolean hasTransientState) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postInvalidateOnAnimation(View view) {
            view.postInvalidateDelayed(getFrameTime());
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postInvalidateOnAnimation(View view, int left, int top, int right, int bottom) {
            view.postInvalidateDelayed(getFrameTime(), left, top, right, bottom);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postOnAnimation(View view, Runnable action) {
            view.postDelayed(action, getFrameTime());
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postOnAnimationDelayed(View view, Runnable action, long delayMillis) {
            view.postDelayed(action, getFrameTime() + delayMillis);
        }

        /* access modifiers changed from: package-private */
        public long getFrameTime() {
            return ViewCompat.FAKE_FRAME_TIME;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getImportantForAccessibility(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setImportantForAccessibility(View view, int mode) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean performAccessibilityAction(View view, int action, Bundle arguments) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
            return null;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public float getAlpha(View view) {
            return 1.0f;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setLayerType(View view, int layerType, Paint paint) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getLayerType(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getLabelFor(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setLabelFor(View view, int id) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setLayerPaint(View view, Paint p) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getLayoutDirection(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setLayoutDirection(View view, int layoutDirection) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public ViewParent getParentForAccessibility(View view) {
            return view.getParent();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean isOpaque(View view) {
            Drawable bg = view.getBackground();
            if (bg == null || bg.getOpacity() != -1) {
                return false;
            }
            return true;
        }
    }

    static class EclairMr1ViewCompatImpl extends BaseViewCompatImpl {
        EclairMr1ViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public boolean isOpaque(View view) {
            return ViewCompatEclairMr1.isOpaque(view);
        }
    }

    static class GBViewCompatImpl extends EclairMr1ViewCompatImpl {
        GBViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public int getOverScrollMode(View v) {
            return ViewCompatGingerbread.getOverScrollMode(v);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void setOverScrollMode(View v, int mode) {
            ViewCompatGingerbread.setOverScrollMode(v, mode);
        }
    }

    static class HCViewCompatImpl extends GBViewCompatImpl {
        HCViewCompatImpl() {
        }

        /* access modifiers changed from: package-private */
        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public long getFrameTime() {
            return ViewCompatHC.getFrameTime();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public float getAlpha(View view) {
            return ViewCompatHC.getAlpha(view);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void setLayerType(View view, int layerType, Paint paint) {
            ViewCompatHC.setLayerType(view, layerType, paint);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public int getLayerType(View view) {
            return ViewCompatHC.getLayerType(view);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void setLayerPaint(View view, Paint paint) {
            setLayerType(view, getLayerType(view), paint);
            view.invalidate();
        }
    }

    static class ICSViewCompatImpl extends HCViewCompatImpl {
        ICSViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public boolean canScrollHorizontally(View v, int direction) {
            return ViewCompatICS.canScrollHorizontally(v, direction);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public boolean canScrollVertically(View v, int direction) {
            return ViewCompatICS.canScrollVertically(v, direction);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void onPopulateAccessibilityEvent(View v, AccessibilityEvent event) {
            ViewCompatICS.onPopulateAccessibilityEvent(v, event);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void onInitializeAccessibilityEvent(View v, AccessibilityEvent event) {
            ViewCompatICS.onInitializeAccessibilityEvent(v, event);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void onInitializeAccessibilityNodeInfo(View v, AccessibilityNodeInfoCompat info) {
            ViewCompatICS.onInitializeAccessibilityNodeInfo(v, info.getInfo());
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void setAccessibilityDelegate(View v, AccessibilityDelegateCompat delegate) {
            ViewCompatICS.setAccessibilityDelegate(v, delegate.getBridge());
        }
    }

    static class JBViewCompatImpl extends ICSViewCompatImpl {
        JBViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public boolean hasTransientState(View view) {
            return ViewCompatJB.hasTransientState(view);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void setHasTransientState(View view, boolean hasTransientState) {
            ViewCompatJB.setHasTransientState(view, hasTransientState);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void postInvalidateOnAnimation(View view) {
            ViewCompatJB.postInvalidateOnAnimation(view);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void postInvalidateOnAnimation(View view, int left, int top, int right, int bottom) {
            ViewCompatJB.postInvalidateOnAnimation(view, left, top, right, bottom);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void postOnAnimation(View view, Runnable action) {
            ViewCompatJB.postOnAnimation(view, action);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void postOnAnimationDelayed(View view, Runnable action, long delayMillis) {
            ViewCompatJB.postOnAnimationDelayed(view, action, delayMillis);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public int getImportantForAccessibility(View view) {
            return ViewCompatJB.getImportantForAccessibility(view);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void setImportantForAccessibility(View view, int mode) {
            ViewCompatJB.setImportantForAccessibility(view, mode);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public boolean performAccessibilityAction(View view, int action, Bundle arguments) {
            return ViewCompatJB.performAccessibilityAction(view, action, arguments);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
            Object compat = ViewCompatJB.getAccessibilityNodeProvider(view);
            if (compat != null) {
                return new AccessibilityNodeProviderCompat(compat);
            }
            return null;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public ViewParent getParentForAccessibility(View view) {
            return ViewCompatJB.getParentForAccessibility(view);
        }
    }

    static class JbMr1ViewCompatImpl extends JBViewCompatImpl {
        JbMr1ViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public int getLabelFor(View view) {
            return ViewCompatJellybeanMr1.getLabelFor(view);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void setLabelFor(View view, int id) {
            ViewCompatJellybeanMr1.setLabelFor(view, id);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.HCViewCompatImpl
        public void setLayerPaint(View view, Paint paint) {
            ViewCompatJellybeanMr1.setLayerPaint(view, paint);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public int getLayoutDirection(View view) {
            return ViewCompatJellybeanMr1.getLayoutDirection(view);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl, android.support.v4.view.ViewCompat.BaseViewCompatImpl
        public void setLayoutDirection(View view, int layoutDirection) {
            ViewCompatJellybeanMr1.setLayoutDirection(view, layoutDirection);
        }
    }

    static {
        int version = Build.VERSION.SDK_INT;
        if (version >= 17) {
            IMPL = new JbMr1ViewCompatImpl();
        } else if (version >= 16) {
            IMPL = new JBViewCompatImpl();
        } else if (version >= 14) {
            IMPL = new ICSViewCompatImpl();
        } else if (version >= 11) {
            IMPL = new HCViewCompatImpl();
        } else if (version >= 9) {
            IMPL = new GBViewCompatImpl();
        } else {
            IMPL = new BaseViewCompatImpl();
        }
    }

    public static boolean canScrollHorizontally(View v, int direction) {
        return IMPL.canScrollHorizontally(v, direction);
    }

    public static boolean canScrollVertically(View v, int direction) {
        return IMPL.canScrollVertically(v, direction);
    }

    public static int getOverScrollMode(View v) {
        return IMPL.getOverScrollMode(v);
    }

    public static void setOverScrollMode(View v, int overScrollMode) {
        IMPL.setOverScrollMode(v, overScrollMode);
    }

    public static void onPopulateAccessibilityEvent(View v, AccessibilityEvent event) {
        IMPL.onPopulateAccessibilityEvent(v, event);
    }

    public static void onInitializeAccessibilityEvent(View v, AccessibilityEvent event) {
        IMPL.onInitializeAccessibilityEvent(v, event);
    }

    public static void onInitializeAccessibilityNodeInfo(View v, AccessibilityNodeInfoCompat info) {
        IMPL.onInitializeAccessibilityNodeInfo(v, info);
    }

    public static void setAccessibilityDelegate(View v, AccessibilityDelegateCompat delegate) {
        IMPL.setAccessibilityDelegate(v, delegate);
    }

    public static boolean hasTransientState(View view) {
        return IMPL.hasTransientState(view);
    }

    public static void setHasTransientState(View view, boolean hasTransientState) {
        IMPL.setHasTransientState(view, hasTransientState);
    }

    public static void postInvalidateOnAnimation(View view) {
        IMPL.postInvalidateOnAnimation(view);
    }

    public static void postInvalidateOnAnimation(View view, int left, int top, int right, int bottom) {
        IMPL.postInvalidateOnAnimation(view, left, top, right, bottom);
    }

    public static void postOnAnimation(View view, Runnable action) {
        IMPL.postOnAnimation(view, action);
    }

    public static void postOnAnimationDelayed(View view, Runnable action, long delayMillis) {
        IMPL.postOnAnimationDelayed(view, action, delayMillis);
    }

    public static int getImportantForAccessibility(View view) {
        return IMPL.getImportantForAccessibility(view);
    }

    public static void setImportantForAccessibility(View view, int mode) {
        IMPL.setImportantForAccessibility(view, mode);
    }

    public static boolean performAccessibilityAction(View view, int action, Bundle arguments) {
        return IMPL.performAccessibilityAction(view, action, arguments);
    }

    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        return IMPL.getAccessibilityNodeProvider(view);
    }

    public static float getAlpha(View view) {
        return IMPL.getAlpha(view);
    }

    public static void setLayerType(View view, int layerType, Paint paint) {
        IMPL.setLayerType(view, layerType, paint);
    }

    public static int getLayerType(View view) {
        return IMPL.getLayerType(view);
    }

    public static int getLabelFor(View view) {
        return IMPL.getLabelFor(view);
    }

    public static void setLabelFor(View view, int labeledId) {
        IMPL.setLabelFor(view, labeledId);
    }

    public static void setLayerPaint(View view, Paint paint) {
        IMPL.setLayerPaint(view, paint);
    }

    public static int getLayoutDirection(View view) {
        return IMPL.getLayoutDirection(view);
    }

    public static void setLayoutDirection(View view, int layoutDirection) {
        IMPL.setLayoutDirection(view, layoutDirection);
    }

    public static ViewParent getParentForAccessibility(View view) {
        return IMPL.getParentForAccessibility(view);
    }

    public static boolean isOpaque(View view) {
        return IMPL.isOpaque(view);
    }
}
