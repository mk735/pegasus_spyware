package com.tencent.tmsecure.module.phoneservice;

import com.lenovo.safecenter.utils.Untils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

public final class IpDialProvinceCityList implements Serializable {
    private static final long b = 1;
    ArrayList<IpDialProvinceCity> a;

    public IpDialProvinceCityList() {
        this.a = new ArrayList<>();
    }

    public IpDialProvinceCityList(IpDialProvinceCityList ipDialProvinceCityList) {
        this();
        copyFrom(ipDialProvinceCityList);
    }

    public final void add(IpDialProvinceCity ipDialProvinceCity) {
        if (ipDialProvinceCity != null && !existed(ipDialProvinceCity)) {
            this.a.add(ipDialProvinceCity);
        }
    }

    public final void clear() {
        this.a.clear();
    }

    public final void copyFrom(IpDialProvinceCityList ipDialProvinceCityList) {
        if (ipDialProvinceCityList != null) {
            this.a.clear();
            Iterator<IpDialProvinceCity> it = ipDialProvinceCityList.a.iterator();
            while (it.hasNext()) {
                this.a.add(new IpDialProvinceCity(it.next()));
            }
        }
    }

    public final void copyFrom(ArrayList<IpDialProvinceCity> arrayList) {
        if (arrayList != null) {
            this.a.clear();
            Iterator<IpDialProvinceCity> it = arrayList.iterator();
            while (it.hasNext()) {
                this.a.add(new IpDialProvinceCity(it.next()));
            }
        }
    }

    public final boolean existed(IpDialProvinceCity ipDialProvinceCity) {
        if (ipDialProvinceCity == null) {
            return false;
        }
        String str = ipDialProvinceCity.getProvince() + ipDialProvinceCity.getCity();
        Iterator<IpDialProvinceCity> it = this.a.iterator();
        while (it.hasNext()) {
            IpDialProvinceCity next = it.next();
            if (next.getCity().length() == 0) {
                if (next.getProvince().compareTo(ipDialProvinceCity.getProvince()) == 0) {
                    return true;
                }
            } else if ((next.getProvince() + next.getCity()).compareTo(str) == 0) {
                return true;
            }
        }
        return false;
    }

    public final IpDialProvinceCity get(int i) {
        if (isValidIndex(i)) {
            return new IpDialProvinceCity(this.a.get(i));
        }
        return null;
    }

    public final boolean isValidIndex(int i) {
        return i >= 0 && i < this.a.size();
    }

    public final String listToString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator<IpDialProvinceCity> it = this.a.iterator();
        while (it.hasNext()) {
            IpDialProvinceCity next = it.next();
            sb.append(next.a + next.b).append(Untils.PAUSE);
        }
        sb.append(']');
        return sb.toString();
    }

    public final void remove(int i) {
        if (isValidIndex(i)) {
            this.a.remove(i);
        }
    }

    public final int size() {
        return this.a.size();
    }

    public final ArrayList<IpDialProvinceCity> toArrayList() {
        return new ArrayList<>(this.a);
    }
}
