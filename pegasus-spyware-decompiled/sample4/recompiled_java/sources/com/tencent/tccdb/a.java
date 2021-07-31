package com.tencent.tccdb;

import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateInfo;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.io.File;

final class a implements IUpdateObserver {
    final /* synthetic */ SmsChecker a;

    a(SmsChecker smsChecker) {
        this.a = smsChecker;
    }

    @Override // com.tencent.tmsecure.module.update.IUpdateObserver
    public final void onChanged(UpdateInfo updateInfo) {
        String str = ((UpdateManager) ManagerCreator.getManager(UpdateManager.class)).getFileSavePath() + File.separator + updateInfo.fileName;
        if (SmsChecker.a(SmsChecker.a(this.a), str) == 0 && SmsChecker.b(SmsChecker.a(this.a), str) == 0) {
            SmsChecker.a(this.a, true);
        } else {
            SmsChecker.a(this.a, false);
        }
    }
}
