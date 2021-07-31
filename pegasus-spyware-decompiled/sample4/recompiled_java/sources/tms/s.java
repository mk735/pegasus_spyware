package tms;

import android.text.format.DateUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

public class s {
    public static int a(List<Date> list, Date date) {
        int i = 0;
        for (Date date2 : list) {
            i = date.after(date2) ? i + 1 : i;
        }
        return i;
    }

    public static long a(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        return a(gregorianCalendar).getTime().getTime();
    }

    public static GregorianCalendar a(GregorianCalendar gregorianCalendar) {
        gregorianCalendar.clear(11);
        gregorianCalendar.clear(10);
        gregorianCalendar.clear(12);
        gregorianCalendar.clear(13);
        gregorianCalendar.clear(14);
        return gregorianCalendar;
    }

    public static GregorianCalendar a(GregorianCalendar gregorianCalendar, int i) {
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.setTimeInMillis(gregorianCalendar.getTimeInMillis());
        if (gregorianCalendar2.get(5) != i) {
            if (gregorianCalendar2.get(5) > i) {
                gregorianCalendar2.set(5, i);
            } else {
                gregorianCalendar2.set(5, 1);
                gregorianCalendar2.add(2, -1);
                gregorianCalendar2 = c(gregorianCalendar2, i);
            }
        }
        return a(gregorianCalendar2);
    }

    public static List<GregorianCalendar> a(int i) {
        GregorianCalendar a = a(new GregorianCalendar(), i);
        GregorianCalendar b = b(new GregorianCalendar(), i);
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        ArrayList arrayList = new ArrayList(35);
        while (gregorianCalendar.before(b)) {
            gregorianCalendar = (GregorianCalendar) a.clone();
            arrayList.add(gregorianCalendar);
            a.add(5, 1);
        }
        return arrayList;
    }

    public static boolean a(Date date, Date date2) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        GregorianCalendar a = a(gregorianCalendar);
        gregorianCalendar2.setTime(date2);
        return a.getTimeInMillis() == a(gregorianCalendar2).getTimeInMillis();
    }

    public static long b(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        GregorianCalendar a = a(gregorianCalendar);
        a.set(11, 24);
        return a.getTime().getTime();
    }

    public static GregorianCalendar b(GregorianCalendar gregorianCalendar, int i) {
        GregorianCalendar c;
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.setTimeInMillis(gregorianCalendar.getTimeInMillis());
        if (gregorianCalendar2.get(5) == i) {
            gregorianCalendar2.set(5, 1);
            gregorianCalendar2.add(2, 1);
            c = c(gregorianCalendar2, i);
        } else if (gregorianCalendar2.get(5) < i) {
            c = c(gregorianCalendar2, i);
        } else {
            gregorianCalendar2.set(5, 1);
            gregorianCalendar2.add(2, 1);
            c = c(gregorianCalendar2, i);
        }
        return a(c);
    }

    public static boolean b(List<Date> list, Date date) {
        long time = list.get(0).getTime();
        long time2 = list.get(list.size() - 1).getTime();
        long time3 = date.getTime();
        return time <= time3 && time3 <= time2;
    }

    public static int c(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        return gregorianCalendar.getActualMaximum(5);
    }

    private static GregorianCalendar c(GregorianCalendar gregorianCalendar, int i) {
        int actualMaximum = gregorianCalendar.getActualMaximum(5);
        if (actualMaximum >= i) {
            gregorianCalendar.set(5, i);
        } else {
            gregorianCalendar.set(5, actualMaximum);
        }
        return gregorianCalendar;
    }

    public static String d(Date date) {
        return DateUtils.getRelativeTimeSpanString(date.getTime(), System.currentTimeMillis(), 60000, 262144).toString();
    }
}
