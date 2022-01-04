package com.xxGameAssistant.pao;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.tendcloud.tenddata.TCAgent;
import com.xxGameAssistant.utility.InjectHelper;
import com.xxGameAssistant.utility.JNIHelper;
import com.xxGameAssistant.utility.PackageHelper;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;

public class MainActivity extends Activity {
    static int GameInjectionWatcherIntervalInMS = 1;
    static int GameLaunchWatcherIntervalInMS = 1000;
    public static final int MSG_APK_NOT_FOUND = 6;
    public static final int MSG_INSTALLER_OK = 8;
    public static final int MSG_NET_ERROR = 5;
    public static final int MSG_NEW_VERSION = 1;
    public static final int MSG_NO_NEW_VERSION = 2;
    public static final int MSG_SET_GAMEMODE_OK = 9;
    public static final int MSG_SOCKET_TIMEOUT = 0;
    public static final int MSG_TIPS_ERROR = 4;
    public static final int MSG_TIPS_OK = 3;
    public static final int MSG_VERSION_NOT_FOUND = 7;
    private Thread checkUpdate = new Thread() {
        /* class com.xxGameAssistant.pao.MainActivity.AnonymousClass1 */

        public void run() {
            try {
                HttpURLConnection urlConn = (HttpURLConnection) new URL(MTApplication.mCheckUpdateURL).openConnection();
                urlConn.setDoInput(true);
                urlConn.setUseCaches(false);
                urlConn.setConnectTimeout(MTApplication.mConnectTimeout);
                urlConn.setReadTimeout(MTApplication.mReadTimeout);
                if (urlConn.getResponseCode() != 200) {
                    MainActivity.this.mHandler.sendEmptyMessage(7);
                    urlConn.disconnect();
                    return;
                }
                InputStream in = urlConn.getInputStream();
                ByteArrayOutputStream bOut = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                while (true) {
                    int size = in.read(buffer);
                    if (size == -1) {
                        break;
                    }
                    bOut.write(buffer, 0, size);
                }
                String strVersion = bOut.toString();
                urlConn.disconnect();
                bOut.close();
                if (strVersion.compareTo(MainActivity.this.getPackageManager().getPackageInfo(MainActivity.this.mContext.getPackageName(), 0).versionName) <= 0) {
                    MainActivity.this.mHandler.sendEmptyMessage(2);
                    return;
                }
                synchronized (MainActivity.this.mHandler) {
                    MainActivity.this.mHandler.sendEmptyMessage(1);
                    MainActivity.this.mHandler.wait();
                }
                if (!MainActivity.this.mIsAbortNewVewsion) {
                    HttpURLConnection urlConn2 = (HttpURLConnection) new URL(MTApplication.mPackageURL).openConnection();
                    urlConn2.setDoInput(true);
                    urlConn2.setUseCaches(false);
                    urlConn2.setConnectTimeout(MTApplication.mConnectTimeout);
                    urlConn2.setReadTimeout(MTApplication.mReadTimeout);
                    if (urlConn2.getResponseCode() != 200) {
                        MainActivity.this.mHandler.sendEmptyMessage(6);
                        urlConn2.disconnect();
                        return;
                    }
                    InputStream in2 = urlConn2.getInputStream();
                    File dir = new File(Environment.getExternalStorageDirectory(), "RhythmPlugin");
                    if (dir.exists()) {
                        dir.delete();
                    }
                    dir.mkdirs();
                    dir.setExecutable(true);
                    dir.setWritable(true);
                    dir.setReadable(true);
                    File file = new File(dir.getAbsolutePath(), "xxRhythmPlugin_android.apk");
                    if (file.exists()) {
                        file.delete();
                    }
                    file.setWritable(true);
                    file.setExecutable(true);
                    file.setReadable(true);
                    FileOutputStream out = new FileOutputStream(file);
                    BufferedOutputStream bufOut = new BufferedOutputStream(out);
                    while (true) {
                        int size2 = in2.read(buffer);
                        if (size2 == -1) {
                            bufOut.flush();
                            out.flush();
                            bufOut.close();
                            out.close();
                            in2.close();
                            urlConn2.disconnect();
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.addFlags(268435456);
                            intent.setAction("android.intent.action.VIEW");
                            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
                            MainActivity.this.startActivity(intent);
                            MainActivity.this.finish();
                            return;
                        }
                        bufOut.write(buffer, 0, size2);
                    }
                }
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (SocketTimeoutException e2) {
                MainActivity.this.mHandler.sendEmptyMessage(0);
            } catch (IOException e3) {
                e3.printStackTrace();
                MainActivity.this.mHandler.sendEmptyMessage(5);
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            } catch (PackageManager.NameNotFoundException e5) {
                e5.printStackTrace();
            }
        }
    };
    private TextView mAnnounceTextView = null;
    private String mAnnouncementText = null;
    private EditText mBonus;
    private ArrayList<String> mChannelString = new ArrayList<>();
    private Button mCheckUpdate = null;
    private Context mContext;
    public Handler mHandler = new Handler() {
        /* class com.xxGameAssistant.pao.MainActivity.AnonymousClass2 */

        /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    MainActivity.this.mCheckUpdate.setText("连接超时");
                    MainActivity.this.mCheckUpdate.setEnabled(false);
                    if (MainActivity.this.mIsHasMT && MainActivity.this.mIsInstallOK && MTApplication.mIsNewestVersion) {
                        MainActivity.this.mStartButton.setEnabled(true);
                        return;
                    }
                    return;
                case 1:
                    MainActivity.this.mCheckUpdate.setText("立即更新");
                    MainActivity.this.mCheckUpdate.setEnabled(true);
                    if (MainActivity.this.mIsHasMT && MainActivity.this.mIsInstallOK && MTApplication.mIsNewestVersion) {
                        MainActivity.this.mStartButton.setEnabled(true);
                    }
                    MainActivity.this.mIsHasNewVersion = true;
                    return;
                case 2:
                    MainActivity.this.mCheckUpdate.setText("暂无更新");
                    MainActivity.this.mCheckUpdate.setEnabled(false);
                    if (MainActivity.this.mIsHasMT && MainActivity.this.mIsInstallOK && MTApplication.mIsNewestVersion) {
                        MainActivity.this.mStartButton.setEnabled(true);
                        return;
                    }
                    return;
                case 3:
                    MainActivity.this.mAnnouncementText = MTApplication.mTipsText;
                    MainActivity.this.mAnnounceTextView.setText(MainActivity.this.mAnnouncementText);
                    break;
                case 4:
                    break;
                case 5:
                    MainActivity.this.mCheckUpdate.setText("网络异常");
                    MainActivity.this.mCheckUpdate.setEnabled(false);
                    if (MainActivity.this.mIsHasMT && MainActivity.this.mIsInstallOK && MTApplication.mIsNewestVersion) {
                        MainActivity.this.mStartButton.setEnabled(true);
                        return;
                    }
                    return;
                case 6:
                    MainActivity.this.mCheckUpdate.setText("下载更新错误");
                    MainActivity.this.mCheckUpdate.setEnabled(false);
                    if (MainActivity.this.mIsHasMT && MainActivity.this.mIsInstallOK && MTApplication.mIsNewestVersion) {
                        MainActivity.this.mStartButton.setEnabled(true);
                        return;
                    }
                    return;
                case 7:
                    MainActivity.this.mCheckUpdate.setText("检查更新错误");
                    MainActivity.this.mCheckUpdate.setEnabled(false);
                    if (MainActivity.this.mIsHasMT && MainActivity.this.mIsInstallOK && MTApplication.mIsNewestVersion) {
                        MainActivity.this.mStartButton.setEnabled(true);
                        return;
                    }
                    return;
                case 8:
                    MainActivity.this.mIsInstallOK = true;
                    if (MainActivity.this.mIsHasMT && MainActivity.this.mIsInstallOK && MTApplication.mIsNewestVersion) {
                        MainActivity.this.mStartButton.setEnabled(true);
                        return;
                    }
                    return;
                default:
                    super.handleMessage(msg);
                    return;
            }
            MTApplication.mTipsText = null;
        }
    };
    private boolean mIsAbortNewVewsion = false;
    private boolean mIsHasMT = false;
    private boolean mIsHasNewVersion = false;
    private boolean mIsInstallOK = false;
    private JNIHelper mJNIHelper;
    private PackageHelper mPackageHelper;
    private ArrayList<String> mPackageString = new ArrayList<>();
    private EditText mRushDistance;
    private TextView mSelectedMT = null;
    private Spinner mSpinner = null;
    private Button mStartButton = null;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        doMain();
        this.mContext = this;
        ((MTApplication) getApplication()).setHandler(this.mHandler);
        this.mPackageHelper = new PackageHelper(this);
        TCAgent.init(this);
        TCAgent.setReportUncaughtExceptions(true);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getRepeatCount() == 0) {
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    private void doMain() {
        setContentView(R.layout.activity_main);
        this.mIsInstallOK = false;
        this.mSelectedMT = (TextView) findViewById(R.id.mt_selected_version);
        this.mSpinner = (Spinner) findViewById(R.id.mt_spinner);
        this.mStartButton = (Button) findViewById(R.id.startButton);
        this.mStartButton.setEnabled(false);
        this.mCheckUpdate = (Button) findViewById(R.id.checkUpdate);
        this.mAnnounceTextView = (TextView) findViewById(R.id.mt_announcement_text);
        this.mAnnounceTextView.setText(MTApplication.mDefTipsText);
        this.mBonus = (EditText) findViewById(R.id.et_bonus);
        this.mRushDistance = (EditText) findViewById(R.id.et_rushDistance);
        this.mStartButton.setOnClickListener(new View.OnClickListener() {
            /* class com.xxGameAssistant.pao.MainActivity.AnonymousClass3 */

            public void onClick(View v) {
                ((MTApplication) MainActivity.this.getApplication()).setMTPackageName((String) MainActivity.this.mPackageString.get((int) MainActivity.this.mSpinner.getSelectedItemId()));
                MainActivity.this.mPackageHelper = new PackageHelper(MainActivity.this);
                new MyThread().start();
                synchronized (MainActivity.this.mHandler) {
                    MainActivity.this.mIsAbortNewVewsion = true;
                    MainActivity.this.mHandler.notify();
                }
                ((MTApplication) MainActivity.this.getApplication()).setHandler(null);
            }
        });
        this.mCheckUpdate.setOnClickListener(new View.OnClickListener() {
            /* class com.xxGameAssistant.pao.MainActivity.AnonymousClass4 */

            public void onClick(View arg0) {
                if (!MainActivity.this.mIsHasNewVersion) {
                    MainActivity.this.mStartButton.setEnabled(false);
                    MainActivity.this.checkUpdate.start();
                    MainActivity.this.mCheckUpdate.setText("正在检查更新中");
                    MainActivity.this.mCheckUpdate.setEnabled(false);
                    return;
                }
                MainActivity.this.mStartButton.setEnabled(false);
                MainActivity.this.mCheckUpdate.setEnabled(false);
                MainActivity.this.mIsAbortNewVewsion = false;
                MainActivity.this.mCheckUpdate.setText("正在下载更新");
                synchronized (MainActivity.this.mHandler) {
                    MainActivity.this.mHandler.notify();
                }
            }
        });
        this.mPackageString = MTApplication.mPackageString;
        this.mChannelString = MTApplication.mChannelString;
        if (!MTApplication.mIsNewestVersion) {
            this.mSelectedMT.setText("插件只支持1.0.7.0版酷跑");
            this.mStartButton.setText("请更新天天酷跑");
            this.mSpinner.setEnabled(false);
            this.mStartButton.setEnabled(false);
        } else if (this.mPackageString == null) {
            this.mSelectedMT.setText("程序发生异常，请重启");
            this.mStartButton.setEnabled(false);
            this.mIsHasMT = false;
            this.mSpinner.setEnabled(false);
        } else if (this.mPackageString.isEmpty()) {
            this.mSelectedMT.setText("未安装天天酷跑");
            this.mStartButton.setEnabled(false);
            this.mIsHasMT = false;
            this.mSpinner.setEnabled(false);
        } else {
            this.mIsHasMT = true;
            this.mSelectedMT.setText("当前选择的游戏:");
            ArrayAdapter<String> adapter = new ArrayAdapter<>(this, (int) R.layout.a, this.mChannelString);
            adapter.setDropDownViewResource(17367049);
            this.mSpinner.setAdapter((SpinnerAdapter) adapter);
        }
    }

    class MyThread extends Thread {
        MyThread() {
        }

        public void run() {
            try {
                String targetPackageName = ((MTApplication) MainActivity.this.getApplication()).getMTPackageName();
                MainActivity.this.mPackageHelper.openApp(targetPackageName);
                while (!MainActivity.this.mPackageHelper.isAppRunning(targetPackageName).booleanValue()) {
                    Thread.sleep((long) MainActivity.GameInjectionWatcherIntervalInMS);
                }
                Thread.sleep(2000);
                InjectHelper.setGameMode(String.format("%s,%s", MainActivity.this.mBonus.getText(), MainActivity.this.mRushDistance.getText()));
                InjectHelper.executeCmd(MainActivity.this, targetPackageName);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TCAgent.onResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        TCAgent.onPause(this);
    }
}
