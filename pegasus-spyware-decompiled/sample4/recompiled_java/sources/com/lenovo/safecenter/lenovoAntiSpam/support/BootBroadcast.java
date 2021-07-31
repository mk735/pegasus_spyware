package com.lenovo.safecenter.lenovoAntiSpam.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import com.lenovo.performancecenter.framework.DatabaseTables;

public class BootBroadcast extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            Log.i("UpdateService", "Intent.ACTION_BOOT_COMPLETED");
            SharedPreferences preferences = context.getSharedPreferences("isFirst", 0);
            boolean flag = preferences.getBoolean(DatabaseTables.APPLICATIONS_FLAG, true);
            if (flag) {
                Log.i("UpdateService", "begin>>>>>>>>>>>.flag==" + flag);
                SharedPreferences.Editor editor = preferences.edit();
                editor.putBoolean(DatabaseTables.APPLICATIONS_FLAG, false);
                editor.commit();
                Intent updateIntent = new Intent(context, UpdateService.class);
                updateIntent.putExtra(DatabaseTables.APPLICATIONS_FLAG, true);
                context.startService(updateIntent);
            }
        } else if (intent.getAction().equals("com.lenovo.safecenter.smschecker.update")) {
            Intent updateIntent2 = new Intent(context, UpdateService.class);
            updateIntent2.putExtra(DatabaseTables.APPLICATIONS_FLAG, false);
            context.startService(updateIntent2);
        }
    }
}
