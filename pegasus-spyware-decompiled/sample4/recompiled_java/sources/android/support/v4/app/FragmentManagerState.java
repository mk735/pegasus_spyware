package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;

/* access modifiers changed from: package-private */
/* compiled from: FragmentManager */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Parcelable.Creator<FragmentManagerState>() {
        /* class android.support.v4.app.FragmentManagerState.AnonymousClass1 */

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ FragmentManagerState createFromParcel(Parcel x0) {
            return new FragmentManagerState(x0);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ FragmentManagerState[] newArray(int x0) {
            return new FragmentManagerState[x0];
        }
    };
    FragmentState[] a;
    int[] b;
    BackStackState[] c;

    public FragmentManagerState() {
    }

    public FragmentManagerState(Parcel in) {
        this.a = (FragmentState[]) in.createTypedArray(FragmentState.CREATOR);
        this.b = in.createIntArray();
        this.c = (BackStackState[]) in.createTypedArray(BackStackState.CREATOR);
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel dest, int flags) {
        dest.writeTypedArray(this.a, flags);
        dest.writeIntArray(this.b);
        dest.writeTypedArray(this.c, flags);
    }
}
