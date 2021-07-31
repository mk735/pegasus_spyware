package tms;

import QQPIM.RuleTypeID;
import QQPIM.SmsReport;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.tencent.tccdb.MCheckInput;
import com.tencent.tccdb.MMatchSysResult;
import com.tencent.tccdb.MRuleTypeID;
import com.tencent.tccdb.SmsChecker;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.DataEntity;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.MessageHandler;
import com.tencent.tmsecure.common.SDKClient;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder;
import com.tencent.tmsecure.module.aresengine.DataMonitor;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.InComingSmsFilter;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import tms.bs;

public final class au extends BaseManager {
    private final HashMap<String, DataIntercepter<? extends TelephonyEntity>> a = new HashMap<>();
    private IIntelligentSmsChecker b;
    private AresEngineFactor c;

    /* access modifiers changed from: package-private */
    public final class a implements MessageHandler {
        a() {
        }

        @Override // com.tencent.tmsecure.common.MessageHandler
        public final boolean isMatch(int i) {
            return i == 1 || i == 2 || i == 3;
        }

        @Override // com.tencent.tmsecure.common.MessageHandler
        public final DataEntity onProcessing(DataEntity dataEntity) {
            boolean z = false;
            int what = dataEntity.what();
            DataEntity dataEntity2 = new DataEntity(what);
            switch (what) {
                case 1:
                    Bundle bundle = dataEntity.bundle();
                    SmsEntity a2 = SmsEntity.a(bundle.getByteArray(SofeModeMain.TS_SMS));
                    DataIntercepter<? extends TelephonyEntity> a3 = au.this.a(DataIntercepterBuilder.TYPE_INCOMING_SMS);
                    String string = bundle.getString("event_sender");
                    if (a3 != null) {
                        DataMonitor<? extends TelephonyEntity> dataMonitor = a3.dataMonitor();
                        if (!(dataMonitor instanceof bs.a)) {
                            dataMonitor.notifyDataReached(a2, new Object[0]);
                            break;
                        } else {
                            ((bs.a) dataMonitor).a(a2, 2, string);
                            break;
                        }
                    }
                    break;
                case 2:
                    SmsEntity a4 = SmsEntity.a(dataEntity.bundle().getByteArray(SofeModeMain.TS_SMS));
                    DataIntercepter<? extends TelephonyEntity> a5 = au.this.a(DataIntercepterBuilder.TYPE_INCOMING_SMS);
                    DataFilter<? extends TelephonyEntity> dataFilter = a5 != null ? a5.dataFilter() : null;
                    if (a5 != null && (dataFilter instanceof InComingSmsFilter)) {
                        DataHandler dataHandler = a5.dataHandler();
                        dataFilter.a();
                        FilterResult filter = dataFilter.filter(a4, 1, null);
                        dataFilter.a(dataHandler);
                        if (filter != null) {
                            IIntelligentSmsChecker.CheckResult checkResult = (filter.mParams == null || filter.mParams.length <= 0) ? null : (IIntelligentSmsChecker.CheckResult) filter.mParams[0];
                            z = (filter != null && (filter.mState == 1 || (filter.mState == 2 && checkResult != null && (checkResult != null ? ((Boolean) filter.mParams[1]).booleanValue() : false)))) || (filter.mState == 2 && filter.mFilterfiled == 1);
                        }
                    }
                    dataEntity2.bundle().putBoolean("blocked", z);
                    break;
                case 3:
                    Bundle bundle2 = dataEntity.bundle();
                    String string2 = bundle2.getString("command");
                    String string3 = bundle2.getString(SettingUtil.DATA);
                    if (!(string2 == null || string3 == null)) {
                        if (!string2.equals("add")) {
                            w.a().b(string3);
                            break;
                        } else {
                            w.a().a(string3);
                            break;
                        }
                    }
            }
            return dataEntity2;
        }
    }

    /* access modifiers changed from: package-private */
    public static final class b implements IIntelligentSmsChecker {
        static final int[][] a = {new int[]{0, 0}, new int[]{1, 1}, new int[]{2, 2}};
        private Context b;
        private SmsChecker c = SmsChecker.getInstance(this.b);

        public b(Context context) {
            this.b = context;
        }

        private static int a(MMatchSysResult mMatchSysResult) {
            int i = mMatchSysResult.finalAction;
            if (i <= 0 || i > 4) {
                return -1;
            }
            return i == 1 ? (mMatchSysResult.actionReason == 1 || mMatchSysResult.actionReason == 5) ? mMatchSysResult.minusMark <= 10 ? 1 : 4 : i : i;
        }

        @Override // com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker
        public final IIntelligentSmsChecker.CheckResult check(SmsEntity smsEntity) {
            IIntelligentSmsChecker.CheckResult checkResult = new IIntelligentSmsChecker.CheckResult();
            if (smsEntity.protocolType < 0 || smsEntity.protocolType > 2) {
                smsEntity.protocolType = 0;
            }
            MCheckInput mCheckInput = new MCheckInput(smsEntity.phonenum, smsEntity.body, 3, a[smsEntity.protocolType][0], 0);
            AtomicReference<MMatchSysResult> atomicReference = new AtomicReference<>();
            this.c.checkSmsSys(mCheckInput, atomicReference);
            MMatchSysResult mMatchSysResult = atomicReference.get();
            checkResult.mInnterResult = mMatchSysResult;
            checkResult.mContentType = mMatchSysResult.contentType;
            checkResult.mSuggestion = a(mMatchSysResult);
            return checkResult;
        }

        @Override // com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker
        public final boolean isChartSms(SmsEntity smsEntity) {
            AtomicReference<MMatchSysResult> atomicReference = new AtomicReference<>();
            if (smsEntity.body == null || smsEntity.body.length() == 0) {
                return false;
            }
            boolean checkChargeSms = this.c.checkChargeSms(new MCheckInput(smsEntity.phonenum, smsEntity.body, 3, smsEntity.protocolType, smsEntity.type == 2 ? 1 : 0), atomicReference);
            if (!checkChargeSms) {
                return checkChargeSms;
            }
            int a2 = a(atomicReference.get());
            return a2 == 2 || a2 == 3;
        }
    }

    public final DataIntercepter<? extends TelephonyEntity> a(String str) {
        return this.a.get(str);
    }

    public final List<DataIntercepter<? extends TelephonyEntity>> a() {
        return new ArrayList(this.a.values());
    }

    public final void a(int i) {
        if (i != 0) {
            String encode = Uri.encode("#");
            String str = "";
            switch (i) {
                case 1:
                    str = "00000000000";
                    break;
                case 2:
                    str = "13632545744";
                    break;
                case 3:
                    str = "13826512148";
                    break;
            }
            Intent intent = new Intent("android.intent.action.CALL", Uri.parse("tel:**67*" + str + encode));
            intent.setFlags(268435456);
            TMSApplication.getApplicaionContext().startActivity(intent);
            return;
        }
        String encode2 = Uri.encode("#");
        Intent intent2 = new Intent("android.intent.action.CALL", Uri.parse("tel:" + encode2 + "67" + encode2));
        intent2.setFlags(268435456);
        TMSApplication.getApplicaionContext().startActivity(intent2);
    }

    public final void a(AresEngineFactor aresEngineFactor) {
        this.c = aresEngineFactor;
    }

    public final void a(DataIntercepterBuilder<? extends TelephonyEntity> dataIntercepterBuilder) {
        if (!this.a.containsKey(dataIntercepterBuilder.getName())) {
            this.a.put(dataIntercepterBuilder.getName(), dataIntercepterBuilder.a());
            return;
        }
        throw new RuntimeException("the intercepter named " + dataIntercepterBuilder.getName() + " had exited");
    }

    public final boolean a(List<SmsEntity> list) {
        ArrayList arrayList = new ArrayList();
        IIntelligentSmsChecker b2 = b();
        for (SmsEntity smsEntity : list) {
            MMatchSysResult mMatchSysResult = b2.check(smsEntity).mInnterResult;
            SmsReport smsReport = new SmsReport();
            smsReport.setComment(null);
            smsReport.setMatchTime((int) (System.currentTimeMillis() / 1000));
            smsReport.setSender(smsEntity.phonenum);
            smsReport.setSms(smsEntity.body);
            if (smsEntity.protocolType < 0 || smsEntity.protocolType > 2) {
                smsEntity.protocolType = 0;
            }
            smsReport.setSmsType(b.a[smsEntity.protocolType][0]);
            smsReport.setUcAction(mMatchSysResult.finalAction);
            smsReport.setUcActionReason(mMatchSysResult.actionReason);
            smsReport.setUcMinusMark(mMatchSysResult.minusMark);
            smsReport.setUcContentType(mMatchSysResult.contentType);
            smsReport.vecHitRule = new ArrayList<>();
            MRuleTypeID[] mRuleTypeIDArr = mMatchSysResult.ruleTypeID;
            for (MRuleTypeID mRuleTypeID : mRuleTypeIDArr) {
                smsReport.vecHitRule.add(new RuleTypeID(mRuleTypeID.ruleType, mRuleTypeID.ruleID));
            }
            arrayList.add(smsReport);
        }
        return ((WupSessionManager) ManagerCreator.getManager(WupSessionManager.class)).reportSms(arrayList) == 0;
    }

    public final IIntelligentSmsChecker b() {
        return this.b;
    }

    public final AresEngineFactor c() {
        if (this.c != null) {
            return this.c;
        }
        throw new NullPointerException("The AresEngineManager's Factor can not be null.");
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.b = new b(context);
        SDKClient.addMessageHandler(new a());
        v.a(context, UpdateConfig.SMS_CHECKER_NAME, (String) null);
    }
}
