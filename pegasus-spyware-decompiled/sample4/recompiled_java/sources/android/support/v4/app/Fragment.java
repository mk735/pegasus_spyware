package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.util.DebugUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;

public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener {
    private static final HashMap<String, Class<?>> a = new HashMap<>();
    FragmentManager A;
    FragmentActivity B;
    FragmentActivity C;
    int D;
    int E;
    String F;
    boolean G;
    boolean H;
    boolean I;
    boolean J;
    boolean K;
    boolean L;
    int M;
    ViewGroup N;
    View O;
    View P;
    c Q;
    boolean R;
    boolean S;
    int i = 0;
    View j;
    int k;
    Bundle l;
    SparseArray<Parcelable> m;
    int n = -1;
    String o;
    Bundle p;
    Fragment q;
    int r = -1;
    int s;
    boolean t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    int z;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* class android.support.v4.app.Fragment.SavedState.AnonymousClass1 */

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel x0) {
                return new SavedState(x0);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int x0) {
                return new SavedState[x0];
            }
        };
        final Bundle a;

        SavedState(Bundle state) {
            this.a = state;
        }

        SavedState(Parcel in) {
            this.a = in.readBundle();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeBundle(this.a);
        }
    }

    public static class InstantiationException extends RuntimeException {
        public InstantiationException(String msg, Exception cause) {
            super(msg, cause);
        }
    }

    public static Fragment instantiate(Context context, String fname) {
        return instantiate(context, fname, null);
    }

    public static Fragment instantiate(Context context, String fname, Bundle args) {
        try {
            Class<?> clazz = a.get(fname);
            if (clazz == null) {
                clazz = context.getClassLoader().loadClass(fname);
                a.put(fname, clazz);
            }
            Fragment f = (Fragment) clazz.newInstance();
            if (args != null) {
                args.setClassLoader(f.getClass().getClassLoader());
                f.p = args;
            }
            return f;
        } catch (ClassNotFoundException e) {
            throw new InstantiationException("Unable to instantiate fragment " + fname + ": make sure class name exists, is public, and has an" + " empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new InstantiationException("Unable to instantiate fragment " + fname + ": make sure class name exists, is public, and has an" + " empty constructor that is public", e2);
        } catch (IllegalAccessException e3) {
            throw new InstantiationException("Unable to instantiate fragment " + fname + ": make sure class name exists, is public, and has an" + " empty constructor that is public", e3);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.m != null) {
            this.P.restoreHierarchyState(this.m);
            this.m = null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int index) {
        this.n = index;
        this.o = "android:fragment:" + this.n;
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        return this.z > 0;
    }

    public final boolean equals(Object o2) {
        return super.equals(o2);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        DebugUtils.buildShortClassTag(this, sb);
        if (this.n >= 0) {
            sb.append(" #");
            sb.append(this.n);
        }
        if (this.D != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.D));
        }
        if (this.F != null) {
            sb.append(" ");
            sb.append(this.F);
        }
        sb.append('}');
        return sb.toString();
    }

    public final int getId() {
        return this.D;
    }

    public final String getTag() {
        return this.F;
    }

    public void setArguments(Bundle args) {
        if (this.n >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.p = args;
    }

    public final Bundle getArguments() {
        return this.p;
    }

    public void setInitialSavedState(SavedState state) {
        if (this.n >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.l = (state == null || state.a == null) ? null : state.a;
    }

    public void setTargetFragment(Fragment fragment, int requestCode) {
        this.q = fragment;
        this.s = requestCode;
    }

    public final Fragment getTargetFragment() {
        return this.q;
    }

    public final int getTargetRequestCode() {
        return this.s;
    }

    public final FragmentActivity getActivity() {
        return this.C;
    }

    public final Resources getResources() {
        if (this.C != null) {
            return this.C.getResources();
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final CharSequence getText(int resId) {
        return getResources().getText(resId);
    }

    public final String getString(int resId) {
        return getResources().getString(resId);
    }

    public final String getString(int resId, Object... formatArgs) {
        return getResources().getString(resId, formatArgs);
    }

    public final FragmentManager getFragmentManager() {
        return this.A;
    }

    public final boolean isAdded() {
        return this.C != null && this.t;
    }

    public final boolean isDetached() {
        return this.H;
    }

    public final boolean isRemoving() {
        return this.u;
    }

    public final boolean isInLayout() {
        return this.x;
    }

    public final boolean isResumed() {
        return this.v;
    }

    public final boolean isVisible() {
        return isAdded() && !isHidden() && this.O != null && this.O.getWindowToken() != null && this.O.getVisibility() == 0;
    }

    public final boolean isHidden() {
        return this.G;
    }

    public void onHiddenChanged(boolean hidden) {
    }

    public void setRetainInstance(boolean retain) {
        this.I = retain;
    }

    public final boolean getRetainInstance() {
        return this.I;
    }

    public void setHasOptionsMenu(boolean hasMenu) {
        if (this.K != hasMenu) {
            this.K = hasMenu;
            if (isAdded() && !isHidden()) {
                this.C.a();
            }
        }
    }

    public LoaderManager getLoaderManager() {
        if (this.Q != null) {
            return this.Q;
        }
        if (this.C == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.S = true;
        this.Q = this.C.a(this.n, this.R, true);
        return this.Q;
    }

    public void startActivity(Intent intent) {
        if (this.C == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.C.startActivityFromFragment(this, intent, -1);
    }

    public void startActivityForResult(Intent intent, int requestCode) {
        if (this.C == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.C.startActivityFromFragment(this, intent, requestCode);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    public LayoutInflater getLayoutInflater(Bundle savedInstanceState) {
        return this.C.getLayoutInflater();
    }

    public void onInflate(Activity activity, AttributeSet attrs, Bundle savedInstanceState) {
        this.L = true;
    }

    public void onAttach(Activity activity) {
        this.L = true;
    }

    public Animation onCreateAnimation(int transit, boolean enter, int nextAnim) {
        return null;
    }

    public void onCreate(Bundle savedInstanceState) {
        this.L = true;
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return null;
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
    }

    public View getView() {
        return this.O;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        this.L = true;
    }

    public void onStart() {
        this.L = true;
        if (!this.R) {
            this.R = true;
            if (!this.S) {
                this.S = true;
                this.Q = this.C.a(this.n, this.R, false);
            }
            if (this.Q != null) {
                this.Q.a();
            }
        }
    }

    public void onResume() {
        this.L = true;
    }

    public void onSaveInstanceState(Bundle outState) {
    }

    public void onConfigurationChanged(Configuration newConfig) {
        this.L = true;
    }

    public void onPause() {
        this.L = true;
    }

    public void onStop() {
        this.L = true;
    }

    public void onLowMemory() {
        this.L = true;
    }

    public void onDestroyView() {
        this.L = true;
    }

    public void onDestroy() {
        this.L = true;
        if (!this.S) {
            this.S = true;
            this.Q = this.C.a(this.n, this.R, false);
        }
        if (this.Q != null) {
            this.Q.g();
        }
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        this.n = -1;
        this.o = null;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = 0;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = 0;
        this.E = 0;
        this.F = null;
        this.G = false;
        this.H = false;
        this.J = false;
        this.Q = null;
        this.R = false;
        this.S = false;
    }

    public void onDetach() {
        this.L = true;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onDestroyOptionsMenu() {
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onCreateContextMenu(ContextMenu menu, View v2, ContextMenu.ContextMenuInfo menuInfo) {
        getActivity().onCreateContextMenu(menu, v2, menuInfo);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    public boolean onContextItemSelected(MenuItem item) {
        return false;
    }

    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        writer.print(prefix);
        writer.print("mFragmentId=#");
        writer.print(Integer.toHexString(this.D));
        writer.print(" mContainerId#=");
        writer.print(Integer.toHexString(this.E));
        writer.print(" mTag=");
        writer.println(this.F);
        writer.print(prefix);
        writer.print("mState=");
        writer.print(this.i);
        writer.print(" mIndex=");
        writer.print(this.n);
        writer.print(" mWho=");
        writer.print(this.o);
        writer.print(" mBackStackNesting=");
        writer.println(this.z);
        writer.print(prefix);
        writer.print("mAdded=");
        writer.print(this.t);
        writer.print(" mRemoving=");
        writer.print(this.u);
        writer.print(" mResumed=");
        writer.print(this.v);
        writer.print(" mFromLayout=");
        writer.print(this.w);
        writer.print(" mInLayout=");
        writer.println(this.x);
        writer.print(prefix);
        writer.print("mHidden=");
        writer.print(this.G);
        writer.print(" mDetached=");
        writer.print(this.H);
        writer.print(" mRetainInstance=");
        writer.print(this.I);
        writer.print(" mRetaining=");
        writer.print(this.J);
        writer.print(" mHasMenu=");
        writer.println(this.K);
        if (this.A != null) {
            writer.print(prefix);
            writer.print("mFragmentManager=");
            writer.println(this.A);
        }
        if (this.B != null) {
            writer.print(prefix);
            writer.print("mImmediateActivity=");
            writer.println(this.B);
        }
        if (this.C != null) {
            writer.print(prefix);
            writer.print("mActivity=");
            writer.println(this.C);
        }
        if (this.p != null) {
            writer.print(prefix);
            writer.print("mArguments=");
            writer.println(this.p);
        }
        if (this.l != null) {
            writer.print(prefix);
            writer.print("mSavedFragmentState=");
            writer.println(this.l);
        }
        if (this.m != null) {
            writer.print(prefix);
            writer.print("mSavedViewState=");
            writer.println(this.m);
        }
        if (this.q != null) {
            writer.print(prefix);
            writer.print("mTarget=");
            writer.print(this.q);
            writer.print(" mTargetRequestCode=");
            writer.println(this.s);
        }
        if (this.M != 0) {
            writer.print(prefix);
            writer.print("mNextAnim=");
            writer.println(this.M);
        }
        if (this.N != null) {
            writer.print(prefix);
            writer.print("mContainer=");
            writer.println(this.N);
        }
        if (this.O != null) {
            writer.print(prefix);
            writer.print("mView=");
            writer.println(this.O);
        }
        if (this.P != null) {
            writer.print(prefix);
            writer.print("mInnerView=");
            writer.println(this.O);
        }
        if (this.j != null) {
            writer.print(prefix);
            writer.print("mAnimatingAway=");
            writer.println(this.j);
            writer.print(prefix);
            writer.print("mStateAfterAnimating=");
            writer.println(this.k);
        }
        if (this.Q != null) {
            writer.print(prefix);
            writer.println("Loader Manager:");
            this.Q.dump(prefix + "  ", fd, writer, args);
        }
    }

    /* access modifiers changed from: package-private */
    public final void d() {
        onStart();
        if (this.Q != null) {
            this.Q.f();
        }
    }

    /* access modifiers changed from: package-private */
    public final void e() {
        onStop();
    }

    /* access modifiers changed from: package-private */
    public final void a(boolean retaining) {
        if (this.R) {
            this.R = false;
            if (!this.S) {
                this.S = true;
                this.Q = this.C.a(this.n, this.R, false);
            }
            if (this.Q == null) {
                return;
            }
            if (!retaining) {
                this.Q.b();
            } else {
                this.Q.c();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void f() {
        onDestroyView();
        if (this.Q != null) {
            this.Q.e();
        }
    }
}
