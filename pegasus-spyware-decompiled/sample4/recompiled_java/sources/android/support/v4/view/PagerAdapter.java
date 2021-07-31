package android.support.v4.view;

import android.os.Parcelable;
import android.view.View;

public abstract class PagerAdapter {
    public static final int POSITION_NONE = -2;
    public static final int POSITION_UNCHANGED = -1;
    private a a;

    interface a {
        void a();
    }

    public abstract void destroyItem(View view, int i, Object obj);

    public abstract void finishUpdate(View view);

    public abstract int getCount();

    public abstract Object instantiateItem(View view, int i);

    public abstract boolean isViewFromObject(View view, Object obj);

    public abstract void restoreState(Parcelable parcelable, ClassLoader classLoader);

    public abstract Parcelable saveState();

    public abstract void startUpdate(View view);

    public int getItemPosition(Object object) {
        return -1;
    }

    public void notifyDataSetChanged() {
        if (this.a != null) {
            this.a.a();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(a observer) {
        this.a = observer;
    }
}
