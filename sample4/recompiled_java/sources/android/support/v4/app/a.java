package android.support.v4.app;

import android.support.v4.app.FragmentManager;
import android.util.Log;
import com.lenovo.lps.sus.c.c;
import java.io.PrintWriter;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
/* compiled from: BackStackRecord */
public final class a extends FragmentTransaction implements FragmentManager.BackStackEntry, Runnable {
    final b a;
    C0000a b;
    C0000a c;
    int d;
    int e;
    int f;
    int g;
    int h;
    boolean i;
    boolean j = true;
    String k;
    boolean l;
    int m;
    int n;
    CharSequence o;
    int p;
    CharSequence q;

    /* access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.a$a  reason: collision with other inner class name */
    /* compiled from: BackStackRecord */
    public static final class C0000a {
        C0000a a;
        C0000a b;
        int c;
        Fragment d;
        int e;
        int f;
        ArrayList<Fragment> g;

        C0000a() {
        }
    }

    public final void a(String prefix, PrintWriter writer) {
        writer.print(prefix);
        writer.print("mName=");
        writer.print(this.k);
        writer.print(" mIndex=");
        writer.print(this.m);
        writer.print(" mCommitted=");
        writer.println(this.l);
        if (this.g != 0) {
            writer.print(prefix);
            writer.print("mTransition=#");
            writer.print(Integer.toHexString(this.g));
            writer.print(" mTransitionStyle=#");
            writer.println(Integer.toHexString(this.h));
        }
        if (!(this.e == 0 && this.f == 0)) {
            writer.print(prefix);
            writer.print("mEnterAnim=#");
            writer.print(Integer.toHexString(this.e));
            writer.print(" mExitAnim=#");
            writer.println(Integer.toHexString(this.f));
        }
        if (!(this.n == 0 && this.o == null)) {
            writer.print(prefix);
            writer.print("mBreadCrumbTitleRes=#");
            writer.print(Integer.toHexString(this.n));
            writer.print(" mBreadCrumbTitleText=");
            writer.println(this.o);
        }
        if (!(this.p == 0 && this.q == null)) {
            writer.print(prefix);
            writer.print("mBreadCrumbShortTitleRes=#");
            writer.print(Integer.toHexString(this.p));
            writer.print(" mBreadCrumbShortTitleText=");
            writer.println(this.q);
        }
        if (this.b != null) {
            writer.print(prefix);
            writer.println("Operations:");
            String innerPrefix = prefix + "    ";
            for (C0000a op = this.b; op != null; op = op.a) {
                writer.print(prefix);
                writer.print("  Op #");
                writer.print(0);
                writer.println(c.N);
                writer.print(innerPrefix);
                writer.print("cmd=");
                writer.print(op.c);
                writer.print(" fragment=");
                writer.println(op.d);
                if (!(op.e == 0 && op.f == 0)) {
                    writer.print(prefix);
                    writer.print("enterAnim=");
                    writer.print(op.e);
                    writer.print(" exitAnim=");
                    writer.println(op.f);
                }
                if (op.g != null && op.g.size() > 0) {
                    for (int i2 = 0; i2 < op.g.size(); i2++) {
                        writer.print(innerPrefix);
                        if (op.g.size() == 1) {
                            writer.print("Removed: ");
                        } else {
                            writer.println("Removed:");
                            writer.print(innerPrefix);
                            writer.print("  #");
                            writer.print(0);
                            writer.print(": ");
                        }
                        writer.println(op.g.get(i2));
                    }
                }
            }
        }
    }

    public a(b manager) {
        this.a = manager;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final int getId() {
        return this.m;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final int getBreadCrumbTitleRes() {
        return this.n;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final int getBreadCrumbShortTitleRes() {
        return this.p;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final CharSequence getBreadCrumbTitle() {
        if (this.n != 0) {
            return this.a.o.getText(this.n);
        }
        return this.o;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public final CharSequence getBreadCrumbShortTitle() {
        if (this.p != 0) {
            return this.a.o.getText(this.p);
        }
        return this.q;
    }

    /* access modifiers changed from: package-private */
    public final void a(C0000a op) {
        if (this.b == null) {
            this.c = op;
            this.b = op;
        } else {
            op.b = this.c;
            this.c.a = op;
            this.c = op;
        }
        op.e = this.e;
        op.f = this.f;
        this.d++;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction add(Fragment fragment, String tag) {
        a(0, fragment, tag, 1);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction add(int containerViewId, Fragment fragment) {
        a(containerViewId, fragment, null, 1);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction add(int containerViewId, Fragment fragment, String tag) {
        a(containerViewId, fragment, tag, 1);
        return this;
    }

    private void a(int containerViewId, Fragment fragment, String tag, int opcmd) {
        if (fragment.B != null) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        fragment.B = this.a.o;
        fragment.A = this.a;
        if (tag != null) {
            if (fragment.F == null || tag.equals(fragment.F)) {
                fragment.F = tag;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.F + " now " + tag);
            }
        }
        if (containerViewId != 0) {
            if (fragment.D == 0 || fragment.D == containerViewId) {
                fragment.D = containerViewId;
                fragment.E = containerViewId;
            } else {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.D + " now " + containerViewId);
            }
        }
        C0000a op = new C0000a();
        op.c = opcmd;
        op.d = fragment;
        a(op);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction replace(int containerViewId, Fragment fragment) {
        return replace(containerViewId, fragment, null);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction replace(int containerViewId, Fragment fragment, String tag) {
        if (containerViewId == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        a(containerViewId, fragment, tag, 2);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction remove(Fragment fragment) {
        if (fragment.B == null) {
            throw new IllegalStateException("Fragment not added: " + fragment);
        }
        fragment.B = null;
        C0000a op = new C0000a();
        op.c = 3;
        op.d = fragment;
        a(op);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction hide(Fragment fragment) {
        if (fragment.B == null) {
            throw new IllegalStateException("Fragment not added: " + fragment);
        }
        C0000a op = new C0000a();
        op.c = 4;
        op.d = fragment;
        a(op);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction show(Fragment fragment) {
        if (fragment.B == null) {
            throw new IllegalStateException("Fragment not added: " + fragment);
        }
        C0000a op = new C0000a();
        op.c = 5;
        op.d = fragment;
        a(op);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction detach(Fragment fragment) {
        C0000a op = new C0000a();
        op.c = 6;
        op.d = fragment;
        a(op);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction attach(Fragment fragment) {
        C0000a op = new C0000a();
        op.c = 7;
        op.d = fragment;
        a(op);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setCustomAnimations(int enter, int exit) {
        this.e = enter;
        this.f = exit;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setTransition(int transition) {
        this.g = transition;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setTransitionStyle(int styleRes) {
        this.h = styleRes;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction addToBackStack(String name) {
        if (!this.j) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.i = true;
        this.k = name;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final boolean isAddToBackStackAllowed() {
        return this.j;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction disallowAddToBackStack() {
        if (this.i) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.j = false;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setBreadCrumbTitle(int res) {
        this.n = res;
        this.o = null;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setBreadCrumbTitle(CharSequence text) {
        this.n = 0;
        this.o = text;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setBreadCrumbShortTitle(int res) {
        this.p = res;
        this.q = null;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final FragmentTransaction setBreadCrumbShortTitle(CharSequence text) {
        this.p = 0;
        this.q = text;
        return this;
    }

    /* access modifiers changed from: package-private */
    public final void a(int amt) {
        if (this.i) {
            if (b.a) {
                Log.v("BackStackEntry", "Bump nesting in " + this + " by " + amt);
            }
            for (C0000a op = this.b; op != null; op = op.a) {
                op.d.z += amt;
                if (b.a) {
                    Log.v("BackStackEntry", "Bump nesting of " + op.d + " to " + op.d.z);
                }
                if (op.g != null) {
                    for (int i2 = op.g.size() - 1; i2 >= 0; i2--) {
                        Fragment r = op.g.get(i2);
                        r.z += amt;
                        if (b.a) {
                            Log.v("BackStackEntry", "Bump nesting of " + r + " to " + r.z);
                        }
                    }
                }
            }
        }
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final int commit() {
        return b(false);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final int commitAllowingStateLoss() {
        return b(true);
    }

    private int b(boolean allowStateLoss) {
        if (this.l) {
            throw new IllegalStateException("commit already called");
        }
        if (b.a) {
            Log.v("BackStackEntry", "Commit: " + this);
        }
        this.l = true;
        if (this.i) {
            this.m = this.a.a(this);
        } else {
            this.m = -1;
        }
        this.a.a(this, allowStateLoss);
        return this.m;
    }

    public final void run() {
        if (b.a) {
            Log.v("BackStackEntry", "Run: " + this);
        }
        if (!this.i || this.m >= 0) {
            a(1);
            for (C0000a op = this.b; op != null; op = op.a) {
                switch (op.c) {
                    case 1:
                        Fragment f2 = op.d;
                        f2.M = op.e;
                        this.a.a(f2, false);
                        break;
                    case 2:
                        Fragment f3 = op.d;
                        if (this.a.g != null) {
                            for (int i2 = 0; i2 < this.a.g.size(); i2++) {
                                Fragment old = this.a.g.get(i2);
                                if (b.a) {
                                    Log.v("BackStackEntry", "OP_REPLACE: adding=" + f3 + " old=" + old);
                                }
                                if (old.E == f3.E) {
                                    if (op.g == null) {
                                        op.g = new ArrayList<>();
                                    }
                                    op.g.add(old);
                                    old.M = op.f;
                                    if (this.i) {
                                        old.z++;
                                        if (b.a) {
                                            Log.v("BackStackEntry", "Bump nesting of " + old + " to " + old.z);
                                        }
                                    }
                                    this.a.a(old, this.g, this.h);
                                }
                            }
                        }
                        f3.M = op.e;
                        this.a.a(f3, false);
                        break;
                    case 3:
                        Fragment f4 = op.d;
                        f4.M = op.f;
                        this.a.a(f4, this.g, this.h);
                        break;
                    case 4:
                        Fragment f5 = op.d;
                        f5.M = op.f;
                        this.a.b(f5, this.g, this.h);
                        break;
                    case 5:
                        Fragment f6 = op.d;
                        f6.M = op.e;
                        this.a.c(f6, this.g, this.h);
                        break;
                    case 6:
                        Fragment f7 = op.d;
                        f7.M = op.f;
                        this.a.d(f7, this.g, this.h);
                        break;
                    case 7:
                        Fragment f8 = op.d;
                        f8.M = op.e;
                        this.a.e(f8, this.g, this.h);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + op.c);
                }
            }
            this.a.a(this.a.n, this.g, this.h, true);
            if (this.i) {
                this.a.b(this);
                return;
            }
            return;
        }
        throw new IllegalStateException("addToBackStack() called after commit()");
    }

    public final void a(boolean doStateMove) {
        if (b.a) {
            Log.v("BackStackEntry", "popFromBackStack: " + this);
        }
        a(-1);
        for (C0000a op = this.c; op != null; op = op.b) {
            switch (op.c) {
                case 1:
                    Fragment f2 = op.d;
                    f2.B = null;
                    this.a.a(f2, b.b(this.g), this.h);
                    break;
                case 2:
                    Fragment f3 = op.d;
                    f3.B = null;
                    this.a.a(f3, b.b(this.g), this.h);
                    if (op.g != null) {
                        for (int i2 = 0; i2 < op.g.size(); i2++) {
                            f3.B = this.a.o;
                            this.a.a(op.g.get(i2), false);
                        }
                        break;
                    } else {
                        break;
                    }
                case 3:
                    Fragment f4 = op.d;
                    f4.B = this.a.o;
                    this.a.a(f4, false);
                    break;
                case 4:
                    this.a.c(op.d, b.b(this.g), this.h);
                    break;
                case 5:
                    this.a.b(op.d, b.b(this.g), this.h);
                    break;
                case 6:
                    this.a.e(op.d, b.b(this.g), this.h);
                    break;
                case 7:
                    this.a.d(op.d, b.b(this.g), this.h);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.c);
            }
        }
        if (doStateMove) {
            this.a.a(this.a.n, b.b(this.g), this.h, true);
        }
        if (this.m >= 0) {
            this.a.a(this.m);
            this.m = -1;
        }
    }

    public final String a() {
        return this.k;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public final boolean isEmpty() {
        return this.d == 0;
    }
}
