package android.support.v4.os;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;

public class ParcelableCompat {
    public static <T> Parcelable.Creator<T> newCreator(ParcelableCompatCreatorCallbacks<T> callbacks) {
        if (Build.VERSION.SDK_INT >= 13) {
            new a(callbacks);
        }
        return new a(callbacks);
    }

    static class a<T> implements Parcelable.Creator<T> {
        final ParcelableCompatCreatorCallbacks<T> a;

        public a(ParcelableCompatCreatorCallbacks<T> callbacks) {
            this.a = callbacks;
        }

        @Override // android.os.Parcelable.Creator
        public final T createFromParcel(Parcel source) {
            return this.a.createFromParcel(source, null);
        }

        @Override // android.os.Parcelable.Creator
        public final T[] newArray(int size) {
            return this.a.newArray(size);
        }
    }
}
