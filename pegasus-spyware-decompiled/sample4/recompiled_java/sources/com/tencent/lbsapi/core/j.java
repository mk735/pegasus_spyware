package com.tencent.lbsapi.core;

import LBSAPIProtocol.Cell;
import LBSAPIProtocol.DeviceData;
import LBSAPIProtocol.GPS;
import LBSAPIProtocol.Measure;
import LBSAPIProtocol.ReqGetPoiList;
import LBSAPIProtocol.ReqGetPosition;
import LBSAPIProtocol.ReqHeader;
import LBSAPIProtocol.ReqSearchNearPoiList;
import LBSAPIProtocol.RspGetPoiList;
import LBSAPIProtocol.RspGetPosition;
import LBSAPIProtocol.RspHeader;
import LBSAPIProtocol.RspSearchNearPoiList;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.qq.jce.wup.UniPacket;
import com.tencent.lbsapi.QLBSNotification;
import com.tencent.lbsapi.a.f;
import com.tencent.lbsapi.model.QLBSCellInfo;
import com.tencent.lbsapi.model.QLBSGPSInfo;
import java.util.ArrayList;
import java.util.Iterator;

public class j {
    private QLBSEngine a = null;
    private f b = null;
    private QLBSNotification c = null;
    private String d = null;
    private String e = null;
    private String f = null;
    private Context g = null;
    private Handler h = null;

    public j(Context context, QLBSNotification qLBSNotification, String str, String str2, String str3) {
        this.a = new QLBSEngine(context, qLBSNotification);
        this.b = new f(new a(this));
        this.g = context;
        this.c = qLBSNotification;
        this.d = str == null ? "" : str;
        this.e = str2 == null ? "" : str2;
        this.f = str3 == null ? "" : str3;
        this.h = new b(this, qLBSNotification);
    }

    private void a(int i, int i2, String str) {
        Message message = new Message();
        Bundle bundle = new Bundle();
        message.what = 0;
        message.setData(bundle);
        bundle.putInt(e.a, i);
        bundle.putInt(e.c, i2);
        bundle.putString(e.d, str);
        if (this.h != null) {
            this.h.sendMessage(message);
        }
    }

    static /* synthetic */ void a(j jVar, int i, int i2, String str) {
        if (jVar.c != null) {
            jVar.a(i, i2, str);
        }
    }

    static /* synthetic */ void a(j jVar, int i, byte[] bArr) {
        try {
            if (jVar.c != null) {
                UniPacket uniPacket = new UniPacket();
                uniPacket.setEncodeName("utf-8");
                try {
                    byte[] b2 = d.b(bArr, jVar.d, jVar.e);
                    if (b2 == null) {
                        jVar.a(i, -2, "wup回包解析异常");
                        return;
                    }
                    uniPacket.decode(b2);
                    RspHeader rspHeader = (RspHeader) uniPacket.get("RspHeader");
                    if (rspHeader == null) {
                        jVar.a(i, -2, "wup回包解析异常");
                    } else if (rspHeader.getEResult() != 0) {
                        switch (rspHeader.getEResult()) {
                            case 102:
                                jVar.a(i, -4, "LBS后台系统无法根据输入定位");
                                return;
                            case 201:
                                jVar.a(i, -5, "LBS后台鉴权失败");
                                return;
                            case 202:
                                jVar.a(i, -6, "输入条件不足");
                                return;
                            default:
                                jVar.a(i, -3, "LBS后台系统异常");
                                return;
                        }
                    } else if (uniPacket.getFuncName().equals("ReqGetPosition")) {
                        RspGetPosition rspGetPosition = (RspGetPosition) uniPacket.get("RspGetPosition");
                        Message message = new Message();
                        Bundle bundle = new Bundle();
                        message.setData(bundle);
                        bundle.putInt(e.a, i);
                        if (rspGetPosition != null) {
                            message.what = 1;
                            bundle.putByteArray("RspGetPosition", rspGetPosition.toByteArray());
                        } else {
                            message.what = 0;
                            bundle.putString(e.d, "wup回包解析异常");
                            bundle.putInt(e.c, -2);
                        }
                        jVar.h.sendMessage(message);
                    } else if (uniPacket.getFuncName().equals("ReqGetPoiList")) {
                        RspGetPoiList rspGetPoiList = (RspGetPoiList) uniPacket.get("RspGetPoiList");
                        Message message2 = new Message();
                        Bundle bundle2 = new Bundle();
                        message2.setData(bundle2);
                        bundle2.putInt(e.a, i);
                        if (rspGetPoiList != null) {
                            message2.what = 2;
                            bundle2.putByteArray("RspGetPoiList", rspGetPoiList.toByteArray());
                        } else {
                            message2.what = 0;
                            bundle2.putString(e.d, "wup回包解析异常");
                            bundle2.putInt(e.c, -2);
                        }
                        jVar.h.sendMessage(message2);
                    } else if (uniPacket.getFuncName().equals("ReqSearchNearPoiList")) {
                        RspSearchNearPoiList rspSearchNearPoiList = (RspSearchNearPoiList) uniPacket.get("RspSearchNearPoiList");
                        Message message3 = new Message();
                        Bundle bundle3 = new Bundle();
                        message3.setData(bundle3);
                        bundle3.putInt(e.a, i);
                        if (rspSearchNearPoiList != null) {
                            message3.what = 3;
                            bundle3.putByteArray("RspSearchNearPoiList", rspSearchNearPoiList.toByteArray());
                        } else {
                            message3.what = 0;
                            bundle3.putString(e.d, "wup回包解析异常");
                            bundle3.putInt(e.c, -2);
                        }
                        jVar.h.sendMessage(message3);
                    } else {
                        jVar.a(i, -2, "wup回包解析异常");
                    }
                } catch (Exception e2) {
                    jVar.a(i, -2, "wup回包解析异常");
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            jVar.a(i, -7, e3.getMessage());
        }
    }

    public void a() {
        this.g = null;
        if (this.a != null) {
            this.a.a();
            this.a.f();
            this.a = null;
        }
        if (this.b != null) {
            this.b.b();
            this.b = null;
        }
        if (this.h != null) {
            this.h = null;
        }
    }

    public void a(int i) {
        this.a.a(i);
    }

    public void a(boolean z) {
        this.a.a(z);
    }

    public boolean a(int i, String str, int i2) {
        if (this.a.j() == 0 && this.a.m().size() == 0) {
            return false;
        }
        ReqHeader reqHeader = new ReqHeader();
        reqHeader.setStrUin(str);
        reqHeader.setEUinType(i2);
        reqHeader.setStrAuthName(this.d);
        reqHeader.setStrAuthPassword(this.e);
        reqHeader.setEDeviceType(1);
        ReqGetPosition reqGetPosition = new ReqGetPosition();
        reqGetPosition.setVCells(new ArrayList());
        reqGetPosition.getVCells().add(new Cell((short) this.a.g(), (short) this.a.h(), this.a.i(), this.a.j()));
        Iterator it = this.a.o().iterator();
        while (it.hasNext()) {
            reqGetPosition.getVCells().add(new Cell((short) this.a.g(), (short) this.a.h(), this.a.i(), ((Integer) it.next()).intValue()));
        }
        reqGetPosition.setStGps(new GPS(this.a.k(), this.a.l(), -1, 0));
        reqGetPosition.setVMacs(this.a.m());
        ArrayList s = this.a.s();
        if (s == null) {
            s = new ArrayList();
        }
        reqGetPosition.setVMeasures(s);
        reqGetPosition.setStrImei(this.a.p());
        reqGetPosition.setStrAppUA(this.f);
        UniPacket uniPacket = new UniPacket();
        uniPacket.setEncodeName("utf-8");
        uniPacket.setRequestId(i);
        uniPacket.setServantName(e.f);
        uniPacket.setFuncName("ReqGetPosition");
        uniPacket.put(e.b, reqHeader);
        uniPacket.put("ReqGetPosition", reqGetPosition);
        byte[] a2 = d.a(uniPacket.encode(), this.d, this.e);
        if (a2 != null) {
            return this.b.a(this.g, i, this.d, a2);
        }
        return false;
    }

    public boolean a(int i, String str, int i2, int i3, int i4, int i5, String str2, ArrayList arrayList) {
        if (this.a.j() == 0 && this.a.m().size() == 0) {
            return false;
        }
        ReqHeader reqHeader = new ReqHeader();
        reqHeader.setStrUin(str);
        reqHeader.setEUinType(i2);
        reqHeader.setStrAuthName(this.d);
        reqHeader.setStrAuthPassword(this.e);
        ReqSearchNearPoiList reqSearchNearPoiList = new ReqSearchNearPoiList();
        reqSearchNearPoiList.setVCells(new ArrayList());
        reqSearchNearPoiList.getVCells().add(new Cell((short) this.a.g(), (short) this.a.h(), this.a.i(), this.a.j()));
        Iterator it = this.a.o().iterator();
        while (it.hasNext()) {
            reqSearchNearPoiList.getVCells().add(new Cell((short) this.a.g(), (short) this.a.h(), this.a.i(), ((Integer) it.next()).intValue()));
        }
        reqSearchNearPoiList.setStGps(new GPS(this.a.k(), this.a.l(), -1, 0));
        reqSearchNearPoiList.setVMacs(this.a.m());
        reqSearchNearPoiList.setVTypes(new ArrayList());
        if (arrayList != null && arrayList.size() > 0) {
            reqSearchNearPoiList.getVTypes().addAll(arrayList);
        }
        reqSearchNearPoiList.setIRadius(i3);
        reqSearchNearPoiList.setIBeginPos(i4);
        reqSearchNearPoiList.setIReqNum(i5);
        reqSearchNearPoiList.setStrKeyword(str2);
        reqSearchNearPoiList.setStrImei(this.a.p());
        reqSearchNearPoiList.setStrAppUA(this.f);
        UniPacket uniPacket = new UniPacket();
        uniPacket.setEncodeName("utf-8");
        uniPacket.setRequestId(i);
        uniPacket.setServantName(e.f);
        uniPacket.setFuncName("ReqSearchNearPoiList");
        uniPacket.put(e.b, reqHeader);
        uniPacket.put("ReqSearchNearPoiList", reqSearchNearPoiList);
        ArrayList s = this.a.s();
        if (s == null) {
            s = new ArrayList();
        }
        reqSearchNearPoiList.setVMeasures(s);
        byte[] a2 = d.a(uniPacket.encode(), this.d, this.e);
        if (a2 != null) {
            return this.b.a(this.g, i, this.d, a2);
        }
        return false;
    }

    public boolean a(int i, String str, int i2, int i3, int i4, int i5, ArrayList arrayList, int i6) {
        if (this.a.j() == 0 && this.a.m().size() == 0) {
            return false;
        }
        ReqHeader reqHeader = new ReqHeader();
        reqHeader.setStrUin(str);
        reqHeader.setEUinType(i2);
        reqHeader.setStrAuthName(this.d);
        reqHeader.setStrAuthPassword(this.e);
        ReqGetPoiList reqGetPoiList = new ReqGetPoiList();
        reqGetPoiList.setVCells(new ArrayList());
        reqGetPoiList.getVCells().add(new Cell((short) this.a.g(), (short) this.a.h(), this.a.i(), this.a.j()));
        Iterator it = this.a.o().iterator();
        while (it.hasNext()) {
            reqGetPoiList.getVCells().add(new Cell((short) this.a.g(), (short) this.a.h(), this.a.i(), ((Integer) it.next()).intValue()));
        }
        reqGetPoiList.setStGps(new GPS(this.a.k(), this.a.l(), -1, 0));
        reqGetPoiList.setVMacs(this.a.m());
        reqGetPoiList.setVTypes(new ArrayList());
        if (arrayList != null && arrayList.size() > 0) {
            reqGetPoiList.getVTypes().addAll(arrayList);
        }
        reqGetPoiList.setIRadius(i3);
        reqGetPoiList.setIBeginPos(i4);
        reqGetPoiList.setIReqNum(i5);
        reqGetPoiList.setESortMethod(i6);
        ArrayList s = this.a.s();
        if (s == null) {
            s = new ArrayList();
        }
        reqGetPoiList.setVMeasures(s);
        reqGetPoiList.setStrImei(this.a.p());
        reqGetPoiList.setStrAppUA(this.f);
        UniPacket uniPacket = new UniPacket();
        uniPacket.setEncodeName("utf-8");
        uniPacket.setRequestId(i);
        uniPacket.setServantName(e.f);
        uniPacket.setFuncName("ReqGetPoiList");
        uniPacket.put(e.b, reqHeader);
        uniPacket.put("ReqGetPoiList", reqGetPoiList);
        byte[] a2 = d.a(uniPacket.encode(), this.d, this.e);
        if (a2 != null) {
            return this.b.a(this.g, i, this.d, a2);
        }
        return false;
    }

    public void b() {
        this.a.a();
    }

    public void b(boolean z) {
        this.a.b(z);
    }

    public byte[] c() {
        try {
            DeviceData deviceData = new DeviceData();
            deviceData.setStCurMeasure(new Measure());
            deviceData.getStCurMeasure().setVCells(new ArrayList());
            deviceData.getStCurMeasure().getVCells().add(new Cell((short) this.a.g(), (short) this.a.h(), this.a.i(), this.a.j()));
            Iterator it = this.a.o().iterator();
            while (it.hasNext()) {
                deviceData.getStCurMeasure().getVCells().add(new Cell((short) this.a.g(), (short) this.a.h(), this.a.i(), ((Integer) it.next()).intValue()));
            }
            deviceData.getStCurMeasure().setStGps(new GPS(this.a.k(), this.a.l(), -1, 0));
            deviceData.getStCurMeasure().setVMacs(this.a.m());
            deviceData.getStCurMeasure().setStrExtraInfo(this.a.q());
            ArrayList s = this.a.s();
            if (s == null) {
                s = new ArrayList();
            }
            deviceData.setVMeasures(s);
            deviceData.setStrImei(this.a.p());
            deviceData.setStrAppUA(this.f);
            deviceData.setEDeviceType(1);
            UniPacket uniPacket = new UniPacket();
            uniPacket.setRequestId(0);
            uniPacket.setEncodeName("utf-8");
            uniPacket.setServantName(e.f);
            uniPacket.setFuncName("ReqGetPositionApi");
            uniPacket.put(e.g, this.d);
            UniPacket uniPacket2 = new UniPacket();
            uniPacket2.setEncodeName("utf-8");
            uniPacket2.setServantName(e.f);
            uniPacket2.setFuncName(e.h);
            uniPacket2.put(e.h, deviceData);
            byte[] a2 = d.a(uniPacket2.encode(), this.d, this.e);
            if (a2 == null) {
                return null;
            }
            uniPacket.put(e.i, a2);
            return uniPacket.encode();
        } catch (Exception e2) {
            return null;
        }
    }

    public boolean d() {
        if (this.a != null) {
            return this.a.b();
        }
        return false;
    }

    public int e() {
        if (this.a != null) {
            return this.a.c();
        }
        return -1;
    }

    public QLBSCellInfo f() {
        if (this.a != null) {
            return new QLBSCellInfo(this.a.h(), this.a.g(), this.a.i(), this.a.j());
        }
        return null;
    }

    public QLBSCellInfo g() {
        if (this.a != null) {
            return this.a.d();
        }
        return null;
    }

    public ArrayList h() {
        if (this.a != null) {
            return this.a.n();
        }
        return null;
    }

    public QLBSGPSInfo i() {
        if (this.a != null) {
            return new QLBSGPSInfo(this.a.k(), this.a.l(), -1, 0);
        }
        return null;
    }
}
