package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class ResourceCursorAdapter extends CursorAdapter {
    private int a;
    private int b;
    private LayoutInflater c;

    @Deprecated
    public ResourceCursorAdapter(Context context, int layout, Cursor c2) {
        super(context, c2);
        this.b = layout;
        this.a = layout;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public ResourceCursorAdapter(Context context, int layout, Cursor c2, boolean autoRequery) {
        super(context, c2, autoRequery);
        this.b = layout;
        this.a = layout;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public ResourceCursorAdapter(Context context, int layout, Cursor c2, int flags) {
        super(context, c2, flags);
        this.b = layout;
        this.a = layout;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.support.v4.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        return this.c.inflate(this.a, parent, false);
    }

    @Override // android.support.v4.widget.CursorAdapter
    public View newDropDownView(Context context, Cursor cursor, ViewGroup parent) {
        return this.c.inflate(this.b, parent, false);
    }

    public void setViewResource(int layout) {
        this.a = layout;
    }

    public void setDropDownViewResource(int dropDownLayout) {
        this.b = dropDownLayout;
    }
}
