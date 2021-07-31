package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.a;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
/* compiled from: BackStackRecord */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() {
        /* class android.support.v4.app.BackStackState.AnonymousClass1 */

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ BackStackState createFromParcel(Parcel x0) {
            return new BackStackState(x0);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ BackStackState[] newArray(int x0) {
            return new BackStackState[x0];
        }
    };
    final int[] a;
    final int b;
    final int c;
    final String d;
    final int e;
    final int f;
    final CharSequence g;
    final int h;
    final CharSequence i;

    public BackStackState(a bse) {
        int pos;
        int numRemoved = 0;
        for (a.C0000a op = bse.b; op != null; op = op.a) {
            if (op.g != null) {
                numRemoved += op.g.size();
            }
        }
        this.a = new int[((bse.d * 5) + numRemoved)];
        if (!bse.i) {
            throw new IllegalStateException("Not on back stack");
        }
        a.C0000a op2 = bse.b;
        int pos2 = 0;
        while (op2 != null) {
            int pos3 = pos2 + 1;
            this.a[pos2] = op2.c;
            int pos4 = pos3 + 1;
            this.a[pos3] = op2.d.n;
            int pos5 = pos4 + 1;
            this.a[pos4] = op2.e;
            int pos6 = pos5 + 1;
            this.a[pos5] = op2.f;
            if (op2.g != null) {
                int N = op2.g.size();
                this.a[pos6] = N;
                int i2 = 0;
                int pos7 = pos6 + 1;
                while (i2 < N) {
                    this.a[pos7] = op2.g.get(i2).n;
                    i2++;
                    pos7++;
                }
                pos = pos7;
            } else {
                pos = pos6 + 1;
                this.a[pos6] = 0;
            }
            op2 = op2.a;
            pos2 = pos;
        }
        this.b = bse.g;
        this.c = bse.h;
        this.d = bse.k;
        this.e = bse.m;
        this.f = bse.n;
        this.g = bse.o;
        this.h = bse.p;
        this.i = bse.q;
    }

    public BackStackState(Parcel in) {
        this.a = in.createIntArray();
        this.b = in.readInt();
        this.c = in.readInt();
        this.d = in.readString();
        this.e = in.readInt();
        this.f = in.readInt();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(in);
        this.h = in.readInt();
        this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(in);
    }

    public final a a(b fm) {
        a bse = new a(fm);
        int pos = 0;
        while (pos < this.a.length) {
            a.C0000a op = new a.C0000a();
            int pos2 = pos + 1;
            op.c = this.a[pos];
            if (b.a) {
                Log.v("FragmentManager", "BSE " + bse + " set base fragment #" + this.a[pos2]);
            }
            int pos3 = pos2 + 1;
            op.d = fm.f.get(this.a[pos2]);
            int pos4 = pos3 + 1;
            op.e = this.a[pos3];
            int pos5 = pos4 + 1;
            op.f = this.a[pos4];
            int pos6 = pos5 + 1;
            int N = this.a[pos5];
            if (N > 0) {
                op.g = new ArrayList<>(N);
                int i2 = 0;
                while (i2 < N) {
                    if (b.a) {
                        Log.v("FragmentManager", "BSE " + bse + " set remove fragment #" + this.a[pos6]);
                    }
                    op.g.add(fm.f.get(this.a[pos6]));
                    i2++;
                    pos6++;
                }
            }
            pos = pos6;
            bse.a(op);
        }
        bse.g = this.b;
        bse.h = this.c;
        bse.k = this.d;
        bse.m = this.e;
        bse.i = true;
        bse.n = this.f;
        bse.o = this.g;
        bse.p = this.h;
        bse.q = this.i;
        bse.a(1);
        return bse;
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel dest, int flags) {
        dest.writeIntArray(this.a);
        dest.writeInt(this.b);
        dest.writeInt(this.c);
        dest.writeString(this.d);
        dest.writeInt(this.e);
        dest.writeInt(this.f);
        TextUtils.writeToParcel(this.g, dest, 0);
        dest.writeInt(this.h);
        TextUtils.writeToParcel(this.i, dest, 0);
    }
}
