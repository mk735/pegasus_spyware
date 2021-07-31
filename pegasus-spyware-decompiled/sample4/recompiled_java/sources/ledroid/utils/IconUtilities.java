package ledroid.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.TableMaskFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;

public final class IconUtilities {
    private static float a = -1.0f;
    private static float b = -1.0f;
    private static int c = -1;
    private static int d = -1;
    private static final Paint e = new Paint();
    private static final Paint f = new Paint();
    private static final Paint g = new Paint();
    private static final Paint h = new Paint();
    private static final Rect i = new Rect();
    private static final Canvas j = new Canvas();

    static {
        j.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
    }

    private IconUtilities() {
    }

    public static Bitmap createIconBitmap(Bitmap icon, Context context) {
        int textureWidth = c;
        int textureHeight = d;
        int sourceWidth = icon.getWidth();
        int sourceHeight = icon.getHeight();
        if (sourceWidth <= textureWidth || sourceHeight <= textureHeight) {
            return (sourceWidth == textureWidth && sourceHeight == textureHeight) ? icon : createIconBitmap(new BitmapDrawable(context.getResources(), icon), context);
        }
        return Bitmap.createBitmap(icon, (sourceWidth - textureWidth) / 2, (sourceHeight - textureHeight) / 2, textureWidth, textureHeight);
    }

    public static Bitmap createIconBitmap(Drawable icon, Context context) {
        Bitmap bitmap;
        synchronized (j) {
            if (a == -1.0f) {
                a(context);
            }
            float width = a;
            float height = b;
            if (icon instanceof PaintDrawable) {
                PaintDrawable painter = (PaintDrawable) icon;
                painter.setIntrinsicWidth((int) width);
                painter.setIntrinsicHeight((int) height);
            } else if (icon instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) icon;
                if (bitmapDrawable.getBitmap().getDensity() == 0) {
                    bitmapDrawable.setTargetDensity(context.getResources().getDisplayMetrics());
                }
            }
            int sourceWidth = icon.getIntrinsicWidth();
            int sourceHeight = icon.getIntrinsicHeight();
            if (sourceWidth > 0 && sourceHeight > 0) {
                if (width < ((float) sourceWidth) || height < ((float) sourceHeight)) {
                    float ratio = ((float) sourceWidth) / ((float) sourceHeight);
                    if (sourceWidth > sourceHeight) {
                        height = (float) ((int) (width / ratio));
                    } else if (sourceHeight > sourceWidth) {
                        width = (float) ((int) (height * ratio));
                    }
                } else if (((float) sourceWidth) < width && ((float) sourceHeight) < height) {
                    width = (float) sourceWidth;
                    height = (float) sourceHeight;
                }
            }
            int textureWidth = c;
            int textureHeight = d;
            bitmap = Bitmap.createBitmap(textureWidth, textureHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = j;
            canvas.setBitmap(bitmap);
            int left = (textureWidth - ((int) width)) / 2;
            int top = (textureHeight - ((int) height)) / 2;
            i.set(icon.getBounds());
            icon.setBounds(left, top, left + ((int) width), top + ((int) height));
            icon.draw(canvas);
            icon.setBounds(i);
        }
        return bitmap;
    }

    public static void drawSelectedAllAppsBitmap(Canvas dest, float destWidth, float destHeight, boolean pressed, Bitmap src) {
        synchronized (j) {
            if (a == -1.0f) {
                throw new RuntimeException("Assertion failed: Utilities not initialized");
            }
            dest.drawColor(0, PorterDuff.Mode.CLEAR);
            int[] xy = new int[2];
            Bitmap mask = src.extractAlpha(e, xy);
            dest.drawBitmap(mask, ((destWidth - ((float) src.getWidth())) / 2.0f) + ((float) xy[0]), ((destHeight - ((float) src.getHeight())) / 2.0f) + ((float) xy[1]), pressed ? f : g);
            mask.recycle();
        }
    }

    public static Bitmap resampleIconBitmap(Bitmap bitmap, Context context) {
        synchronized (j) {
            if (a == -1.0f) {
                a(context);
            }
            if (((float) bitmap.getWidth()) != a || ((float) bitmap.getHeight()) != b) {
                bitmap = createIconBitmap(new BitmapDrawable(context.getResources(), bitmap), context);
            }
        }
        return bitmap;
    }

    public static Bitmap drawDisabledBitmap(Bitmap bitmap, Context context) {
        Bitmap disabled;
        synchronized (j) {
            if (a == -1.0f) {
                a(context);
            }
            disabled = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = j;
            canvas.setBitmap(disabled);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, h);
            canvas.setBitmap(null);
        }
        return disabled;
    }

    private static void a(Context context) {
        Resources resources = context.getResources();
        float density = resources.getDisplayMetrics().density;
        a = resources.getDimension(17104896);
        b = a;
        c = (int) a;
        d = c;
        e.setMaskFilter(new BlurMaskFilter(5.0f * density, BlurMaskFilter.Blur.NORMAL));
        f.setColor(-15616);
        f.setMaskFilter(TableMaskFilter.CreateClipTable(0, 30));
        g.setColor(-29184);
        g.setMaskFilter(TableMaskFilter.CreateClipTable(0, 30));
        ColorMatrix cm = new ColorMatrix();
        cm.setSaturation(0.2f);
        h.setColorFilter(new ColorMatrixColorFilter(cm));
        h.setAlpha(136);
    }
}
