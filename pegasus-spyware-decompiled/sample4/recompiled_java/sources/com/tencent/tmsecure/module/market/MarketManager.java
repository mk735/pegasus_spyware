package com.tencent.tmsecure.module.market;

import QQPIM.ADInfo;
import QQPIM.AnalyseInfo;
import QQPIM.HotWordReqInfo;
import QQPIM.MySoftSimpleInfo;
import QQPIM.SoftFeature;
import QQPIM.SoftKey;
import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.List;
import tms.dh;

public class MarketManager extends BaseManager {
    public static final String JCE_EXPAND_KEY = "expand";
    public static final int REQUEST_TYPE_CLASSIFIED_SOFTWARE = 4;
    public static final int REQUEST_TYPE_COOPERATE_CATEGORY = 9;
    public static final int REQUEST_TYPE_DAILY_SOFTWARE = 6;
    public static final int REQUEST_TYPE_GAME_SOFTWARE = 16;
    public static final int REQUEST_TYPE_MY_SOFTWARE = 0;
    public static final int REQUEST_TYPE_NECCESSARY_SOFTWARE = 2;
    public static final int REQUEST_TYPE_NEW_PRODUCT = 10;
    public static final int REQUEST_TYPE_PROFESSIONAL_KILLER = 13;
    public static final int REQUEST_TYPE_RELEASE_SOFTWARE = 7;
    public static final int REQUEST_TYPE_ROOT_TOOLS = 14;
    public static final int REQUEST_TYPE_SEARCH_SOFTWARE = 8;
    public static final int REQUEST_TYPE_SOFTWARE_CATEGORY = 3;
    public static final int REQUEST_TYPE_SOFTWARE_DETAILS = 5;
    public static final int REQUEST_TYPE_SOFTWARE_MANAGER = 1;
    public static final int REQUEST_TYPE_SPECIAL_CATEGORY = 11;
    public static final int REQUEST_TYPE_SPECIAL_SOFTWARE = 12;
    public static final int REQUEST_TYPE_WEEKLY_SOFTWARE = 15;
    public static final int RESPONESE_TYPE_FAILED = 1;
    public static final int RESPONESE_TYPE_NETWORK_ERROR = 2;
    public static final int RESPONESE_TYPE_SUCCESS = 0;
    public static final int SORT_TYPE_NORMAL = 0;
    private dh a;

    public void evaluateSoftware(SoftKey softKey, int i, IMarketManagerListener<ResponseInfo, Void> iMarketManagerListener) {
        if (!isExpired()) {
            this.a.a(softKey, i, iMarketManagerListener);
        }
    }

    public void fetchAdList(IMarketManagerListener<ResponseInfo, ADInfo> iMarketManagerListener) {
        if (!isExpired()) {
            this.a.a(iMarketManagerListener);
        }
    }

    public void fetchAnalyseInfo(RequestInfo requestInfo, List<SoftFeature> list, IMarketManagerListener<ResponseInfo, AnalyseInfo> iMarketManagerListener) {
        if (!isExpired()) {
            this.a.a(requestInfo, list, iMarketManagerListener);
        }
    }

    public void fetchCategoryList(RequestInfo requestInfo, IMarketManagerListener<ResponseInfo, CategoryEx> iMarketManagerListener) {
        if (!isExpired()) {
            this.a.a(requestInfo, iMarketManagerListener);
        }
    }

    public void fetchHotWords(HotWordReqInfo hotWordReqInfo, IFetchHotWordListener iFetchHotWordListener) {
        if (!isExpired()) {
            this.a.a(hotWordReqInfo, iFetchHotWordListener);
        }
    }

    public void fetchMySoftwareListInfo(RequestInfo requestInfo, List<SoftKey> list, IMarketManagerListener<ResponseInfo, MySoftSimpleInfo> iMarketManagerListener) {
        if (!isExpired()) {
            this.a.b(requestInfo, list, iMarketManagerListener);
        }
    }

    public void fetchSoftwareList(RequestInfo requestInfo, IMarketManagerListener<ResponseInfo, SoftSimpleInfoEx> iMarketManagerListener) {
        if (!isExpired()) {
            this.a.b(requestInfo, iMarketManagerListener);
        }
    }

    public void fetchSpecialCategory(RequestInfo requestInfo, IFetchSpecialCategoryListener iFetchSpecialCategoryListener) {
        if (!isExpired()) {
            this.a.a(requestInfo, iFetchSpecialCategoryListener);
        }
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public void onCreate(Context context) {
        this.a = new dh();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public boolean refreshStatus() {
        if (isExpired()) {
            return false;
        }
        return this.a.a();
    }

    public void reportSoftware(List<SoftFeature> list, IMarketManagerListener<ResponseInfo, Void> iMarketManagerListener) {
        if (!isExpired()) {
            this.a.a(list, iMarketManagerListener);
        }
    }
}
