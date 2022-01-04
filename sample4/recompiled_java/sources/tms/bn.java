package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder;
import com.tencent.tmsecure.module.aresengine.DataMonitor;
import com.tencent.tmsecure.module.aresengine.FilterConfig;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.InComingCallFilter;
import tms.ax;

public final class bn extends DataIntercepterBuilder<CallLogEntity> {
    private Context a = TMSApplication.getApplicaionContext();

    static final class a extends InComingCallFilter {
        private IContactDao<? extends ContactEntity> a;
        private IContactDao<? extends ContactEntity> b;
        private IContactDao<? extends ContactEntity> c;
        private AbsSysDao d;
        private ILastCallLogDao e;
        private ax f = new ax();
        private IPhoneDeviceController g;

        a() {
            this.f.a(1, 2, 4, 8, 16, 32);
            this.f.a(1, a(1));
            this.f.a(2, a(2));
            this.f.a(4, a(4));
            this.f.a(8, a(8));
            this.f.a(16, a(16));
            this.f.a(32, a(32));
            AresEngineFactor aresEngineFactor = ((AresEngineManager) ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor();
            this.g = aresEngineFactor.getPhoneDeviceController();
            this.a = aresEngineFactor.getWhiteListDao();
            this.b = aresEngineFactor.getBlackListDao();
            this.c = aresEngineFactor.getPrivateListDao();
            this.e = aresEngineFactor.getLastCallLogDao();
            this.d = aresEngineFactor.getSysDao();
        }

        private ax.a a(int i) {
            return new bc(this, i);
        }

        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final FilterConfig defalutFilterConfig() {
            FilterConfig filterConfig = new FilterConfig();
            filterConfig.set(1, 0);
            filterConfig.set(2, 0);
            filterConfig.set(4, 1);
            filterConfig.set(8, 0);
            filterConfig.set(16, 0);
            filterConfig.set(32, 0);
            return filterConfig;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.tencent.tmsecure.module.aresengine.TelephonyEntity, java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final /* synthetic */ FilterResult onFiltering(CallLogEntity callLogEntity, Object[] objArr) {
            return this.f.a(callLogEntity, getConfig(), objArr);
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setBlacklistDao(IContactDao<? extends ContactEntity> iContactDao) {
            this.b = iContactDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setLastCallLogDao(ILastCallLogDao iLastCallLogDao) {
            this.e = iLastCallLogDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setPhoneDeviceController(IPhoneDeviceController iPhoneDeviceController) {
            this.g = iPhoneDeviceController;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setPrivatelistDao(IContactDao<? extends ContactEntity> iContactDao) {
            this.c = iContactDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setSysDao(AbsSysDao absSysDao) {
            this.d = absSysDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingCallFilter
        public final void setWhitelistDao(IContactDao<? extends ContactEntity> iContactDao) {
            this.a = iContactDao;
        }
    }

    static final class b extends DataMonitor<CallLogEntity> {
        private Context a;
        private BroadcastReceiver b = new be(this);

        public b(Context context) {
            this.a = context;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.setPriority(Integer.MAX_VALUE);
            intentFilter.addCategory("android.intent.category.DEFAULT");
            intentFilter.addAction("android.intent.action.PHONE_STATE");
            this.a.registerReceiver(this.b, intentFilter);
        }

        /* access modifiers changed from: protected */
        public final void finalize() throws Throwable {
            this.a.unregisterReceiver(this.b);
            super.finalize();
        }
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataFilter<CallLogEntity> getDataFilter() {
        Context context = this.a;
        return new a();
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataHandler getDataHandler() {
        return new DataHandler();
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataMonitor<CallLogEntity> getDataMonitor() {
        return new b(this.a);
    }

    /* access modifiers changed from: protected */
    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final String getName() {
        return DataIntercepterBuilder.TYPE_INCOMING_CALL;
    }
}
