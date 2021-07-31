package tms;

import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.INetworkMonitor;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import java.util.ArrayList;

public final class dv implements INetworkMonitor {
    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public final int addCallback(INetworkChangeCallBack iNetworkChangeCallBack) {
        return 0;
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public final void clearAllLogs() {
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public final ArrayList<NetworkInfoEntity> getAllLogs() {
        return new ArrayList<>();
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public final boolean getRefreshState() {
        return false;
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public final void notifyConfigChange() {
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public final boolean removeCallback(int i) {
        return false;
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public final boolean removeCallback(INetworkChangeCallBack iNetworkChangeCallBack) {
        return false;
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public final void setRefreshState(boolean z) {
    }
}
