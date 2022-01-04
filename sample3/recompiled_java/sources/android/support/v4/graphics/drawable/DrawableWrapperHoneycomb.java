package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableWrapperGingerbread;

/* access modifiers changed from: package-private */
public class DrawableWrapperHoneycomb extends DrawableWrapperGingerbread {
    DrawableWrapperHoneycomb(Drawable drawable) {
        super(drawable);
    }

    DrawableWrapperHoneycomb(DrawableWrapperGingerbread.DrawableWrapperState state, Resources resources) {
        super(state, resources);
    }

    public void jumpToCurrentState() {
        this.mDrawable.jumpToCurrentState();
    }

    /* access modifiers changed from: package-private */
    @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread
    @NonNull
    public DrawableWrapperGingerbread.DrawableWrapperState mutateConstantState() {
        return new DrawableWrapperStateHoneycomb(this.mState, null);
    }

    private static class DrawableWrapperStateHoneycomb extends DrawableWrapperGingerbread.DrawableWrapperState {
        DrawableWrapperStateHoneycomb(@Nullable DrawableWrapperGingerbread.DrawableWrapperState orig, @Nullable Resources res) {
            super(orig, res);
        }

        @Override // android.support.v4.graphics.drawable.DrawableWrapperGingerbread.DrawableWrapperState
        public Drawable newDrawable(@Nullable Resources res) {
            return new DrawableWrapperHoneycomb(this, res);
        }
    }
}
