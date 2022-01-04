package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: ParcelableCompatHoneycombMR2 */
final class a<T> implements Parcelable.ClassLoaderCreator<T> {
    private final ParcelableCompatCreatorCallbacks<T> a;

    public a(ParcelableCompatCreatorCallbacks<T> callbacks) {
        this.a = callbacks;
    }

    @Override // android.os.Parcelable.Creator
    public final T createFromParcel(Parcel in) {
        return this.a.createFromParcel(in, null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final T createFromParcel(Parcel in, ClassLoader loader) {
        return this.a.createFromParcel(in, loader);
    }

    @Override // android.os.Parcelable.Creator
    public final T[] newArray(int size) {
        return this.a.newArray(size);
    }
}
