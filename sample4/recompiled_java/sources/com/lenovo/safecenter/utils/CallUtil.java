package com.lenovo.safecenter.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.CallLog;
import android.text.TextUtils;
import android.util.Log;

public class CallUtil {
    private static String[] a = {"date", "type", "duration"};

    public static void statisticsCallDurationByType(Context context) {
        Cursor c;
        long statisticsTime = Const.getCallDurationStatisticsTime();
        long nextMonth = WflUtils.getNextMonthStartTime();
        if (statisticsTime <= WflUtils.parseMonthStartTime(Long.valueOf(System.currentTimeMillis())).longValue()) {
            Log.i("wu0wu", "CallDuration first Statistics");
            c = a(context.getContentResolver(), WflUtils.parseMonthStartTime(Long.valueOf(System.currentTimeMillis())), Long.valueOf(nextMonth));
            if (c != null) {
                int[] callDurations = a(c);
                Const.setCallIncommingDurationCurrMonth(callDurations[0]);
                Const.setCallOutgoingDurationCurrMonth(callDurations[1]);
            }
        } else if (statisticsTime > nextMonth) {
            Log.i("wu0wu", "CallDuration first Statistics");
            c = a(context.getContentResolver(), WflUtils.parseMonthStartTime(Long.valueOf(System.currentTimeMillis())), Long.valueOf(nextMonth));
            if (c != null) {
                int[] callDurations2 = a(c);
                Const.setCallIncommingDurationCurrMonth(callDurations2[0]);
                Const.setCallOutgoingDurationCurrMonth(callDurations2[1]);
            }
        } else {
            Log.i("wu0wu", "CallDuration Statisticsed");
            c = a(context.getContentResolver(), Long.valueOf(statisticsTime), Long.valueOf(nextMonth));
            if (c != null) {
                int[] callDurations3 = a(c);
                Const.setCallIncommingDurationCurrMonth(callDurations3[0] + Const.getCallIncommingDurationCurrMonth());
                Const.setCallOutgoingDurationCurrMonth(callDurations3[1] + Const.getCallOutgoingDurationCurrMonth());
            }
        }
        if (c != null) {
            if (c.getCount() != 0) {
                c.moveToFirst();
                Const.setCallDurationStatisticsTime(Long.valueOf(c.getString(c.getColumnIndexOrThrow("date"))).longValue());
                LeSafeObservable.get(context).noticeRefreshCallDurationCurrMonth();
            }
            c.close();
        }
        Log.i("wu0wu", "CallIncommingDurationCurrMonth=" + Const.getCallIncommingDurationCurrMonth());
        Log.i("wu0wu", "CallOutgoingDurationCurrMonth=" + Const.getCallOutgoingDurationCurrMonth());
        Log.i("wu0wu", "CallDurationStatisticsTime=" + Const.getCallDurationStatisticsTime());
    }

    private static Cursor a(ContentResolver resolver, Long fromTime, Long toTime) {
        long longValue = fromTime.longValue();
        long longValue2 = toTime.longValue();
        return resolver.query(CallLog.Calls.CONTENT_URI, a, String.format("%s > ? AND %s < ? ", "date", "date"), new String[]{String.valueOf(longValue), String.valueOf(longValue2)}, "date DESC");
    }

    private static int[] a(Cursor c) {
        int[] durations = new int[2];
        while (c.moveToNext()) {
            String duration = c.getString(c.getColumnIndexOrThrow("duration"));
            String type = c.getString(c.getColumnIndexOrThrow("type"));
            if (!TextUtils.isEmpty(type)) {
                switch (Integer.parseInt(type)) {
                    case 1:
                        if (!TextUtils.isEmpty(duration)) {
                            durations[0] = durations[0] + WflUtils.convertSecondsToMinute(Integer.parseInt(duration));
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        if (!TextUtils.isEmpty(duration)) {
                            durations[1] = durations[1] + WflUtils.convertSecondsToMinute(Integer.parseInt(duration));
                            break;
                        } else {
                            continue;
                        }
                }
            }
        }
        return durations;
    }
}
