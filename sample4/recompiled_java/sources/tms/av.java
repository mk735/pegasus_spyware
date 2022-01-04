package tms;

import com.tencent.tmsecure.module.aresengine.ContactEntity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import tms.bb;

/* access modifiers changed from: package-private */
public final class av extends Thread {
    final /* synthetic */ bb.c a;

    av(bb.c cVar) {
        this.a = cVar;
    }

    public final void run() {
        int i = 0;
        List<ContactEntity> allContact = bb.this.getAllContact();
        ArrayList<ContactEntity> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ContactEntity contactEntity : allContact) {
            int b = ag.b(contactEntity.phonenum);
            if (!arrayList2.contains(Integer.valueOf(b))) {
                arrayList.add(contactEntity);
                arrayList2.add(Integer.valueOf(b));
            }
        }
        synchronized (this.a.b) {
            this.a.c = new bb.d[arrayList.size()];
            for (ContactEntity contactEntity2 : arrayList) {
                int b2 = ag.b(contactEntity2.phonenum);
                bb.d dVar = new bb.d((byte) 0);
                dVar.a = b2;
                this.a.c[i] = dVar;
                i++;
            }
            bb.c cVar = this.a;
            bb.c cVar2 = this.a;
            bb.d[] dVarArr = this.a.c;
            if (dVarArr.length > 1) {
                Arrays.sort(dVarArr, new aw(cVar2));
            }
            cVar.c = dVarArr;
            this.a.e = true;
        }
    }
}
