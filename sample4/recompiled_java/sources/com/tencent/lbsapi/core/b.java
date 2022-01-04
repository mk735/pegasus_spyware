package com.tencent.lbsapi.core;

import LBSAPIProtocol.PoiInfo;
import LBSAPIProtocol.RspGetPoiList;
import LBSAPIProtocol.RspGetPosition;
import LBSAPIProtocol.RspSearchNearPoiList;
import android.os.Handler;
import android.os.Message;
import com.qq.taf.jce.JceInputStream;
import com.tencent.lbsapi.QLBSNotification;
import com.tencent.lbsapi.model.QLBSGPSInfo;
import com.tencent.lbsapi.model.QLBSPoiInfo;
import com.tencent.lbsapi.model.QLBSPoiInfoBatch;
import com.tencent.lbsapi.model.QLBSPosition;
import java.util.Iterator;

/* access modifiers changed from: package-private */
public final class b extends Handler {
    final /* synthetic */ QLBSNotification a;
    final /* synthetic */ j b;

    b(j jVar, QLBSNotification qLBSNotification) {
        this.b = jVar;
        this.a = qLBSNotification;
    }

    public final void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                int i = message.getData().getInt(e.a);
                int i2 = message.getData().getInt(e.c);
                String string = message.getData().getString(e.d);
                if (this.a != null) {
                    this.a.onResponseError(i, i2, string);
                    return;
                }
                return;
            case 1:
                try {
                    byte[] byteArray = message.getData().getByteArray("RspGetPosition");
                    int i3 = message.getData().getInt(e.a);
                    RspGetPosition rspGetPosition = new RspGetPosition();
                    rspGetPosition.readFrom(new JceInputStream(byteArray));
                    QLBSPosition qLBSPosition = new QLBSPosition();
                    qLBSPosition.setProvince(rspGetPosition.getStrProvince());
                    qLBSPosition.setCity(rspGetPosition.getStrCity());
                    qLBSPosition.setDistrict(rspGetPosition.getStrDistrict());
                    qLBSPosition.setTown(rspGetPosition.getStrTown());
                    qLBSPosition.setRoad(rspGetPosition.getStrRoad());
                    qLBSPosition.setPremises(rspGetPosition.getStrPremises());
                    qLBSPosition.setRange(rspGetPosition.getIRange());
                    if (rspGetPosition.getStUsrLoc().getILat() != 900000000) {
                        qLBSPosition.setGps(new QLBSGPSInfo(rspGetPosition.getStUsrLoc().getILat(), rspGetPosition.getStUsrLoc().getILon(), -1, 1));
                    }
                    if (this.a != null) {
                        this.a.onResponseGetCurPosition(i3, qLBSPosition);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    int i4 = message.getData().getInt(e.a);
                    if (this.a != null) {
                        this.a.onResponseError(i4, -2, "wup回包解析异常");
                        return;
                    }
                    return;
                }
            case 2:
                try {
                    byte[] byteArray2 = message.getData().getByteArray("RspGetPoiList");
                    int i5 = message.getData().getInt(e.a);
                    RspGetPoiList rspGetPoiList = new RspGetPoiList();
                    rspGetPoiList.readFrom(new JceInputStream(byteArray2));
                    QLBSPoiInfoBatch qLBSPoiInfoBatch = new QLBSPoiInfoBatch();
                    qLBSPoiInfoBatch.setTotalNum(rspGetPoiList.getITotalNum());
                    if (rspGetPoiList.getStUsrLoc().getILat() != 900000000) {
                        qLBSPoiInfoBatch.setGpsInfo(new QLBSGPSInfo(rspGetPoiList.getStUsrLoc().getILat(), rspGetPoiList.getStUsrLoc().getILon(), -1, 1));
                    }
                    if (rspGetPoiList.getVPoiList() != null) {
                        Iterator it = rspGetPoiList.getVPoiList().iterator();
                        while (it.hasNext()) {
                            PoiInfo poiInfo = (PoiInfo) it.next();
                            QLBSPoiInfo qLBSPoiInfo = new QLBSPoiInfo(poiInfo.strName, poiInfo.iType, poiInfo.strTypeName, poiInfo.strAddress, poiInfo.getLId(), poiInfo.iDistrictCode, poiInfo.iDistance, poiInfo.iHotValue);
                            if (poiInfo.getILat() != 900000000) {
                                qLBSPoiInfo.setMarsGps(new QLBSGPSInfo(poiInfo.getILat(), poiInfo.getILon(), -1, 1));
                            }
                            qLBSPoiInfoBatch.getPoiList().add(qLBSPoiInfo);
                        }
                    }
                    if (this.a != null) {
                        this.a.onResponseGetNearPoiList(i5, qLBSPoiInfoBatch);
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    int i6 = message.getData().getInt(e.a);
                    if (this.a != null) {
                        this.a.onResponseError(i6, -2, "wup回包解析异常");
                        return;
                    }
                    return;
                }
            case 3:
                try {
                    byte[] byteArray3 = message.getData().getByteArray("RspSearchNearPoiList");
                    int i7 = message.getData().getInt(e.a);
                    RspSearchNearPoiList rspSearchNearPoiList = new RspSearchNearPoiList();
                    rspSearchNearPoiList.readFrom(new JceInputStream(byteArray3));
                    QLBSPoiInfoBatch qLBSPoiInfoBatch2 = new QLBSPoiInfoBatch();
                    qLBSPoiInfoBatch2.setTotalNum(rspSearchNearPoiList.getITotalNum());
                    if (rspSearchNearPoiList.getStUsrLoc().getILat() != 900000000) {
                        qLBSPoiInfoBatch2.setGpsInfo(new QLBSGPSInfo(rspSearchNearPoiList.getStUsrLoc().getILat(), rspSearchNearPoiList.getStUsrLoc().getILon(), -1, 1));
                    }
                    if (rspSearchNearPoiList.getVPoiList() != null) {
                        Iterator it2 = rspSearchNearPoiList.getVPoiList().iterator();
                        while (it2.hasNext()) {
                            PoiInfo poiInfo2 = (PoiInfo) it2.next();
                            QLBSPoiInfo qLBSPoiInfo2 = new QLBSPoiInfo(poiInfo2.strName, poiInfo2.iType, poiInfo2.strTypeName, poiInfo2.strAddress, poiInfo2.getLId(), poiInfo2.iDistrictCode, poiInfo2.iDistance, poiInfo2.iHotValue);
                            if (poiInfo2.getILat() != 900000000) {
                                qLBSPoiInfo2.setMarsGps(new QLBSGPSInfo(poiInfo2.getILat(), poiInfo2.getILon(), -1, 1));
                            }
                            qLBSPoiInfoBatch2.getPoiList().add(qLBSPoiInfo2);
                        }
                    }
                    if (this.a != null) {
                        this.a.onResponseSearchNearPoiList(i7, qLBSPoiInfoBatch2);
                        return;
                    }
                    return;
                } catch (Exception e3) {
                    int i8 = message.getData().getInt(e.a);
                    if (this.a != null) {
                        this.a.onResponseError(i8, -2, "wup回包解析异常");
                        return;
                    }
                    return;
                }
            default:
                return;
        }
    }
}
