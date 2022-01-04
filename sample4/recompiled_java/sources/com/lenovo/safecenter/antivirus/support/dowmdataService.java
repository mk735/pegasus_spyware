package com.lenovo.safecenter.antivirus.support;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.utils.httpApi.LeSafeAPI;
import com.lenovo.safecenter.utils.updateLab.UpdateLabManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.ICheckListener;
import com.tencent.tmsecure.module.update.IUpdateListener;
import com.tencent.tmsecure.module.update.UpdateInfo;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.io.File;
import java.util.List;

public class dowmdataService extends Service {
    private Handler a = new Handler() {
        /* class com.lenovo.safecenter.antivirus.support.dowmdataService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    HttpUtils.isDowning = false;
                    int result = msg.getData().getInt(QueryPermissions.RECOMMENDEDACTION);
                    if (result == 3) {
                        HttpUtils.UpdateConfig("virus_state", "3", dowmdataService.this);
                        dowmdataService.this.setUpdateIntent(String.valueOf(new File(dowmdataService.this.getFilesDir() + "/qv_base.amf").lastModified()), 1, 1);
                    } else if (result == 2) {
                        HttpUtils.UpdateConfig("virus_state", "3", dowmdataService.this);
                        dowmdataService.this.setUpdateIntent(String.valueOf(new File(dowmdataService.this.getFilesDir() + "/qv_base.amf").lastModified()), 0, 1);
                    } else {
                        HttpUtils.UpdateConfig("virus_state", "0", dowmdataService.this);
                        dowmdataService.this.setUpdateIntent(String.valueOf(new File(dowmdataService.this.getFilesDir() + "/qv_base.amf").lastModified()), 2, 1);
                    }
                    dowmdataService.this.c = false;
                    if (!dowmdataService.this.b && !dowmdataService.this.c) {
                        dowmdataService.this.d = null;
                        dowmdataService.this.e = null;
                        System.gc();
                        dowmdataService.this.stopSelf();
                        return;
                    }
                    return;
                case 2:
                    HttpUtils.isDowning = false;
                    int resultQuery = msg.getData().getInt(QueryPermissions.RECOMMENDEDACTION);
                    if (resultQuery == 3) {
                        HttpUtils.UpdateConfig("virus_state", "3", dowmdataService.this);
                        dowmdataService.this.setQueryIntent(1);
                    } else if (resultQuery == 2) {
                        HttpUtils.UpdateConfig("virus_state", DatabaseTables.USER_MARK, dowmdataService.this);
                        dowmdataService.this.setQueryIntent(0);
                    } else {
                        HttpUtils.UpdateConfig("virus_state", "0", dowmdataService.this);
                        dowmdataService.this.setQueryIntent(2);
                    }
                    dowmdataService.this.b = false;
                    if (!dowmdataService.this.b && !dowmdataService.this.c) {
                        dowmdataService.this.d = null;
                        dowmdataService.this.e = null;
                        System.gc();
                        dowmdataService.this.stopSelf();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private boolean b;
    private boolean c;
    private UpdateManager d;
    private List<UpdateInfo> e;

    public void setQueryIntent(int status) {
        Intent intent = new Intent();
        intent.setAction("com.lenovo.antivirus.queryresult");
        intent.putExtra("status", status);
        intent.putExtra("desc", HttpUtils.execService("virusquery_desc", this));
        sendBroadcast(intent);
    }

    public void setUpdateIntent(String time, int status, int type) {
        Intent intent = new Intent();
        intent.setAction("com.lenovo.antivirus.updateresult");
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
        Log.i("downdata", "onStartonStartonStartonStartonStartonStart");
        if (intent == null) {
            return;
        }
        if (intent.getAction().equals(UpdateLabManager.ACTION_NOTICE_QUERY_VIRUS_LAB)) {
            Log.i("downdata", "queryqueryqueryqueryquery");
            down("query");
        } else if (intent.getAction().equals(UpdateLabManager.ACTION_NOTICE_UPDATE_VIRUS_LAB)) {
            down("update");
            Log.i("yincc", "update Url !! ");
            LeSafeAPI.getBlackUrlSyncFlag(this, null);
        }
    }

    public void onCreate() {
        super.onCreate();
        this.d = (UpdateManager) ManagerCreator.getManager(UpdateManager.class);
        this.b = false;
        this.c = false;
    }

    public void update() {
        this.d.check(14, new ICheckListener() {
            /* class com.lenovo.safecenter.antivirus.support.dowmdataService.AnonymousClass2 */

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckCanceled() {
            }

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckEvent(int arg0) {
                Message mes = new Message();
                mes.what = 1;
                mes.getData().putInt(QueryPermissions.RECOMMENDEDACTION, 1);
                dowmdataService.this.a.sendMessage(mes);
            }

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckFinished(CheckResult arg0) {
                try {
                    dowmdataService.this.e = arg0.mUpdateInfoList;
                    if (dowmdataService.this.e == null || dowmdataService.this.e.size() <= 0) {
                        Message mes = new Message();
                        mes.what = 1;
                        mes.getData().putInt(QueryPermissions.RECOMMENDEDACTION, 3);
                        dowmdataService.this.a.sendMessage(mes);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckStarted() {
            }
        });
        if (this.e != null && this.e.size() > 0) {
            this.d.update(this.e, new IUpdateListener() {
                /* class com.lenovo.safecenter.antivirus.support.dowmdataService.AnonymousClass3 */

                @Override // com.tencent.tmsecure.module.update.IUpdateListener
                public final void onProgressChanged(UpdateInfo arg0, int arg1) {
                    Log.i("demo", arg0.url + "=====");
                }

                @Override // com.tencent.tmsecure.module.update.IUpdateListener
                public final void onUpdateEvent(UpdateInfo arg0, int arg1) {
                    Message mes = new Message();
                    mes.what = 1;
                    mes.getData().putInt(QueryPermissions.RECOMMENDEDACTION, 1);
                    dowmdataService.this.a.sendMessage(mes);
                }

                @Override // com.tencent.tmsecure.module.update.IUpdateListener
                public final void onUpdateFinished() {
                    Message mes = new Message();
                    mes.what = 1;
                    mes.getData().putInt(QueryPermissions.RECOMMENDEDACTION, 2);
                    dowmdataService.this.a.sendMessage(mes);
                }

                @Override // com.tencent.tmsecure.module.update.IUpdateListener
                public final void onUpdateStarted() {
                }

                @Override // com.tencent.tmsecure.module.update.IUpdateListener
                public final void onUpdateCanceled() {
                }
            });
        }
    }

    public void onDestroy() {
        super.onDestroy();
        System.gc();
        Runtime.getRuntime().freeMemory();
    }

    public void down(final String cmd) {
        new Thread() {
            /* class com.lenovo.safecenter.antivirus.support.dowmdataService.AnonymousClass4 */

            public final void run() {
                try {
                    if (cmd.equals("update")) {
                        HttpUtils.isDowning = true;
                        dowmdataService.this.c = true;
                        dowmdataService.this.update();
                    } else if (cmd.equals("query")) {
                        dowmdataService.this.b = true;
                        HttpUtils.isDowning = true;
                        dowmdataService.this.d.check(12, new ICheckListener() {
                            /* class com.lenovo.safecenter.antivirus.support.dowmdataService.AnonymousClass4.AnonymousClass1 */

                            @Override // com.tencent.tmsecure.module.update.ICheckListener
                            public final void onCheckCanceled() {
                            }

                            @Override // com.tencent.tmsecure.module.update.ICheckListener
                            public final void onCheckEvent(int arg0) {
                                Log.i("demo", "CheckResult=========onCheckEvent");
                                Message mes = new Message();
                                mes.what = 2;
                                mes.getData().putInt(QueryPermissions.RECOMMENDEDACTION, 1);
                                dowmdataService.this.a.sendMessage(mes);
                            }

                            @Override // com.tencent.tmsecure.module.update.ICheckListener
                            public final void onCheckFinished(CheckResult arg0) {
                                try {
                                    Log.i("demo", "CheckResult=========onCheckFinished");
                                    if (arg0 == null || arg0.mUpdateInfoList == null || arg0.mUpdateInfoList.size() <= 0) {
                                        Message mes = new Message();
                                        mes.what = 2;
                                        mes.getData().putInt(QueryPermissions.RECOMMENDEDACTION, 3);
                                        dowmdataService.this.a.sendMessage(mes);
                                        return;
                                    }
                                    Message mes2 = new Message();
                                    mes2.what = 2;
                                    mes2.getData().putInt(QueryPermissions.RECOMMENDEDACTION, 2);
                                    dowmdataService.this.a.sendMessage(mes2);
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }

                            @Override // com.tencent.tmsecure.module.update.ICheckListener
                            public final void onCheckStarted() {
                                Log.i("demo", "CheckResult=========onCheckStarted");
                            }
                        });
                        Log.i("demo", "CheckResult=================");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }
}
