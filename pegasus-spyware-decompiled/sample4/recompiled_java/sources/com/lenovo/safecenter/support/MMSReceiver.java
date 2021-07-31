package com.lenovo.safecenter.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Settings;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import com.lenovo.safecenter.lenovoAntiSpam.utils.CheckCenter;
import com.lenovo.safecenter.utils.Const;

public class MMSReceiver extends BroadcastReceiver {
    private boolean a = false;
    private int b;
    private String c;
    private String d;

    public void onReceive(Context context, Intent intent) {
    }

    public void sendBroadcast(Context context, String address, String content, String time) {
        Intent intent = new Intent();
        intent.putExtra("black_address", address);
        intent.putExtra("black_body", content);
        intent.putExtra("black_date", time);
        intent.putExtra("fromtype", this.b);
        intent.setAction("ACTION_BLACK_MESSAGE");
        context.sendBroadcast(intent);
    }

    public boolean isIntercept(Context context, String number) {
        int mode = Settings.System.getInt(context.getContentResolver(), "intercall_mode_type", 0);
        ContractHelpUtils untils = new ContractHelpUtils();
        if (mode == 2 && !untils.isInContactsdia(context, number)) {
            return true;
        }
        if (mode == 0) {
            if (CheckCenter.isLocalBlack(context, 0, number) || CheckCenter.isNetBlack(context, 0, number)) {
                return true;
            }
        } else if (mode == 1 && !isWhitePerson(context, number)) {
            return true;
        }
        return false;
    }

    public boolean isWhitePerson(Context context, String number) {
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0) ", null, null);
            int count = cursor.getCount();
            cursor.close();
            if (count > 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public void isDeal(Context context) {
        try {
            if (!Const.getProtectHarassSwitchState()) {
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (CheckCenter.judgeNightHarass(context)) {
            abortBroadcast();
            this.b = 1;
            sendBroadcast(context, this.c, this.d, String.valueOf(System.currentTimeMillis()));
            this.a = true;
        }
        if (!this.a && isIntercept(context, this.c)) {
            abortBroadcast();
            this.b = 1;
            sendBroadcast(context, this.c, this.d, String.valueOf(System.currentTimeMillis()));
            this.a = true;
        }
    }
}
