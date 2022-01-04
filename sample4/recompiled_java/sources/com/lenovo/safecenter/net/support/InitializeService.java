package com.lenovo.safecenter.net.support;

import android.app.Service;
import android.content.Intent;
import android.net.INetworkStatsService;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.Log;
import com.lenovo.safecenter.net.TrafficShowDataDailog;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.net.correct.TrafficCorrectSetting;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.Calendar;

public class InitializeService extends Service {
    public static final String ACTION = "com.lenovo.safecenter.updatetrafficbar.broadcast";
    private static int b = 5;
    private static boolean c = true;
    private TrafficStatsService a;
    private INetworkStatsService d;
    private PhoneSimInfo e;
    private int f;
    private final Handler g = new Handler() {
        /* class com.lenovo.safecenter.net.support.InitializeService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    Log.i("week", "touch here !!!");
                    Log.i("week", "touch here @@@ week = " + TrafficStatsService.getWeekOfDate());
                    Log.i("week", "notice value = " + TrafficStatsService.getTrafficDaliogNoticeValue(InitializeService.this));
                    boolean timeFlag = false;
                    long currentTimeMillis = System.currentTimeMillis();
                    if (currentTimeMillis >= WflUtils.getTriggerTime(18, 29, 0) && currentTimeMillis <= WflUtils.getTriggerTime(18, 31, 0)) {
                        timeFlag = true;
                    }
                    Log.i("week", "time flag = " + timeFlag);
                    if (!TrafficStatsService.getTrafficDaliogNoticeValue(InitializeService.this) && TrafficStatsService.getWeekOfDate() == InitializeService.b && timeFlag) {
                        Log.i("week", "touch create dailog friday");
                        Intent i = new Intent(InitializeService.this, TrafficShowDataDailog.class);
                        i.setFlags(268435456);
                        InitializeService.this.startActivity(i);
                    }
                    InitializeService.this.stopSelf();
                    return;
                case 6:
                    InitializeService.this.stopSelf();
                    return;
                default:
                    return;
            }
        }
    };

    public IBinder onBind(Intent arg0) {
        return null;
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        Logger.i("8.31", "touch on start InitializeService");
        if (intent == null) {
            return 3;
        }
        if (Const.SERVICE_ACTION_RTC.equals(intent.getAction())) {
            Log.i("boot", "touch SERVICE_ACTION_RTCcom.lenovo.safecenter.traffic.service.RTC");
            TrafficStatsService.getExecutorService().execute(new Thread() {
                /* class com.lenovo.safecenter.net.support.InitializeService.AnonymousClass2 */

                public final void run() {
                    if (InitializeService.this.f != 12 || InitializeService.this.f != 10) {
                        InitializeService.this.a.refreshTotal();
                        TrafficStatsService.statsTrafficMobile(InitializeService.this);
                    } else if (InitializeService.this.d != null) {
                        try {
                            InitializeService.this.d.forceUpdate();
                            Thread.sleep(NetConstant.SLEEP_SECONDS_TEN);
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                    }
                    InitializeService.this.a.insertDayTrafficDate(InitializeService.this);
                    InitializeService.this.g.sendEmptyMessage(6);
                }
            });
        } else if (Const.DELETE_ACTION_RTC.equals(intent.getAction())) {
            Log.i("forzajuve", "touch DELETE_ACTION_RTC");
            final boolean execFlag = true;
            if (System.currentTimeMillis() > WflUtils.getTriggerTime(0, 2, 0)) {
                execFlag = false;
            }
            if (execFlag) {
                Const.setIsTodayNoticed(false);
                TrafficStatsService.setIsTodayNoticed2(this, false);
            }
            Log.i("forzajuve", "flag = " + execFlag);
            TrafficStatsService.getExecutorService().execute(new Thread() {
                /* class com.lenovo.safecenter.net.support.InitializeService.AnonymousClass3 */

                public final void run() {
                    if (Calendar.getInstance().get(5) == 1) {
                        Log.i("forzajuve", "do4newMonth");
                        InitializeService.this.a.do4newMonth();
                    }
                    try {
                        if (execFlag) {
                            if (InitializeService.this.f != 13) {
                                InitializeService.this.d.forceUpdate();
                            } else {
                                InitializeService.this.a.refreshTotal();
                                TrafficStatsService.statsTrafficMobileInLimit(InitializeService.this);
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        InitializeService.this.g.sendEmptyMessage(6);
                    }
                }
            });
        } else if (TrafficStatsService.CORRECT_ACTION_RTC_SIM.equals(intent.getAction())) {
            Log.i("8.31", "touch CORRECT_ACTION_RTC_SIM card 1");
            if (!TextUtils.isEmpty(this.e.sim1IMSI)) {
                a(0);
            }
            stopSelf();
        } else if (TrafficStatsService.CORRECT_ACTION_RTC_SIM2.equals(intent.getAction())) {
            Log.i("4.2", "touch CORRECT_ACTION_RTC_SIM card 2");
            if (!TextUtils.isEmpty(this.e.sim2IMSI)) {
                a(1);
            }
            stopSelf();
        } else if (TrafficStatsService.NOTICE_TRAFFIC_ACTION_RTC.equals(intent.getAction())) {
            Log.i("week", "touch NOTICE_TRAFFIC_ACTION_RTC");
            TrafficStatsService.getExecutorService().execute(new Thread() {
                /* class com.lenovo.safecenter.net.support.InitializeService.AnonymousClass4 */

                public final void run() {
                    TrafficStatsService.trafficForceUpdate(InitializeService.this.getApplicationContext());
                    InitializeService.this.g.sendMessageDelayed(InitializeService.this.g.obtainMessage(0), NetConstant.SLEEP_SECONDS_TEN);
                }
            });
        } else {
            Logger.i("8.7", "touch on start InitializeService else");
            TrafficStatsService.getExecutorService().execute(new Thread() {
                /* class com.lenovo.safecenter.net.support.InitializeService.AnonymousClass5 */

                public final void run() {
                    try {
                        Log.i("3.6", "TrafficStatsService canRun=" + InitializeService.c);
                        if (InitializeService.c) {
                            boolean unused = InitializeService.c = false;
                            Log.i("3.6", "TrafficStatsService forceUpdate start....trafficDevMod =" + InitializeService.this.f);
                            if (InitializeService.this.f == 13) {
                                Log.i("3.6", "TrafficStatsService refreshTotal start....");
                                InitializeService.this.a.refreshTotal();
                                TrafficStatsService.statsTrafficMobileInLimit(InitializeService.this);
                            } else if (InitializeService.this.d != null) {
                                InitializeService.this.d.forceUpdate();
                            }
                            boolean unused2 = InitializeService.c = true;
                        }
                    } catch (Exception e) {
                        boolean unused3 = InitializeService.c = true;
                    } finally {
                        InitializeService.this.g.sendEmptyMessage(6);
                    }
                }
            });
        }
        return super.onStartCommand(intent, flags, startId);
    }

    private void a(int cardPostion) {
        if (WflUtils.isNetworkAvailable(this)) {
            if (SecurityService.config == null) {
                Utils.setConfig(cardPostion, this);
            }
            Utils.setCorrectPostion(this, cardPostion);
            Intent i = new Intent(this, SecurityService.class);
            i.putExtra(TrafficCorrectSetting.CORRECT, true);
            startService(i);
        }
    }

    public void onCreate() {
        super.onCreate();
        this.a = TrafficStatsService.getInstance(getApplicationContext());
        this.e = TrafficStatsService.getImsiInfo(getApplicationContext());
        this.f = TrafficStatsService.getTrafficMode(getApplicationContext());
        if (this.f != 13) {
            this.d = INetworkStatsService.Stub.asInterface(ServiceManager.getService("netstats"));
        }
    }

    public void onDestroy() {
        super.onDestroy();
    }
}
