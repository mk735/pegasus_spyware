package com.lenovo.safecenter.utils;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.Log;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class BackUpContact {
    private Context a;
    private StringBuilder b;

    public BackUpContact(Context context) {
        this.a = context;
    }

    public void backup() {
        Log.i("info", "in the contact backup");
        this.b = new StringBuilder();
        Cursor cur = this.a.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
        for (int i = 0; i < cur.getCount(); i++) {
            cur.moveToPosition(i);
            try {
                this.b.append(a(this.a.getContentResolver().openAssetFileDescriptor(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, cur.getString(cur.getColumnIndex("lookup"))), "r").createInputStream()));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        String sb = this.b.toString();
        try {
            Context context = this.a;
            Context context2 = this.a;
            FileOutputStream openFileOutput = context.openFileOutput("Contacts.vcf", 0);
            openFileOutput.write(sb.getBytes());
            openFileOutput.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        cur.close();
    }

    private static String a(FileInputStream fis) {
        try {
            byte[] buffer = new byte[fis.available()];
            fis.read(buffer);
            return new String(buffer);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
