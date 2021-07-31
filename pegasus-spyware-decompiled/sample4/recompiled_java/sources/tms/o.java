package tms;

import com.tencent.tmsecure.exception.UnauthorizedCallerException;

public class o {
    public static void a(Class<?>... clsArr) throws UnauthorizedCallerException {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        boolean z = false;
        for (StackTraceElement stackTraceElement : stackTrace) {
            int length = clsArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (stackTraceElement.getClassName().equals(clsArr[i].getName())) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        if (!z) {
            throw new UnauthorizedCallerException();
        }
    }
}
