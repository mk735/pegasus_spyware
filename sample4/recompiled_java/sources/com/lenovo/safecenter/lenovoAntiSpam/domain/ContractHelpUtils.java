package com.lenovo.safecenter.lenovoAntiSpam.domain;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import android.util.Log;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.utils.Untils;
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

    public static int getWordCount(String s) {
        int length = 0;
        for (int i = 0; i < s.length(); i++) {
            int ascii = Character.codePointAt(s, i);
            if (ascii < 0 || ascii > 255) {
                length += 2;
            } else {
                length++;
            }
        }
        return length;
    }

    public static String getDate(String longtime) {
        return new SimpleDateFormat("MM/dd HH:mm").format(new Date(Long.parseLong(longtime)));
    }

    public static String getType(Context context, int type) {
        switch (type) {
            case 1:
                return context.getString(R.string.antispamlocalblack_becall);
            case 2:
                return context.getString(R.string.antispamlocalblack_call);
            case 3:
                return context.getString(R.string.antispamlocalblack_misscall);
            default:
                return "";
        }
    }

    public List<Contract> GetMyContacts(Context act) {
        List<Contract> list = new ArrayList<>();
        String prePhone = null;
        Cursor phoneCursor = act.getContentResolver().query(Uri.parse("content://com.android.contacts/data/phones"), new String[]{"data1", "display_name"}, null, null, " sort_key asc");
        Log.i("count", phoneCursor.getCount() + "===phoneCursor");
        while (phoneCursor.moveToNext()) {
            String phone = phoneCursor.getString(phoneCursor.getColumnIndex("data1"));
            String name = phoneCursor.getString(phoneCursor.getColumnIndex("display_name"));
            if (phone != null && Untils.isPhoneNUmber(phone) && !phone.equals(prePhone)) {
                prePhone = phone;
                Contract con = new Contract();
                con.setName(name);
                con.setPhoneNumber(phone);
                list.add(con);
            }
        }
        phoneCursor.close();
        if (list.size() > 0) {
            return list;
        }
        return null;
    }

    public List<Contract> noContractRepeatList(List<Contract> repeatelist) {
        List<Contract> list = new ArrayList<>();
        if (repeatelist != null) {
            for (Contract con : repeatelist) {
                if (list.size() <= 0) {
                    list.add(con);
                } else {
                    boolean isExist = false;
                    String opt_number = con.getPhoneNumber();
                    if (isMobileNO(opt_number)) {
                        opt_number = optNUmber(opt_number);
                    }
                    Iterator i$ = list.iterator();
                    while (true) {
                        if (i$.hasNext()) {
                            if (Untils.compare(i$.next().getPhoneNumber(), opt_number, false)) {
                                isExist = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    if (!isExist) {
                        list.add(con);
                    }
                }
            }
            if (list.size() > 0) {
                return list;
            }
        }
        return null;
    }

    public List<Contract> getSimContacts(Context context) {
        Uri uri = Uri.parse("content://icc/adn");
        Log.i("code", "content://icc/adn");
        Cursor mCursor = context.getContentResolver().query(uri, null, null, null, null);
        if (mCursor == null) {
            return null;
        }
        List<Contract> list = new ArrayList<>();
        while (mCursor.moveToNext()) {
            Contract con = new Contract();
            con.setName(mCursor.getString(mCursor.getColumnIndex("name")));
            con.setPhoneNumber(mCursor.getString(mCursor.getColumnIndex(AppDatabase.NUMBER)));
            list.add(con);
        }
        mCursor.close();
        if (list.size() > 0) {
            return list;
        }
        return null;
    }

    public boolean isInContacts(Context act, String number, List<Contract> list) {
        if (isMobileNO(number)) {
            number = optNUmber(number);
        }
        for (Contract con : list) {
            if (Untils.compare(number, con.getPhoneNumber(), false)) {
                return true;
            }
        }
        return false;
    }

    public boolean isInContactsdia(Context act, String number) {
        if (isMobileNO(number)) {
            number = optNUmber(number);
        }
        Cursor phoneCursor = act.getContentResolver().query(Uri.parse("content://com.android.contacts/data/phones"), null, "PHONE_NUMBERS_EQUAL(data1,'" + number + "',0)", null, null);
        int count = phoneCursor.getCount();
        phoneCursor.close();
        if (count > 0) {
            return true;
        }
        return false;
    }

    public boolean isInSmsdia(Context act, String number) {
        if (isMobileNO(number)) {
            number = optNUmber(number);
        }
        com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase dataHelper = new com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase(act);
        List<BlackInfo> list = dataHelper.getSmsWhitePersonList();
        dataHelper.close();
        if (list != null && list.size() > 0) {
            for (BlackInfo con : list) {
                if (con.getPhoneNumber().equals(number)) {
                    return true;
                }
            }
        }
        return false;
    }

    class a implements Comparator {
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

    public List<Contract> getcallContractList_calling(Context act) {
        String[] projection = {AppDatabase.NUMBER, "name", "date", "type"};
        Cursor cursor = act.getContentResolver().query(CallLog.Calls.CONTENT_URI, projection, "type=?", new String[]{String.valueOf(1)}, " number,date desc ");
        List<Contract> contractList = new ArrayList<>();
        String preNum = "";
        while (cursor.moveToNext()) {
            String number = cursor.getString(cursor.getColumnIndex(AppDatabase.NUMBER));
            if (Untils.isPhoneNUmber(number)) {
                String name = cursor.getString(cursor.getColumnIndex("name"));
                if (!number.equals(preNum)) {
                    preNum = number;
                    contractList.add(new Contract(name, number, 1, cursor.getString(cursor.getColumnIndex("date")), cursor.getInt(cursor.getColumnIndex("type"))));
                }
            }
        }
        cursor.close();
        if (contractList.size() <= 0) {
            return null;
        }
        Collections.sort(contractList, new a());
        return contractList;
    }

    public List<Contract> getcallContractList(Context act) {
        Cursor cursor = act.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{AppDatabase.NUMBER, "name", "date", "type"}, null, null, " number,date desc ");
        List<Contract> contractList = new ArrayList<>();
        String preNum = "";
        while (cursor.moveToNext()) {
            String number = cursor.getString(cursor.getColumnIndex(AppDatabase.NUMBER));
            if (Untils.isPhoneNUmber(number)) {
                String name = cursor.getString(cursor.getColumnIndex("name"));
                if (!number.equals(preNum)) {
                    preNum = number;
                    contractList.add(new Contract(name, number, 1, cursor.getString(cursor.getColumnIndex("date")), cursor.getInt(cursor.getColumnIndex("type"))));
                }
            }
        }
        cursor.close();
        if (contractList.size() <= 0) {
            return null;
        }
        Collections.sort(contractList, new a());
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
            String phoneNumber = myCursor.getString(phoneColumn);
            String smsContent = myCursor.getString(smsColumn);
            String date = myCursor.getString(dateColumn);
            if (phoneNumber != null && !phoneNumber.equals("wappush") && Untils.isPhoneNUmber(phoneNumber) && !phoneNumber.equals(preNum)) {
                preNum = phoneNumber;
                Cursor phoneCursor = act.getContentResolver().query(Uri.parse("content://com.android.contacts/data/phones"), projectionIn, "PHONE_NUMBERS_EQUAL(data1,'" + phoneNumber + "',0)", null, null);
                String name = (!phoneCursor.moveToFirst() || phoneCursor.getCount() <= 0) ? null : phoneCursor.getString(phoneCursor.getColumnIndex("display_name"));
                phoneCursor.close();
                list.add(new Contract(name, phoneNumber, 0, date, smsContent));
            }
        }
        myCursor.close();
        Log.i("conlist", "==++++++++++++++list.size()");
        Log.i("conlist", list + "==" + list.size());
        if (list.size() <= 0) {
            return null;
        }
        Collections.sort(list, new a());
        return list;
    }

    public List<Contract> getwhiteSmsContractList(Context act) {
        List<Contract> list = new ArrayList<>();
        String[] projection = {"_id", "type", AppDatabase.TIME, AppDatabase.NUMBER, AppDatabase.CONTENT};
        Cursor myCursor = act.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.HarassProvider/safe_log_harass"), projection, " type =?  and fromtype=?", new String[]{"0", "3"}, " number,time desc");
        String preNum = "";
        for (int i = 0; i < myCursor.getCount(); i++) {
            myCursor.moveToPosition(i);
            int phoneColumn = myCursor.getColumnIndex(AppDatabase.NUMBER);
            int smsColumn = myCursor.getColumnIndex(AppDatabase.CONTENT);
            int dateColumn = myCursor.getColumnIndex(AppDatabase.TIME);
            String phoneNumber = myCursor.getString(phoneColumn);
            String smsContent = myCursor.getString(smsColumn);
            String date = myCursor.getString(dateColumn);
            if (phoneNumber != null && !phoneNumber.equals("wappush") && Untils.isPhoneNUmber(phoneNumber) && !phoneNumber.equals(preNum)) {
                preNum = phoneNumber;
                Contract sms = new Contract();
                sms.setPhoneNumber(phoneNumber);
                sms.setSmsContent(smsContent);
                sms.setDate(date);
                list.add(sms);
            }
        }
        myCursor.close();
        if (list.size() <= 0) {
            return null;
        }
        Collections.sort(list, new a());
        return list;
    }

    public List<Contract> getConNotInBlackList(List<Contract> list, Context context, int type) {
        List<Contract> newList = new ArrayList<>();
        if (list != null) {
            com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase DBhelper = new com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase(context);
            List<BlackInfo> balckList = DBhelper.getLocalBlackList(type);
            DBhelper.close();
            if (balckList == null) {
                return list;
            }
            long time1 = System.currentTimeMillis();
            for (Contract conn : list) {
                boolean isExist = false;
                String optNumber = conn.getPhoneNumber();
                if (isMobileNO(optNumber)) {
                    optNumber = optNUmber(optNumber);
                }
                Iterator i$ = balckList.iterator();
                while (true) {
                    if (i$.hasNext()) {
                        if (Untils.compare(optNumber, i$.next().getPhoneNumber(), false)) {
                            isExist = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (!isExist) {
                    newList.add(conn);
                }
            }
            Log.i("timespare", "getConNotInBlackListooooo>>>" + (System.currentTimeMillis() - time1));
            if (newList.size() > 0) {
                return newList;
            }
        }
        return null;
    }

    public List<Contract> getSmsNotInWhiteList(List<Contract> list, Context context) {
        List<Contract> newList = new ArrayList<>();
        if (list != null) {
            com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase DBhelper = new com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase(context);
            List<BlackInfo> balckList = DBhelper.getSmsWhitePersonList();
            DBhelper.close();
            if (balckList == null) {
                return list;
            }
            long time1 = System.currentTimeMillis();
            for (Contract conn : list) {
                boolean isExist = false;
                String optNumber = conn.getPhoneNumber();
                if (isMobileNO(optNumber)) {
                    optNumber = optNUmber(optNumber);
                }
                Iterator i$ = balckList.iterator();
                while (true) {
                    if (i$.hasNext()) {
                        if (Untils.compare(optNumber, i$.next().getPhoneNumber(), false)) {
                            isExist = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (!isExist) {
                    newList.add(conn);
                }
            }
            Log.i("timespare", "getConNotInBlackListooooo>>>" + (System.currentTimeMillis() - time1));
            if (newList.size() > 0) {
                return newList;
            }
        }
        return null;
    }

    public List<Contract> getConNotInWhiteList(List<Contract> list, Context context) {
        List<Contract> newList = new ArrayList<>();
        if (list != null) {
            com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase DBhelper = new com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase(context);
            List<BlackInfo> balckList = DBhelper.getWhitePersonList();
            DBhelper.close();
            if (balckList == null) {
                return list;
            }
            for (Contract conn : list) {
                boolean isExist = false;
                String optNumber = conn.getPhoneNumber();
                if (isMobileNO(optNumber)) {
                    optNumber = optNUmber(optNumber);
                }
                Iterator i$ = balckList.iterator();
                while (true) {
                    if (i$.hasNext()) {
                        if (Untils.compare(optNumber, i$.next().getPhoneNumber(), false)) {
                            isExist = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (!isExist) {
                    newList.add(conn);
                }
            }
            if (newList.size() > 0) {
                return newList;
            }
        }
        return null;
    }

    public List<BlackInfo> updateListName(List<BlackInfo> list, Context cxt, String tableName, List<Contract> contractList) {
        List<Contract> conList = GetMyContacts(cxt);
        if (conList != null) {
            Log.i("conList", conList.size() + "==updateListName");
            if (contractList != null) {
                for (Contract con : conList) {
                    contractList.add(con);
                }
            }
            List<BlackInfo> uList = new ArrayList<>();
            for (BlackInfo info : list) {
                String optNumber = info.getPhoneNumber();
                if (isMobileNO(optNumber)) {
                    optNumber = optNUmber(optNumber);
                }
                Iterator i$ = conList.iterator();
                while (true) {
                    if (!i$.hasNext()) {
                        break;
                    }
                    Contract con2 = i$.next();
                    if (info.getName() == null) {
                        if (Untils.compare(con2.getPhoneNumber(), optNumber, false)) {
                            if (con2.getName() != null) {
                                info.setName(con2.getName());
                                uList.add(info);
                            }
                        }
                    } else if (Untils.compare(con2.getPhoneNumber(), optNumber, false)) {
                        if (!info.getName().equals(con2.getName())) {
                            info.setName(con2.getName());
                            uList.add(info);
                        }
                    }
                }
            }
            if (uList.size() > 0) {
                new com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase(cxt).syncConName(uList, tableName.trim());
            }
        }
        return list;
    }

    public List<BlackInfo> updateSimName(List<BlackInfo> list, Context cxt, String tableName) {
        List<Contract> conList = getSimContacts(cxt);
        if (conList != null) {
            List<BlackInfo> uList = new ArrayList<>();
            for (BlackInfo info : list) {
                Iterator i$ = conList.iterator();
                while (true) {
                    if (!i$.hasNext()) {
                        break;
                    }
                    Contract con = i$.next();
                    if (info.getPhoneNumber().equals(con.getPhoneNumber())) {
                        if (!info.getName().equals(con.getName())) {
                            info.setName(con.getName());
                            uList.add(info);
                        }
                    }
                }
                if (uList.size() > 0) {
                    new com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase(cxt).syncConName(uList, tableName.trim());
                }
            }
        }
        return list;
    }

    /* JADX WARNING: Removed duplicated region for block: B:9:0x002e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<com.lenovo.safecenter.lenovoAntiSpam.domain.BlackInfo> getBlackoutCon(java.util.List<com.lenovo.safecenter.lenovoAntiSpam.domain.BlackInfo> r11, java.util.List<com.lenovo.safecenter.lenovoAntiSpam.domain.Contract> r12) {
        /*
        // Method dump skipped, instructions count: 117
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils.getBlackoutCon(java.util.List, java.util.List):java.util.List");
    }

    public List<Contract> getInSmsContractList(Context act) {
        List<Contract> list = new ArrayList<>();
        Cursor myCursor = act.getContentResolver().query(Uri.parse("content://sms/inbox"), new String[]{"address", "date"}, null, null, "date desc");
        while (myCursor.moveToNext()) {
            String phoneNumber = myCursor.getString(myCursor.getColumnIndex("address"));
            if (!phoneNumber.equals("wappush") && Untils.isPhoneNUmber(phoneNumber)) {
                Contract sms = new Contract();
                sms.setPhoneNumber(phoneNumber);
                list.add(sms);
            }
        }
        myCursor.close();
        if (list.size() > 0) {
            return list;
        }
        return null;
    }

    public List<Contract> getIncallContractList(Context act) {
        Cursor cursor = act.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"type", AppDatabase.NUMBER}, null, null, "date DESC");
        List<Contract> contractList = new ArrayList<>();
        while (cursor.moveToNext()) {
            String number = cursor.getString(cursor.getColumnIndex(AppDatabase.NUMBER));
            int type = cursor.getInt(cursor.getColumnIndex("type"));
            if (Untils.isPhoneNUmber(number) && type == 1) {
                Contract con = new Contract();
                con.setPhoneNumber(number);
                contractList.add(con);
            }
        }
        cursor.close();
        if (contractList.size() > 0) {
            return contractList;
        }
        return null;
    }

    public List<BlackInfo> judgeNum_upload(int type, List<BlackInfo> list, Context context) {
        long time1 = System.currentTimeMillis();
        List<BlackInfo> newList = new ArrayList<>();
        List<Contract> conList = getInSmsContractList(context);
        if (conList != null) {
            for (BlackInfo info : list) {
                boolean isUpload = false;
                Iterator i$ = conList.iterator();
                while (true) {
                    if (i$.hasNext()) {
                        if (i$.next().getPhoneNumber().equals(info.getPhoneNumber())) {
                            isUpload = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (isUpload) {
                    newList.add(info);
                }
            }
        }
        Log.i("timespare", "timespare==" + (System.currentTimeMillis() - time1));
        if (newList.size() > 0) {
            return newList;
        }
        return null;
    }

    public String Contacts_Name(Context act, String number) {
        String name = null;
        if (isMobileNO(number)) {
            number = optNUmber(number);
        }
        Cursor phoneCursor = act.getContentResolver().query(Uri.parse("content://com.android.contacts/data/phones"), new String[]{"display_name"}, "PHONE_NUMBERS_EQUAL(data1,'" + number + "',0)", null, null);
        if (phoneCursor.moveToFirst()) {
            name = phoneCursor.getString(phoneCursor.getColumnIndex("display_name"));
        }
        phoneCursor.close();
        return name;
    }

    public List<Contract> getWhiteFromadd(List<Contract> list, Context context) {
        List<Contract> W_con = new ArrayList<>();
        for (int i = list.size() - 1; i >= 0; i--) {
            Contract con = list.get(i);
            con.setRealnumber(getRealPhoneNumber(con.getPhoneNumber()));
            if (isInPrivate(context, con.getRealnumber())) {
                W_con.add(con);
            }
        }
        return W_con;
    }

    public List<Contract> getBlackFromadd(List<Contract> list, Context context) {
        List<Contract> W_con = new ArrayList<>();
        for (int i = list.size() - 1; i >= 0; i--) {
            Contract con = list.get(i);
            con.setRealnumber(getRealPhoneNumber(con.getPhoneNumber()));
            if (isBlack(context, con.getRealnumber())) {
                W_con.add(con);
            }
        }
        return W_con;
    }

    public boolean hasWhite(List<Contract> list, Context context) {
        for (int i = list.size() - 1; i >= 0; i--) {
            Contract con = list.get(i);
            con.setRealnumber(getRealPhoneNumber(con.getPhoneNumber()));
            if (isInPrivate(context, con.getRealnumber())) {
                return true;
            }
        }
        return false;
    }

    public boolean hasblack(List<Contract> list, Context context) {
        for (int i = list.size() - 1; i >= 0; i--) {
            Contract con = list.get(i);
            con.setRealnumber(getRealPhoneNumber(con.getPhoneNumber()));
            if (isBlack(context, con.getRealnumber())) {
                return true;
            }
        }
        return false;
    }

    public boolean isBlack(Context context, String number) {
        Cursor phoneCursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), new String[]{"_id"}, "realnumber=?", new String[]{number}, null);
        int count = phoneCursor.getCount();
        phoneCursor.close();
        return count > 0;
    }

    public boolean isInPrivate(Context context, String number) {
        Cursor phoneCursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"), new String[]{"_id"}, "realnumber=?", new String[]{number}, null);
        int count = phoneCursor.getCount();
        phoneCursor.close();
        return count > 0;
    }

    public void deleteWhite(Context context, List<Contract> list) {
        Uri uri1 = Uri.parse("content://com.lenovo.safecenter.whiteperson/whiteperson");
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
