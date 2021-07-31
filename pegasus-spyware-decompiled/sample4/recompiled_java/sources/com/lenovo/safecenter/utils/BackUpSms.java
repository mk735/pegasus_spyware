package com.lenovo.safecenter.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.Log;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BackUpSms {
    private ContentResolver a;
    private Context b;
    private StringBuilder c = new StringBuilder();

    public BackUpSms(Context context) {
        this.b = context;
        this.a = context.getContentResolver();
    }

    public void backup() {
        String type;
        String personName;
        Log.i("info", "in the smsbackup");
        try {
            String[] projection = {"_id", "address", "person", PushReceiver.BODY, "date", "type"};
            Cursor cur = this.a.query(Uri.parse("content://sms/"), projection, null, null, "date desc");
            if (cur.moveToFirst()) {
                int phoneNumberColumn = cur.getColumnIndex("address");
                int smsbodyColumn = cur.getColumnIndex(PushReceiver.BODY);
                int dateColumn = cur.getColumnIndex("date");
                int typeColumn = cur.getColumnIndex("type");
                do {
                    String phoneNumber = cur.getString(phoneNumberColumn);
                    String smsbody = cur.getString(smsbodyColumn);
                    String date = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date(Long.parseLong(cur.getString(dateColumn))));
                    int typeId = cur.getInt(typeColumn);
                    if (typeId == 1) {
                        type = this.b.getString(R.string.receive);
                    } else if (typeId == 2) {
                        type = this.b.getString(R.string.send);
                    } else {
                        type = "";
                    }
                    String[] projections = {"display_name"};
                    Uri uri1 = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
                    if (phoneNumber == null) {
                        personName = this.b.getString(R.string.stranger);
                    } else {
                        Cursor c1 = this.a.query(uri1, projections, "data1=?", new String[]{phoneNumber}, null);
                        if (c1.getCount() != 0) {
                            c1.moveToPosition(0);
                            personName = c1.getString(0);
                        } else if (phoneNumber.contains("+86")) {
                            Log.i("ydp", "oldNumber:" + phoneNumber);
                            String newNumber = phoneNumber.substring(3);
                            Log.i("ydp", "newNumber:" + newNumber);
                            Cursor c2 = this.a.query(uri1, projections, "data1=?", new String[]{newNumber}, null);
                            if (c2.getCount() == 0) {
                                personName = this.b.getString(R.string.stranger);
                            } else {
                                c2.moveToPosition(0);
                                personName = c2.getString(0);
                            }
                            c2.close();
                        } else {
                            personName = this.b.getString(R.string.stranger);
                        }
                        c1.close();
                    }
                    String[] strArr = {personName, phoneNumber, type, date, smsbody};
                    this.c.append(this.b.getString(R.string.name) + strArr[0] + "  " + strArr[1] + "(" + strArr[2] + ")" + "\r\n" + this.b.getString(R.string.date) + strArr[3] + "\r\n" + this.b.getString(R.string.smsbody) + strArr[4] + "\r\n\r\n");
                } while (cur.moveToNext());
            }
            cur.close();
        } catch (SQLiteException ex) {
            Log.d("SQLiteException in getSmsInPhone", ex.getMessage());
        }
        String sb = this.c.toString();
        try {
            Context context = this.b;
            Context context2 = this.b;
            FileOutputStream openFileOutput = context.openFileOutput("smsbackup.txt", 0);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(openFileOutput, "gb2312");
            outputStreamWriter.write(sb);
            outputStreamWriter.close();
            openFileOutput.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
