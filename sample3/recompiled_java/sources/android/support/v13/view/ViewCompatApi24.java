package android.support.v13.view;

import android.content.ClipData;
import android.view.View;

class ViewCompatApi24 {
    public static boolean startDragAndDrop(View v, ClipData data, View.DragShadowBuilder shadowBuilder, Object localState, int flags) {
        return v.startDragAndDrop(data, shadowBuilder, localState, flags);
    }

    public static void cancelDragAndDrop(View v) {
        v.cancelDragAndDrop();
    }

    public static void updateDragShadow(View v, View.DragShadowBuilder shadowBuilder) {
        v.updateDragShadow(shadowBuilder);
    }

    private ViewCompatApi24() {
    }
}
