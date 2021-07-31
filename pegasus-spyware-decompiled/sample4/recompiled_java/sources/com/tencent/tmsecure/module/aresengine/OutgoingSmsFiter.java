package com.tencent.tmsecure.module.aresengine;

public abstract class OutgoingSmsFiter extends DataFilter<SmsEntity> {
    public static final int REMOVE_PRIVATE_SMS = 1;

    public abstract void setEntityConvertor(IEntityConverter iEntityConverter);

    public abstract void setPrivateListDao(IContactDao<? extends ContactEntity> iContactDao);

    public abstract void setPrivateSmsDao(ISmsDao<? extends SmsEntity> iSmsDao);

    public abstract void setSystDao(AbsSysDao absSysDao);
}
