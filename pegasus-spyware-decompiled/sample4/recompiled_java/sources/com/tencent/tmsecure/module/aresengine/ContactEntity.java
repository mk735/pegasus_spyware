package com.tencent.tmsecure.module.aresengine;

public class ContactEntity extends TelephonyEntity {
    private static final long a = 1;
    public boolean enableForCalling;
    public boolean enableForSMS;
    public boolean isSimContact;

    public ContactEntity() {
    }

    public ContactEntity(ContactEntity contactEntity) {
        super(contactEntity);
        this.isSimContact = contactEntity.isSimContact;
        this.enableForCalling = contactEntity.enableForCalling;
        this.enableForSMS = contactEntity.enableForSMS;
    }
}
