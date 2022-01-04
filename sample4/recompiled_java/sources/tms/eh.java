package tms;

import com.tencent.tmsecure.module.optimize.IAutoBootHelper;
import java.util.ArrayList;

public final class eh implements IAutoBootHelper {
    @Override // com.tencent.tmsecure.module.optimize.IAutoBootHelper
    public final ArrayList<IAutoBootHelper.Pair<String, Boolean>> getAllAutoBootApps() {
        return new ArrayList<>();
    }

    @Override // com.tencent.tmsecure.module.optimize.IAutoBootHelper
    public final boolean setAutoBootEnable(String str, boolean z) {
        return false;
    }
}
