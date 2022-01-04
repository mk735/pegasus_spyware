package com.tencent.tmsecure.module.tools;

public interface IPackageChangedListener {
    void onPackageAdded(String str);

    void onPackageReinstall(String str);

    void onPackageRemoved(String str);
}
