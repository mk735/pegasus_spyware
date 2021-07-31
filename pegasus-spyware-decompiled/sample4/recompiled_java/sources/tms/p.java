package tms;

import QQPIM.ClientVersionInfo;
import QQPIM.CloudInfo;
import QQPIM.ServerCmdInfo;
import QQPIM.TipsInfo;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;

public final class p {
    private static p c = null;
    private Context a;
    private final ConcurrentLinkedQueue<CloudInfo> b = new ConcurrentLinkedQueue<>();
    private af d;
    private boolean e = false;

    private p(Context context) {
        this.a = context;
        this.d = new af("wup");
    }

    public static synchronized p a(Context context) {
        p pVar;
        synchronized (p.class) {
            if (c == null) {
                c = new p(context);
            }
            pVar = c;
        }
        return pVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:9:0x0013  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void a(QQPIM.CloudInfo r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            java.util.ArrayList r0 = r3.getCloudcmds()     // Catch:{ all -> 0x0020 }
            if (r0 != 0) goto L_0x0009
        L_0x0007:
            monitor-exit(r2)
            return
        L_0x0009:
            java.util.Iterator r1 = r0.iterator()
        L_0x000d:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0007
            java.lang.Object r0 = r1.next()
            QQPIM.CloudCmd r0 = (QQPIM.CloudCmd) r0
            int r0 = r2.a(r3, r0)
            if (r0 == 0) goto L_0x000d
            goto L_0x0007
        L_0x0020:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.p.a(QQPIM.CloudInfo):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0081, code lost:
        if (tms.q.b(r7.a, r7.a.getFilesDir().getAbsolutePath() + "/temp.apk") != false) goto L_0x005c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int a(QQPIM.CloudInfo r8, QQPIM.CloudCmd r9) {
        /*
        // Method dump skipped, instructions count: 376
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.p.a(QQPIM.CloudInfo, QQPIM.CloudCmd):int");
    }

    public final synchronized void a() {
        boolean a2 = this.d.a(q.a, false);
        long a3 = this.d.a(q.b, 0L);
        long a4 = this.d.a(q.c, 0L);
        long currentTimeMillis = System.currentTimeMillis();
        if ((!a2 || currentTimeMillis > a4 + 60000 || Math.abs(currentTimeMillis - a3) > 604800000) && TMSApplication.getSecureServiceClass() != null) {
            Intent intent = new Intent(this.a, TMSApplication.getSecureServiceClass());
            intent.setAction(q.d);
            this.a.startService(intent);
        }
    }

    public final synchronized void a(int i) {
        TipsInfo tips;
        ArrayList arrayList = new ArrayList();
        Iterator<CloudInfo> it = this.b.iterator();
        while (it.hasNext()) {
            CloudInfo next = it.next();
            if (next != null && next.getTime().getTime() == i) {
                arrayList.add(next);
            }
        }
        if (arrayList.size() > 0) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                CloudInfo cloudInfo = (CloudInfo) it2.next();
                if ((cloudInfo.getTime().getValidEndTime() == 0 || System.currentTimeMillis() / 1000 < ((long) cloudInfo.getTime().getValidEndTime())) && (tips = cloudInfo.getTips()) != null) {
                    switch (tips.getType()) {
                        case 0:
                            a(cloudInfo);
                            continue;
                    }
                }
                this.b.remove(cloudInfo);
            }
        }
    }

    public final int b() {
        if (this.e) {
            return -2;
        }
        this.e = true;
        String strFromEnvMap = TMSApplication.getStrFromEnvMap(TMSApplication.CON_SOFTVERSION);
        String str = "buildno=" + TMSApplication.getIntFromEnvMap(TMSApplication.CON_BUILD) + "&version=" + strFromEnvMap + "&productid=" + TMSApplication.getIntFromEnvMap(TMSApplication.CON_PRODUCT);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ClientVersionInfo(8, 2, str));
        AtomicReference<ServerCmdInfo> atomicReference = new AtomicReference<>();
        int updatesV2 = ((WupSessionManager) ManagerCreator.getManager(WupSessionManager.class)).getUpdatesV2(arrayList, atomicReference);
        if (updatesV2 != 0) {
            this.e = false;
            return updatesV2;
        }
        ServerCmdInfo serverCmdInfo = atomicReference.get();
        if (!(serverCmdInfo == null || TMSApplication.getSecureServiceClass() == null)) {
            AlarmManager alarmManager = (AlarmManager) this.a.getSystemService("alarm");
            Intent intent = new Intent(this.a, TMSApplication.getSecureServiceClass());
            intent.setAction(q.d);
            PendingIntent service = PendingIntent.getService(this.a, 0, intent, 0);
            alarmManager.cancel(service);
            long currentTimeMillis = System.currentTimeMillis() + ((long) (serverCmdInfo.getNextcheckinterval() * 1000));
            alarmManager.set(1, currentTimeMillis, service);
            this.d.a(q.c, currentTimeMillis, true);
            this.b.clear();
            this.b.addAll(serverCmdInfo.getCloudinfos());
            a(1);
        }
        this.e = false;
        return updatesV2;
    }
}
