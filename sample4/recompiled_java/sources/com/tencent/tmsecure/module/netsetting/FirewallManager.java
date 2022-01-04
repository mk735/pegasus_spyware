package com.tencent.tmsecure.module.netsetting;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import java.util.List;
import tms.dj;

public class FirewallManager extends BaseManager {
    public static final int FEATURE_CAN_NOT_USE = 0;
    public static final int FEATURE_CAN_USE = 1;
    public static final int FEATURE_CAN_VIP = 2;
    private dj a;

    public boolean getEnable() {
        if (isExpired()) {
            return false;
        }
        return this.a.c();
    }

    public int getFeature() {
        return this.a.a();
    }

    public ArrayList<Rule> getRules(int i) {
        return isExpired() ? new ArrayList<>() : this.a.a(i);
    }

    public boolean init(List<Rule> list) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(list);
    }

    public boolean isInited() {
        if (isExpired()) {
            return false;
        }
        return this.a.b();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public void onCreate(Context context) {
        this.a = new dj();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public void setEnable(boolean z) {
        if (!isExpired()) {
            this.a.a(z);
        }
    }

    public void setRule(Rule rule) {
        if (!isExpired()) {
            this.a.a(rule);
        }
    }

    public void setRules(List<Rule> list) {
        if (!isExpired()) {
            this.a.b(list);
        }
    }
}
