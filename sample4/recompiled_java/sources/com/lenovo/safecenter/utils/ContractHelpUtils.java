package com.lenovo.safecenter.utils;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import android.util.Log;
import android.util.Patterns;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.support.Contract;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class ContractHelpUtils {
    public static final int From_CALL = 1;
    public static final int From_SMS = 0;
    public static final int HAS_NOUPLOAD = 0;
    public static final int HAS_UPLOAD = 1;

    public boolean isMobileNO(String mobiles) {
        try {
            String number = mobiles.replaceAll("-", "").replaceAll(" ", "");
            return Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,2,5-9]))\\d{8}$").matcher(number.substring(number.length() - 11, number.length())).matches();
        } catch (Exception e) {
            return false;
        }
    }

    public String optNUmber(String mobiles) {
        String number = mobiles.replaceAll("-", "").replaceAll(" ", "");
        return number.substring(number.length() - 11, number.length());
    }

    public String getRealPhoneNumber(String number) {
        if (isMobileNO(number)) {
            return optNUmber(number);
        }
        return number.replaceAll("-", "").replaceAll(" ", "");
    }

    public static String getDate(String longtime) {
        return new SimpleDateFormat("MM/dd HH:mm").format(new Date(Long.parseLong(longtime)));
    }

    public static String getType(Context context, int type) {
        switch (type) {
            case 1:
                return context.getString(R.string.incomingtype);
            case 2:
                return context.getString(R.string.outgoing);
            case 3:
                return context.getString(R.string.misstype);
            default:
                return "";
        }
    }

    public boolean isPhoneNUmber(String number) {
        return Patterns.PHONE.matcher(number).matches();
    }

    public List<Contract> noContractRepeatList(List<Contract> repeatelist) {
        if (repeatelist != null) {
            for (int i = 0; i < repeatelist.size(); i++) {
                String opt_number = repeatelist.get(i).getPhoneNumber();
                if (isMobileNO(opt_number)) {
                    opt_number = optNUmber(opt_number);
                }
                int j = i + 1;
                while (j < repeatelist.size()) {
                    if (Untils.compare(repeatelist.get(j).getPhoneNumber(), opt_number, false)) {
                        repeatelist.remove(j);
                        j--;
                    }
                    j++;
                }
            }
            if (repeatelist.size() > 0) {
            }
        }
        return repeatelist;
    }

    /* access modifiers changed from: package-private */
    public class a implements Comparator {
        public a() {
        }

        @Override // java.util.Comparator
        public final int compare(Object o1, Object o2) {
            long installed1 = Long.parseLong(((Contract) o1).getDate());
            long installed2 = Long.parseLong(((Contract) o2).getDate());
            if (installed1 > installed2) {
                return -1;
            }
            if (installed1 == installed2) {
                return 0;
            }
            return 1;
        }
    }

    public List<Contract> GetMyContacts(Context act) {
        List<Contract> list = new ArrayList<>();
        String prePhone = null;
        Cursor phoneCursor = act.getContentResolver().query(Uri.parse("content://com.android.contacts/data/phones"), new String[]{"data1", "display_name"}, null, null, " sort_key asc");
        while (phoneCursor.moveToNext()) {
            String phone = phoneCursor.getString(phoneCursor.getColumnIndex("data1"));
            String name = phoneCursor.getString(phoneCursor.getColumnIndex("display_name"));
            if (phone != null && isPhoneNUmber(phone) && !phone.equals(prePhone)) {
                prePhone = phone;
                Contract con = new Contract();
                con.setName(name);
                con.setPhoneNumber(phone);
                list.add(con);
            }
        }
        phoneCursor.close();
        return list;
    }

    public List<Contract> getcallContractList(Context act) {
        Cursor cursor = act.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{AppDatabase.NUMBER, "name", "date", "type", "duration"}, null, null, " number,date desc ");
        List<Contract> contractList = new ArrayList<>();
        String preNum = "";
        while (cursor.moveToNext()) {
            String number = cursor.getString(cursor.getColumnIndex(AppDatabase.NUMBER));
            if (Untils.isPhoneNUmber(number)) {
                String name = cursor.getString(cursor.getColumnIndex("name"));
                if (!number.equals(preNum)) {
                    preNum = number;
                    contractList.add(new Contract(name, number, cursor.getString(cursor.getColumnIndex("date")), cursor.getInt(cursor.getColumnIndex("type"))));
                    Log.i("duration", cursor.getInt(cursor.getColumnIndex("duration")) + "");
                }
            }
        }
        cursor.close();
        if (contractList.size() > 0) {
            Collections.sort(contractList, new a());
        }
        return contractList;
    }

    public List<Contract> getSmsContractList(Context act) {
        List<Contract> list = new ArrayList<>();
        String[] projectionIn = {"display_name"};
        Cursor myCursor = act.getContentResolver().query(Uri.parse("content://sms"), new String[]{"_id", "address", "person", PushReceiver.BODY, "date", "type"}, null, null, "address,date desc");
        String preNum = "";
        for (int i = 0; i < myCursor.getCount(); i++) {
            myCursor.moveToPosition(i);
            int phoneColumn = myCursor.getColumnIndex("address");
            int smsColumn = myCursor.getColumnIndex(PushReceiver.BODY);
            int dateColumn = myCursor.getColumnIndex("date");
            String name = null;
            String phoneNumber = myCursor.getString(phoneColumn);
            String smsContent = myCursor.getString(smsColumn);
            String date = myCursor.getString(dateColumn);
            if (phoneNumber != null && !phoneNumber.equals("wappush") && Untils.isPhoneNUmber(phoneNumber) && !phoneNumber.equals(preNum)) {
                preNum = phoneNumber;
                Cursor phoneCursor = act.getContentResolver().query(Uri.parse("content://com.android.contacts/data/phones"), projectionIn, "PHONE_NUMBERS_EQUAL(data1,'" + phoneNumber + "',0)", null, null);
                if (phoneCursor.moveToFirst()) {
                    name = phoneCursor.getString(phoneCursor.getColumnIndex("display_name"));
                }
                phoneCursor.close();
                list.add(new Contract(name, phoneNumber, date, smsContent));
            }
        }
        myCursor.close();
        if (list.size() > 0) {
            Collections.sort(list, new a());
        }
        return list;
    }

    public List<Contract> getConNotInWhiteList(List<Contract> whiteList, Context context, int fromType) {
        List<Contract> newlist = null;
        if (fromType == 0) {
            newlist = GetMyContacts(context);
        } else if (fromType == 1) {
            newlist = getcallContractList(context);
        } else if (fromType == 2) {
            newlist = getSmsContractList(context);
        }
        if ((newlist == null || newlist.size() != 0) && whiteList.size() != 0) {
            for (int i = newlist.size() - 1; i >= 0; i--) {
                boolean isExist = false;
                String optNumber = newlist.get(i).getPhoneNumber();
                if (isMobileNO(optNumber)) {
                    optNumber = optNUmber(optNumber);
                }
                Iterator i$ = whiteList.iterator();
                while (true) {
                    if (i$.hasNext()) {
                        if (Untils.compare(i$.next().getPhoneNumber(), optNumber, false)) {
                            isExist = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (isExist) {
                    newlist.remove(i);
                }
            }
        }
        return newlist;
    }

    public void backToSms(Contract con, Context context) {
        ContentValues values = new ContentValues();
        values.put("address", con.getPhoneNumber());
        values.put("date", String.valueOf(con.getDate()));
        values.put(PushReceiver.READ, (Integer) 1);
        values.put("status", (Integer) -1);
        values.put("type", Integer.valueOf(con.getSmstype()));
        values.put(PushReceiver.BODY, con.getSmsContent());
        context.getContentResolver().insert(Uri.parse("content://sms"), values);
    }

    public boolean checkHasNotes(List<Contract> list, Context context) {
        int i = 0;
        Cursor cursor = null;
        boolean HasNotes = false;
        ContentResolver resolver = context.getContentResolver();
        String[] projection = {"date"};
        Iterator i$ = list.iterator();
        while (true) {
            if (!i$.hasNext()) {
                break;
            }
            i++;
            Log.i("count", "int i=0;==" + i);
            String optNumber = i$.next().getPhoneNumber();
            if (isMobileNO(optNumber)) {
                optNumber = optNUmber(optNumber);
            }
            cursor = resolver.query(CallLog.Calls.CONTENT_URI, projection, "PHONE_NUMBERS_EQUAL(number,'" + optNumber + "',0)", null, null);
            if (cursor != null && cursor.getCount() > 0) {
                HasNotes = true;
                break;
            }
        }
        if (HasNotes) {
            cursor.close();
            return true;
        }
        Iterator i$2 = list.iterator();
        while (true) {
            if (!i$2.hasNext()) {
                break;
            }
            i++;
            Log.i("count", "int i=0;==" + i);
            String optNumber2 = i$2.next().getPhoneNumber();
            if (isMobileNO(optNumber2)) {
                optNumber2 = optNUmber(optNumber2);
            }
            cursor = resolver.query(Uri.parse("content://sms"), projection, "PHONE_NUMBERS_EQUAL(address,'" + optNumber2 + "',0)", null, null);
            if (cursor.getCount() > 0) {
                HasNotes = true;
                break;
            }
        }
        cursor.close();
        return HasNotes;
    }

    public boolean checkHasNotes(Contract conn, Context context) {
        boolean HasNotes = false;
        ContentResolver resolver = context.getContentResolver();
        String[] projection = {"date"};
        Log.i("count", "int i=0;==" + 0);
        String optNumber = conn.getPhoneNumber();
        if (isMobileNO(optNumber)) {
            optNumber = optNUmber(optNumber);
        }
        Cursor cursor = resolver.query(CallLog.Calls.CONTENT_URI, projection, "PHONE_NUMBERS_EQUAL(number,'" + optNumber + "',0)", null, null);
        if (cursor.getCount() > 0) {
            cursor.close();
            return true;
        }
        Cursor cursor2 = resolver.query(Uri.parse("content://sms"), projection, "PHONE_NUMBERS_EQUAL(address,'" + optNumber + "',0)", null, null);
        if (cursor2.getCount() > 0) {
            HasNotes = true;
        }
        cursor2.close();
        return HasNotes;
    }

    public void operateNumber(String optNumber, Context context, boolean isHasSms) {
        if (isHasSms) {
            new SmsUtil().backupThread(optNumber, context);
        }
        context.getContentResolver().delete(CallLog.Calls.CONTENT_URI, "PHONE_NUMBERS_EQUAL(number,'" + optNumber + "',0)", null);
    }

    public List<Contract> getCallContractByNUmber(Context act, String optNumber, String inseretNumber) {
        Cursor cursor = act.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{AppDatabase.NUMBER, "name", "date", "type"}, "PHONE_NUMBERS_EQUAL(number,'" + optNumber + "',0)", null, "number,date desc ");
        List<Contract> callList = new ArrayList<>();
        while (cursor.moveToNext()) {
            callList.add(new Contract(cursor.getString(cursor.getColumnIndex("name")), inseretNumber, cursor.getString(cursor.getColumnIndex("date")), cursor.getInt(cursor.getColumnIndex("type"))));
        }
        cursor.close();
        return callList;
    }

    public List<Contract> getSmsByNUmber(Context act, String optNumber, String inseretNumber, String name) {
        List<Contract> list = new ArrayList<>();
        Cursor myCursor = act.getContentResolver().query(Uri.parse("content://sms"), new String[]{"_id", "address", PushReceiver.BODY, "date", "type"}, "PHONE_NUMBERS_EQUAL(address,'" + optNumber + "',0)", null, "address,date desc");
        for (int i = 0; i < myCursor.getCount(); i++) {
            myCursor.moveToPosition(i);
            int smsColumn = myCursor.getColumnIndex(PushReceiver.BODY);
            int dateColumn = myCursor.getColumnIndex("date");
            int typeColumn = myCursor.getColumnIndex("type");
            String smsContent = myCursor.getString(smsColumn);
            String date = myCursor.getString(dateColumn);
            int type = myCursor.getInt(typeColumn);
            Log.i("sms_size", name + "==" + inseretNumber + "date" + smsContent + "myCursor.getCount()==" + myCursor.getCount());
            Contract sms = new Contract(name, inseretNumber, date, smsContent);
            sms.setSmstype(type);
            list.add(sms);
        }
        myCursor.close();
        return list;
    }

    public static String formatTime(String time, Context context) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy.M.dd.HH.mm");
        String dateValue = sdf.format(Long.valueOf(System.currentTimeMillis()));
        Log.i(AppDatabase.TIME, time + "currentTimeMillis==" + System.currentTimeMillis());
        String datatime = sdf.format(Long.valueOf(Long.parseLong(time)));
        String[] nowTimeArray = dateValue.split("\\.");
        String[] timeArray = datatime.split("\\.");
        if (nowTimeArray[0].equals(timeArray[0]) && nowTimeArray[1].equals(timeArray[1]) && nowTimeArray[2].equals(timeArray[2])) {
            return timeArray[3] + c.N + timeArray[4];
        }
        if (nowTimeArray[0].equals(timeArray[0])) {
            return timeArray[1] + context.getString(R.string.safemode_time_m) + timeArray[2] + context.getString(R.string.safemode_time_d);
        }
        if (!nowTimeArray[0].equals(timeArray[0])) {
            return timeArray[0] + "." + timeArray[1] + "." + timeArray[2];
        }
        return null;
    }

    public List<Contract> getWhiteSMS(List<Contract> list) {
        if (list.size() > 0) {
            Collections.sort(list, new a());
        }
        return list;
    }

    public boolean hasLocalBlack(Context context, List<Contract> list) {
        boolean ishas = false;
        try {
            ContentResolver resolver = context.getContentResolver();
            Uri uri = Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack");
            Log.i("ishas", list.size() + "list");
            Cursor cursor = null;
            Iterator i$ = list.iterator();
            while (true) {
                if (!i$.hasNext()) {
                    break;
                }
                Contract con = i$.next();
                Log.i("ishas", list.size() + "list==" + con.getRealnumber());
                cursor = resolver.query(uri, new String[]{"_id"}, "realnumber=?", new String[]{getRealPhoneNumber(con.getPhoneNumber())}, null);
                if (cursor.getCount() > 0) {
                    ishas = true;
                    break;
                }
            }
            cursor.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Log.i("ishas", ishas + "==ishas");
        return ishas;
    }

    public List<Contract> getBlackFromadd(List<Contract> list, Context context) {
        List<Contract> B_con = new ArrayList<>();
        for (int i = list.size() - 1; i >= 0; i--) {
            Contract con = list.get(i);
            con.setRealnumber(getRealPhoneNumber(con.getPhoneNumber()));
            if (isInLocalblack(context, con.getRealnumber())) {
                B_con.add(con);
            }
        }
        return B_con;
    }

    public boolean isInLocalblack(Context context, String number) {
        Cursor phoneCursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), new String[]{"_id"}, "realnumber=?", new String[]{number}, null);
        int count = phoneCursor.getCount();
        phoneCursor.close();
        return count > 0;
    }

    public void deleteBlack(Context context, List<Contract> list) {
        Uri uri1 = Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack");
        Iterator i$ = list.iterator();
        while (i$.hasNext()) {
            context.getContentResolver().delete(uri1, "realnumber=?", new String[]{i$.next().getRealnumber()});
        }
    }

    public List<Contract> getAddlist(List<Contract> list, List<Contract> wList) {
        for (int i = list.size() - 1; i >= 0; i--) {
            Iterator i$ = wList.iterator();
            while (true) {
                if (i$.hasNext()) {
                    if (i$.next().getRealnumber().equals(list.get(i).getRealnumber())) {
                        Log.i("has", list.get(i).getRealnumber() + "=========" + i);
                        list.remove(i);
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        return list;
    }

    public static void sendBraodcast(Context cxt, String intentfilter) {
        Intent intent = new Intent();
        intent.setAction(intentfilter);
        cxt.sendBroadcast(intent);
    }
}
