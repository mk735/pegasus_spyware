package com.lenovo.safecenter.lenovoAntiSpam.support;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.lenovoAntiSpam.utils.HttpUtils;
import com.lenovo.safecenter.lenovoAntiSpam.utils.SafeCenter;
import com.lenovo.safecenter.lenovoAntiSpam.utils.SmsCheckUtils;

public class UpdateService extends Service {
    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        boolean flag = intent.getBooleanExtra(DatabaseTables.APPLICATIONS_FLAG, false);
        Log.i("UpdateService", "begin>>>>>>>>>>>.flag==" + flag);
        if (flag) {
            SafeCenter.setPathUrl(this);
            SmsCheckUtils.init(this);
            new HttpUtils().UpdateConfig("systime", "2011.08.18", this);
        }
        stopSelf();
    }
}
