package com.tencent.tmsecure.module.phoneservice;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import tms.ag;

public final class IpDialPhoneNumberList implements Serializable {
    private static final long b = 1;
    ArrayList<IpDialPhoneNumber> a;

    public IpDialPhoneNumberList() {
        this.a = new ArrayList<>();
    }

    public IpDialPhoneNumberList(IpDialPhoneNumberList ipDialPhoneNumberList) {
        this();
        copyFrom(ipDialPhoneNumberList);
    }

    public final void add(IpDialPhoneNumber ipDialPhoneNumber) {
        if (ipDialPhoneNumber != null && !existed(ipDialPhoneNumber)) {
            this.a.add(ipDialPhoneNumber);
        }
    }

    public final void clear() {
        this.a.clear();
    }

    public final void copyFrom(IpDialPhoneNumberList ipDialPhoneNumberList) {
        if (ipDialPhoneNumberList != null) {
            this.a.clear();
            Iterator<IpDialPhoneNumber> it = ipDialPhoneNumberList.a.iterator();
            while (it.hasNext()) {
                this.a.add(new IpDialPhoneNumber(it.next()));
            }
        }
    }

    public final void copyFrom(ArrayList<IpDialPhoneNumber> arrayList) {
        if (arrayList != null) {
            this.a.clear();
            Iterator<IpDialPhoneNumber> it = arrayList.iterator();
            while (it.hasNext()) {
                add(new IpDialPhoneNumber(it.next()));
            }
        }
    }

    public final boolean existed(IpDialPhoneNumber ipDialPhoneNumber) {
        if (ipDialPhoneNumber == null) {
            return false;
        }
        Iterator<IpDialPhoneNumber> it = this.a.iterator();
        while (it.hasNext()) {
            if (ag.a(it.next().getPhoneNumber(), ipDialPhoneNumber.getPhoneNumber())) {
                return true;
            }
        }
        return false;
    }

    public final IpDialPhoneNumber get(int i) {
        if (isValidIndex(i)) {
            return this.a.get(i);
        }
        return null;
    }

    public final boolean isValidIndex(int i) {
        return i >= 0 && i < this.a.size();
    }

    public final String listToString() {
        return this.a.toString();
    }

    public final void remove(int i) {
        if (isValidIndex(i)) {
            this.a.remove(i);
        }
    }

    public final int size() {
        return this.a.size();
    }

    public final ArrayList<IpDialPhoneNumber> toArrayList() {
        return new ArrayList<>(this.a);
    }
}
