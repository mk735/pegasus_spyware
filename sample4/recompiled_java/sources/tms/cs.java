package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.CallLog;
import android.telephony.PhoneNumberUtils;
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
import com.tencent.tmsecure.module.aresengine.ICallLogDao;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.IEntityConverter;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.IShortCallChecker;
import com.tencent.tmsecure.module.aresengine.SystemCalllogFilter;
import java.util.concurrent.ConcurrentLinkedQueue;
import tms.ax;

public final class cs extends DataIntercepterBuilder<CallLogEntity> {
    private Context a = TMSApplication.getApplicaionContext();

    static final class a extends DataMonitor<CallLogEntity> {
        private Context a;
        private ContentObserver b;
        private BroadcastReceiver c;
        private final ConcurrentLinkedQueue<String> d = new ConcurrentLinkedQueue<>();
        private final ConcurrentLinkedQueue<String> e = new ConcurrentLinkedQueue<>();

        public a(Context context) {
            this.a = context;
            this.c = new cc(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.setPriority(Integer.MAX_VALUE);
            intentFilter.addCategory("android.intent.category.DEFAULT");
            intentFilter.addAction("android.intent.action.PHONE_STATE");
            this.a.registerReceiver(this.c, intentFilter);
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.setPriority(Integer.MAX_VALUE);
            intentFilter2.addCategory("android.intent.category.DEFAULT");
            intentFilter2.addAction("android.intent.action.NEW_OUTGOING_CALL");
            this.a.registerReceiver(this.c, intentFilter2);
            Handler handler = new Handler();
            this.b = new cd(this, handler, handler);
            this.a.getContentResolver().registerContentObserver(CallLog.CONTENT_URI, true, this.b);
        }

        static /* synthetic */ void a(a aVar, CallLogEntity callLogEntity, ConcurrentLinkedQueue concurrentLinkedQueue) {
            String str;
            while (concurrentLinkedQueue.size() > 0 && (str = (String) concurrentLinkedQueue.peek()) != null && str.equals(callLogEntity.phonenum)) {
                concurrentLinkedQueue.poll();
                if (!str.equals("null")) {
                    long currentTimeMillis = System.currentTimeMillis();
                    callLogEntity.phonenum = PhoneNumberUtils.stripSeparators(callLogEntity.phonenum);
                    aVar.notifyDataReached(callLogEntity, Long.valueOf(currentTimeMillis));
                }
            }
            concurrentLinkedQueue.clear();
        }

        /* access modifiers changed from: protected */
        public final void finalize() throws Throwable {
            this.a.getContentResolver().unregisterContentObserver(this.b);
            this.b = null;
            this.a.unregisterReceiver(this.c);
            this.c = null;
            super.finalize();
        }
    }

    static final class b extends SystemCalllogFilter {
        private IContactDao<? extends ContactEntity> a;
        private IContactDao<? extends ContactEntity> b;
        private IContactDao<? extends ContactEntity> c;
        private ICallLogDao<? extends CallLogEntity> d;
        private ICallLogDao<? extends CallLogEntity> e;
        private ILastCallLogDao f;
        private IShortCallChecker g;
        private AbsSysDao h;
        private IPhoneDeviceController i;
        private IEntityConverter j;
        private Context k;
        private ax l = new ax();
        private boolean m = c();

        public b(Context context) {
            this.k = context;
            this.l.a(1, 2, 4, 8, 16, 32, 128, 64, 256);
            this.l.a(1, new cf(this));
            this.l.a(2, new cg(this));
            this.l.a(4, new ch(this));
            this.l.a(8, new ci(this));
            this.l.a(16, new ck(this));
            this.l.a(32, new co(this));
            this.l.a(64, new cp(this));
            this.l.a(128, new cq(this));
            this.l.a(256, new cr(this));
            AresEngineFactor aresEngineFactor = ((AresEngineManager) ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor();
            this.c = aresEngineFactor.getPrivateListDao();
            this.a = aresEngineFactor.getWhiteListDao();
            this.b = aresEngineFactor.getBlackListDao();
            this.d = aresEngineFactor.getCallLogDao();
            this.e = aresEngineFactor.getPrivateCallLogDao();
            this.h = aresEngineFactor.getSysDao();
            this.f = aresEngineFactor.getLastCallLogDao();
            this.j = aresEngineFactor.getEntityConverter();
            this.i = aresEngineFactor.getPhoneDeviceController();
        }

        static /* synthetic */ void a(b bVar, ax.a aVar, ICallLogDao iCallLogDao, boolean z, boolean z2) {
            FilterResult filterResult = new FilterResult();
            filterResult.mParams = aVar.c();
            filterResult.mData = aVar.a();
            filterResult.mFilterfiled = aVar.d();
            filterResult.mState = aVar.b();
            aVar.a(filterResult);
            if (iCallLogDao != null && z) {
                CallLogEntity callLogEntity = (CallLogEntity) aVar.a();
                if (z2) {
                    callLogEntity.type = 1;
                }
                bVar.h.remove(callLogEntity);
                if (bVar.j != null) {
                    callLogEntity = bVar.j.convert(callLogEntity);
                }
                iCallLogDao.insert(callLogEntity, filterResult);
            }
        }

        private boolean c() {
            try {
                return this.k.getPackageManager().getApplicationInfo("com.htc.launcher", 0) != null;
            } catch (PackageManager.NameNotFoundException e2) {
                return false;
            }
        }

        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final FilterConfig defalutFilterConfig() {
            FilterConfig filterConfig = new FilterConfig();
            filterConfig.set(1, 2);
            filterConfig.set(2, 0);
            filterConfig.set(4, 1);
            filterConfig.set(8, 0);
            filterConfig.set(16, 0);
            filterConfig.set(32, 3);
            filterConfig.set(128, 2);
            filterConfig.set(64, 2);
            filterConfig.set(256, 2);
            return filterConfig;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.tencent.tmsecure.module.aresengine.TelephonyEntity, com.tencent.tmsecure.module.aresengine.FilterResult] */
        /* access modifiers changed from: protected */
        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final /* synthetic */ void onFiltered(CallLogEntity callLogEntity, FilterResult filterResult) {
            CallLogEntity callLogEntity2 = callLogEntity;
            super.onFiltered(callLogEntity2, filterResult);
            if (callLogEntity2.type == 2) {
                this.f.update(callLogEntity2);
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.tencent.tmsecure.module.aresengine.TelephonyEntity, java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final /* synthetic */ FilterResult onFiltering(CallLogEntity callLogEntity, Object[] objArr) {
            return this.l.a(callLogEntity, getConfig(), objArr);
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setBlacklistDao(IContactDao<? extends ContactEntity> iContactDao) {
            this.b = iContactDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setCalllogDao(ICallLogDao<? extends CallLogEntity> iCallLogDao) {
            this.d = iCallLogDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setEntityConvertor(IEntityConverter iEntityConverter) {
            this.j = iEntityConverter;
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setLastCallLogDao(ILastCallLogDao iLastCallLogDao) {
            this.f = iLastCallLogDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setPhoneDeviceController(IPhoneDeviceController iPhoneDeviceController) {
            this.i = iPhoneDeviceController;
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setPrivateCalllogDao(ICallLogDao<? extends CallLogEntity> iCallLogDao) {
            this.e = iCallLogDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setPrivatelistDao(IContactDao<? extends ContactEntity> iContactDao) {
            this.c = iContactDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setShortCallChecker(IShortCallChecker iShortCallChecker) {
            this.g = iShortCallChecker;
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setSysDao(AbsSysDao absSysDao) {
            this.h = absSysDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
        public final void setWhitelistDao(IContactDao<? extends ContactEntity> iContactDao) {
            this.a = iContactDao;
        }
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataFilter<CallLogEntity> getDataFilter() {
        return new b(this.a);
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataHandler getDataHandler() {
        return new DataHandler();
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataMonitor<CallLogEntity> getDataMonitor() {
        return new a(this.a);
    }

    /* access modifiers changed from: protected */
    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final String getName() {
        return DataIntercepterBuilder.TYPE_SYSTEM_CALL;
    }
}
