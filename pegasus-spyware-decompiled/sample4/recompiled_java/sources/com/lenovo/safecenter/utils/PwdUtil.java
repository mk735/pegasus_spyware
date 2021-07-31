package com.lenovo.safecenter.utils;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.lenovo.safecenter.MainTab.AppDownloadActivity;
import com.lenovo.safecenter.MainTab.AppLockMustUpdateDialogActivity;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;

public class PwdUtil {
    public static String key = "lenovo_wufenglong";

    public static boolean hasPassword(Context c) {
        if (TextUtils.isEmpty(getPassword(c))) {
            return false;
        }
        return true;
    }

    public static String getPassword(Context c) {
        return new AppDatabase(c).queryPwd();
    }

    public static String getPasswordWithJieMi(Context c) {
        String pwd = new AppDatabase(c).queryPwd();
        if (!TextUtils.isEmpty(pwd)) {
            return Untils.jieMi(pwd, key);
        }
        return pwd;
    }

    public static String[] queryPwdQuestionAndAnswer(Context c) {
        return new AppDatabase(c).queryPwdQuestionAndAnswer();
    }

    public static String[] queryPwdQuestionAndAnswerWithJieMi(Context c) {
        String[] str = new AppDatabase(c).queryPwdQuestionAndAnswer();
        if (!TextUtils.isEmpty(str[1])) {
            str[1] = Untils.jieMi(str[1], key);
        }
        return str;
    }

    public static boolean checkPassword(Context c, String newPwd) {
        if (!TextUtils.isEmpty(newPwd) && Untils.jiaMi(newPwd, key).equals(getPassword(c))) {
            return true;
        }
        return false;
    }

    public static boolean checkPassword(Context c, String newPwd, boolean isjiaMiJudge) {
        if (TextUtils.isEmpty(newPwd)) {
            return false;
        }
        if (isjiaMiJudge) {
            newPwd = Untils.jiaMi(newPwd, key);
        }
        if (newPwd.equals(getPassword(c))) {
            return true;
        }
        return false;
    }

    public static boolean checkPasswordAnswer(Context c, String newAnswer) {
        return !TextUtils.isEmpty(newAnswer) && Untils.jiaMi(newAnswer, key).equals(queryPwdQuestionAndAnswer(c)[1]);
    }

    public static void insertPwdQuestionAndAnswer(Context c, String pwd, String question, String answer) {
        if (!TextUtils.isEmpty(pwd)) {
            pwd = Untils.jiaMi(pwd, key);
        }
        if (!TextUtils.isEmpty(answer)) {
            answer = Untils.jiaMi(answer, key);
        }
        new AppDatabase(c).insertPwdQuestionAndAnswer(pwd, question, answer);
    }

    public static void judgeUpdateAppLockPatch(Context context) {
        if (AppUtil.isAppExistence(context, Const.PACKAGENAME_APP_LOCK) && AppDownloadActivity.mustUpdateAppLock(context)) {
            SharedPreferences df = PreferenceManager.getDefaultSharedPreferences(context);
            if (!WflUtils.isInTheSameDay(df.getLong("note_update_app_lock_patch", 0), System.currentTimeMillis())) {
                context.startActivity(new Intent(context, AppLockMustUpdateDialogActivity.class));
                df.edit().putLong("note_update_app_lock_patch", System.currentTimeMillis()).commit();
            }
        }
    }

    public static void judgeUpdateAppLockPatchAtBackgroud(Context context) {
        if (WflUtils.isRoot() && AppUtil.isAppExistence(context, Const.PACKAGENAME_APP_LOCK) && AppDownloadActivity.mustUpdateAppLock(context)) {
            AppDownloadActivity.copyAssetsFilesInstallAtBackgroud(AppDownloadActivity.APP_LOCK_FILE_NAME, context, Const.PACKAGENAME_APP_LOCK);
        }
    }
}
