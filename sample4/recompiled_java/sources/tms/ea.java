package tms;

import com.tencent.tmsecure.module.networkload.NetworkLoadTask;
import java.io.File;
import java.util.List;

public class ea<T extends NetworkLoadTask> extends df<T> {
    public static final String TEMPFILE_SUFFIX = ".tmp";
    private String a;

    private void c(T t) {
        String str = t.mParentPath + File.separator + t.mName;
        File file = new File(str);
        File file2 = new File(str + TEMPFILE_SUFFIX);
        if (file2.exists()) {
            if (file.exists()) {
                file.delete();
            }
            file2.renameTo(file);
        }
    }

    /* access modifiers changed from: protected */
    @Override // tms.df
    public void doBeforeContinue(T t) {
        String str;
        if (t.mThread != null) {
            ((di) t.mThread).a();
            t.mThread = null;
        }
        String str2 = t.mParentPath + File.separator + t.mName;
        String str3 = str2 + TEMPFILE_SUFFIX;
        File file = new File(str3);
        File file2 = new File(str2);
        if (!t.isSupportRange && file.exists() && !t.isOnChangeRetry) {
            file.delete();
        }
        if (!file2.exists() || file2.length() != t.mSize || t.mSize <= 0) {
            file2 = file;
            str = str3;
        } else {
            str = str2;
        }
        t.mCurrentSize = file2.length();
        if (t.mSize > 0) {
            t.mProgress = ((float) t.mCurrentSize) / ((float) t.mSize);
        } else {
            t.mProgress = 0.0f;
        }
        di diVar = ((t.isSupportRange || t.isOnChangeRetry) && t.mCurrentSize != 0) ? new di(t, true, str) : new di(t, false, str);
        diVar.a(this);
        t.mThread = diVar;
    }

    /* access modifiers changed from: protected */
    @Override // tms.df
    public void doBeforeStart(T t) {
        if (t.mThread != null) {
            ((di) t.mThread).a();
            t.mThread = null;
        }
        t.mParentPath = this.a;
        String str = this.a + File.separator + t.mName;
        String str2 = str + TEMPFILE_SUFFIX;
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        File file2 = new File(str2);
        if (file2.exists()) {
            file2.delete();
        }
        t.mCurrentSize = 0;
        di diVar = new di(t, false, str2);
        diVar.a(this);
        t.mThread = diVar;
    }

    /* access modifiers changed from: protected */
    @Override // tms.df
    public void doDeleteFile(T t) {
        doPause(t);
        String str = t.mParentPath + File.separator + t.mName;
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        File file2 = new File(str + TEMPFILE_SUFFIX);
        if (file2.exists()) {
            file2.delete();
        }
    }

    /* access modifiers changed from: protected */
    @Override // tms.df
    public void doDeleteFile(List<T> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            doDeleteFile(list.get(i));
        }
    }

    /* access modifiers changed from: protected */
    @Override // tms.df
    public void doFinish(T t) {
        c(t);
    }

    /* access modifiers changed from: protected */
    @Override // tms.df
    public void doPause(T t) {
        if (t.mThread != null) {
            ((di) t.mThread).a();
            t.mThread = null;
        }
        File file = new File(t.mParentPath + File.separator + t.mName);
        if (!file.exists() || file.length() != t.mSize || t.mSize > 0) {
        }
    }

    public void setDownloadDirPath(String str) {
        this.a = str;
        File file = new File(this.a);
        if (!file.exists()) {
            file.mkdirs();
        }
    }
}
