package tms;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import java.lang.reflect.Constructor;
import tms.fo;

/* access modifiers changed from: package-private */
public final class eg implements LayoutInflater.Factory {
    final /* synthetic */ fo.b a;

    eg(fo.b bVar) {
        this.a = bVar;
    }

    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        if (!str.startsWith("com.tencent.qqpimsecure.uilib")) {
            return null;
        }
        try {
            Constructor<?> constructor = (Constructor) fo.i.get(str);
            if (constructor == null) {
                constructor = Class.forName(str).getConstructor(Context.class, AttributeSet.class);
                fo.i.put(str, constructor);
            }
            return (View) constructor.newInstance(fo.this.b, attributeSet);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
