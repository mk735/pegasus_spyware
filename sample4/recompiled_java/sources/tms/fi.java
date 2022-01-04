package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import com.lenovo.lps.sus.c.c;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.IpDialHeaders;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumber;
import com.tencent.tmsecure.module.phoneservice.IpDialProvinceCity;
import com.tencent.tmsecure.module.phoneservice.LocationManager;
import com.tencent.tmsecure.utils.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public final class fi extends BaseManager {
    af a;
    IpDialManagerSetting b;
    LocationManager c;

    private IpDialManagerSetting b() {
        IpDialManagerSetting ipDialManagerSetting = new IpDialManagerSetting();
        String a2 = this.a.a("ip_dial_setting", (String) null);
        if (a2 != null) {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(r.a(a2));
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                ipDialManagerSetting.copyFrom((IpDialManagerSetting) objectInputStream.readObject());
                objectInputStream.close();
                byteArrayInputStream.close();
            } catch (Exception e) {
                Log.i("IpDialManagerImpl", e.getMessage());
            }
        }
        b("call [getIpDialSettingFromDB]");
        return ipDialManagerSetting;
    }

    private void b(String str) {
        Log.i("IpDialManagerImpl", str);
        Log.i("IpDialManagerImpl", "SETTING Dial Mode: " + this.b.getIpDialMode());
        Log.i("IpDialManagerImpl", "SETTING Ip Head: " + this.b.getIpHeader());
        Log.i("IpDialManagerImpl", "SETTING Local Phone:" + this.b.getLocalPhoneLocation().getProvince() + this.b.getLocalPhoneLocation().getCity());
        Log.i("IpDialManagerImpl", "SETTING Excluded Area: " + this.b.getExcludedAreaList().listToString());
        Log.i("IpDialManagerImpl", "SETTING Excluded Phone: " + this.b.getExcludedPhoneNumberList().listToString());
    }

    private String c(String str) {
        String ipHeader = this.b.getIpHeader();
        return (str == null || ipHeader == null || str.startsWith(ipHeader)) ? str : ipHeader + str;
    }

    public final IpDialManagerSetting a() {
        return new IpDialManagerSetting(this.b);
    }

    public final String a(String str) {
        int i = 5;
        if (str != null && str.length() > 5) {
            if (this.b.b != null) {
                i = this.b.b.length();
            }
            String substring = str.substring(0, i);
            if (IpDialHeaders.IP_HEADER_17911.equals(substring) ? true : IpDialHeaders.IP_HEADER_17951.equals(substring) ? true : IpDialHeaders.IP_HEADER_10193.equals(substring) ? true : IpDialHeaders.IP_HEADER_17910.equals(substring) ? true : IpDialHeaders.IP_HEADER_12520.equals(substring) ? true : IpDialHeaders.IP_HEADER_12583.equals(substring) ? true : IpDialHeaders.IP_HEADER_96688.equals(substring) ? true : IpDialHeaders.IP_HEADER_17901.equals(substring) ? true : IpDialHeaders.IP_HEADER_12593.equals(substring) ? true : IpDialHeaders.IP_HEADER_17909.equals(substring) ? true : this.b.b != null && this.b.b.equals(substring)) {
                Log.i("IpDialManagerImpl", str + "has IP header, remove the header(" + str.substring(0, i) + ")");
                str = str.substring(i);
            } else {
                Log.i("IpDialManagerImpl", str + "don't has IP header, go to next step!");
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        this.c.getLocation(stringBuffer, stringBuffer2, new StringBuffer(), str);
        String[] split = stringBuffer2.toString().split(" ");
        IpDialProvinceCity ipDialProvinceCity = new IpDialProvinceCity();
        if (split.length > 1) {
            ipDialProvinceCity.setProvince(split[0].trim());
            ipDialProvinceCity.setCity(split[1].trim());
        } else {
            ipDialProvinceCity.setProvince(split[0].trim());
        }
        boolean existed = this.b.getExcludedAreaList().existed(ipDialProvinceCity);
        Log.i("IpDialManagerImpl", str + " is {" + stringBuffer2.toString() + c.Q);
        Log.i("IpDialManagerImpl", str + (existed ? " existed" : " not existed") + " in EXCLUDED-AREA list!");
        if (!existed) {
            boolean existed2 = this.b.getExcludedPhoneNumberList().existed(new IpDialPhoneNumber("", str));
            Log.i("IpDialManagerImpl", str + (existed2 ? " existed" : " not existed") + " in EXCLUDED-PHONE list!");
            if (!existed2) {
                b("call [getDialPhoneNumber]");
                switch (this.b.getIpDialMode()) {
                    case 0:
                        Log.i("IpDialManagerImpl", "use IP-DIAL-MODE when dialing long-distance calls.");
                        if (str == null || str.length() > 8) {
                            StringBuffer stringBuffer3 = new StringBuffer();
                            StringBuffer stringBuffer4 = new StringBuffer();
                            this.c.getLocation(stringBuffer3, stringBuffer4, new StringBuffer(), str);
                            String replace = stringBuffer4.toString().trim().replace(" ", "");
                            String str2 = this.b.getLocalPhoneLocation().getProvince() + this.b.getLocalPhoneLocation().getCity();
                            Log.i("IpDialManagerImpl", "LocationTrime{" + replace + "} compare localPhone{" + str2 + c.Q);
                            if ((replace.length() <= 0 || replace.compareTo(str2) != 0) && !str.startsWith("400") && !str.startsWith("800")) {
                                Log.i("IpDialManagerImpl", "WHEN-DIAL-LONG-DISTANCE-CALL: You are dialing IP call");
                                return c(str);
                            }
                            Log.i("IpDialManagerImpl", "WHEN-DIAL-LONG-DISTANCE-CALL: You are dialing local call");
                            return str;
                        }
                        Log.i("IpDialManagerImpl", str + "'s length less than 8, so do nothing!");
                        return str;
                    case 1:
                        Log.i("IpDialManagerImpl", "use IP-DIAL-MODE when dialing any calls.");
                        return c(str);
                    case 2:
                        Log.i("IpDialManagerImpl", "not use IP-DIAL-MODE.");
                        return str;
                    default:
                        return str;
                }
            }
        }
        Log.i("IpDialManagerImpl", str + " is in excluded area or phone list.");
        return str;
    }

    public final void a(IpDialManagerSetting ipDialManagerSetting) {
        if (ipDialManagerSetting != null) {
            synchronized (ipDialManagerSetting) {
                this.b.copyFrom(ipDialManagerSetting);
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    objectOutputStream.writeObject(this.b);
                    objectOutputStream.flush();
                    String a2 = r.a(byteArrayOutputStream.toByteArray());
                    objectOutputStream.close();
                    this.a.a("ip_dial_setting", a2, true);
                } catch (Exception e) {
                    Log.i("IpDialManagerImpl", e.getMessage());
                }
            }
            b("call [SetIpDialSetting]");
        }
    }

    public final void a(String str, BroadcastReceiver broadcastReceiver) {
        if (str != null) {
            broadcastReceiver.setResultData(str);
        }
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new af("IpDialProperty");
        this.c = (LocationManager) ManagerCreator.getManager(LocationManager.class);
        this.b = new IpDialManagerSetting();
        this.b.copyFrom(b());
    }
}
