package com.tencent.lbsapi;

import com.tencent.lbsapi.model.QLBSPoiInfoBatch;
import com.tencent.lbsapi.model.QLBSPosition;

public interface QLBSNotification {
    public static final int RESPONSE_HTTP_ERROR = -1;
    public static final int RESPONSE_LBS_AUTH_FAIL = -5;
    public static final int RESPONSE_LBS_EXCEPTION = -3;
    public static final int RESPONSE_LBS_INPUT_ERROR = -6;
    public static final int RESPONSE_LBS_POSITION_FAIL = -4;
    public static final int RESPONSE_UNKNOWN_ERROR = -7;
    public static final int RESPONSE_WUP_ERROR = -2;
    public static final int RESULT_LOCATION_ERROR = 0;
    public static final int RESULT_LOCATION_SUCCESS = 1;

    void onLocationNotification(int i);

    void onResponseError(int i, int i2, String str);

    void onResponseGetCurPosition(int i, QLBSPosition qLBSPosition);

    void onResponseGetNearPoiList(int i, QLBSPoiInfoBatch qLBSPoiInfoBatch);

    void onResponseSearchNearPoiList(int i, QLBSPoiInfoBatch qLBSPoiInfoBatch);
}
