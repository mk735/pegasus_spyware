package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* access modifiers changed from: package-private */
/* compiled from: Fragment */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() {
        /* class android.support.v4.app.FragmentState.AnonymousClass1 */

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ FragmentState createFromParcel(Parcel x0) {
            return new FragmentState(x0);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ FragmentState[] newArray(int x0) {
            return new FragmentState[x0];
        }
    };
    final String a;
    final int b;
    final boolean c;
    final int d;
    final int e;
    final String f;
    final boolean g;
    final boolean h;
    final Bundle i;
    Bundle j;
    Fragment k;

    public FragmentState(Fragment frag) {
        this.a = frag.getClass().getName();
        this.b = frag.n;
        this.c = frag.w;
        this.d = frag.D;
        this.e = frag.E;
        this.f = frag.F;
        this.g = frag.I;
        this.h = frag.H;
        this.i = frag.p;
    }

    public FragmentState(Parcel in) {
        boolean z;
        boolean z2 = true;
        this.a = in.readString();
        this.b = in.readInt();
        this.c = in.readInt() != 0;
        this.d = in.readInt();
        this.e = in.readInt();
        this.f = in.readString();
        if (in.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.g = z;
        this.h = in.readInt() == 0 ? false : z2;
        this.i = in.readBundle();
        this.j = in.readBundle();
    }

    public final Fragment a(FragmentActivity activity) {
        if (this.k != null) {
            return this.k;
        }
        if (this.i != null) {
            this.i.setClassLoader(activity.getClassLoader());
        }
        this.k = Fragment.instantiate(activity, this.a, this.i);
        if (this.j != null) {
            this.j.setClassLoader(activity.getClassLoader());
            this.k.l = this.j;
        }
        this.k.a(this.b);
        this.k.w = this.c;
        this.k.y = true;
        this.k.D = this.d;
        this.k.E = this.e;
        this.k.F = this.f;
        this.k.I = this.g;
        this.k.H = this.h;
        this.k.A = activity.b;
        return this.k;
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel dest, int flags) {
        int i2;
        int i3 = 1;
        dest.writeString(this.a);
        dest.writeInt(this.b);
        dest.writeInt(this.c ? 1 : 0);
        dest.writeInt(this.d);
        dest.writeInt(this.e);
        dest.writeString(this.f);
        if (this.g) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        dest.writeInt(i2);
        if (!this.h) {
            i3 = 0;
        }
        dest.writeInt(i3);
        dest.writeBundle(this.i);
        dest.writeBundle(this.j);
    }
}
