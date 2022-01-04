package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.media.AudioManager;
import android.os.Process;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.tools.RunableTaskManager;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.ScriptHelper;

public final class az implements IPhoneDeviceController {
    private aj a;
    private AudioManager b;
    private boolean c = false;
    private boolean d;

    /* access modifiers changed from: package-private */
    public final class a implements Runnable {
        private int b;
        private int c;
        private int d;

        public a(int i, int i2, int i3) {
            this.b = i;
            this.c = i2;
            this.d = i3;
        }

        public final void run() {
            try {
                Thread.currentThread();
                Thread.sleep((long) (this.d * 1000));
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            int ringerMode = az.this.b.getRingerMode();
            int vibrateSetting = az.this.b.getVibrateSetting(0);
            if (!(this.b == -1 || ringerMode == this.b)) {
                az.this.b.setRingerMode(this.b);
            }
            if (!(this.c == -1 || vibrateSetting == this.c)) {
                az.this.b.setVibrateSetting(0, this.c);
            }
            az.this.c = false;
        }
    }

    public az(Context context) {
        boolean z = false;
        this.d = SDKUtil.getSDKVersion() < 9 ? true : z;
        this.a = aj.a();
        this.b = (AudioManager) context.getSystemService("audio");
    }

    @Override // com.tencent.tmsecure.module.aresengine.IPhoneDeviceController
    public final void blockSms(Object... objArr) {
        if (objArr != null && objArr.length >= 2 && (objArr[1] instanceof BroadcastReceiver)) {
            ((BroadcastReceiver) objArr[1]).abortBroadcast();
        }
    }

    @Override // com.tencent.tmsecure.module.aresengine.IPhoneDeviceController
    public final void cancelMissCall() {
        if (ScriptHelper.providerSupportCancelMissCall()) {
            ScriptHelper.provider().d();
        } else if (this.d) {
            this.a.b();
        } else if (ScriptHelper.isRootGot() || Process.myUid() == 1000) {
            ScriptHelper.runScript("service call notification 2 s16 com.android.phone i32 1");
        }
    }

    @Override // com.tencent.tmsecure.module.aresengine.IPhoneDeviceController
    public final void disableRingVibration(int i) {
        if (!this.c) {
            this.c = true;
            int ringerMode = this.b.getRingerMode();
            int vibrateSetting = this.b.getVibrateSetting(0);
            if (ringerMode != 0) {
                this.b.setRingerMode(0);
            } else {
                ringerMode = -1;
            }
            if (vibrateSetting != 0) {
                this.b.setVibrateSetting(0, 0);
            } else {
                vibrateSetting = -1;
            }
            new Thread(new a(ringerMode, vibrateSetting, i)).start();
        }
    }

    @Override // com.tencent.tmsecure.module.aresengine.IPhoneDeviceController
    public final void hangup() {
        disableRingVibration(3);
        this.a.c();
        ((RunableTaskManager) ManagerCreator.getManager(RunableTaskManager.class)).addTask(new am(this), 1000);
    }

    @Override // com.tencent.tmsecure.module.aresengine.IPhoneDeviceController
    public final void unBlockSms(SmsEntity smsEntity, Object... objArr) {
        if (objArr != null && objArr.length >= 2) {
            switch (((Integer) objArr[0]).intValue()) {
                case 0:
                case 1:
                default:
                    return;
                case 2:
                    if (TMSApplication.getApplicaionContext().getPackageName().equals((String) objArr[1])) {
                        ((AresEngineManager) ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor().getSysDao().insert(smsEntity);
                        return;
                    }
                    return;
            }
        }
    }
}
