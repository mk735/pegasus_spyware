package com.lenovo.safecenter.sdksys;

import android.content.Context;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.aresengine.ICallLogDao;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.IEntityConverter;
import com.tencent.tmsecure.module.aresengine.IKeyWordDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

public final class DemoAresEngineFactor extends AresEngineFactor {
    private Context a;

    public DemoAresEngineFactor(Context context) {
        this.a = context;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final IPhoneDeviceController getPhoneDeviceController() {
        return super.getPhoneDeviceController();
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final AbsSysDao getSysDao() {
        return AbsSysDao.getDefault(this.a);
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final IContactDao<? extends ContactEntity> getBlackListDao() {
        return null;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final ICallLogDao<? extends CallLogEntity> getCallLogDao() {
        return null;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final IEntityConverter getEntityConverter() {
        return null;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final IKeyWordDao getKeyWordDao() {
        return null;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final ILastCallLogDao getLastCallLogDao() {
        return null;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final ICallLogDao<? extends CallLogEntity> getPrivateCallLogDao() {
        return null;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final IContactDao<? extends ContactEntity> getPrivateListDao() {
        return null;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final ISmsDao<? extends SmsEntity> getPrivateSmsDao() {
        return null;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final ISmsDao<? extends SmsEntity> getSmsDao() {
        return null;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AresEngineFactor
    public final IContactDao<? extends ContactEntity> getWhiteListDao() {
        return null;
    }
}
