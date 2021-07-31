package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.lenovo.lps.sus.c.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

public class FragmentActivity extends Activity {
    final Handler a = new Handler() {
        /* class android.support.v4.app.FragmentActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    if (FragmentActivity.this.e) {
                        FragmentActivity.this.a(false);
                        return;
                    }
                    return;
                case 2:
                    FragmentActivity.this.b.h();
                    FragmentActivity.this.b.a();
                    return;
                default:
                    super.handleMessage(msg);
                    return;
            }
        }
    };
    final b b = new b();
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    HCSparseArray<c> j;
    c k;

    static class a {
        public static final int[] a = {16842755, 16842960, 16842961};
    }

    static final class b {
        Object a;
        HashMap<String, Object> b;
        ArrayList<Fragment> c;
        HCSparseArray<c> d;

        b() {
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        int index = requestCode >> 16;
        if (index != 0) {
            int index2 = index - 1;
            if (this.b.f == null || index2 < 0 || index2 >= this.b.f.size()) {
                Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(requestCode));
                return;
            }
            Fragment frag = this.b.f.get(index2);
            if (frag == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(requestCode));
            }
            frag.onActivityResult(65535 & requestCode, resultCode, data);
            return;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    public void onBackPressed() {
        if (!this.b.popBackStackImmediate()) {
            finish();
        }
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        this.b.a(newConfig);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        this.b.a(this);
        if (getLayoutInflater().getFactory() == null) {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(savedInstanceState);
        b nc = (b) getLastNonConfigurationInstance();
        if (nc != null) {
            this.j = nc.d;
        }
        if (savedInstanceState != null) {
            this.b.a(savedInstanceState.getParcelable("android:support:fragments"), nc != null ? nc.c : null);
        }
        this.b.e();
    }

    public boolean onCreatePanelMenu(int featureId, Menu menu) {
        if (featureId != 0) {
            return super.onCreatePanelMenu(featureId, menu);
        }
        boolean show = super.onCreatePanelMenu(featureId, menu) | this.b.a(menu, getMenuInflater());
        if (Build.VERSION.SDK_INT >= 11) {
            return show;
        }
        return true;
    }

    public View onCreateView(String name, Context context, AttributeSet attrs) {
        Fragment fragment = null;
        if (!"fragment".equals(name)) {
            return super.onCreateView(name, context, attrs);
        }
        String fname = attrs.getAttributeValue(null, "class");
        TypedArray a2 = context.obtainStyledAttributes(attrs, a.a);
        if (fname == null) {
            fname = a2.getString(0);
        }
        int id = a2.getResourceId(1, -1);
        String tag = a2.getString(2);
        a2.recycle();
        if (id != -1) {
            fragment = this.b.findFragmentById(id);
        }
        if (fragment == null && tag != null) {
            fragment = this.b.findFragmentByTag(tag);
        }
        if (fragment == null) {
            fragment = this.b.findFragmentById(0);
        }
        if (b.a) {
            Log.v("FragmentActivity", "onCreateView: id=0x" + Integer.toHexString(id) + " fname=" + fname + " existing=" + fragment);
        }
        if (fragment == null) {
            fragment = Fragment.instantiate(this, fname);
            fragment.w = true;
            fragment.D = id != 0 ? id : 0;
            fragment.E = 0;
            fragment.F = tag;
            fragment.x = true;
            fragment.B = this;
            fragment.A = this.b;
            fragment.onInflate(this, attrs, fragment.l);
            this.b.a(fragment, true);
        } else if (fragment.x) {
            throw new IllegalArgumentException(attrs.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(id) + ", tag " + tag + ", or parent id 0x" + Integer.toHexString(0) + " with another fragment for " + fname);
        } else {
            fragment.x = true;
            fragment.B = this;
            if (!fragment.J) {
                fragment.onInflate(this, attrs, fragment.l);
            }
            this.b.a(fragment);
        }
        if (fragment.O == null) {
            throw new IllegalStateException("Fragment " + fname + " did not create a view.");
        }
        if (id != 0) {
            fragment.O.setId(id);
        }
        if (fragment.O.getTag() == null) {
            fragment.O.setTag(tag);
        }
        return fragment.O;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        a(false);
        this.b.k();
        if (this.k != null) {
            this.k.g();
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (Build.VERSION.SDK_INT >= 5 || keyCode != 4 || event.getRepeatCount() != 0) {
            return super.onKeyDown(keyCode, event);
        }
        onBackPressed();
        return true;
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.b.l();
    }

    public boolean onMenuItemSelected(int featureId, MenuItem item) {
        if (super.onMenuItemSelected(featureId, item)) {
            return true;
        }
        switch (featureId) {
            case 0:
                return this.b.a(item);
            case 6:
                return this.b.b(item);
            default:
                return false;
        }
    }

    public void onPanelClosed(int featureId, Menu menu) {
        switch (featureId) {
            case 0:
                this.b.b(menu);
                break;
        }
        super.onPanelClosed(featureId, menu);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        this.d = false;
        if (this.a.hasMessages(2)) {
            this.a.removeMessages(2);
            this.b.h();
        }
        this.b.i();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.a.sendEmptyMessage(2);
        this.d = true;
        this.b.a();
    }

    /* access modifiers changed from: protected */
    public void onPostResume() {
        super.onPostResume();
        this.a.removeMessages(2);
        this.b.h();
        this.b.a();
    }

    public boolean onPreparePanel(int featureId, View view, Menu menu) {
        if (featureId != 0 || menu == null) {
            return super.onPreparePanel(featureId, view, menu);
        }
        if (this.g) {
            this.g = false;
            menu.clear();
            onCreatePanelMenu(featureId, menu);
        }
        if ((!super.onPreparePanel(featureId, view, menu) && !this.b.a(menu)) || !menu.hasVisibleItems()) {
            return false;
        }
        return true;
    }

    public final Object onRetainNonConfigurationInstance() {
        if (this.e) {
            a(true);
        }
        ArrayList<Fragment> fragments = this.b.b();
        boolean retainLoaders = false;
        if (this.j != null) {
            for (int i2 = this.j.size() - 1; i2 >= 0; i2--) {
                c lm = this.j.valueAt(i2);
                if (lm.f) {
                    retainLoaders = true;
                } else {
                    lm.g();
                    this.j.removeAt(i2);
                }
            }
        }
        if (fragments == null && !retainLoaders) {
            return null;
        }
        b nci = new b();
        nci.a = null;
        nci.b = null;
        nci.c = fragments;
        nci.d = this.j;
        return nci;
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Parcelable p = this.b.c();
        if (p != null) {
            outState.putParcelable("android:support:fragments", p);
        }
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        this.e = false;
        this.a.removeMessages(1);
        if (!this.c) {
            this.c = true;
            this.b.f();
        }
        this.b.d();
        this.b.a();
        if (!this.i) {
            this.i = true;
            if (this.k != null) {
                this.k.a();
            } else if (!this.h) {
                this.k = a(-1, this.i, false);
            }
            this.h = true;
        }
        this.b.g();
        if (this.j != null) {
            for (int i2 = this.j.size() - 1; i2 >= 0; i2--) {
                c lm = this.j.valueAt(i2);
                lm.d();
                lm.f();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        this.e = true;
        this.a.sendEmptyMessage(1);
        this.b.j();
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (Build.VERSION.SDK_INT >= 11) {
            invalidateOptionsMenu();
        } else {
            this.g = true;
        }
    }

    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        int i2 = Build.VERSION.SDK_INT;
        writer.print(prefix);
        writer.print("Local FragmentActivity ");
        writer.print(Integer.toHexString(System.identityHashCode(this)));
        writer.println(" State:");
        String innerPrefix = prefix + "  ";
        writer.print(innerPrefix);
        writer.print("mCreated=");
        writer.print(this.c);
        writer.print("mResumed=");
        writer.print(this.d);
        writer.print(" mStopped=");
        writer.print(this.e);
        writer.print(" mReallyStopped=");
        writer.println(this.f);
        writer.print(innerPrefix);
        writer.print("mLoadersStarted=");
        writer.println(this.i);
        if (this.k != null) {
            writer.print(prefix);
            writer.print("Loader Manager ");
            writer.print(Integer.toHexString(System.identityHashCode(this.k)));
            writer.println(c.N);
            this.k.dump(prefix + "  ", fd, writer, args);
        }
        this.b.dump(prefix, fd, writer, args);
    }

    /* access modifiers changed from: package-private */
    public final void a(boolean retaining) {
        if (!this.f) {
            this.f = true;
            this.a.removeMessages(1);
            if (this.i) {
                this.i = false;
                if (this.k != null) {
                    if (!retaining) {
                        this.k.b();
                    } else {
                        this.k.c();
                    }
                }
            }
            this.b.a(retaining);
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public FragmentManager getSupportFragmentManager() {
        return this.b;
    }

    public void startActivityForResult(Intent intent, int requestCode) {
        if (requestCode == -1 || (-65536 & requestCode) == 0) {
            super.startActivityForResult(intent, requestCode);
            return;
        }
        throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int requestCode) {
        if (requestCode == -1) {
            super.startActivityForResult(intent, -1);
        } else if ((-65536 & requestCode) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        } else {
            super.startActivityForResult(intent, ((fragment.n + 1) << 16) + (65535 & requestCode));
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int index) {
        if (this.j != null) {
            c lm = this.j.get(index);
            if (lm != null) {
                lm.g();
            }
            this.j.remove(index);
        }
    }

    public LoaderManager getSupportLoaderManager() {
        if (this.k != null) {
            return this.k;
        }
        this.h = true;
        this.k = a(-1, this.i, true);
        return this.k;
    }

    /* access modifiers changed from: package-private */
    public final c a(int index, boolean started, boolean create) {
        if (this.j == null) {
            this.j = new HCSparseArray<>();
        }
        c lm = this.j.get(index);
        if (lm != null) {
            lm.a(this);
            return lm;
        } else if (!create) {
            return lm;
        } else {
            c lm2 = new c(this, started);
            this.j.put(index, lm2);
            return lm2;
        }
    }
}
