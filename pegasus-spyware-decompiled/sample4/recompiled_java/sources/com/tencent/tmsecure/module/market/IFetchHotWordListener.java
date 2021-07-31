package com.tencent.tmsecure.module.market;

import QQPIM.HotWordResInfo;

public interface IFetchHotWordListener {
    void onReceive(ResponseInfo responseInfo, HotWordResInfo hotWordResInfo);
}
