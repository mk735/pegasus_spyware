package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableWrapperGingerbread;

/* access modifiers changed from: package-private */
public class DrawableWrapperLollipop extends DrawableWrapperKitKat {
    DrawableWrapperLollipop(Drawable drawable) {
        super(drawable);
    }

    DrawableWrapperLollipop(DrawableWrapperGingerbread.DrawableWrapperState state, Resources resources) {
        super(state, resources);
    }

    public void setHotspot(float x, float y) {
        this.mDrawable.setHotspot(x, y);
    }

    public void setHotspotBounds(int left, int top, int right, int bottom) {
        this.mDrawable.setHotspotBounds(left, top, right, bottom);
    }

    public void getOutline(Outline outline) {
        this.mDrawable.getOutline(outline);
    }

    public Rect getDirtyBounds() {
        return this.mDrawable.getDirtyBounds();
    }

    @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList tint) {
        if (isCompatTintEnabled()) {
            super.setTintList(tint);
        } else {
            this.mDrawable.setTintList(tint);
        }
    }

    @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTint(int tintColor) {
        if (isCompatTintEnabled()) {
            super.setTint(tintColor);
        } else {
            this.mDrawable.setTint(tintColor);
        }
    }

    @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread, android.support.v4.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode tintMode) {
        if (isCompatTintEnabled()) {
            super.setTintMode(tintMode);
        } else {
            this.mDrawable.setTintMode(tintMode);
        }
    }

    @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread
    public boolean setState(int[] stateSet) {
        if (!super.setState(stateSet)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread
    public boolean isCompatTintEnabled() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.mDrawable;
        if ((drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable)) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread, android.support.v4.graphics.drawable.DrawableWrapperKitKat, android.support.v4.graphics.drawable.DrawableWrapperHoneycomb
    @NonNull
    public DrawableWrapperGingerbread.DrawableWrapperState mutateConstantState() {
        return new DrawableWrapperStateLollipop(this.mState, null);
    }

    private static class DrawableWrapperStateLollipop extends DrawableWrapperGingerbread.DrawableWrapperState {
        DrawableWrapperStateLollipop(@Nullable DrawableWrapperGingerbread.DrawableWrapperState orig, @Nullable Resources res) {
            super(orig, res);
        }

        @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread.DrawableWrapperState
        public Drawable newDrawable(@Nullable Resources res) {
            return new DrawableWrapperLollipop(this, res);
        }
    }
}
