package com.lenovo.safecenter.systeminfo.service;

public class PhoneSystemInfoService {
    private static final String a = PhoneSystemInfoService.class.getSimpleName();
    private static PhoneSystemInfoService b = null;

    private PhoneSystemInfoService() {
    }

    public static PhoneSystemInfoService getInstance() {
        if (b == null) {
            synchronized (PhoneSystemInfoService.class) {
                b = new PhoneSystemInfoService();
            }
        }
        return b;
    }
}
