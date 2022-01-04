package com.lenovo.safecenter.HealthCheck.util;

import android.content.Context;
import com.lenovo.safecenter.R;
import java.util.HashMap;

public class HealthStatus {
    public static final int STATE_CAN_OPTIMIZATION = 1;
    public static final int STATE_DONE = 3;
    public static final int STATE_OPTIMIZATIONING = 2;
    public static final int STATE_PAUSE = 4;
    public static final int STATE_SCANING = 0;

    public static HashMap<Integer, String> getStatus(Context context) {
        HashMap<Integer, String> list = new HashMap<>();
        list.put(0, context.getString(R.string.scaning_text));
        list.put(1, context.getString(R.string.canoptimize_text));
        list.put(2, context.getString(R.string.optimizeing_text));
        list.put(3, context.getString(R.string.optimize_done_text));
        list.put(4, context.getString(R.string.optimize_pause_text));
        return list;
    }
}
