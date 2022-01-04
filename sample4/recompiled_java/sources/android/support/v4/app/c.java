package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.support.v4.util.DebugUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* access modifiers changed from: package-private */
/* compiled from: LoaderManager */
public final class c extends LoaderManager {
    static boolean a = false;
    final HCSparseArray<a> b = new HCSparseArray<>();
    final HCSparseArray<a> c = new HCSparseArray<>();
    FragmentActivity d;
    boolean e;
    boolean f;
    boolean g;

    /* access modifiers changed from: package-private */
    /* compiled from: LoaderManager */
    public final class a implements Loader.OnLoadCompleteListener<Object> {
        final int a;
        final Bundle b;
        LoaderManager.LoaderCallbacks<Object> c;
        Loader<Object> d;
        boolean e;
        boolean f;
        Object g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        a n;

        public a(int id, Bundle args, LoaderManager.LoaderCallbacks<Object> callbacks) {
            this.a = id;
            this.b = args;
            this.c = callbacks;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (this.i && this.j) {
                this.h = true;
            } else if (!this.h) {
                this.h = true;
                if (c.a) {
                    Log.v("LoaderManager", "  Starting: " + this);
                }
                if (this.d == null && this.c != null) {
                    this.d = this.c.onCreateLoader(this.a, this.b);
                }
                if (this.d == null) {
                    return;
                }
                if (!this.d.getClass().isMemberClass() || Modifier.isStatic(this.d.getClass().getModifiers())) {
                    if (!this.m) {
                        this.d.registerListener(this.a, this);
                        this.m = true;
                    }
                    this.d.startLoading();
                    return;
                }
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.d);
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (c.a) {
                Log.v("LoaderManager", "  Retaining: " + this);
            }
            this.i = true;
            this.j = this.h;
            this.h = false;
            this.c = null;
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            if (this.i) {
                if (c.a) {
                    Log.v("LoaderManager", "  Finished Retaining: " + this);
                }
                this.i = false;
                if (this.h != this.j && !this.h) {
                    e();
                }
            }
            if (this.h && this.e && !this.k) {
                a(this.d, this.g);
            }
        }

        /* access modifiers changed from: package-private */
        public final void d() {
            if (this.h && this.k) {
                this.k = false;
                if (this.e) {
                    a(this.d, this.g);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void e() {
            if (c.a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.h = false;
            if (!this.i && this.d != null && this.m) {
                this.m = false;
                this.d.unregisterListener(this);
                this.d.stopLoading();
            }
        }

        /* access modifiers changed from: package-private */
        public final void f() {
            while (true) {
                if (c.a) {
                    Log.v("LoaderManager", "  Destroying: " + this);
                }
                this.l = true;
                boolean needReset = this.f;
                this.f = false;
                if (this.c != null && this.d != null && this.e && needReset) {
                    if (c.a) {
                        Log.v("LoaderManager", "  Reseting: " + this);
                    }
                    String lastBecause = null;
                    if (c.this.d != null) {
                        lastBecause = c.this.d.b.s;
                        c.this.d.b.s = "onLoaderReset";
                    }
                    try {
                        this.c.onLoaderReset(this.d);
                    } finally {
                        if (c.this.d != null) {
                            c.this.d.b.s = lastBecause;
                        }
                    }
                }
                this.c = null;
                this.g = null;
                this.e = false;
                if (this.d != null) {
                    if (this.m) {
                        this.m = false;
                        this.d.unregisterListener(this);
                    }
                    this.d.reset();
                }
                if (this.n != null) {
                    this = this.n;
                } else {
                    return;
                }
            }
        }

        @Override // android.support.v4.content.Loader.OnLoadCompleteListener
        public final void onLoadComplete(Loader<Object> loader, Object data) {
            if (c.a) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (this.l) {
                if (c.a) {
                    Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
                }
            } else if (c.this.b.get(this.a) == this) {
                a pending = this.n;
                if (pending != null) {
                    if (c.a) {
                        Log.v("LoaderManager", "  Switching to pending loader: " + pending);
                    }
                    this.n = null;
                    c.this.b.put(this.a, null);
                    f();
                    c.this.a(pending);
                    return;
                }
                if (this.g != data || !this.e) {
                    this.g = data;
                    this.e = true;
                    if (this.h) {
                        a(loader, data);
                    }
                }
                a info = c.this.c.get(this.a);
                if (info != null && info != this) {
                    info.f = false;
                    info.f();
                    c.this.c.remove(this.a);
                }
            } else if (c.a) {
                Log.v("LoaderManager", "  Ignoring load complete -- not active");
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(Loader<Object> loader, Object data) {
            if (this.c != null) {
                String lastBecause = null;
                if (c.this.d != null) {
                    lastBecause = c.this.d.b.s;
                    c.this.d.b.s = "onLoadFinished";
                }
                try {
                    if (c.a) {
                        Log.v("LoaderManager", "  onLoadFinished in " + loader + ": " + loader.dataToString(data));
                    }
                    this.c.onLoadFinished(loader, data);
                    this.f = true;
                } finally {
                    if (c.this.d != null) {
                        c.this.d.b.s = lastBecause;
                    }
                }
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.a);
            sb.append(" : ");
            DebugUtils.buildShortClassTag(this.d, sb);
            sb.append("}}");
            return sb.toString();
        }

        public final void a(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
            while (true) {
                writer.print(prefix);
                writer.print("mId=");
                writer.print(this.a);
                writer.print(" mArgs=");
                writer.println(this.b);
                writer.print(prefix);
                writer.print("mCallbacks=");
                writer.println(this.c);
                writer.print(prefix);
                writer.print("mLoader=");
                writer.println(this.d);
                if (this.d != null) {
                    this.d.dump(prefix + "  ", fd, writer, args);
                }
                if (this.e || this.f) {
                    writer.print(prefix);
                    writer.print("mHaveData=");
                    writer.print(this.e);
                    writer.print("  mDeliveredData=");
                    writer.println(this.f);
                    writer.print(prefix);
                    writer.print("mData=");
                    writer.println(this.g);
                }
                writer.print(prefix);
                writer.print("mStarted=");
                writer.print(this.h);
                writer.print(" mReportNextStart=");
                writer.print(this.k);
                writer.print(" mDestroyed=");
                writer.println(this.l);
                writer.print(prefix);
                writer.print("mRetaining=");
                writer.print(this.i);
                writer.print(" mRetainingStarted=");
                writer.print(this.j);
                writer.print(" mListenerRegistered=");
                writer.println(this.m);
                if (this.n != null) {
                    writer.print(prefix);
                    writer.println("Pending Loader ");
                    writer.print(this.n);
                    writer.println(com.lenovo.lps.sus.c.c.N);
                    this = this.n;
                    prefix = prefix + "  ";
                } else {
                    return;
                }
            }
        }
    }

    c(FragmentActivity activity, boolean started) {
        this.d = activity;
        this.e = started;
    }

    /* access modifiers changed from: package-private */
    public final void a(FragmentActivity activity) {
        this.d = activity;
    }

    private a a(int id, Bundle args, LoaderManager.LoaderCallbacks<Object> callback) {
        a info = new a(id, args, callback);
        info.d = callback.onCreateLoader(id, args);
        return info;
    }

    /* JADX INFO: finally extract failed */
    private a b(int id, Bundle args, LoaderManager.LoaderCallbacks<Object> callback) {
        try {
            this.g = true;
            a info = a(id, args, callback);
            a(info);
            this.g = false;
            return info;
        } catch (Throwable th) {
            this.g = false;
            throw th;
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(a info) {
        this.b.put(info.a, info);
        if (this.e) {
            info.a();
        }
    }

    @Override // android.support.v4.app.LoaderManager
    public final <D> Loader<D> initLoader(int id, Bundle args, LoaderManager.LoaderCallbacks<D> callback) {
        if (this.g) {
            throw new IllegalStateException("Called while creating a loader");
        }
        a info = this.b.get(id);
        if (a) {
            Log.v("LoaderManager", "initLoader in " + this + ": args=" + args);
        }
        if (info == null) {
            info = b(id, args, callback);
            if (a) {
                Log.v("LoaderManager", "  Created new loader " + info);
            }
        } else {
            if (a) {
                Log.v("LoaderManager", "  Re-using existing loader " + info);
            }
            info.c = callback;
        }
        if (info.e && this.e) {
            info.a(info.d, info.g);
        }
        return (Loader<D>) info.d;
    }

    @Override // android.support.v4.app.LoaderManager
    public final <D> Loader<D> restartLoader(int id, Bundle args, LoaderManager.LoaderCallbacks<D> callback) {
        if (this.g) {
            throw new IllegalStateException("Called while creating a loader");
        }
        a info = this.b.get(id);
        if (a) {
            Log.v("LoaderManager", "restartLoader in " + this + ": args=" + args);
        }
        if (info != null) {
            a inactive = this.c.get(id);
            if (inactive == null) {
                if (a) {
                    Log.v("LoaderManager", "  Making last loader inactive: " + info);
                }
                info.d.abandon();
                this.c.put(id, info);
            } else if (info.e) {
                if (a) {
                    Log.v("LoaderManager", "  Removing last inactive loader: " + info);
                }
                inactive.f = false;
                inactive.f();
                info.d.abandon();
                this.c.put(id, info);
            } else if (!info.h) {
                if (a) {
                    Log.v("LoaderManager", "  Current loader is stopped; replacing");
                }
                this.b.put(id, null);
                info.f();
            } else {
                if (info.n != null) {
                    if (a) {
                        Log.v("LoaderManager", "  Removing pending loader: " + info.n);
                    }
                    info.n.f();
                    info.n = null;
                }
                if (a) {
                    Log.v("LoaderManager", "  Enqueuing as new pending loader");
                }
                info.n = a(id, args, callback);
                return (Loader<D>) info.n.d;
            }
        }
        return (Loader<D>) b(id, args, callback).d;
    }

    @Override // android.support.v4.app.LoaderManager
    public final void destroyLoader(int id) {
        if (this.g) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (a) {
            Log.v("LoaderManager", "destroyLoader in " + this + " of " + id);
        }
        int idx = this.b.indexOfKey(id);
        if (idx >= 0) {
            this.b.removeAt(idx);
            this.b.valueAt(idx).f();
        }
        int idx2 = this.c.indexOfKey(id);
        if (idx2 >= 0) {
            this.c.removeAt(idx2);
            this.c.valueAt(idx2).f();
        }
    }

    @Override // android.support.v4.app.LoaderManager
    public final <D> Loader<D> getLoader(int id) {
        if (this.g) {
            throw new IllegalStateException("Called while creating a loader");
        }
        a loaderInfo = this.b.get(id);
        if (loaderInfo != null) {
            return loaderInfo.n != null ? (Loader<D>) loaderInfo.n.d : (Loader<D>) loaderInfo.d;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (a) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (this.e) {
            RuntimeException e2 = new RuntimeException("here");
            e2.fillInStackTrace();
            Log.w("LoaderManager", "Called doStart when already started: " + this, e2);
            return;
        }
        this.e = true;
        for (int i = this.b.size() - 1; i >= 0; i--) {
            this.b.valueAt(i).a();
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        if (a) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (!this.e) {
            RuntimeException e2 = new RuntimeException("here");
            e2.fillInStackTrace();
            Log.w("LoaderManager", "Called doStop when not started: " + this, e2);
            return;
        }
        for (int i = this.b.size() - 1; i >= 0; i--) {
            this.b.valueAt(i).e();
        }
        this.e = false;
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        if (a) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (!this.e) {
            RuntimeException e2 = new RuntimeException("here");
            e2.fillInStackTrace();
            Log.w("LoaderManager", "Called doRetain when not started: " + this, e2);
            return;
        }
        this.f = true;
        this.e = false;
        for (int i = this.b.size() - 1; i >= 0; i--) {
            this.b.valueAt(i).b();
        }
    }

    /* access modifiers changed from: package-private */
    public final void d() {
        if (this.f) {
            if (a) {
                Log.v("LoaderManager", "Finished Retaining in " + this);
            }
            this.f = false;
            for (int i = this.b.size() - 1; i >= 0; i--) {
                this.b.valueAt(i).c();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void e() {
        for (int i = this.b.size() - 1; i >= 0; i--) {
            this.b.valueAt(i).k = true;
        }
    }

    /* access modifiers changed from: package-private */
    public final void f() {
        for (int i = this.b.size() - 1; i >= 0; i--) {
            this.b.valueAt(i).d();
        }
    }

    /* access modifiers changed from: package-private */
    public final void g() {
        if (!this.f) {
            if (a) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            for (int i = this.b.size() - 1; i >= 0; i--) {
                this.b.valueAt(i).f();
            }
        }
        if (a) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        for (int i2 = this.c.size() - 1; i2 >= 0; i2--) {
            this.c.valueAt(i2).f();
        }
        this.c.clear();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.d, sb);
        sb.append("}}");
        return sb.toString();
    }

    @Override // android.support.v4.app.LoaderManager
    public final void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        if (this.b.size() > 0) {
            writer.print(prefix);
            writer.println("Active Loaders:");
            String innerPrefix = prefix + "    ";
            for (int i = 0; i < this.b.size(); i++) {
                a li = this.b.valueAt(i);
                writer.print(prefix);
                writer.print("  #");
                writer.print(this.b.keyAt(i));
                writer.print(": ");
                writer.println(li.toString());
                li.a(innerPrefix, fd, writer, args);
            }
        }
        if (this.c.size() > 0) {
            writer.print(prefix);
            writer.println("Inactive Loaders:");
            String innerPrefix2 = prefix + "    ";
            for (int i2 = 0; i2 < this.c.size(); i2++) {
                a li2 = this.c.valueAt(i2);
                writer.print(prefix);
                writer.print("  #");
                writer.print(this.c.keyAt(i2));
                writer.print(": ");
                writer.println(li2.toString());
                li2.a(innerPrefix2, fd, writer, args);
            }
        }
    }
}
