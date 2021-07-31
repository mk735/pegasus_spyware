package com.tencent.tmsecure.module.aresengine;

import java.util.HashMap;
import java.util.Map;

public final class FilterConfig {
    public static final int STATE_ACCEPTABLE = 0;
    public static final int STATE_DISABLE = 3;
    public static final int STATE_EMTPY = 4;
    public static final int STATE_ENABLE = 2;
    public static final int STATE_REJECTABLE = 1;
    private HashMap<Integer, Integer> a;

    public FilterConfig() {
        this(null);
    }

    public FilterConfig(String str) {
        this.a = new HashMap<>();
        if (str != null) {
            String[] split = str.trim().split(",");
            for (int i = 0; i < split.length; i += 2) {
                set(Integer.parseInt(split[i]), Integer.parseInt(split[i + 1]));
            }
        }
    }

    public final String dump() {
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<Integer, Integer> entry : this.a.entrySet()) {
            stringBuffer.append((entry.getKey() + "," + entry.getValue()) + ",");
        }
        if (stringBuffer.length() > 0) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    public final int get(int i) {
        Integer num = this.a.get(Integer.valueOf(i));
        if (num != null) {
            return num.intValue();
        }
        return 4;
    }

    public final void reset() {
        this.a.clear();
    }

    public final void set(int i, int i2) {
        if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            this.a.put(Integer.valueOf(i), Integer.valueOf(i2));
            return;
        }
        throw new IllegalStateException("the state " + i2 + " is not define.");
    }
}
