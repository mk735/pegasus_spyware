package com.lenovo.safecenter.platform;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.provider.MultiSIMUtils;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.util.Log;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.broadcast.FormatSDService;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.encoders.UrlBase64;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.utils.MyUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public class MyMultiSIMUtils {
    public static final String DELIVERED_SMS_ACTION = "DELIVERED_SMS_ACTION";
    public static final String SENT_SMS_ACTION = "SENT_SMS_ACTION";
    private static ArrayList<PendingIntent> a = null;
    private static ArrayList<PendingIntent> b = null;
    private static BroadcastReceiver c = null;
    private static int d = 0;
    public static String flag = null;
    public static boolean info;
    public static boolean isAlarm;
    public static boolean isAll;
    public static boolean isDestroy;
    public static boolean isLocate;
    public static boolean isLocked;
    public static boolean isMultiSimEnabled = false;
    public static double lat;
    public static double lon;

    public static boolean isMultiSim(Context context) {
        if (flag != null) {
            return isMultiSimEnabled;
        }
        flag = "true";
        try {
            Class.forName("android.provider.MultiSIMUtils");
            if (MultiSIMUtils.getDefault(context).getPhoneCount() > 1) {
                isMultiSimEnabled = true;
            } else {
                isMultiSimEnabled = false;
            }
            return isMultiSimEnabled;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            isMultiSimEnabled = false;
            return isMultiSimEnabled;
        } catch (SecurityException e2) {
            e2.printStackTrace();
            isMultiSimEnabled = false;
            return isMultiSimEnabled;
        }
    }

    public static void aganistTheftHandle(final Context context, final String phoneNumber, String pwd, final boolean isBackupToMail, final String safeMailAddress, final Handler h) {
        MyUtils.deleteBrowserRecord(context);
        new Thread() {
            /* class com.lenovo.safecenter.platform.MyMultiSIMUtils.AnonymousClass1 */

            public final void run() {
                MyMultiSIMUtils.destroyPrivacyMessage(context, phoneNumber, isBackupToMail, safeMailAddress, h);
                MyMultiSIMUtils.location(context, phoneNumber);
                Message m = new Message();
                m.obj = phoneNumber;
                m.what = 1;
                h.sendMessage(m);
                MyUtils.alarming(context);
            }
        }.start();
    }

    public static void destroyPrivacyMessage(Context context, String phoneNumber, boolean isBackupToMail, String safeMailAddress, Handler h) {
        Log.e("test", "==============>checking destroy_data");
        if (isBackupToMail) {
            MyUtils.backupToMail(context, phoneNumber, safeMailAddress);
        }
        context.startService(new Intent(context, FormatSDService.class));
        new AppDatabase(context).deleSafeMode();
        new com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase(context).deleAll();
        ContentResolver contentResolver = context.getContentResolver();
        MyUtils.deletePushAccount(contentResolver);
        MyUtils.deleteWhiteAndBlackContacts(contentResolver);
        MyUtils.clearCalendar(contentResolver);
        MyUtils.deleteContactsItemInPhone(contentResolver);
        MyUtils.clearSMS(contentResolver);
        MyUtils.clearMMS(contentResolver);
        MyUtils.deleteCallLog(contentResolver);
        MyUtils.deleteMail(context);
        deleteSimContacts(context);
        deleteAllSimSms(context);
        MyUtils.sendMsgToSafeNumber(context, phoneNumber, context.getString(R.string.destroy_privacy_message_ok) + context.getString(R.string.from_lesecurity));
        Log.i("info", "destroyPrivacyMessage over");
        if (!isAll) {
            h.sendEmptyMessage(1);
        }
    }

    public static void deleteSimContacts(Context context) {
        boolean sim1Ready;
        boolean sim2Ready;
        if (isMultiSim(context)) {
            Log.i("test", "dele sim contacts 2 card");
            int[] states = getAllSimState(context);
            int simState0 = states[0];
            int simState1 = states[1];
            if (simState0 == 5 || simState0 == 2 || simState0 == 3) {
                sim1Ready = true;
            } else {
                sim1Ready = false;
            }
            if (simState1 == 5 || simState1 == 2 || simState1 == 3) {
                sim2Ready = true;
            } else {
                sim2Ready = false;
            }
            if (sim1Ready) {
                deleteSimContacts(context, Uri.parse(MultiSIMUtils.getDefault(context).getSIMContactsUri(0)));
                Log.i("ydp", "deleteSimContacts sim 1");
            }
            if (sim2Ready) {
                deleteSimContacts(context, Uri.parse(MultiSIMUtils.getDefault(context).getSIMContactsUri(1)));
                Log.i("ydp", "deleteSimContacts sim 2");
            }
        } else {
            Log.i("test", "dele sim contacts 1 card");
            String operator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
            if (operator == null) {
                return;
            }
            if (operator.equals("46000") || operator.equals("46002")) {
                deleteSimContacts(context, Uri.parse("content://icc/adn"));
            } else if (operator.equals("46001")) {
                try {
                    deleteSimContacts(context, Uri.parse("content://icc/pbr"));
                } catch (Exception e) {
                    deleteSimContacts(context, Uri.parse("content://icc/adn"));
                }
            } else if (operator.equals("46003")) {
                return;
            }
        }
        Log.d("test", "delete simContacts end");
    }

    public static void deleteSimContacts(Context context, Uri uri) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            Log.i("ydp", "contentResolver ---->" + contentResolver + "uri---->" + uri);
            Cursor cursor = contentResolver.query(uri, null, null, null, null);
            if (cursor != null) {
                cursor.moveToPosition(-1);
                while (cursor.moveToNext()) {
                    String name = cursor.getString(cursor.getColumnIndex("name"));
                    if (contentResolver.delete(uri, ("tag='" + name + "'") + " AND number='" + cursor.getString(cursor.getColumnIndex(AppDatabase.NUMBER)) + "'", null) == 0) {
                        Log.d("test", "delete simContacts error");
                    }
                }
                cursor.close();
            }
        } catch (Exception e) {
            Log.d("test", "delete simContacts error-------------------");
        }
    }

    public static void deleteSimMessages(Context context, int subId) {
        try {
            ArrayList<SmsMessage> smsMessages = MultiSIMUtils.getDefault(context).getAllMessagesFromIcc(subId);
            Log.d("test", "sim" + subId + " count: " + smsMessages.size());
            Iterator i$ = smsMessages.iterator();
            while (i$.hasNext()) {
                int index = i$.next().getIndexOnIcc();
                Log.d("test", "delete sim date: " + index);
                MultiSIMUtils.getDefault(context).deleteMessageFromIcc(index, subId);
            }
            Log.d("test", "delete sim" + subId + " date end...");
        } catch (Exception e) {
        }
    }

    public static void deleteSimMessages(Context context) {
        SmsManager smsManager = SmsManager.getDefault();
        try {
            Iterator i$ = SmsManager.getAllMessagesFromIcc().iterator();
            while (i$.hasNext()) {
                int index = i$.next().getIndexOnIcc();
                Log.d("test", "delete sim date: " + index);
                Log.d("test", "success: " + smsManager.deleteMessageFromIcc(index));
            }
            Log.d("test", "delete sim sms end...");
        } catch (Exception e) {
            e.printStackTrace();
        } catch (IncompatibleClassChangeError e2) {
            e2.printStackTrace();
        }
    }

    public static void deleteAllSimSms(Context context) {
        boolean sim1Ready;
        boolean sim2Ready;
        boolean simReady = false;
        if (isMultiSim(context)) {
            Log.i("test", "dele sim sms 2 card");
            int[] states = getAllSimState(context);
            int simState0 = states[0];
            int simState1 = states[1];
            if (simState0 == 5 || simState0 == 2 || simState0 == 3) {
                sim1Ready = true;
            } else {
                sim1Ready = false;
            }
            if (simState1 == 5 || simState1 == 2 || simState1 == 3) {
                sim2Ready = true;
            } else {
                sim2Ready = false;
            }
            if (sim1Ready) {
                deleteSimMessages(context, 0);
            }
            if (sim2Ready) {
                deleteSimMessages(context, 1);
                return;
            }
            return;
        }
        Log.i("test", "dele sim sms 1 card");
        int simState = getAllSimState(context)[0];
        if (simState == 5 || simState == 2 || simState == 3) {
            simReady = true;
        }
        if (simReady) {
            deleteSimMessages(context);
        }
    }

    public static int[] getAllSimState(Context context) {
        if (isMultiSim(context)) {
            return new int[]{MultiSIMUtils.getDefault(context).getSimState(0), MultiSIMUtils.getDefault(context).getSimState(1)};
        }
        return new int[]{((TelephonyManager) context.getSystemService("phone")).getSimState()};
    }

    public static void location(Context context, String phoneNumber) {
        Log.e("test", "==============>checking location");
        cellLocation(context, phoneNumber);
    }

    public static void cellLocation(Context context, String phoneNumber) {
        if (isMultiSim(context)) {
            int[] states = getAllSimState(context);
            int simState0 = states[0];
            int simState1 = states[1];
            boolean sim1Ready = simState0 == 5 || simState0 == 2 || simState0 == 3;
            boolean sim2Ready = simState1 == 5 || simState1 == 2 || simState1 == 3;
            if (sim1Ready) {
                int type = MultiSIMUtils.getDefault(context).getPhoneType(0);
                Log.d("test", "sim1 ready, phone type: " + type);
                a(context, phoneNumber, type, 0);
            } else if (sim2Ready) {
                int type2 = MultiSIMUtils.getDefault(context).getPhoneType(1);
                Log.d("test", "sim2 ready, phone type: " + type2);
                a(context, phoneNumber, type2, 1);
            }
        } else {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            int SimState = telephonyManager.getSimState();
            Log.d("test", "cellLocation.simstate:" + SimState);
            if (SimState == 5 || SimState == 2 || SimState == 3) {
                int type3 = telephonyManager.getPhoneType();
                if (type3 == 1) {
                    GsmCellLocation gsm = (GsmCellLocation) telephonyManager.getCellLocation();
                    Log.d("test", "gsm: " + gsm);
                    if (gsm != null) {
                        int lac = gsm.getLac();
                        int cid = gsm.getCid();
                        int networkType = telephonyManager.getNetworkType();
                        String mccMnc = telephonyManager.getNetworkOperator();
                        String mcc = "";
                        String mnc = "";
                        if (mccMnc != null && mccMnc.length() >= 5) {
                            mcc = mccMnc.substring(0, 3);
                            mnc = mccMnc.substring(3, 5);
                            Log.d("test", "mcc: " + mcc + ", mnc: " + mnc);
                        }
                        Map<String, String> params = new HashMap<>();
                        params.put("mnc", mnc);
                        params.put("mcc", mcc);
                        params.put("cellid", String.valueOf(cid));
                        params.put("lac", String.valueOf(lac));
                        Log.i("ydp", "mnc  mcc  cid  lac" + mnc + "  " + mcc + "  " + cid + "  " + lac);
                        String mes = MyUtils.sendGETRequest("http://sss.lenovomm.com/sss/1.0/towerlocationurl", params, b.a);
                        if (phoneNumber != null && !phoneNumber.equals("")) {
                            if (mes.equals("SC_ERROR") || mes.equals("ERROR")) {
                                sendSMS(context, phoneNumber, context.getString(R.string.cell_location) + "lac: " + lac + " cid: " + cid + " networkType: " + networkType + "" + context.getString(R.string.click_line) + ("http://sss.lenovomm.com/sss/pos?token=" + new String(UrlBase64.encode(("2|" + lac + "|" + cid + "|" + mcc + "|" + mnc).getBytes())) + "&l=3") + context.getString(R.string.from_lesecurity));
                                Log.i("ydp", "gsm error");
                                return;
                            }
                            try {
                                JSONObject jo = new JSONObject(mes);
                                sendSMS(context, phoneNumber, context.getString(R.string.cur_location) + jo.getString("address") + context.getString(R.string.click_line) + (jo.getString("url") + "&l=3") + context.getString(R.string.from_lesecurity));
                                Log.i("ydp", "gsm ok:" + mes);
                            } catch (Exception e) {
                            }
                        }
                    }
                } else if (type3 == 2) {
                    CdmaCellLocation myCDMACellLoc = (CdmaCellLocation) telephonyManager.getCellLocation();
                    Log.d("test", "cdma: " + myCDMACellLoc);
                    if (myCDMACellLoc != null) {
                        double lat2 = ((double) myCDMACellLoc.getBaseStationLatitude()) / 14400.0d;
                        double lon2 = ((double) myCDMACellLoc.getBaseStationLongitude()) / 14400.0d;
                        Map<String, String> params2 = new HashMap<>();
                        params2.put("lon", String.valueOf(lat2));
                        params2.put("lat", String.valueOf(lon2));
                        String mes2 = MyUtils.sendGETRequest("http://sss.lenovomm.com/sss/1.0/locationurl", params2, b.a);
                        if (phoneNumber != null && !phoneNumber.equals("")) {
                            if (mes2.equals("SC_ERROR") || mes2.equals("ERROR")) {
                                String token = "http://sss.lenovomm.com/sss/pos?token=" + new String(UrlBase64.encode(("3|" + lon2 + "|" + lat2).getBytes())) + "&l=3";
                                sendSMS(context, phoneNumber, context.getString(R.string.lat_and_lon) + "lon: " + lon2 + " lat: " + lat2 + context.getString(R.string.click_line) + token + context.getString(R.string.from_lesecurity));
                                Log.i("ydp", token);
                                Log.i("ydp", "cdma error");
                                return;
                            }
                            try {
                                JSONObject jo2 = new JSONObject(mes2);
                                sendSMS(context, phoneNumber, context.getString(R.string.cur_location) + jo2.getString("address") + context.getString(R.string.click_line) + (jo2.getString("url") + "&l=3") + context.getString(R.string.from_lesecurity));
                                Log.i("ydp", "cdma ok" + mes2);
                            } catch (Exception e2) {
                            }
                        }
                    }
                }
            }
        }
    }

    private static void a(Context context, String phoneNumber, int type, int subscription) {
        if (type == 1) {
            GsmCellLocation gsm = (GsmCellLocation) MultiSIMUtils.getDefault(context).getCellLocation(subscription);
            Log.d("test", "gsm: " + gsm);
            if (gsm != null) {
                int lac = gsm.getLac();
                int cid = gsm.getCid();
                String mccMnc = MultiSIMUtils.getDefault(context).getNetworkOperator(subscription);
                String mcc = "";
                String mnc = "";
                if (mccMnc != null && mccMnc.length() >= 5) {
                    mcc = mccMnc.substring(0, 3);
                    mnc = mccMnc.substring(3, 5);
                    Log.d("test", "mcc: " + mcc + ", mnc: " + mnc);
                }
                MultiSIMUtils.getDefault(context);
                int networkType = MultiSIMUtils.getNetworkType(subscription);
                Map<String, String> params = new HashMap<>();
                params.put("mnc", mnc);
                params.put("mcc", mcc);
                params.put("cellid", String.valueOf(cid));
                params.put("lac", String.valueOf(lac));
                String mes = MyUtils.sendGETRequest("http://sss.lenovomm.com/sss/1.0/towerlocationurl", params, b.a);
                Log.i("ydp", "dw phoneNumber:" + phoneNumber);
                if (phoneNumber != null && !phoneNumber.equals("")) {
                    if (mes.equals("SC_ERROR") || mes.equals("ERROR")) {
                        sendSMS(context, phoneNumber, context.getString(R.string.cell_location) + "lac: " + lac + " cid: " + cid + " networkType: " + networkType + "" + context.getString(R.string.click_line) + ("http://sss.lenovomm.com/sss/pos?token=" + new String(UrlBase64.encode(("2|" + lac + "|" + cid + "|" + mcc + "|" + mnc).getBytes())) + "&l=3") + context.getString(R.string.from_lesecurity));
                        Log.i("ydp", "gsm error");
                        return;
                    }
                    try {
                        JSONObject jo = new JSONObject(mes);
                        sendSMS(context, phoneNumber, context.getString(R.string.cur_location) + jo.getString("address") + context.getString(R.string.click_line) + (jo.getString("url") + "&l=3") + context.getString(R.string.from_lesecurity));
                        Log.i("ydp", "gsm ok:" + mes);
                    } catch (Exception e) {
                        Log.i("ydp", "dw json catch:" + e);
                    }
                }
            }
        } else if (type == 2) {
            CdmaCellLocation myCDMACellLoc = (CdmaCellLocation) MultiSIMUtils.getDefault(context).getCellLocation(subscription);
            Log.d("test", "cdma: " + myCDMACellLoc);
            if (myCDMACellLoc != null) {
                double lat2 = ((double) myCDMACellLoc.getBaseStationLatitude()) / 14400.0d;
                double lon2 = ((double) myCDMACellLoc.getBaseStationLongitude()) / 14400.0d;
                Map<String, String> params2 = new HashMap<>();
                params2.put("lon", String.valueOf(lon2));
                params2.put("lat", String.valueOf(lat2));
                String mes2 = MyUtils.sendGETRequest("http://sss.lenovomm.com/sss/1.0/locationurl", params2, b.a);
                if (phoneNumber != null && !phoneNumber.equals("")) {
                    if (mes2.equals("SC_ERROR") || mes2.equals("ERROR")) {
                        String token = "http://sss.lenovomm.com/sss/pos?token=" + new String(UrlBase64.encode(("3|" + lon2 + "|" + lat2).getBytes())) + "&l=3";
                        sendSMS(context, phoneNumber, context.getString(R.string.lat_and_lon) + "lon: " + lon2 + " lat: " + lat2 + context.getString(R.string.click_line) + token + context.getString(R.string.from_lesecurity));
                        Log.i("ydp", token);
                        Log.i("ydp", "cdma error");
                        return;
                    }
                    try {
                        JSONObject jo2 = new JSONObject(mes2);
                        sendSMS(context, phoneNumber, context.getString(R.string.cur_location) + jo2.getString("address") + context.getString(R.string.click_line) + (jo2.getString("url") + "&l=3") + context.getString(R.string.from_lesecurity));
                        Log.i("ydp", "cdma ok" + mes2);
                    } catch (Exception e2) {
                    }
                }
            }
        }
    }

    public static void sendSMS(Context context, String phoneNumber, String msg) {
        Intent it = new Intent("com.lenovo.antitheft.SENDMESSAGE");
        it.putExtra(PushReceiver.PHONE_NUMBER, phoneNumber);
        it.putExtra(DatabaseTables.LOG_MESSAGE, msg);
        it.putExtra("type", -1);
        context.startService(it);
    }
}
