package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;

/* compiled from: CursorFilter */
final class a extends Filter {
    AbstractC0001a a;

    /* renamed from: android.support.v4.widget.a$a  reason: collision with other inner class name */
    /* compiled from: CursorFilter */
    interface AbstractC0001a {
        void changeCursor(Cursor cursor);

        CharSequence convertToString(Cursor cursor);

        Cursor getCursor();

        Cursor runQueryOnBackgroundThread(CharSequence charSequence);
    }

    a(AbstractC0001a client) {
        this.a = client;
    }

    public final CharSequence convertResultToString(Object resultValue) {
        return this.a.convertToString((Cursor) resultValue);
    }

    /* access modifiers changed from: protected */
    public final Filter.FilterResults performFiltering(CharSequence constraint) {
        Cursor cursor = this.a.runQueryOnBackgroundThread(constraint);
        Filter.FilterResults results = new Filter.FilterResults();
        if (cursor != null) {
            results.count = cursor.getCount();
            results.values = cursor;
        } else {
            results.count = 0;
            results.values = null;
        }
        return results;
    }

    /* access modifiers changed from: protected */
    public final void publishResults(CharSequence constraint, Filter.FilterResults results) {
        Cursor oldCursor = this.a.getCursor();
        if (results.values != null && results.values != oldCursor) {
            this.a.changeCursor((Cursor) results.values);
        }
    }
}
