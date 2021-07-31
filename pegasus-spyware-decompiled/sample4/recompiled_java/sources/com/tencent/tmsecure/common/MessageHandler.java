package com.tencent.tmsecure.common;

public interface MessageHandler {
    boolean isMatch(int i);

    DataEntity onProcessing(DataEntity dataEntity);
}
