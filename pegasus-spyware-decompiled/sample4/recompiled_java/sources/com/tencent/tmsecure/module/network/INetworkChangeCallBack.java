package com.tencent.tmsecure.module.network;

public interface INetworkChangeCallBack {
    void onClosingDateReached();

    void onDayChanged();

    void onNormalChanged(NetworkInfoEntity networkInfoEntity);
}
