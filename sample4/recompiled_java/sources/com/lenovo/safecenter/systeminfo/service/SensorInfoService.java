package com.lenovo.safecenter.systeminfo.service;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.PowerManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;
import java.util.List;

public class SensorInfoService {
    private static final String a = SensorInfoService.class.getSimpleName();
    private static SensorInfoService b = null;
    private SensorManager c;

    private SensorInfoService() {
    }

    public static SensorInfoService getInstance() {
        if (b == null) {
            synchronized (SensorInfoService.class) {
                b = new SensorInfoService();
            }
        }
        return b;
    }

    public boolean suppert(int sensorType) {
        if (this.c == null) {
            this.c = (SensorManager) Const.mContext.getSystemService("sensor");
        }
        List<Sensor> sensors = this.c.getSensorList(sensorType);
        return sensors != null && sensors.size() > 0;
    }

    public boolean suppert(String sensorType) {
        return Const.mContext.getPackageManager().hasSystemFeature(sensorType);
    }

    public String sensorInfo() {
        PowerManager.WakeLock lock = ((PowerManager) Const.mContext.getSystemService("power")).newWakeLock(536870922, a);
        lock.acquire();
        StringBuffer buffer = new StringBuffer();
        buffer.append(Const.mContext.getString(R.string.senor_ori)).append(suppert(3) ? "支持" : "不支持").append('\n');
        buffer.append(Const.mContext.getString(R.string.senor_acc)).append(suppert(1) ? "支持" : "不支持").append('\n');
        buffer.append(Const.mContext.getString(R.string.senor_lig)).append(suppert(5) ? "支持" : "不支持").append('\n');
        buffer.append(Const.mContext.getString(R.string.senor_fil)).append(suppert(2) ? "支持" : "不支持").append('\n');
        buffer.append(Const.mContext.getString(R.string.senor_pro)).append(suppert(8) ? "支持" : "不支持").append('\n');
        buffer.append(Const.mContext.getString(R.string.senor_gyr)).append(suppert(4) ? "支持" : "不支持").append('\n');
        buffer.append(Const.mContext.getString(R.string.senor_tem)).append(suppert(7) ? "支持" : "不支持");
        lock.release();
        return buffer.toString();
    }
}
