package com.lenovo.safecenter.net.support;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.provider.MultiSIMUtils;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.TrafficStatistics;
import com.lenovo.safecenter.net.cache.NetCache;
import com.lenovo.safecenter.net.correct.TrafficCorrectSetting;
import com.lenovo.safecenter.net.doublemode.TrafficStatisticsDoubleMode;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.WflUtils;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.network.CorrectionDataInfo;
import com.tencent.tmsecure.module.network.TrafficCorrectionConfig;
import com.tencent.tmsecure.module.network.TrafficCorrectionManager;
import java.util.ArrayList;

public class Utils {
    public static final String BOOLEAN_SET_LOCATION = "BOOLEAN_SET_LOCATION";
    public static final String BRAND = "SIM_CARD_BRAND";
    public static final String BRAND_DESC = "SIM_CARD_BRAND_DESC";
    public static final String BRAND_POSTION = "SIM_CARD_BRAND_POSTION";
    public static final String CARRY = "SIM_CARD_CARRY";
    public static final String CARRY_DESC = "SIM_CARD_CARRY_DESC";
    public static final String CARRY_POSTION = "SIM_CARD_CARRY_POSTION";
    public static final String CITY = "SIM_CARD_CITY";
    public static final String CITY_DESC = "SIM_CARD_CITY_DESC";
    public static final String CITY_POSTION = "SIM_CARD_CITY_POSTION";
    public static final String CONFIG_CHANGED = "config_changed";
    public static final String CONFIG_HAS_SETTED = "config_has_setted";
    public static final String CORRECT_TIME = "CORRECT_TIME";
    public static final String HAS_CORRECT_SUCESSED = "has_correct_sucessed";
    public static final String PROVINCE = "SIM_CARD_PROVINCE";
    public static final String PROVINCE_DESC = "SIM_CARD_PROVINCE_DESC";
    public static final String PROVINCE_POSTION = "SIM_CARD_PROVINCE_POSTION";
    public static final String SIM1_PROPERTIES = "SIM1_properties_safecenter";
    public static final String SIM2_PROPERTIES = "SIM2_properties_safecenter";
    public static final String SMS_ADDRESS = "sms_address";
    public static final String SMS_MESSAGE = "sms_message";
    public static String flag = null;
    public static boolean isMultiSimEnabled = false;

    public static void setConfig2Preference(SIMDetailInfo info, int card, Context context) {
        if (card == 0) {
            SharedPreferences sp = context.getSharedPreferences(SIM1_PROPERTIES, 0);
            if (!sp.getString(PROVINCE, "").equals(info.provice) || !sp.getString(CITY, "").equals(info.city) || !sp.getString(CARRY, "").equals(info.operators) || !sp.getString(BRAND, "").equals(info.brand)) {
                SharedPreferences.Editor editor = sp.edit();
                editor.putString(PROVINCE, info.provice).commit();
                editor.putString(CITY, info.city).commit();
                editor.putString(CARRY, info.operators).commit();
                editor.putString(BRAND, info.brand).commit();
                editor.putInt(PROVINCE_POSTION, info.proviceSelected).commit();
                editor.putInt(CITY_POSTION, info.citySelected).commit();
                editor.putInt(CARRY_POSTION, info.operatorsSelected).commit();
                editor.putInt(BRAND_POSTION, info.brandSelected).commit();
                editor.putString(PROVINCE_DESC, info.proviceDesc).commit();
                editor.putString(CITY_DESC, info.cityDesc).commit();
                editor.putString(CARRY_DESC, info.operatorsDesc).commit();
                editor.putString(BRAND_DESC, info.brandDesc).commit();
                editor.putBoolean(BOOLEAN_SET_LOCATION, true).commit();
                editor.putBoolean(TrafficCorrectSetting.NEW_VERSION_INITPOSTION_KEY, false).commit();
                editor.putBoolean(CONFIG_HAS_SETTED, true).commit();
                Log.i(SecurityService.TAG, " sim1 config is changed");
                return;
            }
            Log.i(SecurityService.TAG, " sim1 config not changed");
            return;
        }
        SharedPreferences sp2 = context.getSharedPreferences(SIM2_PROPERTIES, 0);
        if (!sp2.getString(PROVINCE, "").equals(info.provice) || !sp2.getString(CITY, "").equals(info.city) || !sp2.getString(CARRY, "").equals(info.operators) || !sp2.getString(BRAND, "").equals(info.brand)) {
            SharedPreferences.Editor editor2 = sp2.edit();
            editor2.putString(PROVINCE, info.provice).commit();
            editor2.putString(CITY, info.city).commit();
            editor2.putString(CARRY, info.operators).commit();
            editor2.putString(BRAND, info.brand).commit();
            editor2.putInt(PROVINCE_POSTION, info.proviceSelected).commit();
            editor2.putInt(CITY_POSTION, info.citySelected).commit();
            editor2.putInt(CARRY_POSTION, info.operatorsSelected).commit();
            editor2.putInt(BRAND_POSTION, info.brandSelected).commit();
            editor2.putString(PROVINCE_DESC, info.proviceDesc).commit();
            editor2.putString(CITY_DESC, info.cityDesc).commit();
            editor2.putString(CARRY_DESC, info.operatorsDesc).commit();
            editor2.putString(BRAND_DESC, info.brandDesc).commit();
            editor2.putBoolean(BOOLEAN_SET_LOCATION, true).commit();
            editor2.putBoolean(TrafficCorrectSetting.NEW_VERSION_INITPOSTION_KEY, false).commit();
            editor2.putBoolean(CONFIG_HAS_SETTED, true).commit();
            Log.i(SecurityService.TAG, " sim2 config is changed");
            return;
        }
        Log.i(SecurityService.TAG, " sim2 config not changed");
    }

    public static boolean hasSetConfiged(int card, Context context) {
        SharedPreferences sp;
        if (card == 0) {
            sp = context.getSharedPreferences(SIM1_PROPERTIES, 0);
        } else {
            sp = context.getSharedPreferences(SIM2_PROPERTIES, 0);
        }
        if (sp.getBoolean(CONFIG_HAS_SETTED, false)) {
            return true;
        }
        if ("".equals(sp.getString(PROVINCE, ""))) {
            return false;
        }
        if ("".equals(sp.getString(CITY, ""))) {
            return false;
        }
        if ("".equals(sp.getString(CARRY, ""))) {
            return false;
        }
        return !"".equals(sp.getString(BRAND, ""));
    }

    public static int[] initPostion(int card, Context context) {
        int[] array = new int[4];
        int pos = 1;
        String op = getOperatorMode(context, card);
        if (op.equals("Mobile")) {
            pos = 0;
        } else if (op.equals("Unicom")) {
            pos = 1;
        } else if (op.equals("Telecom")) {
            pos = 2;
        }
        if (card == 0) {
            SharedPreferences sp = context.getSharedPreferences(SIM1_PROPERTIES, 1);
            array[0] = sp.getInt(PROVINCE_POSTION, 0);
            array[1] = sp.getInt(CITY_POSTION, 0);
            array[2] = sp.getInt(CARRY_POSTION, pos);
            array[3] = sp.getInt(BRAND_POSTION, 0);
        } else {
            SharedPreferences sp2 = context.getSharedPreferences(SIM2_PROPERTIES, 1);
            array[0] = sp2.getInt(PROVINCE_POSTION, 0);
            array[1] = sp2.getInt(CITY_POSTION, 0);
            array[2] = sp2.getInt(CARRY_POSTION, pos);
            array[3] = sp2.getInt(BRAND_POSTION, 0);
        }
        return array;
    }

    public static void setConfig(int card, Context context) {
        if (card == 0) {
            SharedPreferences sp = context.getSharedPreferences(SIM1_PROPERTIES, 1);
            SecurityService.config = new TrafficCorrectionConfig(sp.getString(PROVINCE, "10"), sp.getString(CITY, "10"), sp.getString(CARRY, "UNICOM"), sp.getString(BRAND, "70000"));
            return;
        }
        SharedPreferences sp2 = context.getSharedPreferences(SIM2_PROPERTIES, 1);
        SecurityService.config = new TrafficCorrectionConfig(sp2.getString(PROVINCE, "10"), sp2.getString(CITY, "10"), sp2.getString(CARRY, "UNICOM"), sp2.getString(BRAND, "70000"));
    }

    public static void setCorrectTime(int card, Context context) {
        if (card == 0) {
            context.getSharedPreferences(SIM1_PROPERTIES, 1).edit().putLong(CORRECT_TIME, System.currentTimeMillis());
        } else {
            context.getSharedPreferences(SIM2_PROPERTIES, 1).edit().putLong(CORRECT_TIME, System.currentTimeMillis());
        }
    }

    public static void setLastCorrectTime(Context context) {
        context.getSharedPreferences(SIM1_PROPERTIES, 1).edit().putLong("LAST_CORRECT_TIME", System.currentTimeMillis()).commit();
    }

    public static long getLastCorrectTime(Context context) {
        return context.getSharedPreferences(SIM1_PROPERTIES, 1).getLong("LAST_CORRECT_TIME", 0);
    }

    public static int[] getAllSimState(Context context) {
        if (MyMultiSIMUtils.isMultiSim(context)) {
            return new int[]{MultiSIMUtils.getDefault(context).getSimState(0), MultiSIMUtils.getDefault(context).getSimState(1)};
        }
        return new int[]{((TelephonyManager) context.getSystemService("phone")).getSimState()};
    }

    public static boolean checkSIMState(Context context, int cardPostion) {
        boolean state = true;
        int[] states = getAllSimState(context);
        if (MyMultiSIMUtils.isMultiSim(context)) {
            if (!(cardPostion != 0 || states[0] == 5 || states[0] == 2 || states[0] == 3)) {
                state = false;
            }
            if (cardPostion != 1 || states[1] == 5 || states[1] == 2 || states[1] == 3) {
                return state;
            }
            return false;
        } else if (states[0] == 5 || states[0] == 2 || states[0] == 3) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean isConnectInternet(Context context) {
        NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkInfo != null) {
            return networkInfo.isAvailable();
        }
        return false;
    }

    public static void showCorrectFailNotification(Context context, String title, String content, int id) {
        Notification notification = new Notification();
        notification.flags = 16;
        notification.when = System.currentTimeMillis();
        notification.defaults = 1;
        Intent intent = new Intent();
        intent.setAction("com.lenovo.safecenter.net.setting");
        notification.icon = R.drawable.net_traffic_warn_;
        notification.setLatestEventInfo(context, title, content, PendingIntent.getActivity(context, 0, intent, 0));
        ((NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION)).notify(id, notification);
    }

    public static void showCorrectSuccessNotification(Context context, String content) {
        String notiInfo;
        String format = context.getString(R.string.net_traffic_correct_sucess);
        if (TrafficStatsService.getTrafficMode(context) != 12) {
            notiInfo = String.format(format, "");
        } else if (NetCache.lastCorrectCard == 0) {
            notiInfo = String.format(format, context.getString(R.string.net_card1));
        } else {
            notiInfo = String.format(format, context.getString(R.string.net_card2));
        }
        NotificationManager manager = (NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION);
        Notification notification = new Notification();
        notification.flags = 16;
        notification.when = System.currentTimeMillis();
        notification.defaults = 1;
        Intent intent = new Intent();
        if (!MyMultiSIMUtils.isMultiSim(context) || TrafficStatsService.getTrafficMode(context) != 12) {
            intent.setClass(context, TrafficStatistics.class);
            intent.putExtra("key", "key");
        } else {
            intent.putExtra("key", "key");
            intent.setClass(context, TrafficStatisticsDoubleMode.class);
        }
        notification.icon = R.drawable.prisign_icon;
        notification.setLatestEventInfo(context, notiInfo, content, PendingIntent.getActivity(context, 0, intent, 0));
        manager.notify(R.id.net_traffic_correct, notification);
    }

    public static void setCanCorrectFlag(Context context, boolean canCorrect) {
        context.getSharedPreferences(SIM1_PROPERTIES, 1).edit().putBoolean("can_correct", canCorrect).commit();
    }

    public static boolean getCanCorrectFlag(Context context) {
        return context.getSharedPreferences(SIM1_PROPERTIES, 1).getBoolean("can_correct", true);
    }

    public static boolean isNonMarketAppsAllowed(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), "install_non_market_apps", 0) > 0;
    }

    public static void sendCanCorrectMessage(Context context, boolean canCorrect) {
        Intent intent = new Intent();
        intent.putExtra("can_correct", canCorrect);
        intent.setAction("com.lenovo.safecenter.plugin.cancorrect");
        context.sendBroadcast(intent);
    }

    public static void setCorrectPostion(Context context, int pos) {
        context.getSharedPreferences(SIM1_PROPERTIES, 1).edit().putInt("correct_postion", pos).commit();
    }

    public static int getCorrectPostion(Context context) {
        return context.getSharedPreferences(SIM1_PROPERTIES, 1).getInt("correct_postion", 0);
    }

    public static void setIsSet(Context context, boolean is) {
        context.getSharedPreferences(SIM1_PROPERTIES, 1).edit().putBoolean("is_set", true).commit();
    }

    public static boolean getIsSet(Context context) {
        return context.getSharedPreferences(SIM1_PROPERTIES, 1).getBoolean("is_set", false);
    }

    public static String getOperatorMode(Context context, int card) {
        String imsi;
        String operator = "";
        if (MyMultiSIMUtils.isMultiSim(context)) {
            imsi = MultiSIMUtils.getDefault(context).getSubscriberId(card);
            Log.i("pluginutils", "touch double card");
        } else {
            imsi = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        }
        if (imsi == null) {
            PhoneSimInfo info = TrafficStatsService.getImsiInfo(context);
            if (card == 0) {
                imsi = info.sim1IMSI;
            } else {
                imsi = info.sim2IMSI;
            }
        }
        if (imsi.startsWith("46000") || imsi.startsWith("46002") || imsi.startsWith("46007")) {
            operator = "Mobile";
        } else if (imsi.startsWith("46001")) {
            operator = "Unicom";
        } else if (imsi.startsWith("46003")) {
            operator = "Telecom";
        }
        Log.i("pluginutils", "oper = " + operator + ",imsi = " + imsi + ",card = " + card);
        return operator;
    }

    public static void initTrafficCorrectConfig(final Context context) {
        new Thread() {
            /* class com.lenovo.safecenter.net.support.Utils.AnonymousClass1 */

            public final void run() {
                if (WflUtils.isNetworkAvailable(context)) {
                    SharedPreferences sp = context.getSharedPreferences(Utils.SIM1_PROPERTIES, 0);
                    if (Utils.hasSetConfiged(0, context) && "".equals(sp.getString(Utils.SMS_MESSAGE, ""))) {
                        TrafficCorrectionConfig config = new TrafficCorrectionConfig(sp.getString(Utils.PROVINCE, ""), sp.getString(Utils.CITY, ""), sp.getString(Utils.CARRY, ""), sp.getString(Utils.BRAND, ""));
                        TrafficCorrectionManager mTcMgr = (TrafficCorrectionManager) ManagerCreator.getManager(TrafficCorrectionManager.class);
                        mTcMgr.setConfig(config);
                        ArrayList<CorrectionDataInfo> infoList = new ArrayList<>();
                        mTcMgr.startCorrection(infoList);
                        CorrectionDataInfo di = infoList.get(0);
                        Log.i("sstest", "number =" + di.getAddress() + ",msg =" + di.getMessage());
                        sp.edit().putString(Utils.SMS_MESSAGE, di.getMessage()).commit();
                        sp.edit().putString(Utils.SMS_ADDRESS, di.getAddress()).commit();
                    }
                    SharedPreferences sp2 = context.getSharedPreferences(Utils.SIM1_PROPERTIES, 0);
                    if (Utils.hasSetConfiged(1, context) && "".equals(sp2.getString(Utils.SMS_MESSAGE, ""))) {
                        TrafficCorrectionConfig config2 = new TrafficCorrectionConfig(sp2.getString(Utils.PROVINCE, ""), sp2.getString(Utils.CITY, ""), sp2.getString(Utils.CARRY, ""), sp2.getString(Utils.BRAND, ""));
                        TrafficCorrectionManager mTcMgr2 = (TrafficCorrectionManager) ManagerCreator.getManager(TrafficCorrectionManager.class);
                        mTcMgr2.setConfig(config2);
                        ArrayList<CorrectionDataInfo> infoList2 = new ArrayList<>();
                        mTcMgr2.startCorrection(infoList2);
                        CorrectionDataInfo di2 = infoList2.get(0);
                        Log.i("sstest", "number =" + di2.getAddress() + ",msg =" + di2.getMessage());
                        sp2.edit().putString(Utils.SMS_MESSAGE, di2.getMessage()).commit();
                        sp2.edit().putString(Utils.SMS_ADDRESS, di2.getAddress()).commit();
                    }
                }
            }
        }.start();
    }
}
