package com.lenovo.safecenter.utils.updateLab;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.lenovo.safecenter.R;

public class AutoUpdateLabManager {
    public static final String KEY_AUTO_UPDATE_MODE = "auto_update_mode";
    public static final String KEY_IS_AUTO_UPDATE = "is_auto_update";
    public static final String KEY_NEW_AUTO_UPDATE_MODE = "new_auto_update_mode";
    public static final String KEY_NEW_IS_AUTO_UPDATE = "new_is_auto_update";

    public static String[] getUpdateModeStringArray(Context context) {
        return new String[]{context.getString(R.string.auto_update_mode1), context.getString(R.string.auto_update_mode2), context.getString(R.string.auto_update_mode3), context.getString(R.string.auto_update_mode4)};
    }

    public static void initAutoUpdateData(Context context) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
        if (sp.contains(KEY_AUTO_UPDATE_MODE)) {
            setAutoUpdateMode(sp.getInt(KEY_AUTO_UPDATE_MODE, 0), context);
            sp.edit().remove(KEY_AUTO_UPDATE_MODE).commit();
        }
        if (sp.contains(KEY_IS_AUTO_UPDATE)) {
            boolean oldisAuto = sp.getBoolean(KEY_IS_AUTO_UPDATE, false);
            setIsAutoUpdate(oldisAuto, context);
            if (!oldisAuto) {
                setAutoUpdateMode(0, context);
            }
            sp.edit().remove(KEY_IS_AUTO_UPDATE).commit();
        }
    }

    public static String getSelectedUpdateModeString(Context context) {
        String[] autoUpdateModeOption = getUpdateModeStringArray(context);
        int mode = getAutoUpdateMode(context);
        if (mode < autoUpdateModeOption.length) {
            return autoUpdateModeOption[mode];
        }
        setAutoUpdateMode(0, context);
        setIsAutoUpdate(true, context);
        return autoUpdateModeOption[0];
    }

    public static boolean isAutoUpdate(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(KEY_NEW_IS_AUTO_UPDATE, true);
    }

    public static void setIsAutoUpdate(boolean is_auto_update, Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(KEY_NEW_IS_AUTO_UPDATE, is_auto_update).commit();
    }

    public static int getAutoUpdateMode(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt(KEY_NEW_AUTO_UPDATE_MODE, 0);
    }

    public static void setAutoUpdateMode(int auto_update_mode, Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(KEY_NEW_AUTO_UPDATE_MODE, auto_update_mode).commit();
    }
}
