package android.support.v4.app;

import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import com.lenovo.lps.sus.c.c;

public abstract class FragmentPagerAdapter extends PagerAdapter {
    private final FragmentManager a;
    private FragmentTransaction b = null;

    public abstract Fragment getItem(int i);

    public FragmentPagerAdapter(FragmentManager fm) {
        this.a = fm;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void startUpdate(View container) {
    }

    @Override // android.support.v4.view.PagerAdapter
    public Object instantiateItem(View container, int position) {
        if (this.b == null) {
            this.b = this.a.beginTransaction();
        }
        Fragment fragment = this.a.findFragmentByTag(a(container.getId(), position));
        if (fragment != null) {
            this.b.attach(fragment);
            return fragment;
        }
        Fragment fragment2 = getItem(position);
        this.b.add(container.getId(), fragment2, a(container.getId(), position));
        return fragment2;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void destroyItem(View container, int position, Object object) {
        if (this.b == null) {
            this.b = this.a.beginTransaction();
        }
        this.b.detach((Fragment) object);
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
        return null;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void restoreState(Parcelable state, ClassLoader loader) {
    }

    private static String a(int viewId, int index) {
        return "android:switcher:" + viewId + c.N + index;
    }
}
