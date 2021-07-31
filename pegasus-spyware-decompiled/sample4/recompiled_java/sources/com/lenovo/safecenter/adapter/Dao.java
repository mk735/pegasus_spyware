package com.lenovo.safecenter.adapter;

import com.lenovo.safecenter.support.SafePaymentApp;
import java.util.List;

public interface Dao {
    void deleByPackageNameForSafeApp(String str);

    void deleByPackageNameForUserApp(String str);

    void insterForSafeApp(String str, String str2, String str3, String str4, String str5);

    void insterForUserApp(String str, String str2, String str3, String str4, String str5, String str6);

    List<SafePaymentApp> queryAllForSafeApp();

    List<SafePaymentApp> queryAllForUserApp();

    SafePaymentApp queryByAppNameForSafeApp(String str);

    SafePaymentApp queryByAppNameForUserApp(String str);

    SafePaymentApp queryByPackageNameForSafeApp(String str);

    SafePaymentApp queryByPackageNameForUserApp(String str);

    List<SafePaymentApp> queryByStateForUserApp(String str);

    int queryCount();

    void updataProtectionByPackageName(String str, String str2);

    void updataStateAll(String str);

    void updataStateByPackageName(String str, String str2);
}
