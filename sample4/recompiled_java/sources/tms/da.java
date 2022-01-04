package tms;

import com.tencent.tmsecure.module.network.INetworkInfoDao;
import com.tencent.tmsecure.module.network.NetDataEntity;
import com.tencent.tmsecure.module.network.NetDataEntityFactory;
import java.io.File;

/* access modifiers changed from: package-private */
public final class da extends cz {

    static final class a implements NetDataEntityFactory {
        private db a;
        private String b = dt.a();

        public a(db dbVar) {
            this.a = dbVar;
        }

        @Override // com.tencent.tmsecure.module.network.NetDataEntityFactory
        public final NetDataEntity getNetDataEntity() {
            NetDataEntity netDataEntity = new NetDataEntity();
            long[] jArr = {0, 0, 0, 0};
            String[] b2 = v.b(new File(this.b));
            if (b2 != null) {
                synchronized (b2) {
                    for (String str : b2) {
                        String[] split = str.trim().split("[: ]+");
                        if (this.a.b(split[0].trim().toLowerCase())) {
                            jArr[0] = jArr[0] + Long.parseLong(split[1]);
                            jArr[1] = jArr[1] + Long.parseLong(split[2]);
                            jArr[2] = jArr[2] + Long.parseLong(split[9]);
                            jArr[3] = jArr[3] + Long.parseLong(split[10]);
                        }
                    }
                }
            }
            netDataEntity.mReceiver = jArr[0];
            netDataEntity.mReceiverPks = jArr[1];
            netDataEntity.mTranslate = jArr[2];
            netDataEntity.mTranslatePks = jArr[3];
            return netDataEntity;
        }
    }

    public da(INetworkInfoDao iNetworkInfoDao, db dbVar) {
        super(new a(dbVar), iNetworkInfoDao);
    }
}
