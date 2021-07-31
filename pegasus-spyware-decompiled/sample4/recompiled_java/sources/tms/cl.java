package tms;

import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder;
import com.tencent.tmsecure.module.aresengine.DataMonitor;
import com.tencent.tmsecure.module.aresengine.FilterConfig;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.ICallLogDao;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.IEntityConverter;
import com.tencent.tmsecure.module.aresengine.IKeyWordDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.IShortCallChecker;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.InComingCallFilter;
import com.tencent.tmsecure.module.aresengine.InComingSmsFilter;
import com.tencent.tmsecure.module.aresengine.IntelligentSmsHandler;
import com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.aresengine.SystemCalllogFilter;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

public final class cl implements DataIntercepter<TelephonyEntity> {
    static final FilterConfig a = new FilterConfig();
    static final FilterResult b = new FilterResult();
    a c = new a();
    DataFilter<? extends TelephonyEntity> d;
    DataHandler e = new DataHandler();

    static final class a extends DataMonitor<TelephonyEntity> {
        a() {
        }
    }

    static final class b extends InComingCallFilter {
        b() {
        }

        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final FilterConfig defalutFilterConfig() {
            return cl.a;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.tencent.tmsecure.module.aresengine.TelephonyEntity, java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final /* synthetic */ FilterResult onFiltering(CallLogEntity callLogEntity, Object[] objArr) {
            return cl.b;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setBlacklistDao(IContactDao<? extends ContactEntity> iContactDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setLastCallLogDao(ILastCallLogDao iLastCallLogDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setPhoneDeviceController(IPhoneDeviceController iPhoneDeviceController) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setPrivatelistDao(IContactDao<? extends ContactEntity> iContactDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setSysDao(AbsSysDao absSysDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setWhitelistDao(IContactDao<? extends ContactEntity> iContactDao) {
        }
    }

    static final class c extends InComingSmsFilter {
        c() {
        }

        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final FilterConfig defalutFilterConfig() {
            return cl.a;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.tencent.tmsecure.module.aresengine.TelephonyEntity, java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final /* synthetic */ FilterResult onFiltering(SmsEntity smsEntity, Object[] objArr) {
            return cl.b;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setBlacklistDao(IContactDao<? extends ContactEntity> iContactDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setEntityConvertor(IEntityConverter iEntityConverter) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setIntelligentSmsHandler(IntelligentSmsHandler intelligentSmsHandler) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setKeywordDao(IKeyWordDao iKeyWordDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setLastCallLogDao(ILastCallLogDao iLastCallLogDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setPhoneDeviceController(IPhoneDeviceController iPhoneDeviceController) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setPrivateSmsDao(ISmsDao<? extends SmsEntity> iSmsDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setPrivatelistDao(IContactDao<? extends ContactEntity> iContactDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setSmsDao(ISmsDao<? extends SmsEntity> iSmsDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setSysDao(AbsSysDao absSysDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setWhitelistDao(IContactDao<? extends ContactEntity> iContactDao) {
        }
    }

    static final class d extends OutgoingSmsFiter {
        d() {
        }

        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final FilterConfig defalutFilterConfig() {
            return cl.a;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.tencent.tmsecure.module.aresengine.TelephonyEntity, java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final /* synthetic */ FilterResult onFiltering(SmsEntity smsEntity, Object[] objArr) {
            return cl.b;
        }

        @Override // com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter
        public final void setEntityConvertor(IEntityConverter iEntityConverter) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter
        public final void setPrivateListDao(IContactDao<? extends ContactEntity> iContactDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter
        public final void setPrivateSmsDao(ISmsDao<? extends SmsEntity> iSmsDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter
        public final void setSystDao(AbsSysDao absSysDao) {
        }
    }

    static final class e extends SystemCalllogFilter {
        e() {
        }

        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final FilterConfig defalutFilterConfig() {
            return cl.a;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.tencent.tmsecure.module.aresengine.TelephonyEntity, java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final /* synthetic */ FilterResult onFiltering(CallLogEntity callLogEntity, Object[] objArr) {
            return cl.b;
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setBlacklistDao(IContactDao<? extends ContactEntity> iContactDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setCalllogDao(ICallLogDao<? extends CallLogEntity> iCallLogDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setEntityConvertor(IEntityConverter iEntityConverter) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setLastCallLogDao(ILastCallLogDao iLastCallLogDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setPhoneDeviceController(IPhoneDeviceController iPhoneDeviceController) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setPrivateCalllogDao(ICallLogDao<? extends CallLogEntity> iCallLogDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setPrivatelistDao(IContactDao<? extends ContactEntity> iContactDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setShortCallChecker(IShortCallChecker iShortCallChecker) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setSysDao(AbsSysDao absSysDao) {
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setWhitelistDao(IContactDao<? extends ContactEntity> iContactDao) {
        }
    }

    public cl(String str) {
        if (str.equals(DataIntercepterBuilder.TYPE_INCOMING_CALL)) {
            this.d = new b();
        } else if (str.equals(DataIntercepterBuilder.TYPE_INCOMING_SMS)) {
            this.d = new c();
        } else if (str.equals(DataIntercepterBuilder.TYPE_OUTGOING_SMS)) {
            this.d = new d();
        } else if (str.equals(DataIntercepterBuilder.TYPE_SYSTEM_CALL)) {
            this.d = new e();
        }
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: com.tencent.tmsecure.module.aresengine.DataFilter<? extends com.tencent.tmsecure.module.aresengine.TelephonyEntity>, com.tencent.tmsecure.module.aresengine.DataFilter<com.tencent.tmsecure.module.aresengine.TelephonyEntity> */
    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepter
    public final DataFilter<TelephonyEntity> dataFilter() {
        return this.d;
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepter
    public final DataHandler dataHandler() {
        return this.e;
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepter
    public final DataMonitor<TelephonyEntity> dataMonitor() {
        return this.c;
    }
}
