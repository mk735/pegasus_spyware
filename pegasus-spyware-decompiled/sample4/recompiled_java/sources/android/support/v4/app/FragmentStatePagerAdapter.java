package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.view.PagerAdapter;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;

public abstract class FragmentStatePagerAdapter extends PagerAdapter {
    private final FragmentManager a;
    private FragmentTransaction b = null;
    private ArrayList<Fragment.SavedState> c = new ArrayList<>();
    private ArrayList<Fragment> d = new ArrayList<>();

    public abstract Fragment getItem(int i);

    public FragmentStatePagerAdapter(FragmentManager fm) {
        this.a = fm;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void startUpdate(View container) {
    }

    @Override // android.support.v4.view.PagerAdapter
    public Object instantiateItem(View container, int position) {
        Fragment.SavedState fss;
        Fragment f;
        if (this.d.size() > position && (f = this.d.get(position)) != null) {
            return f;
        }
        if (this.b == null) {
            this.b = this.a.beginTransaction();
        }
        Fragment fragment = getItem(position);
        if (this.c.size() > position && (fss = this.c.get(position)) != null) {
            fragment.setInitialSavedState(fss);
        }
        while (this.d.size() <= position) {
            this.d.add(null);
        }
        this.d.set(position, fragment);
        this.b.add(container.getId(), fragment);
        return fragment;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void destroyItem(View container, int position, Object object) {
        Fragment fragment = (Fragment) object;
        if (this.b == null) {
            this.b = this.a.beginTransaction();
        }
        while (this.c.size() <= position) {
            this.c.add(null);
        }
        this.c.set(position, this.a.saveFragmentInstanceState(fragment));
        this.d.set(position, null);
        this.b.remove(fragment);
    }

    @Override // android.support.v4.view.PagerAdapter
    public void finishUpdate(View container) {
        if (this.b != null) {
            this.b.commit();
            this.b = null;
            this.a.executePendingTransactions();
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object object) {
        return ((Fragment) object).getView() == view;
    }

    @Override // android.support.v4.view.PagerAdapter
    public Parcelable saveState() {
        Bundle state = null;
        if (this.c.size() > 0) {
            state = new Bundle();
            Fragment.SavedState[] fss = new Fragment.SavedState[this.c.size()];
            this.c.toArray(fss);
            state.putParcelableArray("states", fss);
        }
        for (int i = 0; i < this.d.size(); i++) {
            Fragment f = this.d.get(i);
            if (f != null) {
                if (state == null) {
                    state = new Bundle();
                }
                this.a.putFragment(state, "f" + i, f);
            }
        }
        return state;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void restoreState(Parcelable state, ClassLoader loader) {
        if (state != null) {
            Bundle bundle = (Bundle) state;
            bundle.setClassLoader(loader);
            Parcelable[] fss = bundle.getParcelableArray("states");
            this.c.clear();
            this.d.clear();
            if (fss != null) {
                for (Parcelable parcelable : fss) {
                    this.c.add((Fragment.SavedState) parcelable);
                }
            }
            for (String key : bundle.keySet()) {
                if (key.startsWith("f")) {
                    int index = Integer.parseInt(key.substring(1));
                    Fragment f = this.a.getFragment(bundle, key);
                    if (f != null) {
                        while (this.d.size() <= index) {
                            this.d.add(null);
                        }
                        this.d.set(index, f);
                    } else {
                        Log.w("FragmentStatePagerAdapter", "Bad fragment at key " + key);
                    }
                }
            }
        }
    }
}
