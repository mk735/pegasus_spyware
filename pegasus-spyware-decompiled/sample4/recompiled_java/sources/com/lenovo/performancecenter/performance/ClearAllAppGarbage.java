package com.lenovo.performancecenter.performance;

import android.content.Context;
import android.os.Message;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import java.util.ArrayList;
import java.util.Map;

public class ClearAllAppGarbage {
    private ArrayList<String> a = new ArrayList<>();
    private Context b;

    public ClearAllAppGarbage(Context context) {
        this.b = context;
    }

    public int[] getAllRunningAppInfo(Message msg) {
        int appCount = 0;
        int memoryRelease = 0;
        for (Map.Entry<String, int[]> element : ScanApplicationInfo.getRunningAppInfoJustInLauncher(this.b).entrySet()) {
            if (element.getValue()[2] == 1) {
                appCount++;
                memoryRelease += element.getValue()[1];
            }
            this.a.add(element.getKey());
        }
        return new int[]{appCount, memoryRelease};
    }

    public void clearAllApp(Message msg) {
        if (this.a != null && this.a.size() > 0) {
            RootPassage.execRootCmd(null, this.a, " -fs ", this.b);
        }
    }
}
