package tms;

import java.util.ArrayList;
import java.util.List;

public final class aj {
    private static volatile aj a;
    private List<c> b = new ArrayList();

    private aj() {
        for (String str : d()) {
            this.b.add(new d(str));
        }
    }

    public static synchronized aj a() {
        aj ajVar;
        synchronized (aj.class) {
            if (a == null) {
                a = new aj();
            }
            ajVar = a;
        }
        return ajVar;
    }

    public static final synchronized List<String> d() {
        ArrayList arrayList;
        synchronized (aj.class) {
            String[] strArr = {"phone", "phone1", "phone2", "phoneEX"};
            arrayList = new ArrayList();
            for (String str : strArr) {
                if (ai.b(str) != null) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    public final void a(String str) {
        this.b.get(0).a(str);
    }

    public final void b() {
        for (c cVar : this.b) {
            cVar.b();
        }
    }

    public final boolean c() {
        for (c cVar : this.b) {
            cVar.a();
        }
        return true;
    }
}
