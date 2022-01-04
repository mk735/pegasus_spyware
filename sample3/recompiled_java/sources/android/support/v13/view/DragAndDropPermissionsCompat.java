package android.support.v13.view;

import android.app.Activity;
import android.support.annotation.RestrictTo;
import android.support.v4.os.BuildCompat;
import android.view.DragEvent;

public final class DragAndDropPermissionsCompat {
    private static DragAndDropPermissionsCompatImpl IMPL;
    private Object mDragAndDropPermissions;

    interface DragAndDropPermissionsCompatImpl {
        void release(Object obj);

        Object request(Activity activity, DragEvent dragEvent);
    }

    static class BaseDragAndDropPermissionsCompatImpl implements DragAndDropPermissionsCompatImpl {
        BaseDragAndDropPermissionsCompatImpl() {
        }

        @Override // android.support.v13.view.DragAndDropPermissionsCompat.DragAndDropPermissionsCompatImpl
        public Object request(Activity activity, DragEvent dragEvent) {
            return null;
        }

        @Override // android.support.v13.view.DragAndDropPermissionsCompat.DragAndDropPermissionsCompatImpl
        public void release(Object dragAndDropPermissions) {
        }
    }

    static class Api24DragAndDropPermissionsCompatImpl extends BaseDragAndDropPermissionsCompatImpl {
        Api24DragAndDropPermissionsCompatImpl() {
        }

        @Override // android.support.v13.view.DragAndDropPermissionsCompat.BaseDragAndDropPermissionsCompatImpl, android.support.v13.view.DragAndDropPermissionsCompat.DragAndDropPermissionsCompatImpl
        public Object request(Activity activity, DragEvent dragEvent) {
            return DragAndDropPermissionsCompatApi24.request(activity, dragEvent);
        }

        @Override // android.support.v13.view.DragAndDropPermissionsCompat.BaseDragAndDropPermissionsCompatImpl, android.support.v13.view.DragAndDropPermissionsCompat.DragAndDropPermissionsCompatImpl
        public void release(Object dragAndDropPermissions) {
            DragAndDropPermissionsCompatApi24.release(dragAndDropPermissions);
        }
    }

    static {
        if (BuildCompat.isAtLeastN()) {
            IMPL = new Api24DragAndDropPermissionsCompatImpl();
        } else {
            IMPL = new BaseDragAndDropPermissionsCompatImpl();
        }
    }

    private DragAndDropPermissionsCompat(Object dragAndDropPermissions) {
        this.mDragAndDropPermissions = dragAndDropPermissions;
    }

    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    public static DragAndDropPermissionsCompat request(Activity activity, DragEvent dragEvent) {
        Object dragAndDropPermissions = IMPL.request(activity, dragEvent);
        if (dragAndDropPermissions != null) {
            return new DragAndDropPermissionsCompat(dragAndDropPermissions);
        }
        return null;
    }

    public void release() {
        IMPL.release(this.mDragAndDropPermissions);
    }
}
