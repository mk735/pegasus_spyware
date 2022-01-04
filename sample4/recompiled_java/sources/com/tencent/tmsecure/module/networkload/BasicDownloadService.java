package com.tencent.tmsecure.module.networkload;

import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.module.networkload.NetworkLoadTask;

public class BasicDownloadService<T extends NetworkLoadTask> extends BaseService {
    @Override // com.tencent.tmsecure.common.BaseService
    public IBinder onBind() {
        return new DownloadServiceBinder();
    }

    @Override // com.tencent.tmsecure.common.BaseService
    public void onDestory() {
        ((DownloadServiceBinder) getBinder()).clearData();
    }
}
