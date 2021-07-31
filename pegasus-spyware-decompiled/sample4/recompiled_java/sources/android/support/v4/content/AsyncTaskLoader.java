package android.support.v4.content;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;

public abstract class AsyncTaskLoader<D> extends Loader<D> {
    volatile AsyncTaskLoader<D>.a a;
    volatile AsyncTaskLoader<D>.a b;
    long c;
    long d = -10000;
    Handler e;

    public abstract D loadInBackground();

    /* access modifiers changed from: package-private */
    public final class a extends AsyncTask<Void, Void, D> implements Runnable {
        D a;
        boolean b;
        private CountDownLatch d = new CountDownLatch(1);

        a() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public final /* synthetic */ Object doInBackground(Void[] voidArr) {
            this.a = (D) AsyncTaskLoader.this.onLoadInBackground();
            return this.a;
        }

        /* access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public final void onPostExecute(D data) {
            try {
                AsyncTaskLoader.this.b(this, data);
            } finally {
                this.d.countDown();
            }
        }

        /* access modifiers changed from: protected */
        public final void onCancelled() {
            try {
                AsyncTaskLoader.this.a(this, this.a);
            } finally {
                this.d.countDown();
            }
        }

        public final void run() {
            this.b = false;
            AsyncTaskLoader.this.a();
        }
    }

    public AsyncTaskLoader(Context context) {
        super(context);
    }

    public void setUpdateThrottle(long delayMS) {
        this.c = delayMS;
        if (delayMS != 0) {
            this.e = new Handler();
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.content.Loader
    public void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        this.a = new a();
        a();
    }

    public boolean cancelLoad() {
        boolean cancelled = false;
        if (this.a != null) {
            if (this.b != null) {
                if (this.a.b) {
                    this.a.b = false;
                    this.e.removeCallbacks(this.a);
                }
                this.a = null;
            } else if (this.a.b) {
                this.a.b = false;
                this.e.removeCallbacks(this.a);
                this.a = null;
            } else {
                cancelled = this.a.cancel(false);
                if (cancelled) {
                    this.b = this.a;
                }
                this.a = null;
            }
        }
        return cancelled;
    }

    public void onCanceled(D d2) {
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.b == null && this.a != null) {
            if (this.a.b) {
                this.a.b = false;
                this.e.removeCallbacks(this.a);
            }
            if (this.c <= 0 || SystemClock.uptimeMillis() >= this.d + this.c) {
                this.a.execute((Object[]) null);
                return;
            }
            this.a.b = true;
            this.e.postAtTime(this.a, this.d + this.c);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(AsyncTaskLoader<D>.a task, D data) {
        onCanceled(data);
        if (this.b == task) {
            this.d = SystemClock.uptimeMillis();
            this.b = null;
            a();
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(AsyncTaskLoader<D>.a task, D data) {
        if (this.a != task) {
            a(task, data);
        } else if (isAbandoned()) {
            onCanceled(data);
        } else {
            this.d = SystemClock.uptimeMillis();
            this.a = null;
            deliverResult(data);
        }
    }

    /* access modifiers changed from: protected */
    public D onLoadInBackground() {
        return loadInBackground();
    }

    public void waitForLoader() {
        AsyncTaskLoader<D>.a task = this.a;
        if (task != null) {
            try {
                ((a) task).d.await();
            } catch (InterruptedException e2) {
            }
        }
    }

    @Override // android.support.v4.content.Loader
    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        super.dump(prefix, fd, writer, args);
        if (this.a != null) {
            writer.print(prefix);
            writer.print("mTask=");
            writer.print(this.a);
            writer.print(" waiting=");
            writer.println(this.a.b);
        }
        if (this.b != null) {
            writer.print(prefix);
            writer.print("mCancellingTask=");
            writer.print(this.b);
            writer.print(" waiting=");
            writer.println(this.b.b);
        }
        if (this.c != 0) {
            writer.print(prefix);
            writer.print("mUpdateThrottle=");
            TimeUtils.formatDuration(this.c, writer);
            writer.print(" mLastLoadCompleteTime=");
            TimeUtils.formatDuration(this.d, SystemClock.uptimeMillis(), writer);
            writer.println();
        }
    }
}
