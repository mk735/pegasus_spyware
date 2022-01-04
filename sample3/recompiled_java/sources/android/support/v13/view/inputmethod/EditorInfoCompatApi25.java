package android.support.v13.view.inputmethod;

import android.view.inputmethod.EditorInfo;

final class EditorInfoCompatApi25 {
    EditorInfoCompatApi25() {
    }

    public static void setContentMimeTypes(EditorInfo editorInfo, String[] contentMimeTypes) {
        editorInfo.contentMimeTypes = contentMimeTypes;
    }

    public static String[] getContentMimeTypes(EditorInfo editorInfo) {
        return editorInfo.contentMimeTypes;
    }
}
