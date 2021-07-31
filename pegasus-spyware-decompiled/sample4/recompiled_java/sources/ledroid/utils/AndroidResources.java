package ledroid.utils;

import android.content.res.Resources;

public class AndroidResources {
    private Resources a;
    private String b;

    public AndroidResources(Resources resources) {
        this.a = resources;
        this.b = null;
    }

    public AndroidResources(Resources resources, String packageName) {
        this(resources);
        this.b = packageName;
    }

    public int getIdentifier(String defPackage, String defType, String name) {
        return this.a.getIdentifier(name, defType, defPackage);
    }

    public int getIdentifier(String defType, String name) {
        return getIdentifier(this.b, defType, name);
    }

    public int getIdentifier(String name) {
        return getIdentifier(this.b, null, name);
    }
}
