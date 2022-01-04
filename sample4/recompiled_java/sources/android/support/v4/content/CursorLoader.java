package android.support.v4.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public class CursorLoader extends AsyncTaskLoader<Cursor> {
    final Loader<Cursor>.ForceLoadContentObserver f = new Loader.ForceLoadContentObserver();
    Uri g;
    String[] h;
    String i;
    String[] j;
    String k;
    Cursor l;

    @Override // android.support.v4.content.AsyncTaskLoader
    public Cursor loadInBackground() {
        Cursor cursor = getContext().getContentResolver().query(this.g, this.h, this.i, this.j, this.k);
        if (cursor != null) {
            cursor.getCount();
            Loader<Cursor>.ForceLoadContentObserver forceLoadContentObserver = this.f;
            cursor.registerContentObserver(this.f);
        }
        return cursor;
    }

    public void deliverResult(Cursor cursor) {
        if (!isReset()) {
            Cursor oldCursor = this.l;
            this.l = cursor;
            if (isStarted()) {
                super.deliverResult((Object) cursor);
            }
            if (oldCursor != null && oldCursor != cursor && !oldCursor.isClosed()) {
                oldCursor.close();
            }
        } else if (cursor != null) {
            cursor.close();
        }
    }

    public CursorLoader(Context context) {
        super(context);
    }

    public CursorLoader(Context context, Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        super(context);
        this.g = uri;
        this.h = projection;
        this.i = selection;
        this.j = selectionArgs;
        this.k = sortOrder;
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.content.Loader
    public void onStartLoading() {
        if (this.l != null) {
            deliverResult(this.l);
        }
        if (takeContentChanged() || this.l == null) {
            forceLoad();
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.content.Loader
    public void onStopLoading() {
        cancelLoad();
    }

    public void onCanceled(Cursor cursor) {
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.content.Loader
    public void onReset() {
        super.onReset();
        onStopLoading();
        if (this.l != null && !this.l.isClosed()) {
            this.l.close();
        }
        this.l = null;
    }

    public Uri getUri() {
        return this.g;
    }

    public void setUri(Uri uri) {
        this.g = uri;
    }

    public String[] getProjection() {
        return this.h;
    }

    public void setProjection(String[] projection) {
        this.h = projection;
    }

    public String getSelection() {
        return this.i;
    }

    public void setSelection(String selection) {
        this.i = selection;
    }

    public String[] getSelectionArgs() {
        return this.j;
    }

    public void setSelectionArgs(String[] selectionArgs) {
        this.j = selectionArgs;
    }

    public String getSortOrder() {
        return this.k;
    }

    public void setSortOrder(String sortOrder) {
        this.k = sortOrder;
    }

    @Override // android.support.v4.content.Loader, android.support.v4.content.AsyncTaskLoader
    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        super.dump(prefix, fd, writer, args);
        writer.print(prefix);
        writer.print("mUri=");
        writer.println(this.g);
        writer.print(prefix);
        writer.print("mProjection=");
        writer.println(Arrays.toString(this.h));
        writer.print(prefix);
        writer.print("mSelection=");
        writer.println(this.i);
        writer.print(prefix);
        writer.print("mSelectionArgs=");
        writer.println(Arrays.toString(this.j));
        writer.print(prefix);
        writer.print("mSortOrder=");
        writer.println(this.k);
        writer.print(prefix);
        writer.print("mCursor=");
        writer.println(this.l);
        writer.print(prefix);
        writer.print("mContentChanged=");
        writer.println(this.s);
    }
}
