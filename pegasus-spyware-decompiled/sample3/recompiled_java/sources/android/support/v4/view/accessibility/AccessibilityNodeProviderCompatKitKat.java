package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

class AccessibilityNodeProviderCompatKitKat {

    /* access modifiers changed from: package-private */
    public interface AccessibilityNodeInfoBridge {
        Object createAccessibilityNodeInfo(int i);

        List<Object> findAccessibilityNodeInfosByText(String str, int i);

        Object findFocus(int i);

        boolean performAction(int i, int i2, Bundle bundle);
    }

    AccessibilityNodeProviderCompatKitKat() {
    }

    public static Object newAccessibilityNodeProviderBridge(final AccessibilityNodeInfoBridge bridge) {
        return new AccessibilityNodeProvider() {
            /* class android.support.v4.view.accessibility.AccessibilityNodeProviderCompatKitKat.AnonymousClass1 */

            public AccessibilityNodeInfo createAccessibilityNodeInfo(int virtualViewId) {
                return (AccessibilityNodeInfo) bridge.createAccessibilityNodeInfo(virtualViewId);
            }

            /* JADX DEBUG: Type inference failed for r0v1. Raw type applied. Possible types: java.util.List<java.lang.Object>, java.util.List<android.view.accessibility.AccessibilityNodeInfo> */
            @Override // android.view.accessibility.AccessibilityNodeProvider
            public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String text, int virtualViewId) {
                return bridge.findAccessibilityNodeInfosByText(text, virtualViewId);
            }

            public boolean performAction(int virtualViewId, int action, Bundle arguments) {
                return bridge.performAction(virtualViewId, action, arguments);
            }

            public AccessibilityNodeInfo findFocus(int focus) {
                return (AccessibilityNodeInfo) bridge.findFocus(focus);
            }
        };
    }
}
