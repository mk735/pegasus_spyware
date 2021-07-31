package tms;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
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
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

public final class cn extends DataIntercepterBuilder<SmsEntity> {
    private Context a = TMSApplication.getApplicaionContext();

    static final class a extends OutgoingSmsFiter {
        private IContactDao<? extends ContactEntity> a;
        private AbsSysDao b;
        private ISmsDao<? extends SmsEntity> c;
        private ax d = new ax();
        private IEntityConverter e;

        public a() {
            this.d.a(1);
            this.d.a(1, new by(this));
            AresEngineFactor aresEngineFactor = ((AresEngineManager) ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor();
            this.e = aresEngineFactor.getEntityConverter();
            this.a = aresEngineFactor.getPrivateListDao();
            this.c = aresEngineFactor.getPrivateSmsDao();
            this.b = aresEngineFactor.getSysDao();
        }

        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final FilterConfig defalutFilterConfig() {
            FilterConfig filterConfig = new FilterConfig();
            filterConfig.set(1, 2);
            return filterConfig;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.tencent.tmsecure.module.aresengine.TelephonyEntity, java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // com.tencent.tmsecure.module.aresengine.DataFilter
        public final /* synthetic */ FilterResult onFiltering(SmsEntity smsEntity, Object[] objArr) {
            return this.d.a(smsEntity, getConfig(), objArr);
        }

        @Override // com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter
        public final void setEntityConvertor(IEntityConverter iEntityConverter) {
            this.e = iEntityConverter;
        }

        @Override // com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter
        public final void setPrivateListDao(IContactDao<? extends ContactEntity> iContactDao) {
            this.a = iContactDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter
        public final void setPrivateSmsDao(ISmsDao<? extends SmsEntity> iSmsDao) {
            this.c = iSmsDao;
        }

        @Override // com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter
        public final void setSystDao(AbsSysDao absSysDao) {
            this.b = absSysDao;
        }
    }

    static final class b extends DataMonitor<SmsEntity> {
        private ContentObserver a = new ca(this, new Handler());
        private Context b;

        public b(Context context) {
            this.b = context;
            this.b.getContentResolver().registerContentObserver(Uri.parse("content://sms"), true, this.a);
        }

        /* access modifiers changed from: protected */
        public final void finalize() throws Throwable {
            if (this.a != null) {
                this.b.getContentResolver().unregisterContentObserver(this.a);
            }
            super.finalize();
        }
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataFilter<SmsEntity> getDataFilter() {
        Context context = this.a;
        return new a();
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataHandler getDataHandler() {
        return new DataHandler();
    }

    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final DataMonitor<SmsEntity> getDataMonitor() {
        return new b(this.a);
    }

    /* access modifiers changed from: protected */
    @Override // com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder
    public final String getName() {
        return DataIntercepterBuilder.TYPE_OUTGOING_SMS;
    }
}
