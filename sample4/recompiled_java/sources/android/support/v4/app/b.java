package android.support.v4.app;

import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import com.lenovo.lps.sus.c.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

/* access modifiers changed from: package-private */
/* compiled from: FragmentManager */
public final class b extends FragmentManager {
    static boolean a = false;
    static final boolean b;
    static final Interpolator w = new DecelerateInterpolator(2.5f);
    static final Interpolator x = new DecelerateInterpolator(1.5f);
    static final Interpolator y = new AccelerateInterpolator(2.5f);
    static final Interpolator z = new AccelerateInterpolator(1.5f);
    ArrayList<Runnable> c;
    Runnable[] d;
    boolean e;
    ArrayList<Fragment> f;
    ArrayList<Fragment> g;
    ArrayList<Integer> h;
    ArrayList<a> i;
    ArrayList<Fragment> j;
    ArrayList<a> k;
    ArrayList<Integer> l;
    ArrayList<FragmentManager.OnBackStackChangedListener> m;
    int n = 0;
    FragmentActivity o;
    boolean p;
    boolean q;
    boolean r;
    String s;
    Bundle t = null;
    SparseArray<Parcelable> u = null;
    Runnable v = new Runnable() {
        /* class android.support.v4.app.b.AnonymousClass1 */

        public final void run() {
            b.this.a();
        }
    };

    b() {
    }

    static {
        boolean z2 = false;
        if (Build.VERSION.SDK_INT >= 11) {
            z2 = true;
        }
        b = z2;
    }

    @Override // android.support.v4.app.FragmentManager
    public final FragmentTransaction beginTransaction() {
        return new a(this);
    }

    @Override // android.support.v4.app.FragmentManager
    public final boolean executePendingTransactions() {
        return a();
    }

    @Override // android.support.v4.app.FragmentManager
    public final void popBackStack() {
        a((Runnable) new Runnable() {
            /* class android.support.v4.app.b.AnonymousClass2 */

            public final void run() {
                b bVar = b.this;
                Handler handler = b.this.o.a;
                bVar.a((String) null, -1, 0);
            }
        }, false);
    }

    @Override // android.support.v4.app.FragmentManager
    public final boolean popBackStackImmediate() {
        m();
        executePendingTransactions();
        Handler handler = this.o.a;
        return a((String) null, -1, 0);
    }

    @Override // android.support.v4.app.FragmentManager
    public final void popBackStack(final String name, final int flags) {
        a((Runnable) new Runnable() {
            /* class android.support.v4.app.b.AnonymousClass3 */

            public final void run() {
                b bVar = b.this;
                Handler handler = b.this.o.a;
                bVar.a(name, -1, flags);
            }
        }, false);
    }

    @Override // android.support.v4.app.FragmentManager
    public final boolean popBackStackImmediate(String name, int flags) {
        m();
        executePendingTransactions();
        Handler handler = this.o.a;
        return a(name, -1, flags);
    }

    @Override // android.support.v4.app.FragmentManager
    public final void popBackStack(final int id, final int flags) {
        if (id < 0) {
            throw new IllegalArgumentException("Bad id: " + id);
        }
        a((Runnable) new Runnable() {
            /* class android.support.v4.app.b.AnonymousClass4 */

            public final void run() {
                b bVar = b.this;
                Handler handler = b.this.o.a;
                bVar.a((String) null, id, flags);
            }
        }, false);
    }

    @Override // android.support.v4.app.FragmentManager
    public final boolean popBackStackImmediate(int id, int flags) {
        m();
        executePendingTransactions();
        if (id < 0) {
            throw new IllegalArgumentException("Bad id: " + id);
        }
        Handler handler = this.o.a;
        return a((String) null, id, flags);
    }

    @Override // android.support.v4.app.FragmentManager
    public final int getBackStackEntryCount() {
        if (this.i != null) {
            return this.i.size();
        }
        return 0;
    }

    @Override // android.support.v4.app.FragmentManager
    public final FragmentManager.BackStackEntry getBackStackEntryAt(int index) {
        return this.i.get(index);
    }

    @Override // android.support.v4.app.FragmentManager
    public final void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener listener) {
        if (this.m == null) {
            this.m = new ArrayList<>();
        }
        this.m.add(listener);
    }

    @Override // android.support.v4.app.FragmentManager
    public final void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener listener) {
        if (this.m != null) {
            this.m.remove(listener);
        }
    }

    @Override // android.support.v4.app.FragmentManager
    public final void putFragment(Bundle bundle, String key, Fragment fragment) {
        if (fragment.n < 0) {
            throw new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager");
        }
        bundle.putInt(key, fragment.n);
    }

    @Override // android.support.v4.app.FragmentManager
    public final Fragment getFragment(Bundle bundle, String key) {
        int index = bundle.getInt(key, -1);
        if (index == -1) {
            return null;
        }
        if (index >= this.f.size()) {
            throw new IllegalStateException("Fragement no longer exists for key " + key + ": index " + index);
        }
        Fragment f2 = this.f.get(index);
        if (f2 != null) {
            return f2;
        }
        throw new IllegalStateException("Fragement no longer exists for key " + key + ": index " + index);
    }

    @Override // android.support.v4.app.FragmentManager
    public final Fragment.SavedState saveFragmentInstanceState(Fragment fragment) {
        Bundle result;
        if (fragment.n < 0) {
            throw new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager");
        } else if (fragment.i <= 0 || (result = c(fragment)) == null) {
            return null;
        } else {
            return new Fragment.SavedState(result);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.o, sb);
        sb.append("}}");
        return sb.toString();
    }

    @Override // android.support.v4.app.FragmentManager
    public final void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        int N;
        int N2;
        int N3;
        int N4;
        int N5;
        int N6;
        String innerPrefix = prefix + "    ";
        if (this.f != null && (N6 = this.f.size()) > 0) {
            writer.print(prefix);
            writer.print("Active Fragments in ");
            writer.print(Integer.toHexString(System.identityHashCode(this)));
            writer.println(c.N);
            for (int i2 = 0; i2 < N6; i2++) {
                Fragment f2 = this.f.get(i2);
                writer.print(prefix);
                writer.print("  #");
                writer.print(i2);
                writer.print(": ");
                writer.println(f2);
                if (f2 != null) {
                    f2.dump(innerPrefix, fd, writer, args);
                }
            }
        }
        if (this.g != null && (N5 = this.g.size()) > 0) {
            writer.print(prefix);
            writer.println("Added Fragments:");
            for (int i3 = 0; i3 < N5; i3++) {
                writer.print(prefix);
                writer.print("  #");
                writer.print(i3);
                writer.print(": ");
                writer.println(this.g.get(i3).toString());
            }
        }
        if (this.j != null && (N4 = this.j.size()) > 0) {
            writer.print(prefix);
            writer.println("Fragments Created Menus:");
            for (int i4 = 0; i4 < N4; i4++) {
                writer.print(prefix);
                writer.print("  #");
                writer.print(i4);
                writer.print(": ");
                writer.println(this.j.get(i4).toString());
            }
        }
        if (this.i != null && (N3 = this.i.size()) > 0) {
            writer.print(prefix);
            writer.println("Back Stack:");
            for (int i5 = 0; i5 < N3; i5++) {
                a bs = this.i.get(i5);
                writer.print(prefix);
                writer.print("  #");
                writer.print(i5);
                writer.print(": ");
                writer.println(bs.toString());
                bs.a(innerPrefix, writer);
            }
        }
        synchronized (this) {
            if (this.k != null && (N2 = this.k.size()) > 0) {
                writer.print(prefix);
                writer.println("Back Stack Indices:");
                for (int i6 = 0; i6 < N2; i6++) {
                    writer.print(prefix);
                    writer.print("  #");
                    writer.print(i6);
                    writer.print(": ");
                    writer.println(this.k.get(i6));
                }
            }
            if (this.l != null && this.l.size() > 0) {
                writer.print(prefix);
                writer.print("mAvailBackStackIndices: ");
                writer.println(Arrays.toString(this.l.toArray()));
            }
        }
        if (this.c != null && (N = this.c.size()) > 0) {
            writer.print(prefix);
            writer.println("Pending Actions:");
            for (int i7 = 0; i7 < N; i7++) {
                writer.print(prefix);
                writer.print("  #");
                writer.print(i7);
                writer.print(": ");
                writer.println(this.c.get(i7));
            }
        }
        writer.print(prefix);
        writer.println("FragmentManager misc state:");
        writer.print(prefix);
        writer.print("  mCurState=");
        writer.print(this.n);
        writer.print(" mStateSaved=");
        writer.print(this.q);
        writer.print(" mDestroyed=");
        writer.println(this.r);
        if (this.p) {
            writer.print(prefix);
            writer.print("  mNeedMenuInvalidate=");
            writer.println(this.p);
        }
        if (this.s != null) {
            writer.print(prefix);
            writer.print("  mNoTransactionsBecause=");
            writer.println(this.s);
        }
        if (this.h != null && this.h.size() > 0) {
            writer.print(prefix);
            writer.print("  mAvailIndices: ");
            writer.println(Arrays.toString(this.h.toArray()));
        }
    }

    private static Animation a(float startScale, float endScale, float startAlpha, float endAlpha) {
        AnimationSet set = new AnimationSet(false);
        ScaleAnimation scale = new ScaleAnimation(startScale, endScale, startScale, endScale, 1, 0.5f, 1, 0.5f);
        scale.setInterpolator(w);
        scale.setDuration(220);
        set.addAnimation(scale);
        AlphaAnimation alpha = new AlphaAnimation(startAlpha, endAlpha);
        alpha.setInterpolator(x);
        alpha.setDuration(220);
        set.addAnimation(alpha);
        return set;
    }

    private static Animation a(float start, float end) {
        AlphaAnimation anim = new AlphaAnimation(start, end);
        anim.setInterpolator(x);
        anim.setDuration(220);
        return anim;
    }

    private Animation a(Fragment fragment, int transit, boolean enter, int transitionStyle) {
        int styleIndex;
        Animation anim;
        Animation animObj = fragment.onCreateAnimation(transit, enter, fragment.M);
        if (animObj != null) {
            return animObj;
        }
        if (fragment.M != 0 && (anim = AnimationUtils.loadAnimation(this.o, fragment.M)) != null) {
            return anim;
        }
        if (transit == 0) {
            return null;
        }
        switch (transit) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN:
                styleIndex = enter ? 1 : 2;
                break;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE:
                styleIndex = enter ? 5 : 6;
                break;
            case FragmentTransaction.TRANSIT_FRAGMENT_CLOSE:
                styleIndex = enter ? 3 : 4;
                break;
            default:
                styleIndex = -1;
                break;
        }
        if (styleIndex < 0) {
            return null;
        }
        switch (styleIndex) {
            case 1:
                FragmentActivity fragmentActivity = this.o;
                return a(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                FragmentActivity fragmentActivity2 = this.o;
                return a(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                FragmentActivity fragmentActivity3 = this.o;
                return a(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                FragmentActivity fragmentActivity4 = this.o;
                return a(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                FragmentActivity fragmentActivity5 = this.o;
                return a(0.0f, 1.0f);
            case 6:
                FragmentActivity fragmentActivity6 = this.o;
                return a(1.0f, 0.0f);
            default:
                if (transitionStyle == 0 && this.o.getWindow() != null) {
                    transitionStyle = this.o.getWindow().getAttributes().windowAnimations;
                }
                return transitionStyle == 0 ? null : null;
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x029d  */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x0304  */
    /* JADX WARNING: Removed duplicated region for block: B:138:0x034c  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x011c  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x01ff  */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x0247  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(final android.support.v4.app.Fragment r8, int r9, int r10, int r11) {
        /*
        // Method dump skipped, instructions count: 1228
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.b.a(android.support.v4.app.Fragment, int, int, int):void");
    }

    /* access modifiers changed from: package-private */
    public final void a(Fragment f2) {
        a(f2, this.n, 0, 0);
    }

    private void c(int newState) {
        a(newState, 0, 0, false);
    }

    /* access modifiers changed from: package-private */
    public final void a(int newState, int transit, int transitStyle, boolean always) {
        if (this.o == null && newState != 0) {
            throw new IllegalStateException("No activity");
        } else if (always || this.n != newState) {
            this.n = newState;
            if (this.f != null) {
                for (int i2 = 0; i2 < this.f.size(); i2++) {
                    Fragment f2 = this.f.get(i2);
                    if (f2 != null) {
                        a(f2, newState, transit, transitStyle);
                    }
                }
                if (this.p && this.o != null) {
                    this.o.a();
                    this.p = false;
                }
            }
        }
    }

    public final void a(Fragment fragment, boolean moveToStateNow) {
        if (this.g == null) {
            this.g = new ArrayList<>();
        }
        if (a) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        if (fragment.n < 0) {
            if (this.h == null || this.h.size() <= 0) {
                if (this.f == null) {
                    this.f = new ArrayList<>();
                }
                fragment.a(this.f.size());
                this.f.add(fragment);
            } else {
                fragment.a(this.h.remove(this.h.size() - 1).intValue());
                this.f.set(fragment.n, fragment);
            }
        }
        if (!fragment.H) {
            this.g.add(fragment);
            fragment.t = true;
            fragment.u = false;
            if (fragment.K) {
                this.p = true;
            }
            if (moveToStateNow) {
                a(fragment);
            }
        }
    }

    public final void a(Fragment fragment, int transition, int transitionStyle) {
        boolean inactive;
        int i2 = 0;
        if (a) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.z);
        }
        if (!fragment.b()) {
            inactive = true;
        } else {
            inactive = false;
        }
        if (!fragment.H || inactive) {
            this.g.remove(fragment);
            if (fragment.K) {
                this.p = true;
            }
            fragment.t = false;
            fragment.u = true;
            if (!inactive) {
                i2 = 1;
            }
            a(fragment, i2, transition, transitionStyle);
        }
    }

    public final void b(Fragment fragment, int transition, int transitionStyle) {
        if (a) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.G) {
            fragment.G = true;
            if (fragment.O != null) {
                Animation anim = a(fragment, transition, true, transitionStyle);
                if (anim != null) {
                    fragment.O.startAnimation(anim);
                }
                fragment.O.setVisibility(8);
            }
            if (fragment.t && fragment.K) {
                this.p = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    public final void c(Fragment fragment, int transition, int transitionStyle) {
        if (a) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.G) {
            fragment.G = false;
            if (fragment.O != null) {
                Animation anim = a(fragment, transition, true, transitionStyle);
                if (anim != null) {
                    fragment.O.startAnimation(anim);
                }
                fragment.O.setVisibility(0);
            }
            if (fragment.t && fragment.K) {
                this.p = true;
            }
            fragment.onHiddenChanged(false);
        }
    }

    public final void d(Fragment fragment, int transition, int transitionStyle) {
        if (a) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.H) {
            fragment.H = true;
            if (fragment.t) {
                this.g.remove(fragment);
                if (fragment.K) {
                    this.p = true;
                }
                fragment.t = false;
                a(fragment, 1, transition, transitionStyle);
            }
        }
    }

    public final void e(Fragment fragment, int transition, int transitionStyle) {
        if (a) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.H) {
            fragment.H = false;
            if (!fragment.t) {
                this.g.add(fragment);
                fragment.t = true;
                if (fragment.K) {
                    this.p = true;
                }
                a(fragment, this.n, transition, transitionStyle);
            }
        }
    }

    @Override // android.support.v4.app.FragmentManager
    public final Fragment findFragmentById(int id) {
        if (this.f != null) {
            for (int i2 = this.g.size() - 1; i2 >= 0; i2--) {
                Fragment f2 = this.g.get(i2);
                if (f2 != null && f2.D == id) {
                    return f2;
                }
            }
            for (int i3 = this.f.size() - 1; i3 >= 0; i3--) {
                Fragment f3 = this.f.get(i3);
                if (f3 != null && f3.D == id) {
                    return f3;
                }
            }
        }
        return null;
    }

    @Override // android.support.v4.app.FragmentManager
    public final Fragment findFragmentByTag(String tag) {
        if (!(this.f == null || tag == null)) {
            for (int i2 = this.g.size() - 1; i2 >= 0; i2--) {
                Fragment f2 = this.g.get(i2);
                if (f2 != null && tag.equals(f2.F)) {
                    return f2;
                }
            }
            for (int i3 = this.f.size() - 1; i3 >= 0; i3--) {
                Fragment f3 = this.f.get(i3);
                if (f3 != null && tag.equals(f3.F)) {
                    return f3;
                }
            }
        }
        return null;
    }

    private void m() {
        if (this.q) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.s != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.s);
        }
    }

    public final void a(Runnable action, boolean allowStateLoss) {
        if (!allowStateLoss) {
            m();
        }
        synchronized (this) {
            if (this.o == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.c == null) {
                this.c = new ArrayList<>();
            }
            this.c.add(action);
            if (this.c.size() == 1) {
                this.o.a.removeCallbacks(this.v);
                this.o.a.post(this.v);
            }
        }
    }

    public final int a(a bse) {
        synchronized (this) {
            if (this.l == null || this.l.size() <= 0) {
                if (this.k == null) {
                    this.k = new ArrayList<>();
                }
                int index = this.k.size();
                if (a) {
                    Log.v("FragmentManager", "Setting back stack index " + index + " to " + bse);
                }
                this.k.add(bse);
                return index;
            }
            int index2 = this.l.remove(this.l.size() - 1).intValue();
            if (a) {
                Log.v("FragmentManager", "Adding back stack index " + index2 + " with " + bse);
            }
            this.k.set(index2, bse);
            return index2;
        }
    }

    private void a(int index, a bse) {
        synchronized (this) {
            if (this.k == null) {
                this.k = new ArrayList<>();
            }
            int N = this.k.size();
            if (index < N) {
                if (a) {
                    Log.v("FragmentManager", "Setting back stack index " + index + " to " + bse);
                }
                this.k.set(index, bse);
            } else {
                while (N < index) {
                    this.k.add(null);
                    if (this.l == null) {
                        this.l = new ArrayList<>();
                    }
                    if (a) {
                        Log.v("FragmentManager", "Adding available back stack index " + N);
                    }
                    this.l.add(Integer.valueOf(N));
                    N++;
                }
                if (a) {
                    Log.v("FragmentManager", "Adding back stack index " + index + " with " + bse);
                }
                this.k.add(bse);
            }
        }
    }

    public final void a(int index) {
        synchronized (this) {
            this.k.set(index, null);
            if (this.l == null) {
                this.l = new ArrayList<>();
            }
            if (a) {
                Log.v("FragmentManager", "Freeing back stack index " + index);
            }
            this.l.add(Integer.valueOf(index));
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x005b, code lost:
        r5.e = true;
        r1 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x005f, code lost:
        if (r1 >= r2) goto L_0x006e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0061, code lost:
        r5.d[r1].run();
        r1 = r1 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a() {
        /*
        // Method dump skipped, instructions count: 115
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.b.a():boolean");
    }

    private void n() {
        if (this.m != null) {
            for (int i2 = 0; i2 < this.m.size(); i2++) {
                this.m.get(i2).onBackStackChanged();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(a state) {
        if (this.i == null) {
            this.i = new ArrayList<>();
        }
        this.i.add(state);
        n();
    }

    /* access modifiers changed from: package-private */
    public final boolean a(String name, int id, int flags) {
        if (this.i == null) {
            return false;
        }
        if (name == null && id < 0 && (flags & 1) == 0) {
            int last = this.i.size() - 1;
            if (last < 0) {
                return false;
            }
            this.i.remove(last).a(true);
            n();
        } else {
            int index = -1;
            if (name != null || id >= 0) {
                index = this.i.size() - 1;
                while (index >= 0) {
                    a bss = this.i.get(index);
                    if ((name != null && name.equals(bss.a())) || (id >= 0 && id == bss.m)) {
                        break;
                    }
                    index--;
                }
                if (index < 0) {
                    return false;
                }
                if ((flags & 1) != 0) {
                    index--;
                    while (index >= 0) {
                        a bss2 = this.i.get(index);
                        if ((name == null || !name.equals(bss2.a())) && (id < 0 || id != bss2.m)) {
                            break;
                        }
                        index--;
                    }
                }
            }
            if (index == this.i.size() - 1) {
                return false;
            }
            ArrayList<a> states = new ArrayList<>();
            for (int i2 = this.i.size() - 1; i2 > index; i2--) {
                states.add(this.i.remove(i2));
            }
            int LAST = states.size() - 1;
            for (int i3 = 0; i3 <= LAST; i3++) {
                if (a) {
                    Log.v("FragmentManager", "Popping back stack state: " + states.get(i3));
                }
                states.get(i3).a(i3 == LAST);
            }
            n();
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public final ArrayList<Fragment> b() {
        int i2;
        ArrayList<Fragment> fragments = null;
        if (this.f != null) {
            for (int i3 = 0; i3 < this.f.size(); i3++) {
                Fragment f2 = this.f.get(i3);
                if (f2 != null && f2.I) {
                    if (fragments == null) {
                        fragments = new ArrayList<>();
                    }
                    fragments.add(f2);
                    f2.J = true;
                    if (f2.q != null) {
                        i2 = f2.q.n;
                    } else {
                        i2 = -1;
                    }
                    f2.r = i2;
                }
            }
        }
        return fragments;
    }

    private void b(Fragment f2) {
        if (f2.P != null) {
            if (this.u == null) {
                this.u = new SparseArray<>();
            } else {
                this.u.clear();
            }
            f2.P.saveHierarchyState(this.u);
            if (this.u.size() > 0) {
                f2.m = this.u;
                this.u = null;
            }
        }
    }

    private Bundle c(Fragment f2) {
        Bundle result = null;
        if (this.t == null) {
            this.t = new Bundle();
        }
        f2.onSaveInstanceState(this.t);
        if (!this.t.isEmpty()) {
            result = this.t;
            this.t = null;
        }
        if (f2.O != null) {
            b(f2);
        }
        if (f2.m != null) {
            if (result == null) {
                result = new Bundle();
            }
            result.putSparseParcelableArray("android:view_state", f2.m);
        }
        return result;
    }

    /* access modifiers changed from: package-private */
    public final Parcelable c() {
        int N;
        int N2;
        a();
        if (b) {
            this.q = true;
        }
        if (this.f == null || this.f.size() <= 0) {
            return null;
        }
        int N3 = this.f.size();
        FragmentState[] active = new FragmentState[N3];
        boolean haveFragments = false;
        for (int i2 = 0; i2 < N3; i2++) {
            Fragment f2 = this.f.get(i2);
            if (f2 != null) {
                haveFragments = true;
                FragmentState fs = new FragmentState(f2);
                active[i2] = fs;
                if (f2.i <= 0 || fs.j != null) {
                    fs.j = f2.l;
                } else {
                    fs.j = c(f2);
                    if (f2.q != null) {
                        if (f2.q.n < 0) {
                            String msg = "Failure saving state: " + f2 + " has target not in fragment manager: " + f2.q;
                            Log.e("FragmentManager", msg);
                            dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), new String[0]);
                            throw new IllegalStateException(msg);
                        }
                        if (fs.j == null) {
                            fs.j = new Bundle();
                        }
                        putFragment(fs.j, "android:target_state", f2.q);
                        if (f2.s != 0) {
                            fs.j.putInt("android:target_req_state", f2.s);
                        }
                    }
                }
                if (a) {
                    Log.v("FragmentManager", "Saved state of " + f2 + ": " + fs.j);
                }
            }
        }
        if (haveFragments) {
            int[] added = null;
            BackStackState[] backStack = null;
            if (this.g != null && (N2 = this.g.size()) > 0) {
                added = new int[N2];
                for (int i3 = 0; i3 < N2; i3++) {
                    added[i3] = this.g.get(i3).n;
                    if (a) {
                        Log.v("FragmentManager", "saveAllState: adding fragment #" + i3 + ": " + this.g.get(i3));
                    }
                }
            }
            if (this.i != null && (N = this.i.size()) > 0) {
                backStack = new BackStackState[N];
                for (int i4 = 0; i4 < N; i4++) {
                    backStack[i4] = new BackStackState(this.i.get(i4));
                    if (a) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i4 + ": " + this.i.get(i4));
                    }
                }
            }
            FragmentManagerState fms = new FragmentManagerState();
            fms.a = active;
            fms.b = added;
            fms.c = backStack;
            return fms;
        } else if (!a) {
            return null;
        } else {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(Parcelable state, ArrayList<Fragment> nonConfig) {
        if (state != null) {
            FragmentManagerState fms = (FragmentManagerState) state;
            if (fms.a != null) {
                if (nonConfig != null) {
                    for (int i2 = 0; i2 < nonConfig.size(); i2++) {
                        Fragment f2 = nonConfig.get(i2);
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: re-attaching retained " + f2);
                        }
                        FragmentState fs = fms.a[f2.n];
                        fs.k = f2;
                        f2.m = null;
                        f2.z = 0;
                        f2.x = false;
                        f2.t = false;
                        f2.q = null;
                        if (fs.j != null) {
                            fs.j.setClassLoader(this.o.getClassLoader());
                            f2.m = fs.j.getSparseParcelableArray("android:view_state");
                        }
                    }
                }
                this.f = new ArrayList<>(fms.a.length);
                if (this.h != null) {
                    this.h.clear();
                }
                for (int i3 = 0; i3 < fms.a.length; i3++) {
                    FragmentState fs2 = fms.a[i3];
                    if (fs2 != null) {
                        Fragment f3 = fs2.a(this.o);
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: adding #" + i3 + ": " + f3);
                        }
                        this.f.add(f3);
                        fs2.k = null;
                    } else {
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: adding #" + i3 + ": (null)");
                        }
                        this.f.add(null);
                        if (this.h == null) {
                            this.h = new ArrayList<>();
                        }
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: adding avail #" + i3);
                        }
                        this.h.add(Integer.valueOf(i3));
                    }
                }
                if (nonConfig != null) {
                    for (int i4 = 0; i4 < nonConfig.size(); i4++) {
                        Fragment f4 = nonConfig.get(i4);
                        if (f4.r >= 0) {
                            if (f4.r < this.f.size()) {
                                f4.q = this.f.get(f4.r);
                            } else {
                                Log.w("FragmentManager", "Re-attaching retained fragment " + f4 + " target no longer exists: " + f4.r);
                                f4.q = null;
                            }
                        }
                    }
                }
                if (fms.b != null) {
                    this.g = new ArrayList<>(fms.b.length);
                    for (int i5 = 0; i5 < fms.b.length; i5++) {
                        Fragment f5 = this.f.get(fms.b[i5]);
                        if (f5 == null) {
                            throw new IllegalStateException("No instantiated fragment for index #" + fms.b[i5]);
                        }
                        f5.t = true;
                        f5.B = this.o;
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: making added #" + i5 + ": " + f5);
                        }
                        this.g.add(f5);
                    }
                } else {
                    this.g = null;
                }
                if (fms.c != null) {
                    this.i = new ArrayList<>(fms.c.length);
                    for (int i6 = 0; i6 < fms.c.length; i6++) {
                        a bse = fms.c[i6].a(this);
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: adding bse #" + i6 + " (index " + bse.m + "): " + bse);
                        }
                        this.i.add(bse);
                        if (bse.m >= 0) {
                            a(bse.m, bse);
                        }
                    }
                    return;
                }
                this.i = null;
            }
        }
    }

    public final void a(FragmentActivity activity) {
        if (this.o != null) {
            throw new IllegalStateException();
        }
        this.o = activity;
    }

    public final void d() {
        this.q = false;
    }

    public final void e() {
        this.q = false;
        c(1);
    }

    public final void f() {
        this.q = false;
        c(2);
    }

    public final void g() {
        this.q = false;
        c(4);
    }

    public final void h() {
        this.q = false;
        c(5);
    }

    public final void i() {
        c(4);
    }

    public final void j() {
        this.q = true;
        c(3);
    }

    public final void a(boolean retaining) {
        if (this.f != null) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                Fragment f2 = this.g.get(i2);
                if (f2 != null) {
                    f2.a(retaining);
                }
            }
        }
    }

    public final void k() {
        this.r = true;
        c(0);
        this.o = null;
    }

    public final void a(Configuration newConfig) {
        if (this.f != null) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                Fragment f2 = this.g.get(i2);
                if (f2 != null) {
                    f2.onConfigurationChanged(newConfig);
                }
            }
        }
    }

    public final void l() {
        if (this.f != null) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                Fragment f2 = this.g.get(i2);
                if (f2 != null) {
                    f2.onLowMemory();
                }
            }
        }
    }

    public final boolean a(Menu menu, MenuInflater inflater) {
        boolean show = false;
        ArrayList<Fragment> newMenus = null;
        if (this.f != null) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                Fragment f2 = this.g.get(i2);
                if (f2 != null && !f2.G && f2.K) {
                    show = true;
                    f2.onCreateOptionsMenu(menu, inflater);
                    if (newMenus == null) {
                        newMenus = new ArrayList<>();
                    }
                    newMenus.add(f2);
                }
            }
        }
        if (this.j != null) {
            for (int i3 = 0; i3 < this.j.size(); i3++) {
                Fragment f3 = this.j.get(i3);
                if (newMenus == null || !newMenus.contains(f3)) {
                    f3.onDestroyOptionsMenu();
                }
            }
        }
        this.j = newMenus;
        return show;
    }

    public final boolean a(Menu menu) {
        boolean show = false;
        if (this.f != null) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                Fragment f2 = this.g.get(i2);
                if (f2 != null && !f2.G && f2.K) {
                    show = true;
                    f2.onPrepareOptionsMenu(menu);
                }
            }
        }
        return show;
    }

    public final boolean a(MenuItem item) {
        if (this.f != null) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                Fragment f2 = this.g.get(i2);
                if (f2 != null && !f2.G && f2.K && f2.onOptionsItemSelected(item)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean b(MenuItem item) {
        if (this.f != null) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                Fragment f2 = this.g.get(i2);
                if (!(f2 == null || f2.G || !f2.onContextItemSelected(item))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void b(Menu menu) {
        if (this.f != null) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                Fragment f2 = this.g.get(i2);
                if (f2 != null && !f2.G && f2.K) {
                    f2.onOptionsMenuClosed(menu);
                }
            }
        }
    }

    public static int b(int transit) {
        switch (transit) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN:
                return FragmentTransaction.TRANSIT_FRAGMENT_CLOSE;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE:
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            case FragmentTransaction.TRANSIT_FRAGMENT_CLOSE:
                return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            default:
                return 0;
        }
    }
}
