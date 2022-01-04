package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.RemoteException;
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.tencent.tmsecure.common.DataEntity;
import com.tencent.tmsecure.common.ISDKClient;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder;
import com.tencent.tmsecure.module.aresengine.DataMonitor;
import com.tencent.tmsecure.module.aresengine.FilterConfig;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.IEntityConverter;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.IKeyWordDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.InComingSmsFilter;
import com.tencent.tmsecure.module.aresengine.IntelligentSmsHandler;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.ArrayList;
import tms.ax;

public final class bs extends DataIntercepterBuilder<SmsEntity> {
    private Context a = TMSApplication.getApplicaionContext();

    static final class a extends DataMonitor<SmsEntity> {
        private Context a = TMSApplication.getApplicaionContext();
        private bx b;
        private c c = new c((byte) 0);

        public a() {
            a();
        }

        private void a() {
            this.b = new bg(this);
            this.b.a(this.a);
        }

        private void b() {
            this.b.b(this.a);
        }

        /* access modifiers changed from: package-private */
        public final void a(SmsEntity smsEntity, Object... objArr) {
            if (smsEntity != null) {
                notifyDataReached(smsEntity, objArr);
            }
        }

        /* access modifiers changed from: protected */
        public final void finalize() throws Throwable {
            b();
            super.finalize();
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [boolean, com.tencent.tmsecure.module.aresengine.TelephonyEntity, java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // com.tencent.tmsecure.module.aresengine.DataMonitor
        public final /* synthetic */ void onPostDataToFilter(boolean z, SmsEntity smsEntity, Object[] objArr) {
            super.onPostDataToFilter(z, smsEntity, objArr);
            if (z && objArr != null && objArr.length >= 2 && (objArr[1] instanceof BroadcastReceiver)) {
                ((BroadcastReceiver) objArr[1]).abortBroadcast();
            }
        }

        @Override // com.tencent.tmsecure.module.aresengine.DataMonitor
        public final void setRegisterState(boolean z) {
            if (z == this.b.a()) {
                return;
            }
            if (z) {
                a();
            } else {
                b();
            }
        }
    }

    static final class b extends InComingSmsFilter {
        private IContactDao<? extends ContactEntity> d;
        private IContactDao<? extends ContactEntity> e;
        private IContactDao<? extends ContactEntity> f;
        private AbsSysDao g;
        private ISmsDao<? extends SmsEntity> h;
        private ISmsDao<? extends SmsEntity> i;
        private IKeyWordDao j;
        private ILastCallLogDao k;
        private IntelligentSmsHandler l;
        private IEntityConverter m;
        private IPhoneDeviceController n;
        private IIntelligentSmsChecker o = ((AresEngineManager) ManagerCreator.getManager(AresEngineManager.class)).getIntelligentSmsChecker();
        private ax p = new ax();

        b() {
            this.p.a(1, 2, 4, 8, 16, 32, 64, 128);
            this.p.a(1, new bh(this));
            this.p.a(2, new bj(this));
            this.p.a(4, new bk(this));
            this.p.a(8, new bl(this));
            this.p.a(16, new bm(this));
            this.p.a(32, new bp(this));
            this.p.a(64, new bq(this));
            this.p.a(128, new br(this));
            AresEngineFactor aresEngineFactor = ((AresEngineManager) ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor();
            this.n = aresEngineFactor.getPhoneDeviceController();
            this.f = aresEngineFactor.getPrivateListDao();
            this.d = aresEngineFactor.getWhiteListDao();
            this.e = aresEngineFactor.getBlackListDao();
            this.j = aresEngineFactor.getKeyWordDao();
            this.g = aresEngineFactor.getSysDao();
            this.k = aresEngineFactor.getLastCallLogDao();
            this.h = aresEngineFactor.getSmsDao();
            this.i = aresEngineFactor.getPrivateSmsDao();
            this.m = aresEngineFactor.getEntityConverter();
        }

        /* access modifiers changed from: private */
        public final Runnable a(SmsEntity smsEntity, ISmsDao<? extends SmsEntity> iSmsDao, FilterResult filterResult) {
            return new bt(this, iSmsDao, smsEntity, filterResult);
        }

        static /* synthetic */ void a(b bVar, ax.a aVar) {
            FilterResult filterResult = new FilterResult();
            SmsEntity smsEntity = (SmsEntity) aVar.a();
            filterResult.mData = aVar.a();
            filterResult.mFilterfiled = aVar.d();
            filterResult.mState = aVar.b();
            if (aVar.b() == 0) {
                bVar.n.unBlockSms(smsEntity, aVar.c());
            } else if (aVar.b() == 1) {
                bVar.n.blockSms(aVar.c());
                if (bVar.h != null) {
                    filterResult.mDotos.add(bVar.a((SmsEntity) aVar.a(), bVar.h, filterResult));
                }
            }
            aVar.a(filterResult);
        }

        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final FilterConfig defalutFilterConfig() {
            FilterConfig filterConfig = new FilterConfig();
            filterConfig.set(1, 2);
            filterConfig.set(2, 0);
            filterConfig.set(4, 1);
            filterConfig.set(8, 0);
            filterConfig.set(16, 0);
            filterConfig.set(32, 1);
            filterConfig.set(64, 2);
            filterConfig.set(128, 1);
            return filterConfig;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.tencent.tmsecure.module.aresengine.TelephonyEntity, java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final /* synthetic */ FilterResult onFiltering(SmsEntity smsEntity, Object[] objArr) {
            SmsEntity smsEntity2 = smsEntity;
            FilterResult a = this.p.a(smsEntity2, getConfig(), objArr);
            if (a != null) {
                return a;
            }
            FilterResult filterResult = new FilterResult();
            filterResult.mData = smsEntity2;
            filterResult.mFilterfiled = -1;
            filterResult.mState = 0;
            if (objArr != null && objArr.length >= 2 && ((Integer) objArr[0]).intValue() == 2) {
                filterResult.mDotos.add(new bi(this, smsEntity2, objArr));
            }
            return filterResult;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setBlacklistDao(IContactDao<? extends ContactEntity> iContactDao) {
            this.e = iContactDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setEntityConvertor(IEntityConverter iEntityConverter) {
            this.m = iEntityConverter;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setIntelligentSmsHandler(IntelligentSmsHandler intelligentSmsHandler) {
            this.l = intelligentSmsHandler;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setKeywordDao(IKeyWordDao iKeyWordDao) {
            this.j = iKeyWordDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setLastCallLogDao(ILastCallLogDao iLastCallLogDao) {
            this.k = iLastCallLogDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setPhoneDeviceController(IPhoneDeviceController iPhoneDeviceController) {
            this.n = iPhoneDeviceController;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setPrivateSmsDao(ISmsDao<? extends SmsEntity> iSmsDao) {
            this.i = iSmsDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setPrivatelistDao(IContactDao<? extends ContactEntity> iContactDao) {
            this.f = iContactDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setSmsDao(ISmsDao<? extends SmsEntity> iSmsDao) {
            this.h = iSmsDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setSysDao(AbsSysDao absSysDao) {
            this.g = absSysDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.InComingSmsFilter
        public final void setWhitelistDao(IContactDao<? extends ContactEntity> iContactDao) {
            this.d = iContactDao;
        }
    }

    /* access modifiers changed from: package-private */
    public static final class c {
        private w a;

        private c() {
            this.a = w.a();
        }

        /* synthetic */ c(byte b) {
            this();
        }

        /* access modifiers changed from: private */
        public ArrayList<ISDKClient> a(SmsEntity smsEntity) {
            ArrayList<ISDKClient> b = this.a.b();
            ArrayList<ISDKClient> arrayList = new ArrayList<>();
            DataEntity dataEntity = new DataEntity(2);
            dataEntity.bundle().putByteArray(SofeModeMain.TS_SMS, SmsEntity.a(smsEntity));
            try {
                for (int size = b.size() - 1; size >= 0; size--) {
                    ISDKClient iSDKClient = b.get(size);
                    DataEntity sendMessage = iSDKClient.sendMessage(dataEntity);
                    if (sendMessage == null) {
                        b.remove(iSDKClient);
                    } else if (sendMessage != null && sendMessage.bundle().getBoolean("blocked")) {
                        arrayList.add(iSDKClient);
                    }
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            return arrayList.size() == 0 ? b : arrayList;
        }

        public final boolean a(SmsEntity smsEntity, Object... objArr) {
            BroadcastReceiver broadcastReceiver = (BroadcastReceiver) objArr[0];
            if (this.a.c() == 1) {
                return true;
            }
            if (broadcastReceiver != null) {
                broadcastReceiver.abortBroadcast();
            }
            new bu(this, smsEntity).start();
            return false;
        }
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataFilter<SmsEntity> getDataFilter() {
        Context context = this.a;
        return new b();
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataHandler getDataHandler() {
        return new DataHandler();
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataMonitor<SmsEntity> getDataMonitor() {
        return new a();
    }

    /* access modifiers changed from: protected */
    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final String getName() {
        return DataIntercepterBuilder.TYPE_INCOMING_SMS;
    }
}
