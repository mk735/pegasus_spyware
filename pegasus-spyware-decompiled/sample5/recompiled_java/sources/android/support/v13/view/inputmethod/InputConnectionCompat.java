package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v13.view.inputmethod.InputConnectionCompatApi25;
import android.support.v4.os.BuildCompat;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;

public final class InputConnectionCompat {
    private static final InputConnectionCompatImpl IMPL;
    public static int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;

    private interface InputConnectionCompatImpl {
        boolean commitContent(@NonNull InputConnection inputConnection, @NonNull InputContentInfoCompat inputContentInfoCompat, int i, @Nullable Bundle bundle);

        @NonNull
        InputConnection createWrapper(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull OnCommitContentListener onCommitContentListener);
    }

    public interface OnCommitContentListener {
        boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle);
    }

    static final class BaseInputContentInfoCompatImpl implements InputConnectionCompatImpl {
        private static String COMMIT_CONTENT_ACTION = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
        private static String COMMIT_CONTENT_CONTENT_URI_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";
        private static String COMMIT_CONTENT_DESCRIPTION_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
        private static String COMMIT_CONTENT_FLAGS_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
        private static String COMMIT_CONTENT_LINK_URI_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
        private static String COMMIT_CONTENT_OPTS_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
        private static String COMMIT_CONTENT_RESULT_RECEIVER = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";

        BaseInputContentInfoCompatImpl() {
        }

        @Override // android.support.v13.view.inputmethod.InputConnectionCompat.InputConnectionCompatImpl
        public boolean commitContent(@NonNull InputConnection inputConnection, @NonNull InputContentInfoCompat inputContentInfo, int flags, @Nullable Bundle opts) {
            Bundle params = new Bundle();
            params.putParcelable(COMMIT_CONTENT_CONTENT_URI_KEY, inputContentInfo.getContentUri());
            params.putParcelable(COMMIT_CONTENT_DESCRIPTION_KEY, inputContentInfo.getDescription());
            params.putParcelable(COMMIT_CONTENT_LINK_URI_KEY, inputContentInfo.getLinkUri());
            params.putInt(COMMIT_CONTENT_FLAGS_KEY, flags);
            params.putParcelable(COMMIT_CONTENT_OPTS_KEY, opts);
            return inputConnection.performPrivateCommand(COMMIT_CONTENT_ACTION, params);
        }

        @Override // android.support.v13.view.inputmethod.InputConnectionCompat.InputConnectionCompatImpl
        @NonNull
        public InputConnection createWrapper(@NonNull InputConnection ic, @NonNull EditorInfo editorInfo, @NonNull final OnCommitContentListener onCommitContentListener) {
            return EditorInfoCompat.getContentMimeTypes(editorInfo).length == 0 ? ic : new InputConnectionWrapper(ic, false) {
                /* class android.support.v13.view.inputmethod.InputConnectionCompat.BaseInputContentInfoCompatImpl.AnonymousClass1 */

                public boolean performPrivateCommand(String action, Bundle data) {
                    if (BaseInputContentInfoCompatImpl.handlePerformPrivateCommand(action, data, onCommitContentListener)) {
                        return true;
                    }
                    return super.performPrivateCommand(action, data);
                }
            };
        }

        static boolean handlePerformPrivateCommand(@Nullable String action, @NonNull Bundle data, @NonNull OnCommitContentListener onCommitContentListener) {
            int i;
            int i2 = 1;
            if (!TextUtils.equals(COMMIT_CONTENT_ACTION, action) || data == null) {
                return false;
            }
            ResultReceiver resultReceiver = null;
            try {
                resultReceiver = (ResultReceiver) data.getParcelable(COMMIT_CONTENT_RESULT_RECEIVER);
                boolean result = onCommitContentListener.onCommitContent(new InputContentInfoCompat((Uri) data.getParcelable(COMMIT_CONTENT_CONTENT_URI_KEY), (ClipDescription) data.getParcelable(COMMIT_CONTENT_DESCRIPTION_KEY), (Uri) data.getParcelable(COMMIT_CONTENT_LINK_URI_KEY)), data.getInt(COMMIT_CONTENT_FLAGS_KEY), (Bundle) data.getParcelable(COMMIT_CONTENT_OPTS_KEY));
                if (resultReceiver != null) {
                    if (result) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    resultReceiver.send(i, null);
                }
                return result;
            } catch (Throwable th) {
                if (resultReceiver != null) {
                    if (0 == 0) {
                        i2 = 0;
                    }
                    resultReceiver.send(i2, null);
                }
                throw th;
            }
        }
    }

    private static final class Api25InputContentInfoCompatImpl implements InputConnectionCompatImpl {
        private Api25InputContentInfoCompatImpl() {
        }

        @Override // android.support.v13.view.inputmethod.InputConnectionCompat.InputConnectionCompatImpl
        public boolean commitContent(@NonNull InputConnection inputConnection, @NonNull InputContentInfoCompat inputContentInfo, int flags, @Nullable Bundle opts) {
            return InputConnectionCompatApi25.commitContent(inputConnection, inputContentInfo.unwrap(), flags, opts);
        }

        @Override // android.support.v13.view.inputmethod.InputConnectionCompat.InputConnectionCompatImpl
        @Nullable
        public InputConnection createWrapper(@Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo, @Nullable final OnCommitContentListener onCommitContentListener) {
            return InputConnectionCompatApi25.createWrapper(inputConnection, new InputConnectionCompatApi25.OnCommitContentListener() {
                /* class android.support.v13.view.inputmethod.InputConnectionCompat.Api25InputContentInfoCompatImpl.AnonymousClass1 */

                @Override // android.support.v13.view.inputmethod.InputConnectionCompatApi25.OnCommitContentListener
                public boolean onCommitContent(Object inputContentInfo, int flags, Bundle opts) {
                    return onCommitContentListener.onCommitContent(InputContentInfoCompat.wrap(inputContentInfo), flags, opts);
                }
            });
        }
    }

    static {
        if (BuildCompat.isAtLeastNMR1()) {
            IMPL = new Api25InputContentInfoCompatImpl();
        } else {
            IMPL = new BaseInputContentInfoCompatImpl();
        }
    }

    public static boolean commitContent(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull InputContentInfoCompat inputContentInfo, int flags, @Nullable Bundle opts) {
        ClipDescription description = inputContentInfo.getDescription();
        boolean supported = false;
        String[] contentMimeTypes = EditorInfoCompat.getContentMimeTypes(editorInfo);
        int length = contentMimeTypes.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (description.hasMimeType(contentMimeTypes[i])) {
                supported = true;
                break;
            } else {
                i++;
            }
        }
        if (!supported) {
            return false;
        }
        return IMPL.commitContent(inputConnection, inputContentInfo, flags, opts);
    }

    @NonNull
    public static InputConnection createWrapper(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull OnCommitContentListener onCommitContentListener) {
        if (inputConnection == null) {
            throw new IllegalArgumentException("inputConnection must be non-null");
        } else if (editorInfo == null) {
            throw new IllegalArgumentException("editorInfo must be non-null");
        } else if (onCommitContentListener != null) {
            return IMPL.createWrapper(inputConnection, editorInfo, onCommitContentListener);
        } else {
            throw new IllegalArgumentException("onCommitContentListener must be non-null");
        }
    }
}
