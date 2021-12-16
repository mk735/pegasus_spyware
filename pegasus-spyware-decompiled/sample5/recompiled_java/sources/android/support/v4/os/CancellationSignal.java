package android.support.v4.os;

import android.os.Build;

public final class CancellationSignal {
    private boolean mCancelInProgress;
    private Object mCancellationSignalObj;
    private boolean mIsCanceled;
    private OnCancelListener mOnCancelListener;

    public interface OnCancelListener {
        void onCancel();
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this) {
            z = this.mIsCanceled;
        }
        return z;
    }

    public void throwIfCanceled() {
        if (isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0017, code lost:
        if (r1 == null) goto L_0x001c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0019, code lost:
        android.support.v4.os.CancellationSignalCompatJellybean.cancel(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001c, code lost:
        monitor-enter(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
        r4.mCancelInProgress = false;
        notifyAll();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0023, code lost:
        monitor-exit(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x002b, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x002c, code lost:
        monitor-enter(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:?, code lost:
        r4.mCancelInProgress = false;
        notifyAll();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0034, code lost:
        throw r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0012, code lost:
        if (r0 == null) goto L_0x0017;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:?, code lost:
        r0.onCancel();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void cancel() {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r2 = r4.mIsCanceled     // Catch:{ all -> 0x0028 }
            if (r2 == 0) goto L_0x0007
            monitor-exit(r4)     // Catch:{ all -> 0x0028 }
        L_0x0006:
            return
        L_0x0007:
            r2 = 1
            r4.mIsCanceled = r2     // Catch:{ all -> 0x0028 }
            r2 = 1
            r4.mCancelInProgress = r2     // Catch:{ all -> 0x0028 }
            android.support.v4.os.CancellationSignal$OnCancelListener r0 = r4.mOnCancelListener     // Catch:{ all -> 0x0028 }
            java.lang.Object r1 = r4.mCancellationSignalObj     // Catch:{ all -> 0x0028 }
            monitor-exit(r4)     // Catch:{ all -> 0x0028 }
            if (r0 == 0) goto L_0x0017
            r0.onCancel()     // Catch:{ all -> 0x002b }
        L_0x0017:
            if (r1 == 0) goto L_0x001c
            android.support.v4.os.CancellationSignalCompatJellybean.cancel(r1)     // Catch:{ all -> 0x002b }
        L_0x001c:
            monitor-enter(r4)
            r2 = 0
            r4.mCancelInProgress = r2     // Catch:{ all -> 0x0025 }
            r4.notifyAll()     // Catch:{ all -> 0x0025 }
            monitor-exit(r4)     // Catch:{ all -> 0x0025 }
            goto L_0x0006
        L_0x0025:
            r2 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0025 }
            throw r2
        L_0x0028:
            r2 = move-exception
            monitor-exit(r4)
            throw r2
        L_0x002b:
            r2 = move-exception
            monitor-enter(r4)
            r3 = 0
            r4.mCancelInProgress = r3     // Catch:{ all -> 0x0035 }
            r4.notifyAll()     // Catch:{ all -> 0x0035 }
            monitor-exit(r4)     // Catch:{ all -> 0x0035 }
            throw r2
        L_0x0035:
            r2 = move-exception
            monitor-exit(r4)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.os.CancellationSignal.cancel():void");
    }

    public void setOnCancelListener(OnCancelListener listener) {
        synchronized (this) {
            waitForCancelFinishedLocked();
            if (this.mOnCancelListener != listener) {
                this.mOnCancelListener = listener;
                if (this.mIsCanceled && listener != null) {
                    listener.onCancel();
                }
            }
        }
    }

    public Object getCancellationSignalObject() {
        Object obj;
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.mCancellationSignalObj == null) {
                this.mCancellationSignalObj = CancellationSignalCompatJellybean.create();
                if (this.mIsCanceled) {
                    CancellationSignalCompatJellybean.cancel(this.mCancellationSignalObj);
                }
            }
            obj = this.mCancellationSignalObj;
        }
        return obj;
    }

    private void waitForCancelFinishedLocked() {
        while (this.mCancelInProgress) {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
    }
}
