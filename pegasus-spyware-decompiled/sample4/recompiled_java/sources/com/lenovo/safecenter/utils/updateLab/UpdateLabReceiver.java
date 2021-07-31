package com.lenovo.safecenter.utils.updateLab;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.WflUtils;

public class UpdateLabReceiver extends BroadcastReceiver {
    private LeSafeObservable a;

    public void onReceive(Context context, Intent intent) {
        boolean z;
        boolean z2 = true;
        this.a = LeSafeObservable.get(context);
        int i = intent.getExtras().getInt("status");
        String string = intent.getExtras().getString(AppDatabase.TIME);
        if ("com.lenovo.antivirus.updateresult".equals(intent.getAction())) {
            UpdateLabManager.setUpdateLabStatus(0, i);
            if (i == 0) {
                UpdateLabManager.setQueryLabStatus(0, 1);
                Const.setLastUpdateLabTime(System.currentTimeMillis());
                if (UpdateLabManager.isManualUpdateLab) {
                    Toast.makeText(context, context.getString(R.string.virus_lab_updated_text), 0).show();
                }
            } else if (i == 1) {
                UpdateLabManager.setQueryLabStatus(0, 1);
                Const.setLastUpdateLabTime(System.currentTimeMillis());
                if (UpdateLabManager.isManualUpdateLab) {
                    Toast.makeText(context, context.getString(R.string.virus_lab_updated_newest), 0).show();
                }
            } else if (i == 2) {
                if (HttpUtils.isfrom) {
                    if (UpdateLabManager.isManualUpdateLab) {
                        Toast.makeText(context, context.getString(R.string.antivirusserver_disconnect), 0).show();
                    }
                } else if (UpdateLabManager.isManualUpdateLab) {
                    Toast.makeText(context, context.getString(R.string.virus_lab_updated_neterror), 0).show();
                }
            }
            HttpUtils.isfrom = false;
            UpdateLabManager.setIs_UpdateLabing(0, false);
            z = true;
        } else if ("com.lenovo.antispam.blackupdateresult".equals(intent.getAction())) {
            UpdateLabManager.setUpdateLabStatus(1, i);
            if (i == 0) {
                UpdateLabManager.setQueryLabStatus(1, 1);
                Const.setLastUpdateLabTime(System.currentTimeMillis());
                if (UpdateLabManager.isManualUpdateLab) {
                    Toast.makeText(context, context.getString(R.string.harass_lab_updated_text), 0).show();
                }
            } else if (i == 1) {
                Const.setLastUpdateLabTime(System.currentTimeMillis());
                UpdateLabManager.setQueryLabStatus(1, 1);
                if (UpdateLabManager.isManualUpdateLab) {
                    Toast.makeText(context, context.getString(R.string.harass_lab_updated_newest), 0).show();
                }
            } else if (i == 2 && UpdateLabManager.isManualUpdateLab) {
                Toast.makeText(context, context.getString(R.string.harass_lab_updated_neterror), 0).show();
            }
            UpdateLabManager.setIs_UpdateLabing(1, false);
            z = true;
        } else if ("com.lenovo.antispam.sysupdateresult".equals(intent.getAction())) {
            UpdateLabManager.setUpdateLabStatus(2, i);
            if (i == 0) {
                UpdateLabManager.setQueryLabStatus(2, 1);
                Const.setLastUpdateLabTime(System.currentTimeMillis());
            } else if (i == 1) {
                UpdateLabManager.setQueryLabStatus(2, 1);
                Const.setLastUpdateLabTime(System.currentTimeMillis());
            }
            UpdateLabManager.setIs_UpdateLabing(2, false);
            z = true;
        } else if ("com.lenovo.antispam.signcallupdateresult".equals(intent.getAction())) {
            UpdateLabManager.setUpdateLabStatus(3, i);
            if (i == 0) {
                UpdateLabManager.setQueryLabStatus(3, 1);
                Const.setLastUpdateLabTime(System.currentTimeMillis());
                if (UpdateLabManager.isManualUpdateLab) {
                    Toast.makeText(context, context.getString(R.string.sign_call_lab_updated_text), 0).show();
                }
            } else if (i == 1) {
                UpdateLabManager.setQueryLabStatus(3, 1);
                Const.setLastUpdateLabTime(System.currentTimeMillis());
                if (UpdateLabManager.isManualUpdateLab) {
                    Toast.makeText(context, context.getString(R.string.sign_call_lab_update_newest_text), 0).show();
                }
            } else if (i == 2 && UpdateLabManager.isManualUpdateLab) {
                Toast.makeText(context, context.getString(R.string.sign_call_lab_update_neterror_text), 0).show();
            }
            UpdateLabManager.setIs_UpdateLabing(3, false);
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Log.i("wu0wu", "action=" + intent.getAction() + ", status=" + i + ", version=" + string);
            this.a.noticeUpdatedLab();
        }
        if (!z) {
            if ("com.lenovo.antivirus.queryresult".equals(intent.getAction())) {
                if (intent.getExtras().getInt("status") == 0) {
                    UpdateLabManager.setQueryLabStatus(0, 0);
                } else if (intent.getExtras().getInt("status") == 1) {
                    UpdateLabManager.setQueryLabStatus(0, 1);
                } else if (intent.getExtras().getInt("status") == 2) {
                    UpdateLabManager.setQueryLabStatus(0, 2);
                }
                UpdateLabManager.setIs_QueryLabing(0, false);
            } else if ("com.lenovo.antispam.blackqueryresult".equals(intent.getAction())) {
                a(1, intent);
                UpdateLabManager.setIs_QueryLabing(1, false);
            } else if ("com.lenovo.antispam.sysqueryresult".equals(intent.getAction())) {
                a(2, intent);
                UpdateLabManager.setIs_QueryLabing(2, false);
            } else if ("com.lenovo.antispam.signcallqueryresult".equals(intent.getAction())) {
                a(3, intent);
                UpdateLabManager.setIs_QueryLabing(3, false);
            } else {
                z2 = false;
            }
            if (z2) {
                Log.i("wu0wu", "action=" + intent.getAction() + ", status=" + intent.getExtras().getInt("status"));
                if (UpdateLabManager.isQueryedLab()) {
                    this.a.noticeQueryedLab();
                }
            }
        }
        if (Const.ACTION_BROADCAST_NOTICE_UPDATE_LAB.equals(intent.getAction())) {
            Log.i("wu0wu", "autoupdate action" + intent.getAction());
            if (WflUtils.isNetworkAvailable(context)) {
                Log.i("wu0wu", "isNetworkAvailable");
                if (!WflUtils.isInTheSameDay(Const.getLastUpdateLabTime(), System.currentTimeMillis())) {
                    UpdateLabManager.startServiceUpdateLab(context);
                }
            }
        }
    }

    private static void a(int index, Intent intent) {
        if (intent.getExtras().getInt("status") == 0) {
            UpdateLabManager.setQueryLabStatus(index, 0);
        } else if (intent.getExtras().getInt("status") == 1) {
            UpdateLabManager.setQueryLabStatus(index, 1);
        } else if (intent.getExtras().getInt("status") == 2) {
            UpdateLabManager.setQueryLabStatus(index, 2);
        }
    }
}
