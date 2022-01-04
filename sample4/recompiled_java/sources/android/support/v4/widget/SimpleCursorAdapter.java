package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class SimpleCursorAdapter extends ResourceCursorAdapter {
    String[] a;
    private int b = -1;
    private CursorToStringConverter c;
    private ViewBinder d;
    protected int[] mFrom;
    protected int[] mTo;

    public interface CursorToStringConverter {
        CharSequence convertToString(Cursor cursor);
    }

    public interface ViewBinder {
        boolean setViewValue(View view, Cursor cursor, int i);
    }

    @Deprecated
    public SimpleCursorAdapter(Context context, int layout, Cursor c2, String[] from, int[] to) {
        super(context, layout, c2);
        this.mTo = to;
        this.a = from;
        a(from);
    }

    public SimpleCursorAdapter(Context context, int layout, Cursor c2, String[] from, int[] to, int flags) {
        super(context, layout, c2, flags);
        this.mTo = to;
        this.a = from;
        a(from);
    }

    @Override // android.support.v4.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        ViewBinder binder = this.d;
        int count = this.mTo.length;
        int[] from = this.mFrom;
        int[] to = this.mTo;
        for (int i = 0; i < count; i++) {
            View v = view.findViewById(to[i]);
            if (v != null) {
                boolean bound = false;
                if (binder != null) {
                    bound = binder.setViewValue(v, cursor, from[i]);
                }
                if (bound) {
                    continue;
                } else {
                    String text = cursor.getString(from[i]);
                    if (text == null) {
                        text = "";
                    }
                    if (v instanceof TextView) {
                        setViewText((TextView) v, text);
                    } else if (v instanceof ImageView) {
                        setViewImage((ImageView) v, text);
                    } else {
                        throw new IllegalStateException(v.getClass().getName() + " is not a " + " view that can be bounds by this SimpleCursorAdapter");
                    }
                }
            }
        }
    }

    public ViewBinder getViewBinder() {
        return this.d;
    }

    public void setViewBinder(ViewBinder viewBinder) {
        this.d = viewBinder;
    }

    public void setViewImage(ImageView v, String value) {
        try {
            v.setImageResource(Integer.parseInt(value));
        } catch (NumberFormatException e) {
            v.setImageURI(Uri.parse(value));
        }
    }

    public void setViewText(TextView v, String text) {
        v.setText(text);
    }

    public int getStringConversionColumn() {
        return this.b;
    }

    public void setStringConversionColumn(int stringConversionColumn) {
        this.b = stringConversionColumn;
    }

    public CursorToStringConverter getCursorToStringConverter() {
        return this.c;
    }

    public void setCursorToStringConverter(CursorToStringConverter cursorToStringConverter) {
        this.c = cursorToStringConverter;
    }

    @Override // android.support.v4.widget.CursorAdapter, android.support.v4.widget.a.AbstractC0001a
    public CharSequence convertToString(Cursor cursor) {
        if (this.c != null) {
            return this.c.convertToString(cursor);
        }
        if (this.b > -1) {
            return cursor.getString(this.b);
        }
        return super.convertToString(cursor);
    }

    private void a(String[] from) {
        if (this.mCursor != null) {
            int count = from.length;
            if (this.mFrom == null || this.mFrom.length != count) {
                this.mFrom = new int[count];
            }
            for (int i = 0; i < count; i++) {
                this.mFrom[i] = this.mCursor.getColumnIndexOrThrow(from[i]);
            }
            return;
        }
        this.mFrom = null;
    }

    @Override // android.support.v4.widget.CursorAdapter
    public Cursor swapCursor(Cursor c2) {
        Cursor res = super.swapCursor(c2);
        a(this.a);
        return res;
    }

    public void changeCursorAndColumns(Cursor c2, String[] from, int[] to) {
        this.a = from;
        this.mTo = to;
        super.changeCursor(c2);
        a(this.a);
    }
}
