package com.tencent.tmsecure.module.optimize;

public interface IAdvancedGovernorConfig {
    int getDownThreshold();

    int getPowersaveBias();

    long getSamplingRate();

    long getSamplingRateMax();

    long getSamplingRateMin();

    int getUpThreshold();

    int ignoreNiceLoad();

    boolean setDownThreshold(int i);

    void setIgnoreNiceLoad(int i);

    boolean setPowersaveBias(int i);

    boolean setSamplingRate(long j);

    boolean setUpThreshold();
}
