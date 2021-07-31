package android.support.v13.view.inputmethod;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.os.BuildCompat;
import android.view.inputmethod.EditorInfo;

public final class EditorInfoCompat {
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final EditorInfoCompatImpl IMPL;

    private interface EditorInfoCompatImpl {
        @NonNull
        String[] getContentMimeTypes(@NonNull EditorInfo editorInfo);

        void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] strArr);
    }

    static {
        if (BuildCompat.isAtLeastNMR1()) {
            IMPL = new Api25EditorInfoCompatImpl();
        } else {
            IMPL = new BaseEditorInfoCompatImpl();
        }
    }

    private static final class BaseEditorInfoCompatImpl implements EditorInfoCompatImpl {
        private static String CONTENT_MIME_TYPES_KEY = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";

        private BaseEditorInfoCompatImpl() {
        }

        @Override // android.support.v13.view.inputmethod.EditorInfoCompat.EditorInfoCompatImpl
        public void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] contentMimeTypes) {
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_KEY, contentMimeTypes);
        }

        @Override // android.support.v13.view.inputmethod.EditorInfoCompat.EditorInfoCompatImpl
        @NonNull
        public String[] getContentMimeTypes(@NonNull EditorInfo editorInfo) {
            if (editorInfo.extras == null) {
                return EditorInfoCompat.EMPTY_STRING_ARRAY;
            }
            String[] result = editorInfo.extras.getStringArray(CONTENT_MIME_TYPES_KEY);
            return result == null ? EditorInfoCompat.EMPTY_STRING_ARRAY : result;
        }
    }

    private static final class Api25EditorInfoCompatImpl implements EditorInfoCompatImpl {
        private Api25EditorInfoCompatImpl() {
        }

        @Override // android.support.v13.view.inputmethod.EditorInfoCompat.EditorInfoCompatImpl
        public void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] contentMimeTypes) {
            EditorInfoCompatApi25.setContentMimeTypes(editorInfo, contentMimeTypes);
        }

        @Override // android.support.v13.view.inputmethod.EditorInfoCompat.EditorInfoCompatImpl
        @NonNull
        public String[] getContentMimeTypes(@NonNull EditorInfo editorInfo) {
            String[] result = EditorInfoCompatApi25.getContentMimeTypes(editorInfo);
            return result != null ? result : EditorInfoCompat.EMPTY_STRING_ARRAY;
        }
    }

    public static void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] contentMimeTypes) {
        IMPL.setContentMimeTypes(editorInfo, contentMimeTypes);
    }

    @NonNull
    public static String[] getContentMimeTypes(EditorInfo editorInfo) {
        return IMPL.getContentMimeTypes(editorInfo);
    }
}
