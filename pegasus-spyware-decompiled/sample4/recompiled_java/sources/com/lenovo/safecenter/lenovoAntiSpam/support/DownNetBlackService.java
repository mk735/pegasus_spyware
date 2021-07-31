package com.lenovo.safecenter.lenovoAntiSpam.support;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.database.NetAppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import com.lenovo.safecenter.lenovoAntiSpam.utils.HttpUtils;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.updateLab.UpdateLabManager;

public class DownNetBlackService extends Service {
    Handler a = new Handler() {
        /* class com.lenovo.safecenter.lenovoAntiSpam.support.DownNetBlackService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    int result = msg.getData().getInt(QueryPermissions.RECOMMENDEDACTION);
                    if (result == 3) {
                        DownNetBlackService.this.setUpdateIntent(HttpUtils.execService("lastintag", DownNetBlackService.this), 1, 3);
                    } else if (result == 2) {
                        if (!HttpUtils.Lastin_tag.trim().equals("")) {
                            DownNetBlackService.this.b.UpdateConfig("lastintag", HttpUtils.Lastin_tag, DownNetBlackService.this);
                            DownNetBlackService.this.b.UpdateConfig("mms_lastintag", HttpUtils.Lastin_tag, DownNetBlackService.this);
                        }
                        if (!HttpUtils.Expire_tag.trim().equals("")) {
                            DownNetBlackService.this.b.UpdateConfig("expiredtag", HttpUtils.Expire_tag, DownNetBlackService.this);
                        }
                        HttpUtils.Lastin_SmsNumbers = "";
                        HttpUtils.Lastin_CallNumbers = "";
                        HttpUtils.Expire_CallNumbers = "";
                        HttpUtils.Expire_SmsNumbers = "";
                        HttpUtils.Expire_tag = "";
                        HttpUtils.Lastin_tag = "";
                        ContractHelpUtils.sendBraodcast(DownNetBlackService.this, "com.lenovo.antispam.netperson.change");
                        DownNetBlackService.this.setUpdateIntent(HttpUtils.execService("lastintag", DownNetBlackService.this), 0, 3);
                    } else {
                        DownNetBlackService.this.setUpdateIntent(HttpUtils.execService("lastintag", DownNetBlackService.this), 2, 3);
                    }
                    DownNetBlackService.this.stopSelf();
                    return;
                case 2:
                    int result1 = msg.getData().getInt(QueryPermissions.RECOMMENDEDACTION);
                    if (result1 == 3) {
                        DownNetBlackService.this.setQueryIntent(1);
                    } else if (result1 == 2) {
                        if (!HttpUtils.Lastin_tag.trim().equals("")) {
                            DownNetBlackService.this.b.UpdateConfig("lastintag", HttpUtils.Lastin_tag, DownNetBlackService.this);
                        }
                        if (!HttpUtils.Expire_tag.trim().equals("")) {
                            DownNetBlackService.this.b.UpdateConfig("expiredtag", HttpUtils.Expire_tag, DownNetBlackService.this);
                        }
                        HttpUtils.Lastin_SmsNumbers = "";
                        HttpUtils.Lastin_CallNumbers = "";
                        HttpUtils.Expire_CallNumbers = "";
                        HttpUtils.Expire_SmsNumbers = "";
                        HttpUtils.Expire_tag = "";
                        HttpUtils.Lastin_tag = "";
                        DownNetBlackService.this.setQueryIntent(0);
                    } else {
                        DownNetBlackService.this.setQueryIntent(2);
                    }
                    DownNetBlackService.this.stopSelf();
                    return;
                default:
                    return;
            }
        }
    };
    private HttpUtils b;
    private NetAppDatabase c;

    public void onDestroy() {
        super.onDestroy();
        System.gc();
    }

    public void setQueryIntent(int status) {
        Intent intent = new Intent();
        intent.setAction("com.lenovo.antispam.blackqueryresult");
        intent.putExtra("status", status);
        sendBroadcast(intent);
    }

    public void setUpdateIntent(String time, int status, int type) {
        Intent intent = new Intent();
        intent.setAction("com.lenovo.antispam.blackupdateresult");
        intent.putExtra("status", status);
        intent.putExtra("type", type);
        intent.putExtra(AppDatabase.TIME, time);
        sendBroadcast(intent);
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        this.b = new HttpUtils();
        if (intent == null) {
            return;
        }
        if (intent.getAction().equals(UpdateLabManager.ACTION_NOTICE_UPDATE_NETBLACK_LAB)) {
            downNetBlack("update");
        } else if (intent.getAction().equals(UpdateLabManager.ACTION_NOTICE_QUERY_NETBLACK_LAB)) {
            downNetBlack("query");
        }
    }

    public void onCreate() {
        super.onCreate();
        this.c = new NetAppDatabase(this);
    }

    public void downNetBlack(final String cmd) {
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.support.DownNetBlackService.AnonymousClass2 */

            public final void run() {
                synchronized (SecurityService.lock) {
                    try {
                        if (cmd.equals("update")) {
                            int result = DownNetBlackService.this.b.downNetBlack(DownNetBlackService.this);
                            Log.i("xmlresult", result + "");
                            if (result == 2) {
                                DownNetBlackService.this.c.insert(HttpUtils.Lastin_CallNumbers, HttpUtils.Lastin_SmsNumbers, HttpUtils.Lastin_tag, HttpUtils.Expire_tag, HttpUtils.Expire_CallNumbers, HttpUtils.Expire_SmsNumbers);
                            }
                            Message mes = new Message();
                            mes.what = 1;
                            mes.getData().putInt(QueryPermissions.RECOMMENDEDACTION, result);
                            mes.getData().putString("downtime", String.valueOf(System.currentTimeMillis()));
                            DownNetBlackService.this.a.sendMessage(mes);
                        } else if (cmd.equals("query")) {
                            int result2 = DownNetBlackService.this.b.queryNetBlack(DownNetBlackService.this);
                            Log.i("xmlresult", result2 + "");
                            Message mes2 = new Message();
                            mes2.what = 2;
                            mes2.getData().putInt(QueryPermissions.RECOMMENDEDACTION, result2);
                            DownNetBlackService.this.a.sendMessage(mes2);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }.start();
    }
}
