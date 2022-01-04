package android.support.v4.util;

import java.io.PrintWriter;

public class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final Object a = new Object();
    private static char[] b = new char[24];

    private static int a(int amt, int suffix, boolean always, int zeropad) {
        if (amt > 99 || (always && zeropad >= 3)) {
            return suffix + 3;
        }
        if (amt > 9 || (always && zeropad >= 2)) {
            return suffix + 2;
        }
        if (always || amt > 0) {
            return suffix + 1;
        }
        return 0;
    }

    private static int a(char[] formatStr, int amt, char suffix, int pos, boolean always, int zeropad) {
        if (!always && amt <= 0) {
            return pos;
        }
        if ((always && zeropad >= 3) || amt > 99) {
            int dig = amt / 100;
            formatStr[pos] = (char) (dig + 48);
            pos++;
            amt -= dig * 100;
        }
        if ((always && zeropad >= 2) || amt > 9 || pos != pos) {
            int dig2 = amt / 10;
            formatStr[pos] = (char) (dig2 + 48);
            pos++;
            amt -= dig2 * 10;
        }
        formatStr[pos] = (char) (amt + 48);
        int pos2 = pos + 1;
        formatStr[pos2] = suffix;
        return pos2 + 1;
    }

    private static int a(long duration, int fieldLen) {
        char prefix;
        if (b.length < fieldLen) {
            b = new char[fieldLen];
        }
        char[] formatStr = b;
        if (duration == 0) {
            int fieldLen2 = fieldLen - 1;
            while (fieldLen2 > 0) {
                formatStr[0] = ' ';
            }
            formatStr[0] = '0';
            return 1;
        }
        if (duration > 0) {
            prefix = '+';
        } else {
            prefix = '-';
            duration = -duration;
        }
        int millis = (int) (duration % 1000);
        int seconds = (int) Math.floor((double) (duration / 1000));
        int days = 0;
        int hours = 0;
        int minutes = 0;
        if (seconds > 86400) {
            days = seconds / 86400;
            seconds -= 86400 * days;
        }
        if (seconds > 3600) {
            hours = seconds / 3600;
            seconds -= hours * 3600;
        }
        if (seconds > 60) {
            minutes = seconds / 60;
            seconds -= minutes * 60;
        }
        int pos = 0;
        if (fieldLen != 0) {
            int myLen = a(days, 1, false, 0);
            int myLen2 = myLen + a(hours, 1, myLen > 0, 2);
            int myLen3 = myLen2 + a(minutes, 1, myLen2 > 0, 2);
            int myLen4 = myLen3 + a(seconds, 1, myLen3 > 0, 2);
            for (int myLen5 = myLen4 + a(millis, 2, true, myLen4 > 0 ? 3 : 0) + 1; myLen5 < fieldLen; myLen5++) {
                formatStr[pos] = ' ';
                pos++;
            }
        }
        formatStr[pos] = prefix;
        int pos2 = pos + 1;
        boolean zeropad = fieldLen != 0;
        int pos3 = a(formatStr, days, 'd', pos2, false, 0);
        int pos4 = a(formatStr, hours, 'h', pos3, pos3 != pos2, zeropad ? 2 : 0);
        int pos5 = a(formatStr, minutes, 'm', pos4, pos4 != pos2, zeropad ? 2 : 0);
        int pos6 = a(formatStr, seconds, 's', pos5, pos5 != pos2, zeropad ? 2 : 0);
        int pos7 = a(formatStr, millis, 'm', pos6, true, (!zeropad || pos6 == pos2) ? 0 : 3);
        formatStr[pos7] = 's';
        return pos7 + 1;
    }

    public static void formatDuration(long duration, StringBuilder builder) {
        synchronized (a) {
            builder.append(b, 0, a(duration, 0));
        }
    }

    public static void formatDuration(long duration, PrintWriter pw, int fieldLen) {
        synchronized (a) {
            pw.print(new String(b, 0, a(duration, fieldLen)));
        }
    }

    public static void formatDuration(long duration, PrintWriter pw) {
        formatDuration(duration, pw, 0);
    }

    public static void formatDuration(long time, long now, PrintWriter pw) {
        if (time == 0) {
            pw.print("--");
        } else {
            formatDuration(time - now, pw, 0);
        }
    }
}
