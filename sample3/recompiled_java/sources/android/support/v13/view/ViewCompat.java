package android.support.v13.view;

import android.content.ClipData;
import android.support.v4.os.BuildCompat;
import android.view.View;

public class ViewCompat extends android.support.v4.view.ViewCompat {
    static ViewCompatImpl IMPL;

    interface ViewCompatImpl {
        void cancelDragAndDrop(View view);

        boolean startDragAndDrop(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object obj, int i);

        void updateDragShadow(View view, View.DragShadowBuilder dragShadowBuilder);
    }

    private static class BaseViewCompatImpl implements ViewCompatImpl {
        BaseViewCompatImpl() {
        }

        @Override // android.support.v13.view.ViewCompat.ViewCompatImpl
        public boolean startDragAndDrop(View v, ClipData data, View.DragShadowBuilder shadowBuilder, Object localState, int flags) {
            return v.startDrag(data, shadowBuilder, localState, flags);
        }

        @Override // android.support.v13.view.ViewCompat.ViewCompatImpl
        public void cancelDragAndDrop(View v) {
        }

        @Override // android.support.v13.view.ViewCompat.ViewCompatImpl
        public void updateDragShadow(View v, View.DragShadowBuilder shadowBuilder) {
        }
    }

    private static class Api24ViewCompatImpl implements ViewCompatImpl {
        Api24ViewCompatImpl() {
        }

        @Override // android.support.v13.view.ViewCompat.ViewCompatImpl
        public boolean startDragAndDrop(View v, ClipData data, View.DragShadowBuilder shadowBuilder, Object localState, int flags) {
            return ViewCompatApi24.startDragAndDrop(v, data, shadowBuilder, localState, flags);
        }

        @Override // android.support.v13.view.ViewCompat.ViewCompatImpl
        public void cancelDragAndDrop(View v) {
            ViewCompatApi24.cancelDragAndDrop(v);
        }

        @Override // android.support.v13.view.ViewCompat.ViewCompatImpl
        public void updateDragShadow(View v, View.DragShadowBuilder shadowBuilder) {
            ViewCompatApi24.updateDragShadow(v, shadowBuilder);
        }
    }

    static {
        if (BuildCompat.isAtLeastN()) {
            IMPL = new Api24ViewCompatImpl();
        } else {
            IMPL = new BaseViewCompatImpl();
        }
    }

    public static boolean startDragAndDrop(View v, ClipData data, View.DragShadowBuilder shadowBuilder, Object localState, int flags) {
        return IMPL.startDragAndDrop(v, data, shadowBuilder, localState, flags);
    }

    public static void cancelDragAndDrop(View v) {
        IMPL.cancelDragAndDrop(v);
    }

    public static void updateDragShadow(View v, View.DragShadowBuilder shadowBuilder) {
        IMPL.updateDragShadow(v, shadowBuilder);
    }

    private ViewCompat() {
    }
}
