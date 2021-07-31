package tms;

import android.content.Context;
import com.tencent.tccdb.TelNumberLocator;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.update.UpdateManager;
import com.tencent.tmsecure.utils.Log;
import java.util.ArrayList;

public final class fj extends BaseManager {
    private TelNumberLocator a;
    private Context b;

    public final String a(String str) {
        if (str == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        StringBuffer stringBuffer3 = new StringBuffer();
        try {
            this.a.getLocation(stringBuffer, stringBuffer2, stringBuffer3, str, false);
            return stringBuffer.append(stringBuffer2).append(stringBuffer3).toString();
        } catch (Exception e) {
            return "";
        }
    }

    public final ArrayList<String> a() {
        try {
            ArrayList<String> provinceNameList = this.a.getProvinceNameList();
            provinceNameList.remove(0);
            ArrayList<String> cityNameList = this.a.getCityNameList("");
            if (cityNameList == null) {
                return provinceNameList;
            }
            cityNameList.remove(0);
            provinceNameList.addAll(0, cityNameList);
            return provinceNameList;
        } catch (Exception e) {
            Log.i("LocationManagerImpl.getProvinceNameList", e.getMessage());
            return new ArrayList<>();
        }
    }

    public final void a(StringBuffer stringBuffer, StringBuffer stringBuffer2, StringBuffer stringBuffer3, String str) {
        String str2 = str == null ? "" : str;
        if (stringBuffer != null && stringBuffer2 != null && stringBuffer3 != null) {
            try {
                this.a.getLocation(stringBuffer, stringBuffer2, stringBuffer3, str2, false);
            } catch (Exception e) {
                Log.i("LocationManagerImpl.getLocation", e.getMessage());
            }
        }
    }

    public final ArrayList<String> b(String str) {
        if ("".compareTo(str) == 0) {
            return new ArrayList<>();
        }
        try {
            ArrayList<String> cityNameList = this.a.getCityNameList("");
            cityNameList.remove(0);
            return cityNameList.contains(str) ? new ArrayList<>() : this.a.getCityNameList(str);
        } catch (Exception e) {
            Log.i("LocationManagerImpl.getCityNameList", e.getMessage());
            return new ArrayList<>();
        }
    }

    /* access modifiers changed from: protected */
    public final void finalize() throws Throwable {
        ((UpdateManager) ManagerCreator.getManager(UpdateManager.class)).removeObserver(2);
        super.finalize();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.b = context;
        v.a(this.b, UpdateConfig.LOCATION_NAME, (String) null);
        this.a = TelNumberLocator.getDefault(this.b);
    }
}
