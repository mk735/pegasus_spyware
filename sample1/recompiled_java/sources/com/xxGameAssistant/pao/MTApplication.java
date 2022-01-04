package com.xxGameAssistant.pao;

import android.app.Application;
import android.os.Handler;
import com.xxGameAssistant.utility.NativeFileInstaller;
import java.util.ArrayList;

public class MTApplication extends Application {
    public static ArrayList<String> mChannelString = null;
    public static String mCheckUpdateURL = "      .";
    public static int mConnectTimeout = 10000;
    public static final String mDefTipsText = "各位叉烧，\n\t\t感谢使用叉叉游戏助手，天天酷跑插件核心功能：\n\t\t\t1.无限冲刺:自定义4百至100万米飞行距离，免道具，做到真正的一飞冲天！\n\t\t\t2.bonus奖励加倍:用户自由选择得分加成倍数，得分多多！\n\t\t说明：本插件目前只支持微信渠道的1.0.6.0版天天酷跑。\n\t\t希望叉烧们持续关注叉叉，建议、bug随时反馈，叉叉的成长需要各位叉烧的帮助，做最好的游戏插件。\n\t\t新浪微博：@叉叉游戏助手\n\t\tBUG反馈QQ：1068071192\n\t\t官方网站：www.xxzhushou.com \n\t\t使用插件一定要授予root权限\n";
    public static boolean mIsInstallerOk = false;
    public static boolean mIsNewestVersion = false;
    public static boolean mIsRoot = false;
    public static ArrayList<String> mPackageString = null;
    public static String mPackageURL = "           .";
    public static int mReadTimeout = 10000;
    public static String mTipsText = null;
    public static String mTipsURL = "  .";
    public static MTApplication me;
    private volatile Handler mHandler = null;
    private String mtPackageName_chs = "com.tencent.lian";

    public MTApplication() {
        mIsNewestVersion = false;
        me = this;
    }

    public void setMTPackageName(String MTPackageName) {
        this.mtPackageName_chs = MTPackageName;
    }

    public String getMTPackageName() {
        return this.mtPackageName_chs;
    }

    public static MTApplication unique() {
        return me;
    }

    public void setHandler(Handler handler) {
        this.mHandler = handler;
    }

    public Thread getThread() {
        new InstallerThread().start();
        return new MyThread();
    }

    class InstallerThread extends Thread {
        InstallerThread() {
        }

        public void run() {
            NativeFileInstaller.install(MTApplication.this);
            MTApplication.mIsRoot = NativeFileInstaller.isRoot();
            MTApplication.mIsInstallerOk = NativeFileInstaller.test();
            while (MTApplication.this.mHandler == null) {
                try {
                    Thread.sleep(100);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            MTApplication.this.mHandler.sendEmptyMessage(8);
        }
    }

    class MyThread extends Thread {
        MyThread() {
        }

        /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
            jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 188
            	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:72)
            	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:46)
            */
        public void run() {
            /*
            // Method dump skipped, instructions count: 329
            */
            throw new UnsupportedOperationException("Method not decompiled: com.xxGameAssistant.pao.MTApplication.MyThread.run():void");
        }
    }
}
