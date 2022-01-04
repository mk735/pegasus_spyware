package com.lenovo.safecenter.antivirus.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import java.io.File;

public class DeleteSDFileBroadcast extends BroadcastReceiver {
    public static final String DELETE_SD_FILE = "action.antivirus.delete.sdfile";
    public static final String DELETE_SD_FILE_COMPLETE = "action.antivirus.delete.sdfile.complete";

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(DELETE_SD_FILE)) {
            boolean sucess = false;
            String filePath = intent.getStringExtra("filePath");
            File file = new File(filePath);
            if (file.exists()) {
                sucess = file.delete();
            }
            Intent intent2 = new Intent();
            intent2.setAction(DELETE_SD_FILE_COMPLETE);
            intent2.putExtra("sucess", sucess);
            intent2.putExtra("filePath", filePath);
            context.sendBroadcast(intent2);
            if (sucess) {
                String desc = context.getString(R.string.antiviruslogdesc6);
                new AntiVirusDBHelper(context).insertLog(String.format(desc, filePath), String.valueOf(System.currentTimeMillis()), DatabaseTables.SYSTEM_MARK);
            }
        }
    }
}
