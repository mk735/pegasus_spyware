package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableWrapperGingerbread;

/* access modifiers changed from: package-private */
public class DrawableWrapperKitKat extends DrawableWrapperHoneycomb {
    DrawableWrapperKitKat(Drawable drawable) {
        super(drawable);
    }

    DrawableWrapperKitKat(DrawableWrapperGingerbread.DrawableWrapperState state, Resources resources) {
        super(state, resources);
    }

    public void setAutoMirrored(boolean mirrored) {
        this.mDrawable.setAutoMirrored(mirrored);
    }

    public boolean isAutoMirrored() {
        return this.mDrawable.isAutoMirrored();
    }

    /* access modifiers changed from: package-private */
    @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread, android.support.v4.graphics.drawable.DrawableWrapperHoneycomb
    @NonNull
    public DrawableWrapperGingerbread.DrawableWrapperState mutateConstantState() {
        return new DrawableWrapperStateKitKat(this.mState, null);
    }

    private static class DrawableWrapperStateKitKat extends DrawableWrapperGingerbread.DrawableWrapperState {
        DrawableWrapperStateKitKat(@Nullable DrawableWrapperGingerbread.DrawableWrapperState orig, @Nullable Resources res) {
            super(orig, res);
        }

        @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread.DrawableWrapperState
        public Drawable newDrawable(@Nullable Resources res) {
            return new DrawableWrapperKitKat(this, res);
        }
    }
}
