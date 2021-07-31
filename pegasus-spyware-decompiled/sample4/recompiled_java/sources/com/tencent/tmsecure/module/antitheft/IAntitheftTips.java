package com.tencent.tmsecure.module.antitheft;

import android.content.Intent;

public interface IAntitheftTips {
    Intent getLockPhoneIntent();

    String tips4DeleteDataSuccess();

    String tips4DeletingData();

    String tips4GetPasswordFailed();

    String tips4GetPasswordSuccess();

    String tips4LocateFaild();

    String tips4LocateSuccess();

    String tips4Locating();

    String tips4LockPhoneSuccess();

    String tips4PasswordError();
}
