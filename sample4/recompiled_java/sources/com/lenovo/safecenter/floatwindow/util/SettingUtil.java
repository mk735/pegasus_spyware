package com.lenovo.safecenter.floatwindow.util;

import QQPIM.EModelID;
import QQPIM.ENotifyID;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Vibrator;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.lenovo.safecenter.floatwindow.view.FloatWindow;
import com.lenovo.safecenter.floatwindow.view.FloatwindowCache;
import java.util.Iterator;
import java.util.List;

public class SettingUtil {
    public static final String AIRPLANE = "airplane";
    public static final String AUTOROTATE = "autorotate";
    public static final String BLUETOOTH = "bluetooth";
    public static final String BRIGHTNESS = "brightness";
    public static final String CHILD_MODE = "child_mode";
    public static final String DATA = "data";
    public static final String GUEST_MODE = "guest_mode";
    public static final String RINGTONE = "ringtone";
    public static final String TIMEOUT = "timeout";
    public static final String TOUCH_VIBRATOR = "vibrator";
    public static final String VIBRATE = "vibrate";
    public static final String WIFI = "wifi";
    private static String d = null;
    public static boolean isMultiSim;
    private Context a;
    private TelephonyManager b;
    private ConnectivityManager c;
    private SharedPreferences e;
    private AudioManager f;
    private Vibrator g;

    public SettingUtil(Context context) {
        this.a = context;
        if (this.c == null) {
            this.c = (ConnectivityManager) context.getSystemService("connectivity");
        }
        if (this.b == null) {
            this.b = (TelephonyManager) context.getSystemService("phone");
        }
        if (this.f == null) {
            this.f = (AudioManager) context.getSystemService("audio");
        }
        if (this.g == null) {
            this.g = (Vibrator) context.getSystemService(TOUCH_VIBRATOR);
        }
    }

    public int getStatus(String param) {
        int brightness;
        int bluetooth_on;
        int timeout;
        if (param.equals(TIMEOUT)) {
            int timeout2 = Settings.System.getInt(this.a.getContentResolver(), "screen_off_timeout", 0);
            if (timeout2 == -1) {
                timeout = 4;
            } else if (timeout2 <= 30000) {
                timeout = 1;
            } else if (timeout2 <= 60000) {
                timeout = 2;
            } else if (timeout2 <= 120000) {
                timeout = 3;
            } else {
                timeout = 4;
            }
            return timeout;
        } else if (param.equals(WIFI)) {
            return ((WifiManager) this.a.getSystemService(WIFI)).isWifiEnabled() ? 1 : 0;
        } else {
            if (param.equals(CHILD_MODE)) {
                return Settings.System.getInt(this.a.getContentResolver(), "child_mode_on", 0);
            }
            if (param.equals(GUEST_MODE)) {
                return Settings.System.getInt(this.a.getContentResolver(), "guest_mode_on", 0);
            }
            if (param.equals(BLUETOOTH)) {
                try {
                    bluetooth_on = BluetoothAdapter.getDefaultAdapter().isEnabled() ? 1 : 0;
                } catch (Exception e2) {
                    bluetooth_on = Settings.System.getInt(this.a.getContentResolver(), "bluetooth_on", 0);
                }
                return bluetooth_on;
            } else if (param.equals(TOUCH_VIBRATOR)) {
                return Settings.System.getInt(this.a.getContentResolver(), "haptic_feedback_enabled", 0);
            } else {
                if (param.equals(AUTOROTATE)) {
                    return Settings.System.getInt(this.a.getContentResolver(), "accelerometer_rotation", 0);
                }
                if (param.equals(BRIGHTNESS)) {
                    int brightness2 = Settings.System.getInt(this.a.getContentResolver(), "screen_brightness", 0);
                    if (Settings.System.getInt(this.a.getContentResolver(), "screen_brightness_mode", 0) == 1) {
                        brightness = 5;
                    } else if (brightness2 < 80) {
                        brightness = 1;
                    } else if (brightness2 < 140) {
                        brightness = 2;
                    } else if (brightness2 < 200) {
                        brightness = 3;
                    } else {
                        brightness = 4;
                    }
                    return brightness;
                } else if (param.equals(AIRPLANE)) {
                    return Settings.System.getInt(this.a.getContentResolver(), "airplane_mode_on", 0);
                } else {
                    if (param.equals(DATA)) {
                        if (!getSimState() || (!"Lenovo S880".equals(Build.MODEL) && !"Lenovo A60+".equals(Build.MODEL) && !"Lenovo A750".equals(Build.MODEL))) {
                            return (!getSimState() || !getMobileData()) ? 0 : 1;
                        }
                        NetworkInfo ni = ((ConnectivityManager) this.a.getSystemService("connectivity")).getActiveNetworkInfo();
                        if (ni == null || !"CONNECTED".equals(ni.getState().name())) {
                            return 0;
                        }
                        return 1;
                    } else if (param.equals(RINGTONE)) {
                        return this.f.getRingerMode() == 2 ? 1 : 0;
                    } else {
                        if (!param.equals(VIBRATE) || this.f.getVibrateSetting(0) != 1 || this.f.getRingerMode() == 0) {
                            return 0;
                        }
                        return 1;
                    }
                }
            }
        }
    }

    public boolean getSimState() {
        if (Settings.System.getInt(this.a.getContentResolver(), "airplane_mode_on", 0) == 1) {
            return false;
        }
        if (!isMultiSim) {
            return this.b.getSimState() == 5;
        }
        MultiSIMUtils simUtils = new MultiSIMUtils(this.a);
        return simUtils.getSimState(0) == 5 || simUtils.getSimState(1) == 5;
    }

    public boolean isMultiSim() {
        if (d != null) {
            return isMultiSim;
        }
        d = "true";
        try {
            Class clazz = Class.forName("android.provider.MultiSIMUtils");
            if (((Integer) clazz.getMethod("getPhoneCount", null).invoke(clazz.getMethod("getDefault", Context.class).invoke(null, this.a), null)).intValue() > 1) {
                isMultiSim = true;
            }
        } catch (ClassNotFoundException e2) {
            isMultiSim = false;
        } catch (Exception e3) {
            isMultiSim = false;
        }
        return isMultiSim;
    }

    public Object invokeMethod(String methodName, Object[] arg) throws Exception {
        Class ownerClass = this.c.getClass();
        Class[] argsClass = null;
        if (arg != null) {
            argsClass = new Class[]{arg.getClass()};
        }
        return ownerClass.getMethod(methodName, argsClass).invoke(this.c, arg);
    }

    public boolean getMobileData() {
        try {
            return ((Boolean) invokeMethod("getMobileDataEnabled", null)).booleanValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void setStatus(String param, int value) {
        int value2;
        if (param.equals(AIRPLANE)) {
            if (value != getStatus(AIRPLANE)) {
                Settings.System.putInt(this.a.getContentResolver(), "airplane_mode_on", value);
                Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
                intent.putExtra("state", value == 1);
                this.a.sendBroadcast(intent);
            }
        } else if (param.equals(WIFI)) {
            WifiManager wifiManager = (WifiManager) this.a.getSystemService(WIFI);
            if (wifiManager != null) {
                wifiManager.setWifiEnabled(value != 0);
            }
        } else if (param.equals(GUEST_MODE)) {
            FloatWindow.instanceFloatWindow.delFloatWindow();
            Intent it = new Intent("com.lenovo.safecenter.view.DialogActivity");
            if (value == 0) {
                it.putExtra("style", 5);
            } else {
                it.putExtra("style", 4);
            }
            it.setFlags(268435456);
            this.a.startActivity(it);
        } else if (param.equals(CHILD_MODE)) {
            FloatWindow.instanceFloatWindow.delFloatWindow();
            Intent childrenActivity = new Intent("com.lenovo.safecenter.view.DialogActivity");
            if (value == 1) {
                childrenActivity.putExtra("style", 1);
            } else {
                childrenActivity.putExtra("style", 2);
            }
            childrenActivity.setFlags(268435456);
            this.a.startActivity(childrenActivity);
        } else if (param.equals(BLUETOOTH)) {
            if (value != getStatus(BLUETOOTH)) {
                try {
                    BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
                    if (bluetoothAdapter == null) {
                        return;
                    }
                    if (value == 0) {
                        bluetoothAdapter.disable();
                    } else {
                        bluetoothAdapter.enable();
                    }
                } catch (Exception e2) {
                }
            }
        } else if (param.equals(TOUCH_VIBRATOR)) {
            if (value != getStatus(TOUCH_VIBRATOR)) {
                Settings.System.putInt(this.a.getContentResolver(), "haptic_feedback_enabled", value);
            }
        } else if (param.equals(AUTOROTATE)) {
            if (value != getStatus(AUTOROTATE)) {
                Settings.System.putInt(this.a.getContentResolver(), "accelerometer_rotation", value);
            }
        } else if (param.equals(BRIGHTNESS)) {
            boolean auto = false;
            switch (value) {
                case 1:
                    value = 64;
                    break;
                case 2:
                    value = 127;
                    break;
                case 3:
                    value = 190;
                    break;
                case 4:
                    value = 255;
                    break;
                case 5:
                    auto = true;
                    break;
                default:
                    value = 60;
                    break;
            }
            Intent intent2 = new Intent();
            intent2.setClass(this.a, FloatwindowCache.class);
            intent2.setFlags(ENotifyID._ENID_END);
            intent2.setFlags(268435456);
            Bundle mBundle = new Bundle();
            mBundle.putBoolean("autoFlag", auto);
            mBundle.putInt("value", value);
            intent2.putExtras(mBundle);
            this.a.startActivity(intent2);
        } else if (param.equals(TIMEOUT)) {
            switch (value) {
                case 1:
                    value2 = EModelID._EMID_QQPim_Begin;
                    break;
                case 2:
                    value2 = 60000;
                    break;
                case 3:
                    value2 = 120000;
                    break;
                case 4:
                    value2 = 600000;
                    break;
                default:
                    value2 = EModelID._EMID_QQPim_Begin;
                    break;
            }
            Settings.System.putInt(this.a.getContentResolver(), "screen_off_timeout", value2);
        } else if (param.equals(DATA)) {
            if (isMultiSim()) {
                MultiSIMUtils utils = new MultiSIMUtils(this.a);
                if (!"qualcomm".equals(utils.getPlatform())) {
                    Intent intent3 = new Intent("android.intent.action.DATA_DEFAULT_SIM");
                    if (value == 0) {
                        intent3.putExtra("simid", Long.parseLong("0"));
                        this.a.sendBroadcast(intent3);
                        return;
                    }
                    long dataSimId = getDefaultDataSimId();
                    if (dataSimId != -1) {
                        intent3.putExtra("simid", dataSimId);
                        this.a.sendBroadcast(intent3);
                    }
                } else if (value == 0) {
                    setMobileData(false);
                } else {
                    String dataSubscriberId = utils.getDataSubscriberId();
                    if (dataSubscriberId == null) {
                        return;
                    }
                    if (dataSubscriberId.equals(utils.getSubscriberId(0)) && utils.getSimState(0) == 5) {
                        setMobileData(true);
                    } else if (dataSubscriberId.equals(utils.getSubscriberId(1)) && utils.getSimState(1) == 5) {
                        setMobileData(true);
                    }
                }
            } else {
                setMobileData(value == 1);
            }
        } else if (param.equals(RINGTONE)) {
            if (value == getStatus(RINGTONE)) {
                return;
            }
            if (value == 1) {
                this.f.setRingerMode(2);
            } else if (getStatus(VIBRATE) == 1) {
                this.f.setRingerMode(1);
            } else {
                this.f.setRingerMode(0);
            }
        } else if (param.equals(VIBRATE) && value != getStatus(VIBRATE)) {
            if (value == 1) {
                this.f.setVibrateSetting(0, 1);
                if (getStatus(RINGTONE) == 1) {
                    this.f.setRingerMode(2);
                } else {
                    this.f.setRingerMode(1);
                }
                this.g.vibrate(new long[]{500, 500, 1000}, -1);
                return;
            }
            this.f.setVibrateSetting(0, 0);
            if (getStatus(RINGTONE) == 1) {
                this.f.setRingerMode(2);
            } else {
                this.f.setRingerMode(0);
            }
        }
    }

    public Object invokeBooleanArgMethod(String methodName, boolean value) throws Exception {
        return this.c.getClass().getMethod(methodName, Boolean.TYPE).invoke(this.c, Boolean.valueOf(value));
    }

    public void setMobileData(boolean bool) {
        try {
            invokeBooleanArgMethod("setMobileDataEnabled", bool);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public long getDefaultDataSimId() {
        this.e = this.a.getSharedPreferences(Constants.DATASUBSCRIBERID, 32768);
        return this.e.getLong(Constants.DATASUBSCRIBERID, -1);
    }

    public long getDataSimId() {
        try {
            Class clazz = Class.forName("android.provider.Telephony$SIMInfo");
            List simList = (List) clazz.getMethod("getInsertedSIMList", Context.class).invoke(null, this.a);
            if (simList.size() == 0) {
                return -1;
            }
            if (simList.size() == 1) {
                Iterator iterator = simList.iterator();
                if (iterator.hasNext()) {
                    return ((Long) clazz.getField("mSimId").get(iterator.next())).longValue();
                }
            } else {
                int simSlot = -1;
                MultiSIMUtils simUtils = new MultiSIMUtils(this.a);
                String dataSubscriberId = simUtils.getDataSubscriberId();
                if (dataSubscriberId != null) {
                    String subscriberId0 = simUtils.getSubscriberId(0);
                    String subscriberId1 = simUtils.getSubscriberId(1);
                    if (dataSubscriberId.endsWith(subscriberId0)) {
                        simSlot = 0;
                    } else if (dataSubscriberId.endsWith(subscriberId1)) {
                        simSlot = 1;
                    }
                } else if (simUtils.getSimState(0) == 5) {
                    simSlot = 0;
                } else if (simUtils.getSimState(1) == 5) {
                    simSlot = 1;
                }
                for (Object next : simList) {
                    next.getClass();
                    if (((Integer) clazz.getField("mSlot").get(next)).intValue() == simSlot) {
                        return ((Long) clazz.getField("mSimId").get(next)).longValue();
                    }
                }
            }
            return -1;
        } catch (Exception e2) {
        }
    }

    public boolean getQualcommSimState() {
        MultiSIMUtils utils = new MultiSIMUtils(this.a);
        String dataSubscriberId = utils.getDataSubscriberId();
        if (dataSubscriberId != null) {
            if (dataSubscriberId.equals(utils.getSubscriberId(0)) && utils.getSimState(0) == 5) {
                return true;
            }
            if (dataSubscriberId.equals(utils.getSubscriberId(1)) && utils.getSimState(1) == 5) {
                return true;
            }
        }
        return false;
    }
}
