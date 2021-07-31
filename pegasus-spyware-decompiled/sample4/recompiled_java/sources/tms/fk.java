package tms;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.phoneservice.UsefulNumberEntity;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.util.EncodingUtils;

public final class fk extends BaseManager {
    private Context a;
    private HashMap<String, ArrayList<UsefulNumberEntity>> b = new HashMap<>();

    private String c() {
        try {
            InputStream open = this.a.getResources().getAssets().open("yellowpage.db");
            byte[] bArr = new byte[open.available()];
            open.read(bArr);
            open.close();
            return EncodingUtils.getString(bArr, "utf-8");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public final List<UsefulNumberEntity> a() {
        ArrayList arrayList = new ArrayList();
        for (ArrayList<UsefulNumberEntity> arrayList2 : this.b.values()) {
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    public final HashMap<String, ArrayList<UsefulNumberEntity>> b() {
        return this.b;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 2;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = context;
        ArrayList<UsefulNumberEntity> arrayList = null;
        for (String str : c().trim().split("\\n")) {
            String trim = str.trim();
            if (trim.contains("@")) {
                arrayList = new ArrayList<>();
                this.b.put(trim.replace("@", ""), arrayList);
            } else if (arrayList != null) {
                int indexOf = trim.indexOf(36);
                String substring = trim.substring(0, indexOf);
                String substring2 = trim.substring(indexOf + 1, trim.length());
                UsefulNumberEntity usefulNumberEntity = new UsefulNumberEntity();
                usefulNumberEntity.setNumber(substring);
                usefulNumberEntity.setName(substring2);
                arrayList.add(usefulNumberEntity);
            }
        }
    }
}
