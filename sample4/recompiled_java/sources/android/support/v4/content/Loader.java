package android.support.v4.content;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.support.v4.util.DebugUtils;
import com.lenovo.lps.sus.c.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class Loader<D> {
    int m;
    OnLoadCompleteListener<D> n;
    Context o;
    boolean p = false;
    boolean q = false;
    boolean r = true;
    boolean s = false;

    public interface OnLoadCompleteListener<D> {
        void onLoadComplete(Loader<D> loader, D d);
    }

    public final class ForceLoadContentObserver extends ContentObserver {
        public ForceLoadContentObserver() {
            super(new Handler());
        }

        public final boolean deliverSelfNotifications() {
            return true;
        }

        public final void onChange(boolean selfChange) {
            Loader.this.onContentChanged();
        }
    }

    public Loader(Context context) {
        this.o = context.getApplicationContext();
    }

    public void deliverResult(D data) {
        if (this.n != null) {
            this.n.onLoadComplete(this, data);
        }
    }

    public Context getContext() {
        return this.o;
    }

    public int getId() {
        return this.m;
    }

    public void registerListener(int id, OnLoadCompleteListener<D> listener) {
        if (this.n != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.n = listener;
        this.m = id;
    }

    public void unregisterListener(OnLoadCompleteListener<D> listener) {
        if (this.n == null) {
            throw new IllegalStateException("No listener register");
        } else if (this.n != listener) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else {
            this.n = null;
        }
    }

    public boolean isStarted() {
        return this.p;
    }

    public boolean isAbandoned() {
        return this.q;
    }

    public boolean isReset() {
        return this.r;
    }

    public final void startLoading() {
        this.p = true;
        this.r = false;
        this.q = false;
        onStartLoading();
    }

    /* access modifiers changed from: protected */
    public void onStartLoading() {
    }

    public void forceLoad() {
        onForceLoad();
    }

    /* access modifiers changed from: protected */
    public void onForceLoad() {
    }

    public void stopLoading() {
        this.p = false;
        onStopLoading();
    }

    /* access modifiers changed from: protected */
    public void onStopLoading() {
    }

    public void abandon() {
        this.q = true;
        onAbandon();
    }

    /* access modifiers changed from: protected */
    public void onAbandon() {
    }

    public void reset() {
        onReset();
        this.r = true;
        this.p = false;
        this.q = false;
        this.s = false;
    }

    /* access modifiers changed from: protected */
    public void onReset() {
    }

    public boolean takeContentChanged() {
        boolean res = this.s;
        this.s = false;
        return res;
    }

    public void onContentChanged() {
        if (this.p) {
            forceLoad();
        } else {
            this.s = true;
        }
    }

    public String dataToString(D data) {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(data, sb);
        sb.append(c.Q);
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(this, sb);
        sb.append(" id=");
        sb.append(this.m);
        sb.append(c.Q);
        return sb.toString();
    }

    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        writer.print(prefix);
        writer.print("mId=");
        writer.print(this.m);
        writer.print(" mListener=");
        writer.println(this.n);
        writer.print(prefix);
        writer.print("mStarted=");
        writer.print(this.p);
        writer.print(" mContentChanged=");
        writer.print(this.s);
        writer.print(" mAbandoned=");
        writer.print(this.q);
        writer.print(" mReset=");
        writer.println(this.r);
    }
}
