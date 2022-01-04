package com.lenovo.safecenter.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.lenovo.safecenter.utils.SafeCenter;

public class CheckInterChangeReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("com.lenovo.securityperson.change")) {
            SecurityService.secutityPerson = SafeCenter.getScurityPerson(context);
            SecurityService.localBlackPerson = SafeCenter.getLocalBlack(context);
            Log.i("CheckInterChangeReceiver", intent.getAction());
        } else if (intent.getAction().equals("com.lenovo.antispam.blackperson.change")) {
            SecurityService.secutityPerson = SafeCenter.getScurityPerson(context);
            SecurityService.localBlackPerson = SafeCenter.getLocalBlack(context);
            SecurityService.whitePerson = SafeCenter.getWhitePerson(context);
            Log.i("CheckInterChangeReceiver", intent.getAction());
        } else if (intent.getAction().equals("com.lenovo.antispam.netperson.change")) {
            SecurityService.netBlackPerson = SafeCenter.getNetBlack(context);
            Log.i("CheckInterChangeReceiver", intent.getAction());
        } else if (intent.getAction().equals("com.lenovo.antispam.whiteperson.change")) {
            SecurityService.localBlackPerson = SafeCenter.getLocalBlack(context);
            SecurityService.whitePerson = SafeCenter.getWhitePerson(context);
            Log.i("CheckInterChangeReceiver", intent.getAction());
        } else if (intent.getAction().equals("com.lenovo.antispam.blackperson..provider.change")) {
            SecurityService.whitePerson = SafeCenter.getWhitePerson(context);
            SecurityService.localBlackPerson = SafeCenter.getLocalBlack(context);
            Log.i("CheckInterChangeReceiver", intent.getAction());
        }
    }
}
