package tms;

import com.tencent.tmsecure.utils.PhoneInfoUtil;

public final class he implements Runnable {
    final /* synthetic */ PhoneInfoUtil.CPUScaleListener a;

    public he(PhoneInfoUtil.CPUScaleListener cPUScaleListener) {
        this.a = cPUScaleListener;
    }

    public final void run() {
        PhoneInfoUtil.CPUScaleListener cPUScaleListener;
        String str;
        String str2;
        int i = 0;
        try {
            String[] split = v.i("/proc/stat").split("\\n");
            int length = split.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    str = null;
                    break;
                }
                str = split[i2];
                if (!(str == null || str.equals(""))) {
                    break;
                }
                i2++;
            }
            if (str == null) {
                cPUScaleListener = this.a;
            } else {
                String[] split2 = str.split("\\s+");
                Thread.sleep(500);
                String[] split3 = v.i("/proc/stat").split("\\n");
                int length2 = split3.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        str2 = null;
                        break;
                    }
                    str2 = split3[i3];
                    if (!(str2 == null || str2.equals(""))) {
                        break;
                    }
                    i3++;
                }
                if (str2 == null) {
                    cPUScaleListener = this.a;
                } else {
                    String[] split4 = str2.split("\\s+");
                    int i4 = 0;
                    for (int i5 = 1; i5 < split2.length; i5++) {
                        i4 += Integer.parseInt(split2[i5]);
                    }
                    for (int i6 = 1; i6 < split4.length; i6++) {
                        i += Integer.parseInt(split4[i6]);
                    }
                    int i7 = i - i4;
                    this.a.onFinish(((float) (((i7 - (Integer.parseInt(split4[4]) - Integer.parseInt(split2[4]))) * 1000) / i7)) / 10.0f);
                    return;
                }
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
            cPUScaleListener = this.a;
        } catch (ArrayIndexOutOfBoundsException e2) {
            e2.printStackTrace();
            cPUScaleListener = this.a;
        } catch (Throwable th) {
            this.a.onFinish(0.0f);
            throw th;
        }
        cPUScaleListener.onFinish(0.0f);
    }
}
