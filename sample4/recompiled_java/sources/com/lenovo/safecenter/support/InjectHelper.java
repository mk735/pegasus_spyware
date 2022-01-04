package com.lenovo.safecenter.support;

import android.content.Context;
import android.database.Cursor;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.net.Uri;
import android.provider.Browser;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.util.Log;
import com.lenovo.safecenter.notificationintercept.InterceptUtils;
import com.lenovo.safecenter.utils.Const;
import java.io.File;
import java.io.IOException;

public class InjectHelper {
    public void readSms(Context context) {
        Cursor cursor = context.getContentResolver().query(Uri.parse("content://sms/"), null, null, null, null);
        if (cursor != null) {
            cursor.close();
        }
    }

    public void readContact(Context context) {
        Cursor cursor = context.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
        if (cursor != null) {
            cursor.close();
        }
    }

    public void readCalendar(Context context) {
        Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.android.calendar/events"), null, null, null, null);
        if (cursor != null) {
            cursor.close();
        }
    }

    public void readBrowser(Context context) {
        Cursor cursor = context.getContentResolver().query(Browser.BOOKMARKS_URI, Browser.HISTORY_PROJECTION, null, null, null);
        if (cursor != null) {
            cursor.close();
        }
    }

    public void injectSafecenterService(Context context) {
        try {
            Thread.sleep(30000);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        StringBuffer command = new StringBuffer();
        command.append("/system/bin/injectso system_server");
        command.append(" ");
        command.append(SafeCenterService.SYSTEM_PATH);
        command.append(SafeCenterService.SYSTEM_LIB_NAME);
        command.append(" ");
        command.append(SafeCenterService.SYSTEM_SERVICE);
        command.append(" &\n");
        command.append("/system/bin/injectso com.android.phone");
        command.append(" ");
        command.append(SafeCenterService.SYSTEM_PATH);
        command.append(SafeCenterService.PHONE_LIB_NAME);
        command.append(" ");
        command.append(SafeCenterService.PHONE_SERVICE);
        command.append(" &\n");
        command.append("/system/bin/injectso android.process.acore");
        command.append(" ");
        command.append(SafeCenterService.SYSTEM_PATH);
        command.append(SafeCenterService.PHONE_LIB_NAME);
        command.append(" ");
        command.append(SafeCenterService.ACORE_SERVICE);
        command.append(" &\n");
        command.append("rm /data/data/com.lenovo.safecenter/files/lib* \n");
        if (new File("/system/libsystemhook-12.so").exists()) {
            command.append("rm /system/libsystemhook-12.so \n");
            command.append("rm /system/libphonehook-12.so \n");
        }
        if (new File("/system/libsystemhook-11.so").exists()) {
            command.append("rm /system/libsystemhook-11.so \n");
            command.append("rm /system/libphonehook-11.so \n");
        }
        if (new File("/system/libsystemhook-10.so").exists()) {
            command.append("rm /system/libsystemhook-10.so \n");
            command.append("rm /system/libphonehook-10.so \n");
        }
        if (new File("/system/libsystemhook-9.so").exists()) {
            command.append("rm /system/libsystemhook-9.so \n");
            command.append("rm /system/libphonehook-9.so \n");
        }
        if (new File("/system/libsystemhook-7.so").exists()) {
            command.append("rm /system/libsystemhook-7.so \n");
            command.append("rm /system/libphonehook-7.so \n");
        }
        Log.d("server", "inject Safecenter Service, result: " + CMDHelper.exeCmd(context, command.toString()));
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e22) {
            e22.printStackTrace();
        }
        if (!ConnectToServer(SafeCenterService.SYSTEM_SERVICE)) {
            injectAService(context, SafeCenterService.SYSTEM_SERVICE);
        }
        InterceptUtils.bootCompleted(context);
        Settings.System.putString(context.getContentResolver(), "safecenter_system", SafeCenterService.SYSTEM_SERVICE);
        if (!Const.mDefaultPreference.getBoolean(Const.SWITCH_INJECT_SWITCH, true)) {
            CMDHelper.guestModeClient(SafeCenterService.SYSTEM_SERVICE, 0, 0, 0);
            CMDHelper.guestModeClient(SafeCenterService.PHONE_SERVICE, 0, 0, 0);
            CMDHelper.guestModeClient(SafeCenterService.ACORE_SERVICE, 0, 0, 0);
        } else if (Settings.System.getInt(context.getContentResolver(), "guest_mode_on", 0) == 1) {
            CMDHelper.changeGuestMode(context, 1);
        }
    }

    public void injectAService(Context context, String serviceName) {
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        StringBuffer command = new StringBuffer();
        if (serviceName.equals(SafeCenterService.SYSTEM_SERVICE)) {
            command.append("/system/bin/injectso system_server");
            command.append(" ");
            command.append(SafeCenterService.SYSTEM_PATH);
            command.append(SafeCenterService.SYSTEM_LIB_NAME);
            command.append(" ");
            command.append(SafeCenterService.SYSTEM_SERVICE);
            command.append(" &\n");
        } else if (serviceName.equals(SafeCenterService.PHONE_SERVICE)) {
            command.append("/system/bin/injectso com.android.phone");
            command.append(" ");
            command.append(SafeCenterService.SYSTEM_PATH);
            command.append(SafeCenterService.PHONE_LIB_NAME);
            command.append(" ");
            command.append(SafeCenterService.PHONE_SERVICE);
            command.append(" &\n");
        } else if (serviceName.equals(SafeCenterService.ACORE_SERVICE)) {
            command.append("/system/bin/injectso android.process.acore");
            command.append(" ");
            command.append(SafeCenterService.SYSTEM_PATH);
            command.append(SafeCenterService.PHONE_LIB_NAME);
            command.append(" ");
            command.append(SafeCenterService.ACORE_SERVICE);
            command.append(" &\n");
        }
        Log.d("server", "inject a Service, result: " + CMDHelper.exeCmd(context, command.toString()));
    }

    public boolean ConnectToServer(String serverName) {
        boolean isConnect = false;
        try {
            LocalSocketAddress address = new LocalSocketAddress(serverName);
            LocalSocket client = new LocalSocket();
            client.connect(address);
            isConnect = client.isConnected();
            client.close();
            return isConnect;
        } catch (IOException e) {
            e.printStackTrace();
            return isConnect;
        }
    }
}
