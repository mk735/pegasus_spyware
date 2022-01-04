package tms;

import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.INetworkInfoDao;
import com.tencent.tmsecure.module.network.INetworkMonitor;
import com.tencent.tmsecure.module.network.NetDataEntity;
import com.tencent.tmsecure.module.network.NetDataEntityFactory;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

/* access modifiers changed from: package-private */
public class cz implements INetworkChangeCallBack, INetworkMonitor {
    private NetDataEntityFactory a;
    private INetworkInfoDao b;
    private Date c;
    private long d = 0;
    private long e = 0;
    private long f = 0;
    private NetDataEntity g;
    private int h = -1;
    private byte[] i = new byte[0];
    private List<INetworkChangeCallBack> j = new ArrayList();
    private boolean k = false;
    private boolean l = true;

    public cz(NetDataEntityFactory netDataEntityFactory, INetworkInfoDao iNetworkInfoDao) {
        this.a = netDataEntityFactory;
        this.b = iNetworkInfoDao;
        NetworkInfoEntity todayNetworkInfoEntity = this.b.getTodayNetworkInfoEntity();
        this.c = todayNetworkInfoEntity.mStartDate;
        this.d = todayNetworkInfoEntity.mTotalForMonth;
        this.e = todayNetworkInfoEntity.mUsedForDay;
        this.f = todayNetworkInfoEntity.mUsedForMonth;
        this.h = this.b.getClosingDayForMonth();
    }

    private NetworkInfoEntity c() {
        NetworkInfoEntity networkInfoEntity = new NetworkInfoEntity();
        networkInfoEntity.mTotalForMonth = this.d;
        networkInfoEntity.mUsedForMonth = this.f;
        networkInfoEntity.mRetialForMonth = this.d - this.f;
        networkInfoEntity.mUsedForDay = this.e;
        networkInfoEntity.mStartDate = this.c;
        this.b.setTodayNetworkInfoEntity(networkInfoEntity);
        return networkInfoEntity;
    }

    public final void a() {
        if (this.k) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
            gregorianCalendar2.setTime(this.c);
            GregorianCalendar a2 = s.a(gregorianCalendar, this.h);
            GregorianCalendar a3 = s.a(gregorianCalendar2, this.h);
            if (gregorianCalendar.get(5) == this.h && a2.get(2) != a3.get(2)) {
                this.f = 0;
                onClosingDateReached();
            }
            if (gregorianCalendar2.get(5) != gregorianCalendar.get(5)) {
                NetworkInfoEntity networkInfoEntity = new NetworkInfoEntity();
                networkInfoEntity.mStartDate = this.c;
                networkInfoEntity.mUsedForDay = this.e;
                this.b.insert(networkInfoEntity);
                this.b.resetToDayNetworkInfoEntity();
                this.e = 0;
                this.c = new Date();
                onDayChanged();
            }
            NetDataEntity netDataEntity = this.a.getNetDataEntity();
            if (netDataEntity.mReceiver > 0) {
                if (this.g == null) {
                    throw new NullPointerException("An unexpected exception had happen. The monitor's enable is " + this.k);
                }
                long j2 = netDataEntity.mReceiver + netDataEntity.mTranslate;
                long j3 = this.g.mReceiver + this.g.mTranslate;
                if (j3 == -1 || j3 == 0) {
                    this.g = netDataEntity;
                    j3 = j2;
                }
                long j4 = j2 - j3;
                if (j4 >= 0) {
                    j2 = j4;
                }
                this.e += j2;
                this.f = j2 + this.f;
                this.g = netDataEntity;
                this.b.setLastNetDataEntity(this.g);
            }
            onNormalChanged(c());
        }
    }

    public final void a(boolean z) {
        this.k = z;
        if (this.k) {
            this.g = this.b.getLastNetDataEntity();
            if (this.g == null || this.g.mReceiver < 0) {
                this.g = this.a.getNetDataEntity();
                this.b.setLastNetDataEntity(this.g);
                return;
            }
            return;
        }
        c();
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public int addCallback(INetworkChangeCallBack iNetworkChangeCallBack) {
        int hashCode;
        synchronized (this.i) {
            if (iNetworkChangeCallBack != null) {
                this.j.add(iNetworkChangeCallBack);
            }
            hashCode = iNetworkChangeCallBack != null ? iNetworkChangeCallBack.hashCode() : -1;
        }
        return hashCode;
    }

    public final void b() {
        NetworkInfoEntity systemTimeChange = this.b.getSystemTimeChange(this.c);
        if (systemTimeChange != null) {
            this.d = systemTimeChange.mTotalForMonth;
            this.f = systemTimeChange.mUsedForMonth;
            this.e = systemTimeChange.mUsedForDay;
        }
        this.c = new Date();
        c();
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public void clearAllLogs() {
        this.e = 0;
        this.f = 0;
        c();
        this.c = new Date();
        this.g = this.a.getNetDataEntity();
        this.b.setLastNetDataEntity(this.g);
        this.b.resetToDayNetworkInfoEntity();
        this.b.clearAll();
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public ArrayList<NetworkInfoEntity> getAllLogs() {
        ArrayList<NetworkInfoEntity> all = this.b.getAll();
        if (all != null && all.size() > 0) {
            Collections.sort(all);
        }
        return all;
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public boolean getRefreshState() {
        return this.l;
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public void notifyConfigChange() {
        if (this.k) {
            this.h = this.b.getClosingDayForMonth();
            this.d = this.b.getTotalForMonth();
            this.f = this.b.getUsedForMonth();
            this.e = this.b.getTodayNetworkInfoEntity().mUsedForDay;
        }
    }

    @Override // com.tencent.tmsecure.module.network.INetworkChangeCallBack
    public void onClosingDateReached() {
        synchronized (this.i) {
            try {
                if (this.l) {
                    for (INetworkChangeCallBack iNetworkChangeCallBack : this.j) {
                        iNetworkChangeCallBack.onClosingDateReached();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.tencent.tmsecure.module.network.INetworkChangeCallBack
    public void onDayChanged() {
        synchronized (this.i) {
            try {
                if (this.l) {
                    for (INetworkChangeCallBack iNetworkChangeCallBack : this.j) {
                        iNetworkChangeCallBack.onDayChanged();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.tencent.tmsecure.module.network.INetworkChangeCallBack
    public void onNormalChanged(NetworkInfoEntity networkInfoEntity) {
        synchronized (this.i) {
            try {
                if (this.l) {
                    for (INetworkChangeCallBack iNetworkChangeCallBack : this.j) {
                        iNetworkChangeCallBack.onNormalChanged(networkInfoEntity);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public boolean removeCallback(int i2) {
        synchronized (this.i) {
            for (int size = this.j.size() - 1; size >= 0; size--) {
                if (this.j.get(size).hashCode() == i2) {
                    return this.j.remove(size) != null;
                }
            }
            return false;
        }
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public boolean removeCallback(INetworkChangeCallBack iNetworkChangeCallBack) {
        boolean remove;
        synchronized (this.i) {
            remove = iNetworkChangeCallBack != null ? this.j.remove(iNetworkChangeCallBack) : false;
        }
        return remove;
    }

    @Override // com.tencent.tmsecure.module.network.INetworkMonitor
    public void setRefreshState(boolean z) {
        this.l = z;
    }
}
