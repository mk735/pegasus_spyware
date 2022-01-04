package com.tencent.tmsecure.module.aresengine;

public interface IPhoneDeviceController {
    void blockSms(Object... objArr);

    void cancelMissCall();

    void disableRingVibration(int i);

    void hangup();

    void unBlockSms(SmsEntity smsEntity, Object... objArr);
}
