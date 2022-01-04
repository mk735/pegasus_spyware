package tms;

import android.os.SystemClock;
import com.tencent.tmsecure.exception.BadExpiryDataException;
import com.tencent.tmsecure.utils.SDKUtil;
import java.lang.reflect.Array;
import java.security.SecureRandom;

/* access modifiers changed from: package-private */
public final class bo {
    private int a;
    private long b;
    private long c;

    bo(boolean z) {
        int nextInt;
        int i;
        o.a(f.class);
        SecureRandom secureRandom = new SecureRandom(("" + SystemClock.uptimeMillis() + (((long) SDKUtil.getSDKVersion()) * ((long) System.getProperty("os.version", "wtf").hashCode()))).getBytes());
        do {
            nextInt = secureRandom.nextInt(900) + 101;
        } while (a(nextInt));
        this.a = nextInt;
        int i2 = this.a;
        int[] iArr = new int[100];
        double sqrt = Math.sqrt((double) i2);
        int i3 = ((int) sqrt) - 1;
        while ((i3 + 1) * (i3 + 1) <= i2) {
            i3++;
        }
        iArr[0] = i3;
        if (i3 * i3 != i2) {
            int i4 = 1;
            int[] iArr2 = new int[5];
            iArr2[1] = 1;
            iArr2[2] = 0;
            iArr2[3] = -iArr[0];
            iArr2[4] = 1;
            int[][] iArr3 = (int[][]) Array.newInstance(Integer.TYPE, 100, 5);
            int i5 = 0;
            int i6 = 0;
            while (true) {
                if (i4 >= 100) {
                    i = i5;
                    break;
                }
                if (iArr2[1] < 0) {
                    iArr2[1] = -iArr2[1];
                    iArr2[2] = -iArr2[2];
                    iArr2[3] = -iArr2[3];
                    iArr2[4] = -iArr2[4];
                }
                int a2 = a(a(a(iArr2[1], Math.abs(iArr2[2])), Math.abs(iArr2[3])), Math.abs(iArr2[4]));
                if (a2 > 1) {
                    iArr2[1] = iArr2[1] / a2;
                    iArr2[2] = iArr2[2] / a2;
                    iArr2[3] = iArr2[3] / a2;
                    iArr2[4] = iArr2[4] / a2;
                }
                i5 = 0;
                while (i5 < i6) {
                    int[] iArr4 = iArr3[i5];
                    if (iArr4[1] == iArr2[1] && iArr4[2] == iArr2[2] && iArr4[3] == iArr2[3] && iArr4[4] == iArr2[4]) {
                        break;
                    }
                    i5++;
                }
                if (i5 < i6) {
                    i = i5;
                    break;
                }
                iArr3[i6][1] = iArr2[1];
                iArr3[i6][2] = iArr2[2];
                iArr3[i6][3] = iArr2[3];
                iArr3[i6][4] = iArr2[4];
                i6++;
                iArr[i4] = (int) Math.floor((((double) iArr2[1]) + (((double) iArr2[2]) * sqrt)) / (((double) iArr2[3]) + (((double) iArr2[4]) * sqrt)));
                int i7 = iArr[i4];
                iArr2[1] = iArr2[1] - (iArr2[3] * i7);
                iArr2[2] = iArr2[2] - (i7 * iArr2[4]);
                int i8 = (iArr2[1] * iArr2[3]) - ((iArr2[2] * iArr2[4]) * i2);
                int i9 = (iArr2[1] * iArr2[4]) - (iArr2[2] * iArr2[3]);
                iArr2[1] = i8;
                iArr2[2] = i9;
                iArr2[3] = (iArr2[1] * iArr2[1]) - ((iArr2[2] * iArr2[2]) * i2);
                iArr2[4] = 0;
                i4++;
            }
            int i10 = i4 - 1;
            long j = 0;
            long j2 = 1;
            int i11 = 1;
            boolean z2 = false;
            while (true) {
                if (j < 200 || !z2) {
                    int i12 = i11 + 1;
                    j = 0;
                    j2 = 1;
                    int i13 = i12 - 1;
                    while (i13 >= 0) {
                        long j3 = j2 + (((long) (i12 <= i10 ? iArr[i13] : iArr[((i13 - i) % i10) + i])) * j);
                        i13--;
                        j2 = j;
                        j = j3;
                    }
                    if (j >= 1000000) {
                        throw new RuntimeException();
                    }
                    long j4 = j * j;
                    long j5 = j2 * j2;
                    long j6 = ((long) i2) * j5;
                    long j7 = 1000 * j4;
                    z2 = (j < 200 || 999 * j6 >= j7 || j7 >= j6 * 1001 || z2 || ((!z || j4 >= ((long) i2) * j5) && (z || j4 <= j5 * ((long) i2)))) ? z2 : true;
                    i11 = i12;
                } else {
                    o.a(getClass(), f.class);
                    this.b = j;
                    this.c = j2;
                    b();
                    return;
                }
            }
        }
    }

    private static final int a(int i, int i2) {
        int i3 = i2;
        int i4 = i;
        while (i4 != 0) {
            if (i3 == 0) {
                return i4;
            }
            if (i4 < i3) {
                i4 = i3;
                i3 = i4;
            } else {
                while (true) {
                    int i5 = i4 % i3;
                    if (i5 == 0) {
                        return i3;
                    }
                    i4 = i3;
                    i3 = i5;
                }
            }
        }
        return i3;
    }

    private static final boolean a(int i) {
        int sqrt = ((int) Math.sqrt((double) i)) - 1;
        while ((sqrt + 1) * (sqrt + 1) <= i) {
            sqrt++;
        }
        return sqrt * sqrt == i;
    }

    private void b() throws BadExpiryDataException {
        long j = (long) this.a;
        long j2 = this.b;
        long j3 = this.c;
        if (j2 < 200) {
            throw new BadExpiryDataException();
        }
        long j4 = j * j3 * j3;
        long j5 = j4 * 1000;
        long j6 = j2 * j2 * 1000;
        if (j6 <= j5 - j4 || j6 >= j4 + j5) {
            throw new BadExpiryDataException();
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        b();
        long j = this.b;
        long j2 = this.c;
        return j * j < ((long) this.a) * (j2 * j2);
    }
}
