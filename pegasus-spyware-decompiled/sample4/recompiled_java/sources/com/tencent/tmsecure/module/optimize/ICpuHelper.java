package com.tencent.tmsecure.module.optimize;

public interface ICpuHelper {
    int getAvailableCpus();

    int getCpuInfoMaxFreq();

    int getCpuInfoMinFreq();

    int getKernelMax();

    String[] getOnlineCpus();

    int[] getScalingAvaliableFrequencies();

    String[] getScalingAvaliableGovernors();

    int getScalingCurFreq();

    String getScalingGovernor();

    int getScalingMaxFreq();

    int getScalingMinFreq();

    void setScalingFreq(int i) throws IllegalArgumentException;

    void setScalingGovernor(String str) throws IllegalArgumentException;

    void setScalingMaxFreq(int i) throws IllegalArgumentException;

    void setScalingMinFreq(int i) throws IllegalArgumentException;
}
