package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.v4.app.BackStackRecord;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.os.BuildCompat;
import android.support.v4.os.EnvironmentCompat;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* access modifiers changed from: package-private */
/* compiled from: FragmentManager */
public final class FragmentManagerImpl extends FragmentManager implements LayoutInflaterFactory {
    static final Interpolator ACCELERATE_CUBIC = new AccelerateInterpolator(1.5f);
    static final Interpolator ACCELERATE_QUINT = new AccelerateInterpolator(2.5f);
    static final int ANIM_DUR = 220;
    public static final int ANIM_STYLE_CLOSE_ENTER = 3;
    public static final int ANIM_STYLE_CLOSE_EXIT = 4;
    public static final int ANIM_STYLE_FADE_ENTER = 5;
    public static final int ANIM_STYLE_FADE_EXIT = 6;
    public static final int ANIM_STYLE_OPEN_ENTER = 1;
    public static final int ANIM_STYLE_OPEN_EXIT = 2;
    static boolean DEBUG = false;
    static final Interpolator DECELERATE_CUBIC = new DecelerateInterpolator(1.5f);
    static final Interpolator DECELERATE_QUINT = new DecelerateInterpolator(2.5f);
    static final boolean HONEYCOMB;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    static Field sAnimationListenerField = null;
    ArrayList<Fragment> mActive;
    ArrayList<Fragment> mAdded;
    ArrayList<Integer> mAvailBackStackIndices;
    ArrayList<Integer> mAvailIndices;
    ArrayList<BackStackRecord> mBackStack;
    ArrayList<FragmentManager.OnBackStackChangedListener> mBackStackChangeListeners;
    ArrayList<BackStackRecord> mBackStackIndices;
    FragmentContainer mContainer;
    FragmentController mController;
    ArrayList<Fragment> mCreatedMenus;
    int mCurState = 0;
    boolean mDestroyed;
    Runnable mExecCommit = new Runnable() {
        /* class android.support.v4.app.FragmentManagerImpl.AnonymousClass1 */

        public void run() {
            FragmentManagerImpl.this.execPendingActions();
        }
    };
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    FragmentHostCallback mHost;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList<Runnable> mPendingActions;
    SparseArray<Parcelable> mStateArray = null;
    Bundle mStateBundle = null;
    boolean mStateSaved;
    Runnable[] mTmpActions;

    FragmentManagerImpl() {
    }

    static {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 11) {
            z = true;
        }
        HONEYCOMB = z;
    }

    /* access modifiers changed from: package-private */
    /* compiled from: FragmentManager */
    public static class AnimateOnHWLayerIfNeededListener implements Animation.AnimationListener {
        private Animation.AnimationListener mOriginalListener;
        private boolean mShouldRunOnHWLayer;
        View mView;

        public AnimateOnHWLayerIfNeededListener(View v, Animation anim) {
            if (v != null && anim != null) {
                this.mView = v;
            }
        }

        public AnimateOnHWLayerIfNeededListener(View v, Animation anim, Animation.AnimationListener listener) {
            if (v != null && anim != null) {
                this.mOriginalListener = listener;
                this.mView = v;
                this.mShouldRunOnHWLayer = true;
            }
        }

        @CallSuper
        public void onAnimationStart(Animation animation) {
            if (this.mOriginalListener != null) {
                this.mOriginalListener.onAnimationStart(animation);
            }
        }

        @CallSuper
        public void onAnimationEnd(Animation animation) {
            if (this.mView != null && this.mShouldRunOnHWLayer) {
                if (ViewCompat.isAttachedToWindow(this.mView) || BuildCompat.isAtLeastN()) {
                    this.mView.post(new Runnable() {
                        /* class android.support.v4.app.FragmentManagerImpl.AnimateOnHWLayerIfNeededListener.AnonymousClass1 */

                        public void run() {
                            ViewCompat.setLayerType(AnimateOnHWLayerIfNeededListener.this.mView, 0, null);
                        }
                    });
                } else {
                    ViewCompat.setLayerType(this.mView, 0, null);
                }
            }
            if (this.mOriginalListener != null) {
                this.mOriginalListener.onAnimationEnd(animation);
            }
        }

        public void onAnimationRepeat(Animation animation) {
            if (this.mOriginalListener != null) {
                this.mOriginalListener.onAnimationRepeat(animation);
            }
        }
    }

    static boolean modifiesAlpha(Animation anim) {
        if (anim instanceof AlphaAnimation) {
            return true;
        }
        if (anim instanceof AnimationSet) {
            List<Animation> anims = ((AnimationSet) anim).getAnimations();
            for (int i = 0; i < anims.size(); i++) {
                if (anims.get(i) instanceof AlphaAnimation) {
                    return true;
                }
            }
        }
        return false;
    }

    static boolean shouldRunOnHWLayer(View v, Animation anim) {
        return Build.VERSION.SDK_INT >= 19 && ViewCompat.getLayerType(v) == 0 && ViewCompat.hasOverlappingRendering(v) && modifiesAlpha(anim);
    }

    private void throwException(RuntimeException ex) {
        Log.e(TAG, ex.getMessage());
        Log.e(TAG, "Activity state:");
        PrintWriter pw = new PrintWriter(new LogWriter(TAG));
        if (this.mHost != null) {
            try {
                this.mHost.onDump("  ", null, pw, new String[0]);
            } catch (Exception e) {
                Log.e(TAG, "Failed dumping state", e);
            }
        } else {
            try {
                dump("  ", null, pw, new String[0]);
            } catch (Exception e2) {
                Log.e(TAG, "Failed dumping state", e2);
            }
        }
        throw ex;
    }

    @Override // android.support.v4.app.FragmentManager
    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    @Override // android.support.v4.app.FragmentManager
    public boolean executePendingTransactions() {
        return execPendingActions();
    }

    @Override // android.support.v4.app.FragmentManager
    public void popBackStack() {
        enqueueAction(new Runnable() {
            /* class android.support.v4.app.FragmentManagerImpl.AnonymousClass2 */

            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), null, -1, 0);
            }
        }, false);
    }

    @Override // android.support.v4.app.FragmentManager
    public boolean popBackStackImmediate() {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mHost.getHandler(), null, -1, 0);
    }

    @Override // android.support.v4.app.FragmentManager
    public void popBackStack(final String name, final int flags) {
        enqueueAction(new Runnable() {
            /* class android.support.v4.app.FragmentManagerImpl.AnonymousClass3 */

            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), name, -1, flags);
            }
        }, false);
    }

    @Override // android.support.v4.app.FragmentManager
    public boolean popBackStackImmediate(String name, int flags) {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mHost.getHandler(), name, -1, flags);
    }

    @Override // android.support.v4.app.FragmentManager
    public void popBackStack(final int id, final int flags) {
        if (id < 0) {
            throw new IllegalArgumentException("Bad id: " + id);
        }
        enqueueAction(new Runnable() {
            /* class android.support.v4.app.FragmentManagerImpl.AnonymousClass4 */

            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), null, id, flags);
            }
        }, false);
    }

    @Override // android.support.v4.app.FragmentManager
    public boolean popBackStackImmediate(int id, int flags) {
        checkStateLoss();
        executePendingTransactions();
        if (id >= 0) {
            return popBackStackState(this.mHost.getHandler(), null, id, flags);
        }
        throw new IllegalArgumentException("Bad id: " + id);
    }

    @Override // android.support.v4.app.FragmentManager
    public int getBackStackEntryCount() {
        if (this.mBackStack != null) {
            return this.mBackStack.size();
        }
        return 0;
    }

    @Override // android.support.v4.app.FragmentManager
    public FragmentManager.BackStackEntry getBackStackEntryAt(int index) {
        return this.mBackStack.get(index);
    }

    @Override // android.support.v4.app.FragmentManager
    public void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener listener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList<>();
        }
        this.mBackStackChangeListeners.add(listener);
    }

    @Override // android.support.v4.app.FragmentManager
    public void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener listener) {
        if (this.mBackStackChangeListeners != null) {
            this.mBackStackChangeListeners.remove(listener);
        }
    }

    @Override // android.support.v4.app.FragmentManager
    public void putFragment(Bundle bundle, String key, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(key, fragment.mIndex);
    }

    @Override // android.support.v4.app.FragmentManager
    public Fragment getFragment(Bundle bundle, String key) {
        int index = bundle.getInt(key, -1);
        if (index == -1) {
            return null;
        }
        if (index >= this.mActive.size()) {
            throwException(new IllegalStateException("Fragment no longer exists for key " + key + ": index " + index));
        }
        Fragment f = this.mActive.get(index);
        if (f != null) {
            return f;
        }
        throwException(new IllegalStateException("Fragment no longer exists for key " + key + ": index " + index));
        return f;
    }

    @Override // android.support.v4.app.FragmentManager
    public List<Fragment> getFragments() {
        return this.mActive;
    }

    @Override // android.support.v4.app.FragmentManager
    public Fragment.SavedState saveFragmentInstanceState(Fragment fragment) {
        Bundle result;
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.mState <= 0 || (result = saveFragmentBasicState(fragment)) == null) {
            return null;
        }
        return new Fragment.SavedState(result);
    }

    @Override // android.support.v4.app.FragmentManager
    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.mParent != null) {
            DebugUtils.buildShortClassTag(this.mParent, sb);
        } else {
            DebugUtils.buildShortClassTag(this.mHost, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    @Override // android.support.v4.app.FragmentManager
    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        int N;
        int N2;
        int N3;
        int N4;
        int N5;
        int N6;
        String innerPrefix = prefix + "    ";
        if (this.mActive != null && (N6 = this.mActive.size()) > 0) {
            writer.print(prefix);
            writer.print("Active Fragments in ");
            writer.print(Integer.toHexString(System.identityHashCode(this)));
            writer.println(":");
            for (int i = 0; i < N6; i++) {
                Fragment f = this.mActive.get(i);
                writer.print(prefix);
                writer.print("  #");
                writer.print(i);
                writer.print(": ");
                writer.println(f);
                if (f != null) {
                    f.dump(innerPrefix, fd, writer, args);
                }
            }
        }
        if (this.mAdded != null && (N5 = this.mAdded.size()) > 0) {
            writer.print(prefix);
            writer.println("Added Fragments:");
            for (int i2 = 0; i2 < N5; i2++) {
                writer.print(prefix);
                writer.print("  #");
                writer.print(i2);
                writer.print(": ");
                writer.println(this.mAdded.get(i2).toString());
            }
        }
        if (this.mCreatedMenus != null && (N4 = this.mCreatedMenus.size()) > 0) {
            writer.print(prefix);
            writer.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < N4; i3++) {
                writer.print(prefix);
                writer.print("  #");
                writer.print(i3);
                writer.print(": ");
                writer.println(this.mCreatedMenus.get(i3).toString());
            }
        }
        if (this.mBackStack != null && (N3 = this.mBackStack.size()) > 0) {
            writer.print(prefix);
            writer.println("Back Stack:");
            for (int i4 = 0; i4 < N3; i4++) {
                BackStackRecord bs = this.mBackStack.get(i4);
                writer.print(prefix);
                writer.print("  #");
                writer.print(i4);
                writer.print(": ");
                writer.println(bs.toString());
                bs.dump(innerPrefix, fd, writer, args);
            }
        }
        synchronized (this) {
            if (this.mBackStackIndices != null && (N2 = this.mBackStackIndices.size()) > 0) {
                writer.print(prefix);
                writer.println("Back Stack Indices:");
                for (int i5 = 0; i5 < N2; i5++) {
                    writer.print(prefix);
                    writer.print("  #");
                    writer.print(i5);
                    writer.print(": ");
                    writer.println(this.mBackStackIndices.get(i5));
                }
            }
            if (this.mAvailBackStackIndices != null && this.mAvailBackStackIndices.size() > 0) {
                writer.print(prefix);
                writer.print("mAvailBackStackIndices: ");
                writer.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
            }
        }
        if (this.mPendingActions != null && (N = this.mPendingActions.size()) > 0) {
            writer.print(prefix);
            writer.println("Pending Actions:");
            for (int i6 = 0; i6 < N; i6++) {
                writer.print(prefix);
                writer.print("  #");
                writer.print(i6);
                writer.print(": ");
                writer.println(this.mPendingActions.get(i6));
            }
        }
        writer.print(prefix);
        writer.println("FragmentManager misc state:");
        writer.print(prefix);
        writer.print("  mHost=");
        writer.println(this.mHost);
        writer.print(prefix);
        writer.print("  mContainer=");
        writer.println(this.mContainer);
        if (this.mParent != null) {
            writer.print(prefix);
            writer.print("  mParent=");
            writer.println(this.mParent);
        }
        writer.print(prefix);
        writer.print("  mCurState=");
        writer.print(this.mCurState);
        writer.print(" mStateSaved=");
        writer.print(this.mStateSaved);
        writer.print(" mDestroyed=");
        writer.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            writer.print(prefix);
            writer.print("  mNeedMenuInvalidate=");
            writer.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            writer.print(prefix);
            writer.print("  mNoTransactionsBecause=");
            writer.println(this.mNoTransactionsBecause);
        }
        if (this.mAvailIndices != null && this.mAvailIndices.size() > 0) {
            writer.print(prefix);
            writer.print("  mAvailIndices: ");
            writer.println(Arrays.toString(this.mAvailIndices.toArray()));
        }
    }

    static Animation makeOpenCloseAnimation(Context context, float startScale, float endScale, float startAlpha, float endAlpha) {
        AnimationSet set = new AnimationSet(false);
        ScaleAnimation scale = new ScaleAnimation(startScale, endScale, startScale, endScale, 1, 0.5f, 1, 0.5f);
        scale.setInterpolator(DECELERATE_QUINT);
        scale.setDuration(220);
        set.addAnimation(scale);
        AlphaAnimation alpha = new AlphaAnimation(startAlpha, endAlpha);
        alpha.setInterpolator(DECELERATE_CUBIC);
        alpha.setDuration(220);
        set.addAnimation(alpha);
        return set;
    }

    static Animation makeFadeAnimation(Context context, float start, float end) {
        AlphaAnimation anim = new AlphaAnimation(start, end);
        anim.setInterpolator(DECELERATE_CUBIC);
        anim.setDuration(220);
        return anim;
    }

    /* access modifiers changed from: package-private */
    public Animation loadAnimation(Fragment fragment, int transit, boolean enter, int transitionStyle) {
        Animation anim;
        Animation animObj = fragment.onCreateAnimation(transit, enter, fragment.mNextAnim);
        if (animObj != null) {
            return animObj;
        }
        if (fragment.mNextAnim != 0 && (anim = AnimationUtils.loadAnimation(this.mHost.getContext(), fragment.mNextAnim)) != null) {
            return anim;
        }
        if (transit == 0) {
            return null;
        }
        int styleIndex = transitToStyleIndex(transit, enter);
        if (styleIndex < 0) {
            return null;
        }
        switch (styleIndex) {
            case 1:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return makeOpenCloseAnimation(this.mHost.getContext(), 0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return makeFadeAnimation(this.mHost.getContext(), 0.0f, 1.0f);
            case 6:
                return makeFadeAnimation(this.mHost.getContext(), 1.0f, 0.0f);
            default:
                if (transitionStyle == 0 && this.mHost.onHasWindowAnimations()) {
                    transitionStyle = this.mHost.onGetWindowAnimations();
                }
                return transitionStyle == 0 ? null : null;
        }
    }

    public void performPendingDeferredStart(Fragment f) {
        if (!f.mDeferStart) {
            return;
        }
        if (this.mExecutingActions) {
            this.mHavePendingDeferredStart = true;
            return;
        }
        f.mDeferStart = false;
        moveToState(f, this.mCurState, 0, 0, false);
    }

    private void setHWLayerAnimListenerIfAlpha(View v, Animation anim) {
        if (v != null && anim != null && shouldRunOnHWLayer(v, anim)) {
            Animation.AnimationListener originalListener = null;
            try {
                if (sAnimationListenerField == null) {
                    sAnimationListenerField = Animation.class.getDeclaredField("mListener");
                    sAnimationListenerField.setAccessible(true);
                }
                originalListener = (Animation.AnimationListener) sAnimationListenerField.get(anim);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, "No field with the name mListener is found in Animation class", e);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, "Cannot access Animation's mListener field", e2);
            }
            ViewCompat.setLayerType(v, 2, null);
            anim.setAnimationListener(new AnimateOnHWLayerIfNeededListener(v, anim, originalListener));
        }
    }

    /* access modifiers changed from: package-private */
    public boolean isStateAtLeast(int state) {
        return this.mCurState >= state;
    }

    /* access modifiers changed from: package-private */
    public void moveToState(final Fragment f, int newState, int transit, int transitionStyle, boolean keepActive) {
        String resName;
        FragmentManagerImpl fragmentManagerImpl;
        if ((!f.mAdded || f.mDetached) && newState > 1) {
            newState = 1;
        }
        if (f.mRemoving && newState > f.mState) {
            newState = f.mState;
        }
        if (f.mDeferStart && f.mState < 4 && newState > 3) {
            newState = 3;
        }
        if (f.mState >= newState) {
            if (f.mState > newState) {
                switch (f.mState) {
                    case 5:
                        if (newState < 5) {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom RESUMED: " + f);
                            }
                            f.performPause();
                        }
                    case 4:
                        if (newState < 4) {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom STARTED: " + f);
                            }
                            f.performStop();
                        }
                    case 3:
                        if (newState < 3) {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom STOPPED: " + f);
                            }
                            f.performReallyStop();
                        }
                    case 2:
                        if (newState < 2) {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom ACTIVITY_CREATED: " + f);
                            }
                            if (f.mView != null && this.mHost.onShouldSaveFragmentState(f) && f.mSavedViewState == null) {
                                saveFragmentViewState(f);
                            }
                            f.performDestroyView();
                            if (!(f.mView == null || f.mContainer == null)) {
                                Animation anim = null;
                                if (this.mCurState > 0 && !this.mDestroyed) {
                                    anim = loadAnimation(f, transit, false, transitionStyle);
                                }
                                if (anim != null) {
                                    f.mAnimatingAway = f.mView;
                                    f.mStateAfterAnimating = newState;
                                    anim.setAnimationListener(new AnimateOnHWLayerIfNeededListener(f.mView, anim) {
                                        /* class android.support.v4.app.FragmentManagerImpl.AnonymousClass5 */

                                        @Override // android.support.v4.app.FragmentManagerImpl.AnimateOnHWLayerIfNeededListener
                                        public void onAnimationEnd(Animation animation) {
                                            super.onAnimationEnd(animation);
                                            if (f.mAnimatingAway != null) {
                                                f.mAnimatingAway = null;
                                                FragmentManagerImpl.this.moveToState(f, f.mStateAfterAnimating, 0, 0, false);
                                            }
                                        }
                                    });
                                    f.mView.startAnimation(anim);
                                }
                                f.mContainer.removeView(f.mView);
                            }
                            f.mContainer = null;
                            f.mView = null;
                            f.mInnerView = null;
                        }
                    case 1:
                        if (newState < 1) {
                            if (this.mDestroyed && f.mAnimatingAway != null) {
                                View v = f.mAnimatingAway;
                                f.mAnimatingAway = null;
                                v.clearAnimation();
                            }
                            if (f.mAnimatingAway == null) {
                                if (DEBUG) {
                                    Log.v(TAG, "movefrom CREATED: " + f);
                                }
                                if (!f.mRetaining) {
                                    f.performDestroy();
                                } else {
                                    f.mState = 0;
                                }
                                f.performDetach();
                                if (!keepActive) {
                                    if (f.mRetaining) {
                                        f.mHost = null;
                                        f.mParentFragment = null;
                                        f.mFragmentManager = null;
                                        break;
                                    } else {
                                        makeInactive(f);
                                        break;
                                    }
                                }
                            } else {
                                f.mStateAfterAnimating = newState;
                                newState = 1;
                                break;
                            }
                        }
                        break;
                }
            }
        } else if (!f.mFromLayout || f.mInLayout) {
            if (f.mAnimatingAway != null) {
                f.mAnimatingAway = null;
                moveToState(f, f.mStateAfterAnimating, 0, 0, true);
            }
            switch (f.mState) {
                case 0:
                    if (DEBUG) {
                        Log.v(TAG, "moveto CREATED: " + f);
                    }
                    if (f.mSavedFragmentState != null) {
                        f.mSavedFragmentState.setClassLoader(this.mHost.getContext().getClassLoader());
                        f.mSavedViewState = f.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                        f.mTarget = getFragment(f.mSavedFragmentState, TARGET_STATE_TAG);
                        if (f.mTarget != null) {
                            f.mTargetRequestCode = f.mSavedFragmentState.getInt(TARGET_REQUEST_CODE_STATE_TAG, 0);
                        }
                        f.mUserVisibleHint = f.mSavedFragmentState.getBoolean(USER_VISIBLE_HINT_TAG, true);
                        if (!f.mUserVisibleHint) {
                            f.mDeferStart = true;
                            if (newState > 3) {
                                newState = 3;
                            }
                        }
                    }
                    f.mHost = this.mHost;
                    f.mParentFragment = this.mParent;
                    if (this.mParent != null) {
                        fragmentManagerImpl = this.mParent.mChildFragmentManager;
                    } else {
                        fragmentManagerImpl = this.mHost.getFragmentManagerImpl();
                    }
                    f.mFragmentManager = fragmentManagerImpl;
                    f.mCalled = false;
                    f.onAttach(this.mHost.getContext());
                    if (!f.mCalled) {
                        throw new SuperNotCalledException("Fragment " + f + " did not call through to super.onAttach()");
                    }
                    if (f.mParentFragment == null) {
                        this.mHost.onAttachFragment(f);
                    } else {
                        f.mParentFragment.onAttachFragment(f);
                    }
                    if (!f.mRetaining) {
                        f.performCreate(f.mSavedFragmentState);
                    } else {
                        f.restoreChildFragmentState(f.mSavedFragmentState);
                        f.mState = 1;
                    }
                    f.mRetaining = false;
                    if (f.mFromLayout) {
                        f.mView = f.performCreateView(f.getLayoutInflater(f.mSavedFragmentState), null, f.mSavedFragmentState);
                        if (f.mView != null) {
                            f.mInnerView = f.mView;
                            if (Build.VERSION.SDK_INT >= 11) {
                                ViewCompat.setSaveFromParentEnabled(f.mView, false);
                            } else {
                                f.mView = NoSaveStateFrameLayout.wrap(f.mView);
                            }
                            if (f.mHidden) {
                                f.mView.setVisibility(8);
                            }
                            f.onViewCreated(f.mView, f.mSavedFragmentState);
                        } else {
                            f.mInnerView = null;
                        }
                    }
                case 1:
                    if (newState > 1) {
                        if (DEBUG) {
                            Log.v(TAG, "moveto ACTIVITY_CREATED: " + f);
                        }
                        if (!f.mFromLayout) {
                            ViewGroup container = null;
                            if (f.mContainerId != 0) {
                                if (f.mContainerId == -1) {
                                    throwException(new IllegalArgumentException("Cannot create fragment " + f + " for a container view with no id"));
                                }
                                container = (ViewGroup) this.mContainer.onFindViewById(f.mContainerId);
                                if (container == null && !f.mRestored) {
                                    try {
                                        resName = f.getResources().getResourceName(f.mContainerId);
                                    } catch (Resources.NotFoundException e) {
                                        resName = EnvironmentCompat.MEDIA_UNKNOWN;
                                    }
                                    throwException(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(f.mContainerId) + " (" + resName + ") for fragment " + f));
                                }
                            }
                            f.mContainer = container;
                            f.mView = f.performCreateView(f.getLayoutInflater(f.mSavedFragmentState), container, f.mSavedFragmentState);
                            if (f.mView != null) {
                                f.mInnerView = f.mView;
                                if (Build.VERSION.SDK_INT >= 11) {
                                    ViewCompat.setSaveFromParentEnabled(f.mView, false);
                                } else {
                                    f.mView = NoSaveStateFrameLayout.wrap(f.mView);
                                }
                                if (container != null) {
                                    Animation anim2 = loadAnimation(f, transit, true, transitionStyle);
                                    if (anim2 != null) {
                                        setHWLayerAnimListenerIfAlpha(f.mView, anim2);
                                        f.mView.startAnimation(anim2);
                                    }
                                    container.addView(f.mView);
                                }
                                if (f.mHidden) {
                                    f.mView.setVisibility(8);
                                }
                                f.onViewCreated(f.mView, f.mSavedFragmentState);
                            } else {
                                f.mInnerView = null;
                            }
                        }
                        f.performActivityCreated(f.mSavedFragmentState);
                        if (f.mView != null) {
                            f.restoreViewState(f.mSavedFragmentState);
                        }
                        f.mSavedFragmentState = null;
                    }
                case 2:
                    if (newState > 2) {
                        f.mState = 3;
                    }
                case 3:
                    if (newState > 3) {
                        if (DEBUG) {
                            Log.v(TAG, "moveto STARTED: " + f);
                        }
                        f.performStart();
                    }
                case 4:
                    if (newState > 4) {
                        if (DEBUG) {
                            Log.v(TAG, "moveto RESUMED: " + f);
                        }
                        f.performResume();
                        f.mSavedFragmentState = null;
                        f.mSavedViewState = null;
                        break;
                    }
                    break;
            }
        } else {
            return;
        }
        if (f.mState != newState) {
            Log.w(TAG, "moveToState: Fragment state for " + f + " not updated inline; " + "expected state " + newState + " found " + f.mState);
            f.mState = newState;
        }
    }

    /* access modifiers changed from: package-private */
    public void moveToState(Fragment f) {
        moveToState(f, this.mCurState, 0, 0, false);
    }

    /* access modifiers changed from: package-private */
    public void moveToState(int newState, boolean always) {
        moveToState(newState, 0, 0, always);
    }

    /* access modifiers changed from: package-private */
    public void moveToState(int newState, int transit, int transitStyle, boolean always) {
        if (this.mHost == null && newState != 0) {
            throw new IllegalStateException("No host");
        } else if (always || this.mCurState != newState) {
            this.mCurState = newState;
            if (this.mActive != null) {
                boolean loadersRunning = false;
                for (int i = 0; i < this.mActive.size(); i++) {
                    Fragment f = this.mActive.get(i);
                    if (f != null) {
                        moveToState(f, newState, transit, transitStyle, false);
                        if (f.mLoaderManager != null) {
                            loadersRunning |= f.mLoaderManager.hasRunningLoaders();
                        }
                    }
                }
                if (!loadersRunning) {
                    startPendingDeferredFragments();
                }
                if (this.mNeedMenuInvalidate && this.mHost != null && this.mCurState == 5) {
                    this.mHost.onSupportInvalidateOptionsMenu();
                    this.mNeedMenuInvalidate = false;
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void startPendingDeferredFragments() {
        if (this.mActive != null) {
            for (int i = 0; i < this.mActive.size(); i++) {
                Fragment f = this.mActive.get(i);
                if (f != null) {
                    performPendingDeferredStart(f);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void makeActive(Fragment f) {
        if (f.mIndex < 0) {
            if (this.mAvailIndices == null || this.mAvailIndices.size() <= 0) {
                if (this.mActive == null) {
                    this.mActive = new ArrayList<>();
                }
                f.setIndex(this.mActive.size(), this.mParent);
                this.mActive.add(f);
            } else {
                f.setIndex(this.mAvailIndices.remove(this.mAvailIndices.size() - 1).intValue(), this.mParent);
                this.mActive.set(f.mIndex, f);
            }
            if (DEBUG) {
                Log.v(TAG, "Allocated fragment index " + f);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void makeInactive(Fragment f) {
        if (f.mIndex >= 0) {
            if (DEBUG) {
                Log.v(TAG, "Freeing fragment index " + f);
            }
            this.mActive.set(f.mIndex, null);
            if (this.mAvailIndices == null) {
                this.mAvailIndices = new ArrayList<>();
            }
            this.mAvailIndices.add(Integer.valueOf(f.mIndex));
            this.mHost.inactivateFragment(f.mWho);
            f.initState();
        }
    }

    public void addFragment(Fragment fragment, boolean moveToStateNow) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList<>();
        }
        if (DEBUG) {
            Log.v(TAG, "add: " + fragment);
        }
        makeActive(fragment);
        if (fragment.mDetached) {
            return;
        }
        if (this.mAdded.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        this.mAdded.add(fragment);
        fragment.mAdded = true;
        fragment.mRemoving = false;
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            this.mNeedMenuInvalidate = true;
        }
        if (moveToStateNow) {
            moveToState(fragment);
        }
    }

    public void removeFragment(Fragment fragment, int transition, int transitionStyle) {
        boolean inactive;
        int i;
        if (DEBUG) {
            Log.v(TAG, "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        if (!fragment.isInBackStack()) {
            inactive = true;
        } else {
            inactive = false;
        }
        if (!fragment.mDetached || inactive) {
            if (this.mAdded != null) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
            if (inactive) {
                i = 0;
            } else {
                i = 1;
            }
            moveToState(fragment, i, transition, transitionStyle, false);
        }
    }

    public void hideFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mView != null) {
                Animation anim = loadAnimation(fragment, transition, false, transitionStyle);
                if (anim != null) {
                    setHWLayerAnimListenerIfAlpha(fragment.mView, anim);
                    fragment.mView.startAnimation(anim);
                }
                fragment.mView.setVisibility(8);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    public void showFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (fragment.mView != null) {
                Animation anim = loadAnimation(fragment, transition, true, transitionStyle);
                if (anim != null) {
                    setHWLayerAnimListenerIfAlpha(fragment.mView, anim);
                    fragment.mView.startAnimation(anim);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(false);
        }
    }

    public void detachFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.mAdded != null) {
                    if (DEBUG) {
                        Log.v(TAG, "remove from detach: " + fragment);
                    }
                    this.mAdded.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                fragment.mAdded = false;
                moveToState(fragment, 1, transition, transitionStyle, false);
            }
        }
    }

    public void attachFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                if (this.mAdded == null) {
                    this.mAdded = new ArrayList<>();
                }
                if (this.mAdded.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (DEBUG) {
                    Log.v(TAG, "add from attach: " + fragment);
                }
                this.mAdded.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                moveToState(fragment, this.mCurState, transition, transitionStyle, false);
            }
        }
    }

    @Override // android.support.v4.app.FragmentManager
    public Fragment findFragmentById(int id) {
        if (this.mAdded != null) {
            for (int i = this.mAdded.size() - 1; i >= 0; i--) {
                Fragment f = this.mAdded.get(i);
                if (f != null && f.mFragmentId == id) {
                    return f;
                }
            }
        }
        if (this.mActive != null) {
            for (int i2 = this.mActive.size() - 1; i2 >= 0; i2--) {
                Fragment f2 = this.mActive.get(i2);
                if (f2 != null && f2.mFragmentId == id) {
                    return f2;
                }
            }
        }
        return null;
    }

    @Override // android.support.v4.app.FragmentManager
    public Fragment findFragmentByTag(String tag) {
        if (!(this.mAdded == null || tag == null)) {
            for (int i = this.mAdded.size() - 1; i >= 0; i--) {
                Fragment f = this.mAdded.get(i);
                if (f != null && tag.equals(f.mTag)) {
                    return f;
                }
            }
        }
        if (!(this.mActive == null || tag == null)) {
            for (int i2 = this.mActive.size() - 1; i2 >= 0; i2--) {
                Fragment f2 = this.mActive.get(i2);
                if (f2 != null && tag.equals(f2.mTag)) {
                    return f2;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByWho(String who) {
        Fragment f;
        if (!(this.mActive == null || who == null)) {
            for (int i = this.mActive.size() - 1; i >= 0; i--) {
                Fragment f2 = this.mActive.get(i);
                if (!(f2 == null || (f = f2.findFragmentByWho(who)) == null)) {
                    return f;
                }
            }
        }
        return null;
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.mNoTransactionsBecause != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
        }
    }

    public void enqueueAction(Runnable action, boolean allowStateLoss) {
        if (!allowStateLoss) {
            checkStateLoss();
        }
        synchronized (this) {
            if (this.mDestroyed || this.mHost == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList<>();
            }
            this.mPendingActions.add(action);
            if (this.mPendingActions.size() == 1) {
                this.mHost.getHandler().removeCallbacks(this.mExecCommit);
                this.mHost.getHandler().post(this.mExecCommit);
            }
        }
    }

    public int allocBackStackIndex(BackStackRecord bse) {
        synchronized (this) {
            if (this.mAvailBackStackIndices == null || this.mAvailBackStackIndices.size() <= 0) {
                if (this.mBackStackIndices == null) {
                    this.mBackStackIndices = new ArrayList<>();
                }
                int index = this.mBackStackIndices.size();
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + index + " to " + bse);
                }
                this.mBackStackIndices.add(bse);
                return index;
            }
            int index2 = this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1).intValue();
            if (DEBUG) {
                Log.v(TAG, "Adding back stack index " + index2 + " with " + bse);
            }
            this.mBackStackIndices.set(index2, bse);
            return index2;
        }
    }

    public void setBackStackIndex(int index, BackStackRecord bse) {
        synchronized (this) {
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList<>();
            }
            int N = this.mBackStackIndices.size();
            if (index < N) {
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + index + " to " + bse);
                }
                this.mBackStackIndices.set(index, bse);
            } else {
                while (N < index) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList<>();
                    }
                    if (DEBUG) {
                        Log.v(TAG, "Adding available back stack index " + N);
                    }
                    this.mAvailBackStackIndices.add(Integer.valueOf(N));
                    N++;
                }
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + index + " with " + bse);
                }
                this.mBackStackIndices.add(bse);
            }
        }
    }

    public void freeBackStackIndex(int index) {
        synchronized (this) {
            this.mBackStackIndices.set(index, null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList<>();
            }
            if (DEBUG) {
                Log.v(TAG, "Freeing back stack index " + index);
            }
            this.mAvailBackStackIndices.add(Integer.valueOf(index));
        }
    }

    public void execSingleAction(Runnable action, boolean allowStateLoss) {
        if (this.mExecutingActions) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        } else if (Looper.myLooper() != this.mHost.getHandler().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        } else {
            if (!allowStateLoss) {
                checkStateLoss();
            }
            this.mExecutingActions = true;
            action.run();
            this.mExecutingActions = false;
            doPendingDeferredStart();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0062, code lost:
        r5.mExecutingActions = true;
        r1 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0066, code lost:
        if (r1 >= r2) goto L_0x007a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0068, code lost:
        r5.mTmpActions[r1].run();
        r5.mTmpActions[r1] = null;
        r1 = r1 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean execPendingActions() {
        /*
        // Method dump skipped, instructions count: 127
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.execPendingActions():boolean");
    }

    /* access modifiers changed from: package-private */
    public void doPendingDeferredStart() {
        if (this.mHavePendingDeferredStart) {
            boolean loadersRunning = false;
            for (int i = 0; i < this.mActive.size(); i++) {
                Fragment f = this.mActive.get(i);
                if (!(f == null || f.mLoaderManager == null)) {
                    loadersRunning |= f.mLoaderManager.hasRunningLoaders();
                }
            }
            if (!loadersRunning) {
                this.mHavePendingDeferredStart = false;
                startPendingDeferredFragments();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            for (int i = 0; i < this.mBackStackChangeListeners.size(); i++) {
                this.mBackStackChangeListeners.get(i).onBackStackChanged();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void addBackStackState(BackStackRecord state) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList<>();
        }
        this.mBackStack.add(state);
        reportBackStackChanged();
    }

    /* access modifiers changed from: package-private */
    public boolean popBackStackState(Handler handler, String name, int id, int flags) {
        if (this.mBackStack == null) {
            return false;
        }
        if (name == null && id < 0 && (flags & 1) == 0) {
            int last = this.mBackStack.size() - 1;
            if (last < 0) {
                return false;
            }
            BackStackRecord bss = this.mBackStack.remove(last);
            SparseArray<Fragment> firstOutFragments = new SparseArray<>();
            SparseArray<Fragment> lastInFragments = new SparseArray<>();
            if (this.mCurState >= 1) {
                bss.calculateBackFragments(firstOutFragments, lastInFragments);
            }
            bss.popFromBackStack(true, null, firstOutFragments, lastInFragments);
            reportBackStackChanged();
        } else {
            int index = -1;
            if (name != null || id >= 0) {
                index = this.mBackStack.size() - 1;
                while (index >= 0) {
                    BackStackRecord bss2 = this.mBackStack.get(index);
                    if ((name != null && name.equals(bss2.getName())) || (id >= 0 && id == bss2.mIndex)) {
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
                        BackStackRecord bss3 = this.mBackStack.get(index);
                        if ((name == null || !name.equals(bss3.getName())) && (id < 0 || id != bss3.mIndex)) {
                            break;
                        }
                        index--;
                    }
                }
            }
            if (index == this.mBackStack.size() - 1) {
                return false;
            }
            ArrayList<BackStackRecord> states = new ArrayList<>();
            for (int i = this.mBackStack.size() - 1; i > index; i--) {
                states.add(this.mBackStack.remove(i));
            }
            int LAST = states.size() - 1;
            SparseArray<Fragment> firstOutFragments2 = new SparseArray<>();
            SparseArray<Fragment> lastInFragments2 = new SparseArray<>();
            if (this.mCurState >= 1) {
                for (int i2 = 0; i2 <= LAST; i2++) {
                    states.get(i2).calculateBackFragments(firstOutFragments2, lastInFragments2);
                }
            }
            BackStackRecord.TransitionState state = null;
            int i3 = 0;
            while (i3 <= LAST) {
                if (DEBUG) {
                    Log.v(TAG, "Popping back stack state: " + states.get(i3));
                }
                state = states.get(i3).popFromBackStack(i3 == LAST, state, firstOutFragments2, lastInFragments2);
                i3++;
            }
            reportBackStackChanged();
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public FragmentManagerNonConfig retainNonConfig() {
        FragmentManagerNonConfig child;
        ArrayList<Fragment> fragments = null;
        ArrayList<FragmentManagerNonConfig> childFragments = null;
        if (this.mActive != null) {
            for (int i = 0; i < this.mActive.size(); i++) {
                Fragment f = this.mActive.get(i);
                if (f != null) {
                    if (f.mRetainInstance) {
                        if (fragments == null) {
                            fragments = new ArrayList<>();
                        }
                        fragments.add(f);
                        f.mRetaining = true;
                        f.mTargetIndex = f.mTarget != null ? f.mTarget.mIndex : -1;
                        if (DEBUG) {
                            Log.v(TAG, "retainNonConfig: keeping retained " + f);
                        }
                    }
                    boolean addedChild = false;
                    if (!(f.mChildFragmentManager == null || (child = f.mChildFragmentManager.retainNonConfig()) == null)) {
                        if (childFragments == null) {
                            childFragments = new ArrayList<>();
                            for (int j = 0; j < i; j++) {
                                childFragments.add(null);
                            }
                        }
                        childFragments.add(child);
                        addedChild = true;
                    }
                    if (childFragments != null && !addedChild) {
                        childFragments.add(null);
                    }
                }
            }
        }
        if (fragments == null && childFragments == null) {
            return null;
        }
        return new FragmentManagerNonConfig(fragments, childFragments);
    }

    /* access modifiers changed from: package-private */
    public void saveFragmentViewState(Fragment f) {
        if (f.mInnerView != null) {
            if (this.mStateArray == null) {
                this.mStateArray = new SparseArray<>();
            } else {
                this.mStateArray.clear();
            }
            f.mInnerView.saveHierarchyState(this.mStateArray);
            if (this.mStateArray.size() > 0) {
                f.mSavedViewState = this.mStateArray;
                this.mStateArray = null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public Bundle saveFragmentBasicState(Fragment f) {
        Bundle result = null;
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        f.performSaveInstanceState(this.mStateBundle);
        if (!this.mStateBundle.isEmpty()) {
            result = this.mStateBundle;
            this.mStateBundle = null;
        }
        if (f.mView != null) {
            saveFragmentViewState(f);
        }
        if (f.mSavedViewState != null) {
            if (result == null) {
                result = new Bundle();
            }
            result.putSparseParcelableArray(VIEW_STATE_TAG, f.mSavedViewState);
        }
        if (!f.mUserVisibleHint) {
            if (result == null) {
                result = new Bundle();
            }
            result.putBoolean(USER_VISIBLE_HINT_TAG, f.mUserVisibleHint);
        }
        return result;
    }

    /* access modifiers changed from: package-private */
    public Parcelable saveAllState() {
        int N;
        int N2;
        execPendingActions();
        if (HONEYCOMB) {
            this.mStateSaved = true;
        }
        if (this.mActive == null || this.mActive.size() <= 0) {
            return null;
        }
        int N3 = this.mActive.size();
        FragmentState[] active = new FragmentState[N3];
        boolean haveFragments = false;
        for (int i = 0; i < N3; i++) {
            Fragment f = this.mActive.get(i);
            if (f != null) {
                if (f.mIndex < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + f + " has cleared index: " + f.mIndex));
                }
                haveFragments = true;
                FragmentState fs = new FragmentState(f);
                active[i] = fs;
                if (f.mState <= 0 || fs.mSavedFragmentState != null) {
                    fs.mSavedFragmentState = f.mSavedFragmentState;
                } else {
                    fs.mSavedFragmentState = saveFragmentBasicState(f);
                    if (f.mTarget != null) {
                        if (f.mTarget.mIndex < 0) {
                            throwException(new IllegalStateException("Failure saving state: " + f + " has target not in fragment manager: " + f.mTarget));
                        }
                        if (fs.mSavedFragmentState == null) {
                            fs.mSavedFragmentState = new Bundle();
                        }
                        putFragment(fs.mSavedFragmentState, TARGET_STATE_TAG, f.mTarget);
                        if (f.mTargetRequestCode != 0) {
                            fs.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, f.mTargetRequestCode);
                        }
                    }
                }
                if (DEBUG) {
                    Log.v(TAG, "Saved state of " + f + ": " + fs.mSavedFragmentState);
                }
            }
        }
        if (haveFragments) {
            int[] added = null;
            BackStackState[] backStack = null;
            if (this.mAdded != null && (N2 = this.mAdded.size()) > 0) {
                added = new int[N2];
                for (int i2 = 0; i2 < N2; i2++) {
                    added[i2] = this.mAdded.get(i2).mIndex;
                    if (added[i2] < 0) {
                        throwException(new IllegalStateException("Failure saving state: active " + this.mAdded.get(i2) + " has cleared index: " + added[i2]));
                    }
                    if (DEBUG) {
                        Log.v(TAG, "saveAllState: adding fragment #" + i2 + ": " + this.mAdded.get(i2));
                    }
                }
            }
            if (this.mBackStack != null && (N = this.mBackStack.size()) > 0) {
                backStack = new BackStackState[N];
                for (int i3 = 0; i3 < N; i3++) {
                    backStack[i3] = new BackStackState(this.mBackStack.get(i3));
                    if (DEBUG) {
                        Log.v(TAG, "saveAllState: adding back stack #" + i3 + ": " + this.mBackStack.get(i3));
                    }
                }
            }
            FragmentManagerState fms = new FragmentManagerState();
            fms.mActive = active;
            fms.mAdded = added;
            fms.mBackStack = backStack;
            return fms;
        } else if (!DEBUG) {
            return null;
        } else {
            Log.v(TAG, "saveAllState: no fragments!");
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public void restoreAllState(Parcelable state, FragmentManagerNonConfig nonConfig) {
        if (state != null) {
            FragmentManagerState fms = (FragmentManagerState) state;
            if (fms.mActive != null) {
                List<FragmentManagerNonConfig> childNonConfigs = null;
                if (nonConfig != null) {
                    List<Fragment> nonConfigFragments = nonConfig.getFragments();
                    childNonConfigs = nonConfig.getChildNonConfigs();
                    int count = nonConfigFragments != null ? nonConfigFragments.size() : 0;
                    for (int i = 0; i < count; i++) {
                        Fragment f = nonConfigFragments.get(i);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: re-attaching retained " + f);
                        }
                        FragmentState fs = fms.mActive[f.mIndex];
                        fs.mInstance = f;
                        f.mSavedViewState = null;
                        f.mBackStackNesting = 0;
                        f.mInLayout = false;
                        f.mAdded = false;
                        f.mTarget = null;
                        if (fs.mSavedFragmentState != null) {
                            fs.mSavedFragmentState.setClassLoader(this.mHost.getContext().getClassLoader());
                            f.mSavedViewState = fs.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                            f.mSavedFragmentState = fs.mSavedFragmentState;
                        }
                    }
                }
                this.mActive = new ArrayList<>(fms.mActive.length);
                if (this.mAvailIndices != null) {
                    this.mAvailIndices.clear();
                }
                for (int i2 = 0; i2 < fms.mActive.length; i2++) {
                    FragmentState fs2 = fms.mActive[i2];
                    if (fs2 != null) {
                        FragmentManagerNonConfig childNonConfig = null;
                        if (childNonConfigs != null && i2 < childNonConfigs.size()) {
                            childNonConfig = childNonConfigs.get(i2);
                        }
                        Fragment f2 = fs2.instantiate(this.mHost, this.mParent, childNonConfig);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: active #" + i2 + ": " + f2);
                        }
                        this.mActive.add(f2);
                        fs2.mInstance = null;
                    } else {
                        this.mActive.add(null);
                        if (this.mAvailIndices == null) {
                            this.mAvailIndices = new ArrayList<>();
                        }
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: avail #" + i2);
                        }
                        this.mAvailIndices.add(Integer.valueOf(i2));
                    }
                }
                if (nonConfig != null) {
                    List<Fragment> nonConfigFragments2 = nonConfig.getFragments();
                    int count2 = nonConfigFragments2 != null ? nonConfigFragments2.size() : 0;
                    for (int i3 = 0; i3 < count2; i3++) {
                        Fragment f3 = nonConfigFragments2.get(i3);
                        if (f3.mTargetIndex >= 0) {
                            if (f3.mTargetIndex < this.mActive.size()) {
                                f3.mTarget = this.mActive.get(f3.mTargetIndex);
                            } else {
                                Log.w(TAG, "Re-attaching retained fragment " + f3 + " target no longer exists: " + f3.mTargetIndex);
                                f3.mTarget = null;
                            }
                        }
                    }
                }
                if (fms.mAdded != null) {
                    this.mAdded = new ArrayList<>(fms.mAdded.length);
                    for (int i4 = 0; i4 < fms.mAdded.length; i4++) {
                        Fragment f4 = this.mActive.get(fms.mAdded[i4]);
                        if (f4 == null) {
                            throwException(new IllegalStateException("No instantiated fragment for index #" + fms.mAdded[i4]));
                        }
                        f4.mAdded = true;
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: added #" + i4 + ": " + f4);
                        }
                        if (this.mAdded.contains(f4)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.mAdded.add(f4);
                    }
                } else {
                    this.mAdded = null;
                }
                if (fms.mBackStack != null) {
                    this.mBackStack = new ArrayList<>(fms.mBackStack.length);
                    for (int i5 = 0; i5 < fms.mBackStack.length; i5++) {
                        BackStackRecord bse = fms.mBackStack[i5].instantiate(this);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: back stack #" + i5 + " (index " + bse.mIndex + "): " + bse);
                            bse.dump("  ", new PrintWriter(new LogWriter(TAG)), false);
                        }
                        this.mBackStack.add(bse);
                        if (bse.mIndex >= 0) {
                            setBackStackIndex(bse.mIndex, bse);
                        }
                    }
                    return;
                }
                this.mBackStack = null;
            }
        }
    }

    public void attachController(FragmentHostCallback host, FragmentContainer container, Fragment parent) {
        if (this.mHost != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mHost = host;
        this.mContainer = container;
        this.mParent = parent;
    }

    public void noteStateNotSaved() {
        this.mStateSaved = false;
    }

    public void dispatchCreate() {
        this.mStateSaved = false;
        moveToState(1, false);
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = false;
        moveToState(2, false);
    }

    public void dispatchStart() {
        this.mStateSaved = false;
        moveToState(4, false);
    }

    public void dispatchResume() {
        this.mStateSaved = false;
        moveToState(5, false);
    }

    public void dispatchPause() {
        moveToState(4, false);
    }

    public void dispatchStop() {
        this.mStateSaved = true;
        moveToState(3, false);
    }

    public void dispatchReallyStop() {
        moveToState(2, false);
    }

    public void dispatchDestroyView() {
        moveToState(1, false);
    }

    public void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions();
        moveToState(0, false);
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public void dispatchMultiWindowModeChanged(boolean isInMultiWindowMode) {
        if (this.mAdded != null) {
            for (int i = this.mAdded.size() - 1; i >= 0; i--) {
                Fragment f = this.mAdded.get(i);
                if (f != null) {
                    f.performMultiWindowModeChanged(isInMultiWindowMode);
                }
            }
        }
    }

    public void dispatchPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        if (this.mAdded != null) {
            for (int i = this.mAdded.size() - 1; i >= 0; i--) {
                Fragment f = this.mAdded.get(i);
                if (f != null) {
                    f.performPictureInPictureModeChanged(isInPictureInPictureMode);
                }
            }
        }
    }

    public void dispatchConfigurationChanged(Configuration newConfig) {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = this.mAdded.get(i);
                if (f != null) {
                    f.performConfigurationChanged(newConfig);
                }
            }
        }
    }

    public void dispatchLowMemory() {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = this.mAdded.get(i);
                if (f != null) {
                    f.performLowMemory();
                }
            }
        }
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        boolean show = false;
        ArrayList<Fragment> newMenus = null;
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = this.mAdded.get(i);
                if (f != null && f.performCreateOptionsMenu(menu, inflater)) {
                    show = true;
                    if (newMenus == null) {
                        newMenus = new ArrayList<>();
                    }
                    newMenus.add(f);
                }
            }
        }
        if (this.mCreatedMenus != null) {
            for (int i2 = 0; i2 < this.mCreatedMenus.size(); i2++) {
                Fragment f2 = this.mCreatedMenus.get(i2);
                if (newMenus == null || !newMenus.contains(f2)) {
                    f2.onDestroyOptionsMenu();
                }
            }
        }
        this.mCreatedMenus = newMenus;
        return show;
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        boolean show = false;
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = this.mAdded.get(i);
                if (f != null && f.performPrepareOptionsMenu(menu)) {
                    show = true;
                }
            }
        }
        return show;
    }

    public boolean dispatchOptionsItemSelected(MenuItem item) {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = this.mAdded.get(i);
                if (f != null && f.performOptionsItemSelected(item)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean dispatchContextItemSelected(MenuItem item) {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = this.mAdded.get(i);
                if (f != null && f.performContextItemSelected(item)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = this.mAdded.get(i);
                if (f != null) {
                    f.performOptionsMenuClosed(menu);
                }
            }
        }
    }

    public static int reverseTransit(int transit) {
        switch (transit) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /*{ENCODED_INT: 4097}*/:
                return 8194;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /*{ENCODED_INT: 4099}*/:
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            case 8194:
                return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            default:
                return 0;
        }
    }

    public static int transitToStyleIndex(int transit, boolean enter) {
        switch (transit) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /*{ENCODED_INT: 4097}*/:
                return enter ? 1 : 2;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /*{ENCODED_INT: 4099}*/:
                return enter ? 5 : 6;
            case 8194:
                return enter ? 3 : 4;
            default:
                return -1;
        }
    }

    @Override // android.support.v4.view.LayoutInflaterFactory
    public View onCreateView(View parent, String name, Context context, AttributeSet attrs) {
        int containerId;
        Fragment fragment;
        int i;
        if (!"fragment".equals(name)) {
            return null;
        }
        String fname = attrs.getAttributeValue(null, "class");
        TypedArray a = context.obtainStyledAttributes(attrs, FragmentTag.Fragment);
        if (fname == null) {
            fname = a.getString(0);
        }
        int id = a.getResourceId(1, -1);
        String tag = a.getString(2);
        a.recycle();
        if (!Fragment.isSupportFragmentClass(this.mHost.getContext(), fname)) {
            return null;
        }
        if (parent != null) {
            containerId = parent.getId();
        } else {
            containerId = 0;
        }
        if (containerId == -1 && id == -1 && tag == null) {
            throw new IllegalArgumentException(attrs.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + fname);
        }
        if (id != -1) {
            fragment = findFragmentById(id);
        } else {
            fragment = null;
        }
        if (fragment == null && tag != null) {
            fragment = findFragmentByTag(tag);
        }
        if (fragment == null && containerId != -1) {
            fragment = findFragmentById(containerId);
        }
        if (DEBUG) {
            Log.v(TAG, "onCreateView: id=0x" + Integer.toHexString(id) + " fname=" + fname + " existing=" + fragment);
        }
        if (fragment == null) {
            fragment = Fragment.instantiate(context, fname);
            fragment.mFromLayout = true;
            if (id != 0) {
                i = id;
            } else {
                i = containerId;
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = containerId;
            fragment.mTag = tag;
            fragment.mInLayout = true;
            fragment.mFragmentManager = this;
            fragment.mHost = this.mHost;
            fragment.onInflate(this.mHost.getContext(), attrs, fragment.mSavedFragmentState);
            addFragment(fragment, true);
        } else if (fragment.mInLayout) {
            throw new IllegalArgumentException(attrs.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(id) + ", tag " + tag + ", or parent id 0x" + Integer.toHexString(containerId) + " with another fragment for " + fname);
        } else {
            fragment.mInLayout = true;
            fragment.mHost = this.mHost;
            if (!fragment.mRetaining) {
                fragment.onInflate(this.mHost.getContext(), attrs, fragment.mSavedFragmentState);
            }
        }
        if (this.mCurState >= 1 || !fragment.mFromLayout) {
            moveToState(fragment);
        } else {
            moveToState(fragment, 1, 0, 0, false);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + fname + " did not create a view.");
        }
        if (id != 0) {
            fragment.mView.setId(id);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(tag);
        }
        return fragment.mView;
    }

    /* access modifiers changed from: package-private */
    public LayoutInflaterFactory getLayoutInflaterFactory() {
        return this;
    }

    /* access modifiers changed from: package-private */
    /* compiled from: FragmentManager */
    public static class FragmentTag {
        public static final int[] Fragment = {16842755, 16842960, 16842961};
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        FragmentTag() {
        }
    }
}
