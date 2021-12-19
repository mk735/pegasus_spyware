package com.network.e.a;

import com.network.android.android.monitor.NetworkManagerService;
import com.network.android.monitor.a.a;
import com.network.android.monitor.observer.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private Map f141a = new HashMap();
    private Map b = new HashMap();

    public final r a(Integer num) {
        return (r) this.b.get(num);
    }

    public final void a() {
        this.b.clear();
        this.f141a.clear();
        System.gc();
    }

    public final void a(a aVar) {
        for (r rVar : this.b.values()) {
            rVar.a(aVar);
        }
    }

    public final void a(com.network.android.monitor.a.b bVar) {
        r rVar = (r) bVar;
        String[] a2 = rVar.a();
        for (String str : a2) {
            List list = (List) this.f141a.get(str);
            if (list == null) {
                list = new ArrayList();
                this.f141a.put(str, list);
            }
            list.add(rVar);
        }
        this.b.put(new Integer(rVar.hashCode()), rVar);
    }

    public final void b(a aVar) {
        List<r> list = (List) this.f141a.get(((a) aVar).b().getAction());
        if (list != null) {
            for (r rVar : list) {
                a aVar2 = (a) aVar;
                NetworkManagerService.a(aVar2.a(), aVar2.b(), rVar);
            }
        }
    }
}
