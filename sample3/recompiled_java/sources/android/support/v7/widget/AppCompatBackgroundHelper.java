package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;

/* access modifiers changed from: package-private */
public class AppCompatBackgroundHelper {
    private int mBackgroundResId = -1;
    private BackgroundTintInfo mBackgroundTint;
    private final AppCompatDrawableManager mDrawableManager;
    private BackgroundTintInfo mInternalBackgroundTint;
    private BackgroundTintInfo mTmpInfo;
    private final View mView;

    AppCompatBackgroundHelper(View view) {
        this.mView = view;
        this.mDrawableManager = AppCompatDrawableManager.get();
    }

    /* access modifiers changed from: package-private */
    public void loadFromAttributes(AttributeSet attrs, int defStyleAttr) {
        TintTypedArray a = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), attrs, R.styleable.ViewBackgroundHelper, defStyleAttr, 0);
        try {
            if (a.hasValue(R.styleable.ViewBackgroundHelper_android_background)) {
                this.mBackgroundResId = a.getResourceId(R.styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList tint = this.mDrawableManager.getTintList(this.mView.getContext(), this.mBackgroundResId);
                if (tint != null) {
                    setInternalBackgroundTint(tint);
                }
            }
            if (a.hasValue(R.styleable.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.setBackgroundTintList(this.mView, a.getColorStateList(R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (a.hasValue(R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.setBackgroundTintMode(this.mView, DrawableUtils.parseTintMode(a.getInt(R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            a.recycle();
        }
    }

    /* access modifiers changed from: package-private */
    public void onSetBackgroundResource(int resId) {
        this.mBackgroundResId = resId;
        setInternalBackgroundTint(this.mDrawableManager != null ? this.mDrawableManager.getTintList(this.mView.getContext(), resId) : null);
        if (updateBackgroundTint()) {
            applySupportBackgroundTint();
        }
    }

    /* access modifiers changed from: package-private */
    public void onSetBackgroundDrawable(Drawable background) {
        this.mBackgroundResId = -1;
        setInternalBackgroundTint(null);
        if (updateBackgroundTint()) {
            applySupportBackgroundTint();
        }
    }

    /* access modifiers changed from: package-private */
    public void setSupportBackgroundTintList(ColorStateList tint) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new BackgroundTintInfo();
        }
        this.mBackgroundTint.mOriginalTintList = tint;
        this.mBackgroundTint.mTintList = null;
        this.mBackgroundTint.mHasTintList = true;
        if (updateBackgroundTint()) {
            applySupportBackgroundTint();
        }
    }

    private boolean updateBackgroundTint() {
        ColorStateList updated;
        if (this.mBackgroundTint != null && this.mBackgroundTint.mHasTintList) {
            if (this.mBackgroundResId >= 0 && (updated = this.mDrawableManager.getTintList(this.mView.getContext(), this.mBackgroundResId, this.mBackgroundTint.mOriginalTintList)) != null) {
                this.mBackgroundTint.mTintList = updated;
                return true;
            } else if (this.mBackgroundTint.mTintList != this.mBackgroundTint.mOriginalTintList) {
                this.mBackgroundTint.mTintList = this.mBackgroundTint.mOriginalTintList;
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public ColorStateList getSupportBackgroundTintList() {
        if (this.mBackgroundTint != null) {
            return this.mBackgroundTint.mTintList;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void setSupportBackgroundTintMode(PorterDuff.Mode tintMode) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new BackgroundTintInfo();
        }
        this.mBackgroundTint.mTintMode = tintMode;
        this.mBackgroundTint.mHasTintMode = true;
        applySupportBackgroundTint();
    }

    /* access modifiers changed from: package-private */
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.mBackgroundTint != null) {
            return this.mBackgroundTint.mTintMode;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void applySupportBackgroundTint() {
        Drawable background = this.mView.getBackground();
        if (background == null) {
            return;
        }
        if (shouldApplyFrameworkTintUsingColorFilter() && applyFrameworkTintUsingColorFilter(background)) {
            return;
        }
        if (this.mBackgroundTint != null) {
            AppCompatDrawableManager.tintDrawable(background, this.mBackgroundTint, this.mView.getDrawableState());
        } else if (this.mInternalBackgroundTint != null) {
            AppCompatDrawableManager.tintDrawable(background, this.mInternalBackgroundTint, this.mView.getDrawableState());
        }
    }

    /* access modifiers changed from: package-private */
    public void setInternalBackgroundTint(ColorStateList tint) {
        if (tint != null) {
            if (this.mInternalBackgroundTint == null) {
                this.mInternalBackgroundTint = new BackgroundTintInfo();
            }
            this.mInternalBackgroundTint.mTintList = tint;
            this.mInternalBackgroundTint.mHasTintList = true;
        } else {
            this.mInternalBackgroundTint = null;
        }
        applySupportBackgroundTint();
    }

    private boolean shouldApplyFrameworkTintUsingColorFilter() {
        int sdk = Build.VERSION.SDK_INT;
        if (sdk < 21) {
            return false;
        }
        return sdk == 21 || this.mInternalBackgroundTint != null;
    }

    private boolean applyFrameworkTintUsingColorFilter(@NonNull Drawable background) {
        if (this.mTmpInfo == null) {
            this.mTmpInfo = new BackgroundTintInfo();
        }
        TintInfo info = this.mTmpInfo;
        info.clear();
        ColorStateList tintList = ViewCompat.getBackgroundTintList(this.mView);
        if (tintList != null) {
            info.mHasTintList = true;
            info.mTintList = tintList;
        }
        PorterDuff.Mode mode = ViewCompat.getBackgroundTintMode(this.mView);
        if (mode != null) {
            info.mHasTintMode = true;
            info.mTintMode = mode;
        }
        if (!info.mHasTintList && !info.mHasTintMode) {
            return false;
        }
        AppCompatDrawableManager.tintDrawable(background, info, this.mView.getDrawableState());
        return true;
    }

    /* access modifiers changed from: private */
    public static class BackgroundTintInfo extends TintInfo {
        public ColorStateList mOriginalTintList;

        BackgroundTintInfo() {
        }

        /* access modifiers changed from: package-private */
        @Override // android.support.v7.widget.TintInfo
        public void clear() {
            super.clear();
            this.mOriginalTintList = null;
        }
    }
}
