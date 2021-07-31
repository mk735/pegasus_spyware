package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.common.TMSApplication;
import tms.az;

public abstract class AresEngineFactor {
    public abstract IContactDao<? extends ContactEntity> getBlackListDao();

    public abstract ICallLogDao<? extends CallLogEntity> getCallLogDao();

    public abstract IEntityConverter getEntityConverter();

    public abstract IKeyWordDao getKeyWordDao();

    public abstract ILastCallLogDao getLastCallLogDao();

    public IPhoneDeviceController getPhoneDeviceController() {
        return new az(TMSApplication.getApplicaionContext());
    }

    public abstract ICallLogDao<? extends CallLogEntity> getPrivateCallLogDao();

    public abstract IContactDao<? extends ContactEntity> getPrivateListDao();

    public abstract ISmsDao<? extends SmsEntity> getPrivateSmsDao();

    public abstract ISmsDao<? extends SmsEntity> getSmsDao();

    public AbsSysDao getSysDao() {
        return AbsSysDao.getDefault(TMSApplication.getApplicaionContext());
    }

    public abstract IContactDao<? extends ContactEntity> getWhiteListDao();
}
