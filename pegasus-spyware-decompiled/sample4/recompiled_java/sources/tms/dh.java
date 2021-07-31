package tms;

import QQPIM.ADInfo;
import QQPIM.AnalyseInfo;
import QQPIM.AndroidCategoryExpand;
import QQPIM.AndroidSimpleInfoExpand;
import QQPIM.Category;
import QQPIM.CommentInfo;
import QQPIM.HotWordReqInfo;
import QQPIM.HotWordResInfo;
import QQPIM.MySoftSimpleInfo;
import QQPIM.SoftFeature;
import QQPIM.SoftInfo;
import QQPIM.SoftKey;
import QQPIM.SoftServerInfo;
import QQPIM.SoftSimpleInfo;
import android.content.Context;
import com.lenovo.lps.sus.a.a.a.b;
import com.qq.jce.wup.UniAttribute;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ErrorCode;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.market.CategoryEx;
import com.tencent.tmsecure.module.market.IFetchHotWordListener;
import com.tencent.tmsecure.module.market.IFetchSpecialCategoryListener;
import com.tencent.tmsecure.module.market.IMarketManagerListener;
import com.tencent.tmsecure.module.market.MarketManager;
import com.tencent.tmsecure.module.market.RequestInfo;
import com.tencent.tmsecure.module.market.ResponseInfo;
import com.tencent.tmsecure.module.market.SoftSimpleInfoEx;
import com.tencent.tmsecure.module.market.SpecialCategory;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import com.tencent.tmsecure.utils.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class dh extends BaseManager {
    private WupSessionManager a;

    private static void a(List<SoftSimpleInfo> list) {
        for (SoftSimpleInfo softSimpleInfo : list) {
            String nick_name = softSimpleInfo.getNick_name();
            if (nick_name != null && !nick_name.equals("")) {
                softSimpleInfo.getSoftkey().setName(nick_name);
            }
        }
    }

    private static void b(List<AnalyseInfo> list) {
        String nick_name;
        for (AnalyseInfo analyseInfo : list) {
            SoftInfo softInfo = analyseInfo.getSoftInfo();
            if (!(softInfo == null || (nick_name = softInfo.getNick_name()) == null || nick_name.equals(""))) {
                analyseInfo.getFeatureKey().setSoftName(nick_name);
            }
        }
    }

    public final void a(HotWordReqInfo hotWordReqInfo, IFetchHotWordListener iFetchHotWordListener) {
        ResponseInfo responseInfo = new ResponseInfo();
        HotWordResInfo hotWordResInfo = new HotWordResInfo();
        AtomicReference<HotWordResInfo> atomicReference = new AtomicReference<>();
        int hotWord = this.a.getHotWord(hotWordReqInfo, atomicReference);
        if (hotWord == 0) {
            responseInfo.type = 0;
            responseInfo.code = hotWord;
            hotWordResInfo = atomicReference.get();
        } else if (ErrorCode.judgeErrorCode(hotWord) == 0) {
            responseInfo.type = 2;
            responseInfo.code = hotWord;
            Log.e("MarketManager", "network error");
        } else {
            responseInfo.type = 1;
            responseInfo.code = hotWord;
            Log.e("MarketManager", "runtime error");
        }
        if (iFetchHotWordListener != null) {
            iFetchHotWordListener.onReceive(responseInfo, hotWordResInfo);
        }
    }

    public final void a(SoftKey softKey, int i, IMarketManagerListener<ResponseInfo, Void> iMarketManagerListener) {
        ResponseInfo responseInfo = new ResponseInfo();
        CommentInfo commentInfo = new CommentInfo();
        commentInfo.setSoftkey(softKey);
        commentInfo.setScore(i);
        ArrayList<CommentInfo> arrayList = new ArrayList<>();
        arrayList.add(commentInfo);
        int reportUserComment = this.a.reportUserComment(arrayList);
        if (reportUserComment == 0) {
            responseInfo.type = 0;
            responseInfo.code = reportUserComment;
        } else if (ErrorCode.judgeErrorCode(reportUserComment) == 0) {
            responseInfo.type = 2;
            responseInfo.code = reportUserComment;
            Log.e("MarketManager", "network error");
        } else {
            responseInfo.type = 1;
            responseInfo.code = reportUserComment;
            Log.e("MarketManager", "runtime error");
        }
        if (iMarketManagerListener != null) {
            iMarketManagerListener.onReceive(responseInfo, null);
        }
    }

    public final void a(IMarketManagerListener<ResponseInfo, ADInfo> iMarketManagerListener) {
        ResponseInfo responseInfo = new ResponseInfo();
        ArrayList<ADInfo> arrayList = new ArrayList<>();
        int aDs = this.a.getADs(arrayList);
        if (aDs == 0) {
            responseInfo.type = 0;
            responseInfo.code = aDs;
        } else if (ErrorCode.judgeErrorCode(aDs) == 0) {
            responseInfo.type = 2;
            responseInfo.code = aDs;
            Log.e("MarketManager", "network error");
        } else {
            responseInfo.type = 1;
            responseInfo.code = aDs;
            Log.e("MarketManager", "runtime error");
        }
        if (iMarketManagerListener != null) {
            iMarketManagerListener.onReceive(responseInfo, arrayList);
        }
    }

    public final void a(RequestInfo requestInfo, IFetchSpecialCategoryListener iFetchSpecialCategoryListener) {
        ResponseInfo responseInfo = new ResponseInfo();
        String str = "";
        if (requestInfo != null) {
            str = requestInfo.getRequestCommand();
        }
        AtomicReference<SoftServerInfo> atomicReference = new AtomicReference<>();
        ArrayList<SoftSimpleInfo> arrayList = new ArrayList<>();
        int softList = this.a.getSoftList(str, atomicReference, arrayList);
        a(arrayList);
        SpecialCategory specialCategory = new SpecialCategory();
        if (softList == 0) {
            responseInfo.type = 0;
            responseInfo.code = softList;
            UniAttribute uniAttribute = new UniAttribute();
            uniAttribute.setEncodeName(b.a);
            SoftServerInfo softServerInfo = atomicReference.get();
            if (!(softServerInfo == null || softServerInfo.getExpand() == null)) {
                CategoryEx categoryEx = new CategoryEx();
                uniAttribute.clearCacheData();
                uniAttribute.decode(softServerInfo.getExpand());
                Category category = (Category) uniAttribute.getByClass(MarketManager.JCE_EXPAND_KEY, new Category());
                categoryEx.setCategory(category);
                if (!(category == null || category.getExpand() == null)) {
                    uniAttribute.clearCacheData();
                    uniAttribute.decode(category.getExpand());
                    categoryEx.setExpand((AndroidCategoryExpand) uniAttribute.getByClass(MarketManager.JCE_EXPAND_KEY, new AndroidCategoryExpand()));
                }
                specialCategory.setCategoryEx(categoryEx);
            }
            ArrayList<SoftSimpleInfoEx> arrayList2 = new ArrayList<>();
            Iterator<SoftSimpleInfo> it = arrayList.iterator();
            while (it.hasNext()) {
                SoftSimpleInfo next = it.next();
                SoftSimpleInfoEx softSimpleInfoEx = new SoftSimpleInfoEx();
                softSimpleInfoEx.setSoftSimpleInfo(next);
                if (next.getExpand() != null) {
                    uniAttribute.clearCacheData();
                    uniAttribute.decode(next.getExpand());
                    softSimpleInfoEx.setExpand((AndroidSimpleInfoExpand) uniAttribute.getByClass(MarketManager.JCE_EXPAND_KEY, new AndroidSimpleInfoExpand()));
                }
                arrayList2.add(softSimpleInfoEx);
            }
            specialCategory.setSoftSimpleInfoExList(arrayList2);
        } else if (ErrorCode.judgeErrorCode(softList) == 0) {
            responseInfo.type = 2;
            responseInfo.code = softList;
            Log.e("MarketManager", "network error");
        } else {
            responseInfo.type = 1;
            responseInfo.code = softList;
            Log.e("MarketManager", "runtime error");
        }
        if (iFetchSpecialCategoryListener != null) {
            iFetchSpecialCategoryListener.onReceive(responseInfo, specialCategory);
        }
    }

    public final void a(RequestInfo requestInfo, IMarketManagerListener<ResponseInfo, CategoryEx> iMarketManagerListener) {
        ResponseInfo responseInfo = new ResponseInfo();
        String str = "";
        if (requestInfo != null) {
            str = requestInfo.getRequestCommand();
        }
        ArrayList<CategoryEx> arrayList = new ArrayList<>();
        AtomicReference<SoftServerInfo> atomicReference = new AtomicReference<>();
        ArrayList<Category> arrayList2 = new ArrayList<>();
        int categoryList = this.a.getCategoryList(str, atomicReference, arrayList2);
        if (categoryList == 0) {
            responseInfo.type = 0;
            responseInfo.code = categoryList;
            UniAttribute uniAttribute = new UniAttribute();
            uniAttribute.setEncodeName(b.a);
            Iterator<Category> it = arrayList2.iterator();
            while (it.hasNext()) {
                Category next = it.next();
                CategoryEx categoryEx = new CategoryEx();
                categoryEx.setCategory(next);
                if (!(next == null || next.getExpand() == null)) {
                    uniAttribute.clearCacheData();
                    uniAttribute.decode(next.getExpand());
                    categoryEx.setExpand((AndroidCategoryExpand) uniAttribute.getByClass(MarketManager.JCE_EXPAND_KEY, new AndroidCategoryExpand()));
                }
                arrayList.add(categoryEx);
            }
        } else if (ErrorCode.judgeErrorCode(categoryList) == 0) {
            responseInfo.type = 2;
            responseInfo.code = categoryList;
            Log.e("MarketManager", "network error");
        } else {
            responseInfo.type = 1;
            responseInfo.code = categoryList;
            Log.e("MarketManager", "runtime error");
        }
        if (iMarketManagerListener != null) {
            iMarketManagerListener.onReceive(responseInfo, arrayList);
        }
    }

    public final void a(RequestInfo requestInfo, List<SoftFeature> list, IMarketManagerListener<ResponseInfo, AnalyseInfo> iMarketManagerListener) {
        ResponseInfo responseInfo = new ResponseInfo();
        ArrayList<AnalyseInfo> arrayList = new ArrayList<>();
        int analyseInfo = this.a.getAnalyseInfo(list, arrayList);
        if (analyseInfo == 0) {
            responseInfo.type = 0;
            responseInfo.code = analyseInfo;
        } else if (ErrorCode.judgeErrorCode(analyseInfo) == 0) {
            responseInfo.type = 2;
            responseInfo.code = analyseInfo;
            Log.e("MarketManager", "network error");
        } else {
            responseInfo.type = 1;
            responseInfo.code = analyseInfo;
            Log.e("MarketManager", "runtime error");
        }
        if (iMarketManagerListener != null) {
            b(arrayList);
            iMarketManagerListener.onReceive(responseInfo, arrayList);
        }
    }

    public final void a(List<SoftFeature> list, IMarketManagerListener<ResponseInfo, Void> iMarketManagerListener) {
        ResponseInfo responseInfo = new ResponseInfo();
        int reportSoftFeature = this.a.reportSoftFeature(list);
        if (reportSoftFeature == 0) {
            responseInfo.type = 0;
            responseInfo.code = reportSoftFeature;
        } else if (ErrorCode.judgeErrorCode(reportSoftFeature) == 0) {
            responseInfo.type = 2;
            responseInfo.code = reportSoftFeature;
            Log.e("MarketManager", "network error");
        } else {
            responseInfo.type = 1;
            responseInfo.code = reportSoftFeature;
            Log.e("MarketManager", "runtime error");
        }
        if (iMarketManagerListener != null) {
            iMarketManagerListener.onReceive(responseInfo, null);
        }
    }

    public final boolean a() {
        return false;
    }

    public final void b(RequestInfo requestInfo, IMarketManagerListener<ResponseInfo, SoftSimpleInfoEx> iMarketManagerListener) {
        ResponseInfo responseInfo = new ResponseInfo();
        String str = "";
        if (requestInfo != null) {
            str = requestInfo.getRequestCommand();
        }
        ArrayList<SoftSimpleInfoEx> arrayList = new ArrayList<>();
        AtomicReference<SoftServerInfo> atomicReference = new AtomicReference<>();
        ArrayList<SoftSimpleInfo> arrayList2 = new ArrayList<>();
        int softList = this.a.getSoftList(str, atomicReference, arrayList2);
        if (softList == 0) {
            responseInfo.type = 0;
            responseInfo.code = softList;
            UniAttribute uniAttribute = new UniAttribute();
            uniAttribute.setEncodeName(b.a);
            Iterator<SoftSimpleInfo> it = arrayList2.iterator();
            while (it.hasNext()) {
                SoftSimpleInfo next = it.next();
                SoftSimpleInfoEx softSimpleInfoEx = new SoftSimpleInfoEx();
                softSimpleInfoEx.setSoftSimpleInfo(next);
                if (next.getExpand() != null) {
                    uniAttribute.clearCacheData();
                    uniAttribute.decode(next.getExpand());
                    softSimpleInfoEx.setExpand((AndroidSimpleInfoExpand) uniAttribute.getByClass(MarketManager.JCE_EXPAND_KEY, new AndroidSimpleInfoExpand()));
                }
                arrayList.add(softSimpleInfoEx);
            }
        } else if (ErrorCode.judgeErrorCode(softList) == 0) {
            responseInfo.type = 2;
            responseInfo.code = softList;
            Log.e("MarketManager", "network error");
        } else {
            responseInfo.type = 1;
            responseInfo.code = softList;
            Log.e("MarketManager", "runtime error");
        }
        if (iMarketManagerListener != null) {
            a(arrayList2);
            iMarketManagerListener.onReceive(responseInfo, arrayList);
        }
    }

    public final void b(RequestInfo requestInfo, List<SoftKey> list, IMarketManagerListener<ResponseInfo, MySoftSimpleInfo> iMarketManagerListener) {
        ResponseInfo responseInfo = new ResponseInfo();
        AtomicReference<SoftServerInfo> atomicReference = new AtomicReference<>();
        ArrayList<MySoftSimpleInfo> arrayList = new ArrayList<>();
        int mySoftList = this.a.getMySoftList(list, atomicReference, arrayList);
        if (mySoftList == 0) {
            responseInfo.type = 0;
            responseInfo.code = mySoftList;
        } else if (ErrorCode.judgeErrorCode(mySoftList) == 0) {
            responseInfo.type = 2;
            responseInfo.code = mySoftList;
            Log.e("MarketManager", "network error");
        } else {
            responseInfo.type = 1;
            responseInfo.code = mySoftList;
            Log.e("MarketManager", "runtime error");
        }
        if (iMarketManagerListener != null) {
            iMarketManagerListener.onReceive(responseInfo, arrayList);
        }
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 2;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = (WupSessionManager) ManagerCreator.getManager(WupSessionManager.class);
    }
}
