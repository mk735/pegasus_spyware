package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.print.pdf.PrintedPdfDocument;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* access modifiers changed from: package-private */
public class PrintHelperKitkat {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    private static final String LOG_TAG = "PrintHelperKitkat";
    private static final int MAX_PRINT_SIZE = 3500;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    int mColorMode = 2;
    final Context mContext;
    BitmapFactory.Options mDecodeOptions = null;
    protected boolean mIsMinMarginsHandlingCorrect = true;
    private final Object mLock = new Object();
    int mOrientation;
    protected boolean mPrintActivityRespectsOrientation = true;
    int mScaleMode = 2;

    public interface OnPrintFinishCallback {
        void onFinish();
    }

    PrintHelperKitkat(Context context) {
        this.mContext = context;
    }

    public void setScaleMode(int scaleMode) {
        this.mScaleMode = scaleMode;
    }

    public int getScaleMode() {
        return this.mScaleMode;
    }

    public void setColorMode(int colorMode) {
        this.mColorMode = colorMode;
    }

    public void setOrientation(int orientation) {
        this.mOrientation = orientation;
    }

    public int getOrientation() {
        if (this.mOrientation == 0) {
            return 1;
        }
        return this.mOrientation;
    }

    public int getColorMode() {
        return this.mColorMode;
    }

    /* access modifiers changed from: private */
    public static boolean isPortrait(Bitmap bitmap) {
        if (bitmap.getWidth() <= bitmap.getHeight()) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public PrintAttributes.Builder copyAttributes(PrintAttributes other) {
        PrintAttributes.Builder b = new PrintAttributes.Builder().setMediaSize(other.getMediaSize()).setResolution(other.getResolution()).setMinMargins(other.getMinMargins());
        if (other.getColorMode() != 0) {
            b.setColorMode(other.getColorMode());
        }
        return b;
    }

    public void printBitmap(final String jobName, final Bitmap bitmap, final OnPrintFinishCallback callback) {
        PrintAttributes.MediaSize mediaSize;
        if (bitmap != null) {
            final int fittingMode = this.mScaleMode;
            PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
            if (isPortrait(bitmap)) {
                mediaSize = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
            } else {
                mediaSize = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
            }
            printManager.print(jobName, new PrintDocumentAdapter() {
                /* class android.support.v4.print.PrintHelperKitkat.AnonymousClass1 */
                private PrintAttributes mAttributes;

                public void onLayout(PrintAttributes oldPrintAttributes, PrintAttributes newPrintAttributes, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
                    boolean changed = true;
                    this.mAttributes = newPrintAttributes;
                    PrintDocumentInfo info = new PrintDocumentInfo.Builder(jobName).setContentType(1).setPageCount(1).build();
                    if (newPrintAttributes.equals(oldPrintAttributes)) {
                        changed = false;
                    }
                    layoutResultCallback.onLayoutFinished(info, changed);
                }

                public void onWrite(PageRange[] pageRanges, ParcelFileDescriptor fileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
                    PrintHelperKitkat.this.writeBitmap(this.mAttributes, fittingMode, bitmap, fileDescriptor, cancellationSignal, writeResultCallback);
                }

                public void onFinish() {
                    if (callback != null) {
                        callback.onFinish();
                    }
                }
            }, new PrintAttributes.Builder().setMediaSize(mediaSize).setColorMode(this.mColorMode).build());
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Matrix getMatrix(int imageWidth, int imageHeight, RectF content, int fittingMode) {
        float scale;
        Matrix matrix = new Matrix();
        float scale2 = content.width() / ((float) imageWidth);
        if (fittingMode == 2) {
            scale = Math.max(scale2, content.height() / ((float) imageHeight));
        } else {
            scale = Math.min(scale2, content.height() / ((float) imageHeight));
        }
        matrix.postScale(scale, scale);
        matrix.postTranslate((content.width() - (((float) imageWidth) * scale)) / 2.0f, (content.height() - (((float) imageHeight) * scale)) / 2.0f);
        return matrix;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void writeBitmap(final PrintAttributes attributes, final int fittingMode, final Bitmap bitmap, final ParcelFileDescriptor fileDescriptor, final CancellationSignal cancellationSignal, final PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
        final PrintAttributes pdfAttributes;
        if (this.mIsMinMarginsHandlingCorrect) {
            pdfAttributes = attributes;
        } else {
            pdfAttributes = copyAttributes(attributes).setMinMargins(new PrintAttributes.Margins(0, 0, 0, 0)).build();
        }
        new AsyncTask<Void, Void, Throwable>() {
            /* class android.support.v4.print.PrintHelperKitkat.AnonymousClass2 */

            /* access modifiers changed from: protected */
            public Throwable doInBackground(Void... params) {
                RectF contentRect;
                try {
                    if (cancellationSignal.isCanceled()) {
                        return null;
                    }
                    PrintedPdfDocument pdfDocument = new PrintedPdfDocument(PrintHelperKitkat.this.mContext, pdfAttributes);
                    Bitmap maybeGrayscale = PrintHelperKitkat.this.convertBitmapForColorMode(bitmap, pdfAttributes.getColorMode());
                    if (cancellationSignal.isCanceled()) {
                        return null;
                    }
                    try {
                        PdfDocument.Page page = pdfDocument.startPage(1);
                        if (PrintHelperKitkat.this.mIsMinMarginsHandlingCorrect) {
                            contentRect = new RectF(page.getInfo().getContentRect());
                        } else {
                            PrintedPdfDocument dummyDocument = new PrintedPdfDocument(PrintHelperKitkat.this.mContext, attributes);
                            PdfDocument.Page dummyPage = dummyDocument.startPage(1);
                            contentRect = new RectF(dummyPage.getInfo().getContentRect());
                            dummyDocument.finishPage(dummyPage);
                            dummyDocument.close();
                        }
                        Matrix matrix = PrintHelperKitkat.this.getMatrix(maybeGrayscale.getWidth(), maybeGrayscale.getHeight(), contentRect, fittingMode);
                        if (!PrintHelperKitkat.this.mIsMinMarginsHandlingCorrect) {
                            matrix.postTranslate(contentRect.left, contentRect.top);
                            page.getCanvas().clipRect(contentRect);
                        }
                        page.getCanvas().drawBitmap(maybeGrayscale, matrix, null);
                        pdfDocument.finishPage(page);
                        if (cancellationSignal.isCanceled()) {
                        }
                        pdfDocument.writeTo(new FileOutputStream(fileDescriptor.getFileDescriptor()));
                        pdfDocument.close();
                        if (fileDescriptor != null) {
                            try {
                                fileDescriptor.close();
                            } catch (IOException e) {
                            }
                        }
                        if (maybeGrayscale == bitmap) {
                            return null;
                        }
                        maybeGrayscale.recycle();
                        return null;
                    } finally {
                        pdfDocument.close();
                        if (fileDescriptor != null) {
                            try {
                                fileDescriptor.close();
                            } catch (IOException e2) {
                            }
                        }
                        if (maybeGrayscale != bitmap) {
                            maybeGrayscale.recycle();
                        }
                    }
                } catch (Throwable th) {
                    return th;
                }
            }

            /* access modifiers changed from: protected */
            public void onPostExecute(Throwable throwable) {
                if (cancellationSignal.isCanceled()) {
                    writeResultCallback.onWriteCancelled();
                } else if (throwable == null) {
                    writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                } else {
                    Log.e(PrintHelperKitkat.LOG_TAG, "Error writing printed content", throwable);
                    writeResultCallback.onWriteFailed(null);
                }
            }
        }.execute(new Void[0]);
    }

    public void printBitmap(final String jobName, final Uri imageFile, final OnPrintFinishCallback callback) throws FileNotFoundException {
        final int fittingMode = this.mScaleMode;
        PrintDocumentAdapter printDocumentAdapter = new PrintDocumentAdapter() {
            /* class android.support.v4.print.PrintHelperKitkat.AnonymousClass3 */
            private PrintAttributes mAttributes;
            Bitmap mBitmap = null;
            AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;

            public void onLayout(final PrintAttributes oldPrintAttributes, final PrintAttributes newPrintAttributes, final CancellationSignal cancellationSignal, final PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
                boolean changed = true;
                synchronized (this) {
                    this.mAttributes = newPrintAttributes;
                }
                if (cancellationSignal.isCanceled()) {
                    layoutResultCallback.onLayoutCancelled();
                } else if (this.mBitmap != null) {
                    PrintDocumentInfo info = new PrintDocumentInfo.Builder(jobName).setContentType(1).setPageCount(1).build();
                    if (newPrintAttributes.equals(oldPrintAttributes)) {
                        changed = false;
                    }
                    layoutResultCallback.onLayoutFinished(info, changed);
                } else {
                    this.mLoadBitmap = new AsyncTask<Uri, Boolean, Bitmap>() {
                        /* class android.support.v4.print.PrintHelperKitkat.AnonymousClass3.AnonymousClass1 */

                        /* access modifiers changed from: protected */
                        public void onPreExecute() {
                            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() {
                                /* class android.support.v4.print.PrintHelperKitkat.AnonymousClass3.AnonymousClass1.AnonymousClass1 */

                                public void onCancel() {
                                    AnonymousClass3.this.cancelLoad();
                                    AnonymousClass1.this.cancel(false);
                                }
                            });
                        }

                        /* access modifiers changed from: protected */
                        public Bitmap doInBackground(Uri... uris) {
                            try {
                                return PrintHelperKitkat.this.loadConstrainedBitmap(imageFile, PrintHelperKitkat.MAX_PRINT_SIZE);
                            } catch (FileNotFoundException e) {
                                return null;
                            }
                        }

                        /* access modifiers changed from: protected */
                        public void onPostExecute(Bitmap bitmap) {
                            boolean changed;
                            PrintAttributes.MediaSize mediaSize;
                            super.onPostExecute((Object) bitmap);
                            if (bitmap != null && (!PrintHelperKitkat.this.mPrintActivityRespectsOrientation || PrintHelperKitkat.this.mOrientation == 0)) {
                                synchronized (this) {
                                    mediaSize = AnonymousClass3.this.mAttributes.getMediaSize();
                                }
                                if (!(mediaSize == null || mediaSize.isPortrait() == PrintHelperKitkat.isPortrait(bitmap))) {
                                    Matrix rotation = new Matrix();
                                    rotation.postRotate(90.0f);
                                    bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), rotation, true);
                                }
                            }
                            AnonymousClass3.this.mBitmap = bitmap;
                            if (bitmap != null) {
                                PrintDocumentInfo info = new PrintDocumentInfo.Builder(jobName).setContentType(1).setPageCount(1).build();
                                if (!newPrintAttributes.equals(oldPrintAttributes)) {
                                    changed = true;
                                } else {
                                    changed = false;
                                }
                                layoutResultCallback.onLayoutFinished(info, changed);
                            } else {
                                layoutResultCallback.onLayoutFailed(null);
                            }
                            AnonymousClass3.this.mLoadBitmap = null;
                        }

                        /* access modifiers changed from: protected */
                        public void onCancelled(Bitmap result) {
                            layoutResultCallback.onLayoutCancelled();
                            AnonymousClass3.this.mLoadBitmap = null;
                        }
                    }.execute(new Uri[0]);
                }
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private void cancelLoad() {
                synchronized (PrintHelperKitkat.this.mLock) {
                    if (PrintHelperKitkat.this.mDecodeOptions != null) {
                        PrintHelperKitkat.this.mDecodeOptions.requestCancelDecode();
                        PrintHelperKitkat.this.mDecodeOptions = null;
                    }
                }
            }

            public void onFinish() {
                super.onFinish();
                cancelLoad();
                if (this.mLoadBitmap != null) {
                    this.mLoadBitmap.cancel(true);
                }
                if (callback != null) {
                    callback.onFinish();
                }
                if (this.mBitmap != null) {
                    this.mBitmap.recycle();
                    this.mBitmap = null;
                }
            }

            public void onWrite(PageRange[] pageRanges, ParcelFileDescriptor fileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
                PrintHelperKitkat.this.writeBitmap(this.mAttributes, fittingMode, this.mBitmap, fileDescriptor, cancellationSignal, writeResultCallback);
            }
        };
        PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
        PrintAttributes.Builder builder = new PrintAttributes.Builder();
        builder.setColorMode(this.mColorMode);
        if (this.mOrientation == 1 || this.mOrientation == 0) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
        } else if (this.mOrientation == 2) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
        }
        printManager.print(jobName, printDocumentAdapter, builder.build());
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Bitmap loadConstrainedBitmap(Uri uri, int maxSideLength) throws FileNotFoundException {
        BitmapFactory.Options decodeOptions;
        Bitmap bitmap = null;
        if (maxSideLength <= 0 || uri == null || this.mContext == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        BitmapFactory.Options opt = new BitmapFactory.Options();
        opt.inJustDecodeBounds = true;
        loadBitmap(uri, opt);
        int w = opt.outWidth;
        int h = opt.outHeight;
        if (w > 0 && h > 0) {
            int imageSide = Math.max(w, h);
            int sampleSize = 1;
            while (imageSide > maxSideLength) {
                imageSide >>>= 1;
                sampleSize <<= 1;
            }
            if (sampleSize > 0 && Math.min(w, h) / sampleSize > 0) {
                synchronized (this.mLock) {
                    this.mDecodeOptions = new BitmapFactory.Options();
                    this.mDecodeOptions.inMutable = true;
                    this.mDecodeOptions.inSampleSize = sampleSize;
                    decodeOptions = this.mDecodeOptions;
                }
                try {
                    bitmap = loadBitmap(uri, decodeOptions);
                    synchronized (this.mLock) {
                        this.mDecodeOptions = null;
                    }
                } catch (Throwable th) {
                    synchronized (this.mLock) {
                        this.mDecodeOptions = null;
                        throw th;
                    }
                }
            }
        }
        return bitmap;
    }

    private Bitmap loadBitmap(Uri uri, BitmapFactory.Options o) throws FileNotFoundException {
        if (uri == null || this.mContext == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        InputStream is = null;
        try {
            is = this.mContext.getContentResolver().openInputStream(uri);
            Bitmap decodeStream = BitmapFactory.decodeStream(is, null, o);
            if (is != null) {
                try {
                } catch (IOException t) {
                    Log.w(LOG_TAG, "close fail ", t);
                }
            }
            return decodeStream;
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException t2) {
                    Log.w(LOG_TAG, "close fail ", t2);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Bitmap convertBitmapForColorMode(Bitmap original, int colorMode) {
        if (colorMode != 1) {
            return original;
        }
        Bitmap grayscale = Bitmap.createBitmap(original.getWidth(), original.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(grayscale);
        Paint p = new Paint();
        ColorMatrix cm = new ColorMatrix();
        cm.setSaturation(0.0f);
        p.setColorFilter(new ColorMatrixColorFilter(cm));
        c.drawBitmap(original, 0.0f, 0.0f, p);
        c.setBitmap(null);
        return grayscale;
    }
}
