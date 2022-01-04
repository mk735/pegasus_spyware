package tms;

import android.content.Context;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* access modifiers changed from: package-private */
public final class et implements IBatteryInfoHelper {
    private Class<?> a;
    private Object b;
    private Method c;
    private Context d;

    et(Context context) {
        try {
            this.d = context;
            this.a = Class.forName("com.android.internal.os.PowerProfile");
            this.c = this.a.getDeclaredMethod("getAveragePower", String.class);
            this.b = this.a.getConstructor(Context.class).newInstance(context);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
        } catch (InstantiationException e4) {
            e4.printStackTrace();
        } catch (IllegalAccessException e5) {
            e5.printStackTrace();
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    private double a() {
        Exception exc;
        double d2;
        InvocationTargetException invocationTargetException;
        double d3;
        IllegalAccessException illegalAccessException;
        double d4;
        IllegalArgumentException illegalArgumentException;
        double d5;
        double d6;
        try {
            NetSettingManager netSettingManager = (NetSettingManager) ManagerCreator.getManager(NetSettingManager.class);
            if (netSettingManager.isWifiEnabled()) {
                d6 = 0.0d + (((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_WIFI_ACTIVE"))).doubleValue() / 4.0d);
            } else {
                d6 = 0.0d;
            }
            try {
                if (!netSettingManager.isBluetoothEnabled()) {
                    return d6;
                }
                return d6 + ((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_BLUETOOTH_ACTIVE"))).doubleValue();
            } catch (IllegalArgumentException e) {
                d5 = d6;
                illegalArgumentException = e;
                illegalArgumentException.printStackTrace();
                return d5;
            } catch (IllegalAccessException e2) {
                d4 = d6;
                illegalAccessException = e2;
                illegalAccessException.printStackTrace();
                return d4;
            } catch (InvocationTargetException e3) {
                d3 = d6;
                invocationTargetException = e3;
                invocationTargetException.printStackTrace();
                return d3;
            } catch (Exception e4) {
                d2 = d6;
                exc = e4;
                exc.printStackTrace();
                return d2;
            }
        } catch (IllegalArgumentException e5) {
            d5 = 0.0d;
            illegalArgumentException = e5;
            illegalArgumentException.printStackTrace();
            return d5;
        } catch (IllegalAccessException e6) {
            d4 = 0.0d;
            illegalAccessException = e6;
            illegalAccessException.printStackTrace();
            return d4;
        } catch (InvocationTargetException e7) {
            d3 = 0.0d;
            invocationTargetException = e7;
            invocationTargetException.printStackTrace();
            return d3;
        } catch (Exception e8) {
            d2 = 0.0d;
            exc = e8;
            exc.printStackTrace();
            return d2;
        }
    }

    @Override // com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper
    public final double getCallRemainHours() {
        try {
            return ((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_BATTERY_CAPACITY"))).doubleValue() / (((((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_NONE"))).doubleValue() + ((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_RADIO_ACTIVE"))).doubleValue()) + ((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_CPU_ACTIVE"))).doubleValue()) + a());
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return 0.0d;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return 0.0d;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return 0.0d;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0.0d;
        }
    }

    @Override // com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper
    public final double getContinueRemainHours() {
        try {
            return ((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_BATTERY_CAPACITY"))).doubleValue() / (((((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_NONE"))).doubleValue() + (((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_CPU_ACTIVE"))).doubleValue() / 3.0d)) + (((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_SCREEN_FULL"))).doubleValue() * ((double) n.b(this.d.getContentResolver())))) + a());
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return 0.0d;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return 0.0d;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return 0.0d;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0.0d;
        }
    }

    @Override // com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper
    public final double getMaxPowerUseHours() {
        double d2 = 0.0d;
        try {
            d2 = ((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_NONE"))).doubleValue() + (((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_CPU_ACTIVE"))).doubleValue() / 3.0d) + (((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_SCREEN_FULL"))).doubleValue() * ((double) n.b(this.d.getContentResolver()))) + (((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_WIFI_ACTIVE"))).doubleValue() / 4.0d) + ((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_BLUETOOTH_ACTIVE"))).doubleValue() + ((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_GPS_ON"))).doubleValue();
            return ((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_BATTERY_CAPACITY"))).doubleValue() / d2;
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return d2;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return d2;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return d2;
        } catch (Exception e4) {
            e4.printStackTrace();
            return d2;
        }
    }

    @Override // com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper
    public final double getStayRemainHours() {
        try {
            return ((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_BATTERY_CAPACITY"))).doubleValue() / (((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_NONE"))).doubleValue() + (((Double) this.c.invoke(this.b, ah.a("com.android.internal.os.PowerProfile", "POWER_CPU_ACTIVE"))).doubleValue() / 3.0d));
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return 0.0d;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return 0.0d;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return 0.0d;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0.0d;
        }
    }
}
