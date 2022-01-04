package com.lenovo.safecenter.utils;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.Observable;

public class LeSafeObservable extends Observable {
    public static final int LOAD_FINISH = 22;
    public static final int LOAD_PERMISSION = 20;
    public static final int LOAD_VIRUSDB = 21;
    public static final int OBSERVER_CHANGE_CHILD_MODE_FAIL = 6;
    public static final int OBSERVER_CHANGE_GUEST_MODE_SUCCESS = 5;
    public static final int OBSERVER_CHANGE_PASSWORD = 10;
    public static final int OBSERVER_FLOAT_WINDOW_CHANGE = 20;
    public static final int OBSERVER_NEW_CHARGE_LOGS = 7;
    public static final int OBSERVER_NEW_HARASS_LOGS = 9;
    public static final int OBSERVER_NEW_PRIVACY_LOGS = 8;
    public static final int OBSERVER_PROTECT_VIRUS_HAS_VIRUS = 18;
    public static final int OBSERVER_PROTECT_VIRUS_KILLED_VIRUS = 19;
    public static final int OBSERVER_PROTECT_VIRUS_SCANED = 17;
    public static final int OBSERVER_QUERY_LAB = 1;
    public static final int OBSERVER_REFRESH_CALL_DURATION_CURR_MONTH = 4;
    public static final int OBSERVER_REFRESH_PROTECT_HARASS_DETAIL = 14;
    public static final int OBSERVER_REFRESH_PROTECT_PEEP_DETAIL = 13;
    public static final int OBSERVER_REFRESH_PROTECT_THIEF_DETAIL = 16;
    public static final int OBSERVER_REFRESH_PROTECT_TRAFFIC_DETAIL = 12;
    public static final int OBSERVER_REFRESH_PROTECT_VIRUS_DETAIL = 15;
    public static final int OBSERVER_REFRESH_SMS_SENT_NUM_CURR_MONTH = 3;
    public static final int OBSERVER_REFRESH_TRAFFIC_INFO = 2;
    public static final int OBSERVER_UPDATED_LAB = 0;
    public static final int OBSERVER_UPDATING_LAB = 11;
    private static LeSafeObservable a;
    private Handler b;

    private LeSafeObservable() {
        boolean z = Looper.getMainLooper().getThread() != Thread.currentThread();
        this.b = new Handler(Looper.getMainLooper()) {
            /* class com.lenovo.safecenter.utils.LeSafeObservable.AnonymousClass1 */

            public final void handleMessage(Message msg) {
                switch (msg.what) {
                    case 0:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(0);
                        return;
                    case 1:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(1);
                        return;
                    case 2:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(2);
                        return;
                    case 3:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(3);
                        return;
                    case 4:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(4);
                        return;
                    case 5:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(5);
                        return;
                    case 6:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(6);
                        return;
                    case 7:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(7);
                        return;
                    case 8:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(8);
                        return;
                    case 9:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(9);
                        return;
                    case 10:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(10);
                        return;
                    case 11:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(11);
                        return;
                    case 12:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(12);
                        return;
                    case 13:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(13);
                        return;
                    case 14:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(14);
                        return;
                    case 15:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(15);
                        return;
                    case 16:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(16);
                        return;
                    case 17:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(17);
                        return;
                    case 18:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(18);
                        return;
                    case 19:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(19);
                        return;
                    case 20:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(20);
                        return;
                    case 21:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(21);
                        return;
                    case 22:
                        LeSafeObservable.this.setChanged();
                        LeSafeObservable.this.notifyObservers(22);
                        return;
                    default:
                        return;
                }
            }
        };
        if (z) {
            Log.i("wu0wu", "===============isNotInUiThread");
        } else {
            Log.i("wu0wu", "===============isInUiThread");
        }
    }

    public static synchronized LeSafeObservable get(Context context) {
        LeSafeObservable leSafeObservable;
        synchronized (LeSafeObservable.class) {
            if (a == null) {
                a = new LeSafeObservable();
            }
            leSafeObservable = a;
        }
        return leSafeObservable;
    }

    public void close() {
        synchronized (this) {
            a = null;
        }
    }

    public void noticeUpdatedLab() {
        this.b.sendEmptyMessage(0);
    }

    public void noticeQueryedLab() {
        Log.i("wu0wu", "noticeQueryedLab()-->");
        this.b.sendEmptyMessage(1);
    }

    public void noticeRefreshProtectTrafficDetail() {
        Log.i("wu0wu", "noticeRefreshProtectTrafficDetail()-->");
        this.b.sendEmptyMessage(12);
    }

    public void noticeRefreshProtectPeepDetail() {
        Log.i("wu0wu", "noticeRefreshProtectPeepDetail()-->");
        this.b.sendEmptyMessage(13);
    }

    public void noticeRefreshProtectHarassDetail() {
        Log.i("wu0wu", "noticeRefreshProtectHarassDetail()-->");
        this.b.sendEmptyMessage(14);
    }

    public void noticeRefreshProtectVirusDetail() {
        Log.i("wu0wu", "noticeRefreshProtectVirusDetail()-->");
        this.b.sendEmptyMessage(15);
    }

    public void noticeRefreshProtectThiefDetail() {
        Log.i("wu0wu", "noticeRefreshProtectThiefDetail()-->");
        this.b.sendEmptyMessage(16);
    }

    public void noticeRefreshTrafficInfo() {
        Log.i("wu0wu", "noticeRefreshTrafficInfo()-->");
        this.b.sendEmptyMessage(2);
    }

    public void noticeRefreshSmsSentNumCurrMonth() {
        this.b.sendEmptyMessage(3);
    }

    public void noticeRefreshCallDurationCurrMonth() {
        this.b.sendEmptyMessage(4);
    }

    public void noticeChangeGuestModeSuccess() {
        this.b.sendEmptyMessage(5);
    }

    public void noticeChangeChildModeFail() {
        this.b.sendEmptyMessage(6);
    }

    public void noticeRefreshPrivacyLogs() {
        this.b.sendEmptyMessage(8);
    }

    public void noticeRefreshChargeLogs() {
        this.b.sendEmptyMessage(7);
    }

    public void noticeRefreshHarassLogs() {
        this.b.sendEmptyMessage(9);
    }

    public void noticeChangePassword() {
        WflUtils.Log("i", "wu0wu", "LeSafeObservable noticeChangePassword()-->");
        this.b.sendEmptyMessage(10);
    }

    public void noticeUpdatingLab() {
        this.b.sendEmptyMessage(11);
    }

    public void noticeHasScanedVirus() {
        this.b.sendEmptyMessage(17);
    }

    public void noticeHasVirus() {
        this.b.sendEmptyMessage(18);
    }

    public void noticeKilledVirus() {
        this.b.sendEmptyMessage(19);
    }

    public void noticeLoadPermissions() {
        this.b.sendEmptyMessage(20);
    }

    public void noticeLoadVirusDB() {
        this.b.sendEmptyMessage(21);
    }

    public void noticeLoadFinish() {
        this.b.sendEmptyMessage(22);
    }
}
