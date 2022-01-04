package android.support.v4.view;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.PagerAdapter;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;
import com.lenovo.lps.sus.c.c;
import java.util.ArrayList;

public class ViewPager extends ViewGroup {
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private final ArrayList<b> a = new ArrayList<>();
    private PagerAdapter b;
    private int c;
    private int d = -1;
    private Parcelable e = null;
    private ClassLoader f = null;
    private Scroller g;
    private PagerAdapter.a h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private float r;
    private float s;
    private float t;
    private int u = -1;
    private VelocityTracker v;
    private int w;
    private int x;
    private OnPageChangeListener y;
    private int z = 0;

    public interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    /* access modifiers changed from: package-private */
    public static class b {
        Object a;
        int b;
        boolean c;

        b() {
        }
    }

    public static class SimpleOnPageChangeListener implements OnPageChangeListener {
        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }
    }

    public ViewPager(Context context) {
        super(context);
        b();
    }

    public ViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        b();
    }

    private void b() {
        setWillNotDraw(false);
        this.g = new Scroller(getContext());
        ViewConfiguration configuration = ViewConfiguration.get(getContext());
        this.q = ViewConfigurationCompat.getScaledPagingTouchSlop(configuration);
        this.w = configuration.getScaledMinimumFlingVelocity();
        this.x = configuration.getScaledMaximumFlingVelocity();
    }

    private void a(int newState) {
        if (this.z != newState) {
            this.z = newState;
            if (this.y != null) {
                this.y.onPageScrollStateChanged(newState);
            }
        }
    }

    public void setAdapter(PagerAdapter adapter) {
        if (this.b != null) {
            this.b.a(null);
        }
        this.b = adapter;
        if (this.b != null) {
            if (this.h == null) {
                this.h = new a(this, (byte) 0);
            }
            this.b.a(this.h);
            this.m = false;
            if (this.d >= 0) {
                this.b.restoreState(this.e, this.f);
                a(this.d, false, true);
                this.d = -1;
                this.e = null;
                this.f = null;
                return;
            }
            c();
        }
    }

    public PagerAdapter getAdapter() {
        return this.b;
    }

    public void setCurrentItem(int item) {
        this.m = false;
        a(item, true, false);
    }

    private void a(int item, boolean smoothScroll, boolean always) {
        if (this.b == null || this.b.getCount() <= 0) {
            a(false);
        } else if (always || this.c != item || this.a.size() == 0) {
            if (item < 0) {
                item = 0;
            } else if (item >= this.b.getCount()) {
                item = this.b.getCount() - 1;
            }
            if (item > this.c + 1 || item < this.c - 1) {
                for (int i2 = 0; i2 < this.a.size(); i2++) {
                    this.a.get(i2).c = true;
                }
            }
            boolean dispatchSelected = this.c != item;
            this.c = item;
            c();
            if (smoothScroll) {
                int width = getWidth() * item;
                if (getChildCount() == 0) {
                    a(false);
                } else {
                    int scrollX = getScrollX();
                    int scrollY = getScrollY();
                    int i3 = width - scrollX;
                    int i4 = 0 - scrollY;
                    if (i3 == 0 && i4 == 0) {
                        d();
                    } else {
                        a(true);
                        this.n = true;
                        a(2);
                        this.g.startScroll(scrollX, scrollY, i3, i4);
                        invalidate();
                    }
                }
                if (dispatchSelected && this.y != null) {
                    this.y.onPageSelected(item);
                    return;
                }
                return;
            }
            if (dispatchSelected && this.y != null) {
                this.y.onPageSelected(item);
            }
            d();
            scrollTo(getWidth() * item, 0);
        } else {
            a(false);
        }
    }

    public void setOnPageChangeListener(OnPageChangeListener listener) {
        this.y = listener;
    }

    private void a(int position, int index) {
        b ii = new b();
        ii.b = position;
        ii.a = this.b.instantiateItem(this, position);
        if (index < 0) {
            this.a.add(ii);
        } else {
            this.a.add(index, ii);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        boolean needPopulate;
        if (!this.a.isEmpty() || this.b.getCount() <= 0) {
            needPopulate = false;
        } else {
            needPopulate = true;
        }
        int newCurrItem = -1;
        int i2 = 0;
        while (i2 < this.a.size()) {
            b ii = this.a.get(i2);
            int newPos = this.b.getItemPosition(ii.a);
            if (newPos != -1) {
                if (newPos == -2) {
                    this.a.remove(i2);
                    i2--;
                    this.b.destroyItem(this, ii.b, ii.a);
                    needPopulate = true;
                    if (this.c == ii.b) {
                        newCurrItem = Math.max(0, Math.min(this.c, this.b.getCount() - 1));
                    }
                } else if (ii.b != newPos) {
                    if (ii.b == this.c) {
                        newCurrItem = newPos;
                    }
                    ii.b = newPos;
                    needPopulate = true;
                }
            }
            i2++;
        }
        if (newCurrItem >= 0) {
            a(newCurrItem, false, true);
            needPopulate = true;
        }
        if (needPopulate) {
            c();
            requestLayout();
        }
    }

    private void c() {
        if (this.b != null && !this.m && getWindowToken() != null) {
            this.b.startUpdate(this);
            int startPos = this.c > 0 ? this.c - 1 : this.c;
            int N = this.b.getCount();
            int endPos = this.c < N + -1 ? this.c + 1 : N - 1;
            int lastPos = -1;
            int i2 = 0;
            while (i2 < this.a.size()) {
                b ii = this.a.get(i2);
                if ((ii.b < startPos || ii.b > endPos) && !ii.c) {
                    this.a.remove(i2);
                    i2--;
                    this.b.destroyItem(this, ii.b, ii.a);
                } else if (lastPos < endPos && ii.b > startPos) {
                    int lastPos2 = lastPos + 1;
                    if (lastPos2 < startPos) {
                        lastPos2 = startPos;
                    }
                    while (lastPos2 <= endPos && lastPos2 < ii.b) {
                        a(lastPos2, i2);
                        lastPos2++;
                        i2++;
                    }
                }
                lastPos = ii.b;
                i2++;
            }
            int lastPos3 = this.a.size() > 0 ? this.a.get(this.a.size() - 1).b : -1;
            if (lastPos3 < endPos) {
                int lastPos4 = lastPos3 + 1;
                if (lastPos4 <= startPos) {
                    lastPos4 = startPos;
                }
                while (lastPos4 <= endPos) {
                    a(lastPos4, -1);
                    lastPos4++;
                }
            }
            this.b.finishUpdate(this);
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>() {
            /* class android.support.v4.view.ViewPager.SavedState.AnonymousClass1 */

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.support.v4.os.ParcelableCompatCreatorCallbacks
            public final /* synthetic */ SavedState createFromParcel(Parcel x0, ClassLoader x1) {
                return new SavedState(x0, x1);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.support.v4.os.ParcelableCompatCreatorCallbacks
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int x0) {
                return new SavedState[x0];
            }
        });
        int a;
        Parcelable b;
        ClassLoader c;

        public SavedState(Parcelable superState) {
            super(superState);
        }

        public void writeToParcel(Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeInt(this.a);
            out.writeParcelable(this.b, flags);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + c.Q;
        }

        SavedState(Parcel in, ClassLoader loader) {
            super(in);
            loader = loader == null ? getClass().getClassLoader() : loader;
            this.a = in.readInt();
            this.b = in.readParcelable(loader);
            this.c = loader;
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState ss = new SavedState(super.onSaveInstanceState());
        ss.a = this.c;
        ss.b = this.b.saveState();
        return ss;
    }

    public void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        SavedState ss = (SavedState) state;
        super.onRestoreInstanceState(ss.getSuperState());
        if (this.b != null) {
            this.b.restoreState(ss.b, ss.c);
            a(ss.a, false, true);
            return;
        }
        this.d = ss.a;
        this.e = ss.b;
        this.f = ss.c;
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        if (this.k) {
            addViewInLayout(child, index, params);
            child.measure(this.i, this.j);
            return;
        }
        super.addView(child, index, params);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.b != null) {
            c();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(getDefaultSize(0, widthMeasureSpec), getDefaultSize(0, heightMeasureSpec));
        this.i = View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824);
        this.j = View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824);
        this.k = true;
        c();
        this.k = false;
        int size = getChildCount();
        for (int i2 = 0; i2 < size; i2++) {
            View child = getChildAt(i2);
            if (child.getVisibility() != 8) {
                child.measure(this.i, this.j);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int w2, int h2, int oldw, int oldh) {
        super.onSizeChanged(w2, h2, oldw, oldh);
        int scrollPos = this.c * w2;
        if (scrollPos != getScrollX()) {
            d();
            scrollTo(scrollPos, getScrollY());
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean changed, int l2, int t2, int r2, int b2) {
        b ii;
        this.k = true;
        c();
        this.k = false;
        int count = getChildCount();
        int width = r2 - l2;
        for (int i2 = 0; i2 < count; i2++) {
            View child = getChildAt(i2);
            if (child.getVisibility() != 8) {
                int i3 = 0;
                while (true) {
                    if (i3 >= this.a.size()) {
                        ii = null;
                        break;
                    }
                    b bVar = this.a.get(i3);
                    if (this.b.isViewFromObject(child, bVar.a)) {
                        ii = bVar;
                        break;
                    }
                    i3++;
                }
                if (ii != null) {
                    int childLeft = getPaddingLeft() + (width * ii.b);
                    int childTop = getPaddingTop();
                    child.layout(childLeft, childTop, child.getMeasuredWidth() + childLeft, child.getMeasuredHeight() + childTop);
                }
            }
        }
    }

    public void computeScroll() {
        if (this.g.isFinished() || !this.g.computeScrollOffset()) {
            d();
            return;
        }
        int oldX = getScrollX();
        int oldY = getScrollY();
        int x2 = this.g.getCurrX();
        int y2 = this.g.getCurrY();
        if (!(oldX == x2 && oldY == y2)) {
            scrollTo(x2, y2);
        }
        if (this.y != null) {
            int width = getWidth();
            int offsetPixels = x2 % width;
            OnPageChangeListener onPageChangeListener = this.y;
            onPageChangeListener.onPageScrolled(x2 / width, ((float) offsetPixels) / ((float) width), offsetPixels);
        }
        invalidate();
    }

    private void d() {
        boolean needPopulate = this.n;
        if (needPopulate) {
            a(false);
            this.g.abortAnimation();
            int oldX = getScrollX();
            int oldY = getScrollY();
            int x2 = this.g.getCurrX();
            int y2 = this.g.getCurrY();
            if (!(oldX == x2 && oldY == y2)) {
                scrollTo(x2, y2);
            }
            a(0);
        }
        this.m = false;
        this.n = false;
        for (int i2 = 0; i2 < this.a.size(); i2++) {
            b ii = this.a.get(i2);
            if (ii.c) {
                needPopulate = true;
                ii.c = false;
            }
        }
        if (needPopulate) {
            c();
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getAction() & 255;
        if (action == 3 || action == 1) {
            this.o = false;
            this.p = false;
            this.u = -1;
            return false;
        }
        if (action != 0) {
            if (this.o) {
                return true;
            }
            if (this.p) {
                return false;
            }
        }
        switch (action) {
            case 0:
                float x2 = ev.getX();
                this.r = x2;
                this.s = x2;
                this.t = ev.getY();
                this.u = MotionEventCompat.getPointerId(ev, 0);
                if (this.z != 2) {
                    d();
                    this.o = false;
                    this.p = false;
                    break;
                } else {
                    this.o = true;
                    this.p = false;
                    a(1);
                    break;
                }
            case 2:
                int activePointerId = this.u;
                if (activePointerId != -1) {
                    int pointerIndex = MotionEventCompat.findPointerIndex(ev, activePointerId);
                    float x3 = MotionEventCompat.getX(ev, pointerIndex);
                    float xDiff = Math.abs(x3 - this.s);
                    float yDiff = Math.abs(MotionEventCompat.getY(ev, pointerIndex) - this.t);
                    if (xDiff <= ((float) this.q) || xDiff <= yDiff) {
                        if (yDiff > ((float) this.q)) {
                            this.p = true;
                            break;
                        }
                    } else {
                        this.o = true;
                        a(1);
                        this.s = x3;
                        a(true);
                        break;
                    }
                }
                break;
            case 6:
                a(ev);
                break;
        }
        return this.o;
    }

    public boolean onTouchEvent(MotionEvent ev) {
        if ((ev.getAction() == 0 && ev.getEdgeFlags() != 0) || this.b == null || this.b.getCount() == 0) {
            return false;
        }
        if (this.v == null) {
            this.v = VelocityTracker.obtain();
        }
        this.v.addMovement(ev);
        switch (ev.getAction() & 255) {
            case 0:
                d();
                float x2 = ev.getX();
                this.r = x2;
                this.s = x2;
                this.u = MotionEventCompat.getPointerId(ev, 0);
                break;
            case 1:
                if (this.o) {
                    VelocityTracker velocityTracker = this.v;
                    velocityTracker.computeCurrentVelocity(1000, (float) this.x);
                    this.m = true;
                    if (Math.abs((int) VelocityTrackerCompat.getYVelocity(velocityTracker, this.u)) <= this.w && Math.abs(this.r - this.s) < ((float) (getWidth() / 3))) {
                        a(this.c, true, true);
                    } else if (this.s > this.r) {
                        a(this.c - 1, true, true);
                    } else {
                        a(this.c + 1, true, true);
                    }
                    this.u = -1;
                    e();
                    break;
                }
                break;
            case 2:
                if (!this.o) {
                    int pointerIndex = MotionEventCompat.findPointerIndex(ev, this.u);
                    float x3 = MotionEventCompat.getX(ev, pointerIndex);
                    float xDiff = Math.abs(x3 - this.s);
                    float yDiff = Math.abs(MotionEventCompat.getY(ev, pointerIndex) - this.t);
                    if (xDiff > ((float) this.q) && xDiff > yDiff) {
                        this.o = true;
                        this.s = x3;
                        a(1);
                        a(true);
                    }
                }
                if (this.o) {
                    float x4 = MotionEventCompat.getX(ev, MotionEventCompat.findPointerIndex(ev, this.u));
                    float deltaX = this.s - x4;
                    this.s = x4;
                    float scrollX = ((float) getScrollX()) + deltaX;
                    int width = getWidth();
                    float leftBound = (float) Math.max(0, (this.c - 1) * width);
                    float rightBound = (float) (Math.min(this.c + 1, this.b.getCount() - 1) * width);
                    if (scrollX < leftBound) {
                        scrollX = leftBound;
                    } else if (scrollX > rightBound) {
                        scrollX = rightBound;
                    }
                    this.s += scrollX - ((float) ((int) scrollX));
                    scrollTo((int) scrollX, getScrollY());
                    if (this.y != null) {
                        int positionOffsetPixels = ((int) scrollX) % width;
                        this.y.onPageScrolled(((int) scrollX) / width, ((float) positionOffsetPixels) / ((float) width), positionOffsetPixels);
                        break;
                    }
                }
                break;
            case 3:
                if (this.o) {
                    a(this.c, true, true);
                    this.u = -1;
                    e();
                    break;
                }
                break;
            case 5:
                int index = MotionEventCompat.getActionIndex(ev);
                this.s = MotionEventCompat.getX(ev, index);
                this.u = MotionEventCompat.getPointerId(ev, index);
                break;
            case 6:
                a(ev);
                this.s = MotionEventCompat.getX(ev, MotionEventCompat.findPointerIndex(ev, this.u));
                break;
        }
        return true;
    }

    private void a(MotionEvent ev) {
        int pointerIndex = MotionEventCompat.getActionIndex(ev);
        if (MotionEventCompat.getPointerId(ev, pointerIndex) == this.u) {
            int newPointerIndex = pointerIndex == 0 ? 1 : 0;
            this.s = MotionEventCompat.getX(ev, newPointerIndex);
            this.u = MotionEventCompat.getPointerId(ev, newPointerIndex);
            if (this.v != null) {
                this.v.clear();
            }
        }
    }

    private void e() {
        this.o = false;
        this.p = false;
        if (this.v != null) {
            this.v.recycle();
            this.v = null;
        }
    }

    private void a(boolean enabled) {
        if (this.l != enabled) {
            this.l = enabled;
        }
    }

    private class a implements PagerAdapter.a {
        private a() {
        }

        /* synthetic */ a(ViewPager x0, byte b) {
            this();
        }

        @Override // android.support.v4.view.PagerAdapter.a
        public final void a() {
            ViewPager.this.a();
        }
    }
}
