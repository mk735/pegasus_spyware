package tms;

import android.os.Binder;
import com.tencent.tmsecure.module.networkload.INetworkLoadTaskDao;
import com.tencent.tmsecure.module.networkload.NetworkLoadTask;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* access modifiers changed from: package-private */
public abstract class df<T extends NetworkLoadTask> extends Binder {
    private List<T> a;
    private List<T> b;
    private List<T> c;
    private List<T> d;
    private List<T> e;
    private byte f = 3;
    private List<WeakReference<NetworkLoadTaskListener<T>>> g = new ArrayList(this.f);
    private INetworkLoadTaskDao<T> h;
    private byte[] i = new byte[0];

    df() {
    }

    private void a() {
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.e = new ArrayList();
        this.d = new ArrayList();
        List<T> all = this.h.getAll();
        if (!(all == null || all.size() == 0)) {
            for (T t : all) {
                switch (t.mState) {
                    case 1:
                        if (!this.c.contains(t)) {
                            this.c.add(t);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (!this.d.contains(t)) {
                            this.d.add(t);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (!this.e.contains(t)) {
                            this.e.add(t);
                            break;
                        } else {
                            break;
                        }
                    default:
                        t.mState = 1;
                        if (!this.c.contains(t)) {
                            this.c.add(t);
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
    }

    private synchronized void b() {
        int i2 = 0;
        while (i2 < this.a.size()) {
            T t = this.a.get(i2);
            if (t.mState == 3) {
                if (!this.e.contains(t)) {
                    this.e.add(t);
                }
                this.a.remove(i2);
            } else if (!t.isOnChangeRetry) {
                if (t.mState == 2) {
                    if (!this.d.contains(t)) {
                        this.d.add(t);
                    }
                    this.a.remove(i2);
                } else {
                    i2++;
                }
            } else if (t.mState != 0) {
                i2++;
            } else if (!t.mThread.isAlive()) {
                try {
                    t.mThread.start();
                } catch (IllegalThreadStateException e2) {
                }
            } else {
                i2++;
            }
        }
        while (this.a.size() < this.f && this.b.size() > 0) {
            T t2 = this.b.get(0);
            this.b.remove(0);
            if (!this.a.contains(t2)) {
                this.a.add(t2);
                if (t2.mThread != null) {
                    t2.mThread.start();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(T t) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(t);
        a(arrayList);
    }

    /* access modifiers changed from: package-private */
    public void a(List<T> list) {
        boolean z = list.size() > 1;
        if (this.g != null && this.g.size() != 0) {
            ArrayList<WeakReference> arrayList = new ArrayList(this.g);
            switch (list.get(0).mState) {
                case -1:
                    for (WeakReference weakReference : arrayList) {
                        NetworkLoadTaskListener networkLoadTaskListener = (NetworkLoadTaskListener) weakReference.get();
                        if (networkLoadTaskListener != null) {
                            if (z) {
                                networkLoadTaskListener.onWaiting(list);
                            } else {
                                networkLoadTaskListener.onWaiting(list.get(0));
                            }
                        }
                    }
                    return;
                case 0:
                    this.h.update(list.get(0));
                    for (WeakReference weakReference2 : arrayList) {
                        NetworkLoadTaskListener networkLoadTaskListener2 = (NetworkLoadTaskListener) weakReference2.get();
                        if (networkLoadTaskListener2 != null) {
                            networkLoadTaskListener2.onRunning(list.get(0));
                        }
                    }
                    return;
                case 1:
                    if (z) {
                        this.h.update(list, 1);
                    } else {
                        this.h.update(list.get(0));
                    }
                    for (WeakReference weakReference3 : arrayList) {
                        NetworkLoadTaskListener networkLoadTaskListener3 = (NetworkLoadTaskListener) weakReference3.get();
                        if (networkLoadTaskListener3 != null) {
                            if (z) {
                                networkLoadTaskListener3.onPaused(list);
                            } else {
                                networkLoadTaskListener3.onPaused(list.get(0));
                            }
                        }
                    }
                    return;
                case 2:
                    this.h.update(list.get(0));
                    for (WeakReference weakReference4 : arrayList) {
                        NetworkLoadTaskListener networkLoadTaskListener4 = (NetworkLoadTaskListener) weakReference4.get();
                        if (networkLoadTaskListener4 != null) {
                            networkLoadTaskListener4.onFailed(list.get(0));
                        }
                    }
                    b();
                    return;
                case 3:
                    this.h.update(list.get(0));
                    doFinish(list.get(0));
                    for (WeakReference weakReference5 : arrayList) {
                        NetworkLoadTaskListener networkLoadTaskListener5 = (NetworkLoadTaskListener) weakReference5.get();
                        if (networkLoadTaskListener5 != null) {
                            networkLoadTaskListener5.onFinished(list.get(0));
                        }
                    }
                    b();
                    return;
                case 4:
                    for (WeakReference weakReference6 : arrayList) {
                        NetworkLoadTaskListener networkLoadTaskListener6 = (NetworkLoadTaskListener) weakReference6.get();
                        if (networkLoadTaskListener6 != null) {
                            if (z) {
                                networkLoadTaskListener6.onDeleted(list);
                            } else {
                                networkLoadTaskListener6.onDeleted(list.get(0));
                            }
                        }
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void b(T t) {
        this.h.update(t);
        if (!(this.g == null || this.g.size() == 0)) {
            for (WeakReference weakReference : new ArrayList(this.g)) {
                NetworkLoadTaskListener networkLoadTaskListener = (NetworkLoadTaskListener) weakReference.get();
                if (networkLoadTaskListener != null) {
                    networkLoadTaskListener.onProgressChanged(t);
                }
            }
        }
    }

    public final void clearData() {
        if (this.b != null) {
            this.b.clear();
        }
        if (this.a != null) {
            this.a.clear();
        }
        if (this.c != null) {
            this.c.clear();
        }
        if (this.e != null) {
            this.e.clear();
        }
        if (this.d != null) {
            this.d.clear();
        }
    }

    public final void continueTask(T t) {
        synchronized (this.i) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(t);
            continueTask(arrayList);
        }
    }

    public final void continueTask(List<T> list) {
        synchronized (this.i) {
            if (list != null) {
                if (list.size() != 0) {
                    for (T t : list) {
                        doBeforeContinue(t);
                        if (!this.c.remove(t)) {
                            this.d.remove(t);
                        }
                        if (this.b.contains(t)) {
                            t.mState = -1;
                        } else if (this.a.contains(t)) {
                            t.mState = 0;
                        } else {
                            this.b.add(t);
                            t.mState = -1;
                        }
                    }
                    b();
                    ArrayList arrayList = new ArrayList();
                    for (T t2 : list) {
                        if (t2.mState == -1 && !this.a.contains(t2)) {
                            arrayList.add(t2);
                        }
                    }
                    if (arrayList.size() > 0) {
                        a(arrayList);
                    }
                }
            }
        }
    }

    public final void deleteTask(T t, boolean z) {
        synchronized (this.i) {
            this.h.delete(t);
            if (!this.b.remove(t) && !this.a.remove(t) && !this.c.remove(t) && !this.e.remove(t)) {
                this.d.remove(t);
            }
            t.mState = 4;
            t.mProgress = 0.0f;
            t.mCurrentSize = 0;
            a(t);
            b();
            if (z) {
                doDeleteFile(t);
            }
        }
    }

    public final void deleteTask(List<T> list, boolean z) {
        synchronized (this.i) {
            this.h.delete(list);
            for (T t : list) {
                if (!this.a.remove(t) && !this.b.remove(t) && !this.c.remove(t) && !this.e.remove(t)) {
                    this.d.remove(t);
                }
                t.mProgress = 0.0f;
                t.mCurrentSize = 0;
                t.mState = 4;
            }
            a(list);
            b();
            if (z) {
                doDeleteFile(list);
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract void doBeforeContinue(T t);

    /* access modifiers changed from: protected */
    public abstract void doBeforeStart(T t);

    /* access modifiers changed from: protected */
    public void doDeleteFile(T t) {
    }

    /* access modifiers changed from: protected */
    public void doDeleteFile(List<T> list) {
    }

    /* access modifiers changed from: protected */
    public void doFinish(T t) {
    }

    /* access modifiers changed from: protected */
    public abstract void doPause(T t);

    public List<T> getAllTasks() {
        ArrayList arrayList = new ArrayList(this.a);
        arrayList.addAll(this.b);
        arrayList.addAll(this.c);
        arrayList.addAll(this.e);
        arrayList.addAll(this.d);
        return arrayList;
    }

    public List<T> getFailedTasks() {
        return this.d;
    }

    public List<T> getFinishedTasks() {
        return this.e;
    }

    public List<T> getPausedTasks() {
        return this.c;
    }

    public List<T> getRunningTasks() {
        return this.a;
    }

    public List<T> getWaitingTasks() {
        return this.b;
    }

    public final void pauseTask(T t) {
        synchronized (this.i) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(t);
            pauseTask(arrayList);
        }
    }

    public final void pauseTask(List<T> list) {
        synchronized (this.i) {
            if (list != null) {
                if (list.size() != 0) {
                    for (T t : list) {
                        doPause(t);
                        if (!this.a.remove(t)) {
                            this.b.remove(t);
                            t.isWaitingToPaused = true;
                        } else {
                            t.isWaitingToPaused = false;
                        }
                        if (!this.c.contains(t)) {
                            this.c.add(t);
                        }
                        t.mState = 1;
                    }
                    a(list);
                    b();
                }
            }
        }
    }

    public void registListener(NetworkLoadTaskListener<T> networkLoadTaskListener) {
        this.g.add(0, new WeakReference<>(networkLoadTaskListener));
    }

    public void setNetworkLoadTaskDao(INetworkLoadTaskDao<T> iNetworkLoadTaskDao) {
        this.h = iNetworkLoadTaskDao;
        a();
    }

    public synchronized void setRunningTaskCountLimit(byte b2) {
        this.f = b2;
    }

    public final void startTask(T t) {
        synchronized (this.i) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(t);
            startTask(arrayList);
        }
    }

    public final void startTask(List<T> list) {
        synchronized (this.i) {
            if (list != null) {
                if (list.size() != 0) {
                    this.h.delete(list);
                    for (T t : list) {
                        doBeforeStart(t);
                        if (!this.c.remove(t)) {
                            this.d.remove(t);
                        }
                        if (!this.b.contains(t) && !this.a.contains(t)) {
                            this.b.add(t);
                            t.mState = -1;
                        }
                    }
                    b();
                    ArrayList arrayList = new ArrayList();
                    for (T t2 : list) {
                        if (t2.mState == -1 && !this.a.contains(t2)) {
                            arrayList.add(t2);
                        }
                    }
                    if (arrayList.size() > 0) {
                        a(arrayList);
                    }
                    this.h.insert(list);
                }
            }
        }
    }

    public void unregistListener(NetworkLoadTaskListener<T> networkLoadTaskListener) {
        if (networkLoadTaskListener != null) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                WeakReference<NetworkLoadTaskListener<T>> weakReference = this.g.get(i2);
                if (weakReference.get() == networkLoadTaskListener) {
                    this.g.remove(weakReference);
                    return;
                }
            }
        }
    }
}
