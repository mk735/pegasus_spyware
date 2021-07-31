package com.lenovo.safecenter.net.support;

import android.net.NetworkStats;
import java.util.ArrayList;
import java.util.HashSet;

public class PhoneSimInfo {
    public boolean SimState;
    private NetworkStats a;
    public boolean isMutiSimCard;
    public NetworkStats networkInfo1;
    public NetworkStats networkInfo2;
    public ArrayList<NetworkStats> networkInfo3;
    public HashSet<Integer> networkList;
    public String sim1IMSI;
    public String sim2IMSI;

    public NetworkStats getNetworkInfoWlan() {
        return this.a;
    }

    public void setNetworkInfoWlan(NetworkStats networkInfoWlan) {
        this.a = networkInfoWlan;
    }
}
