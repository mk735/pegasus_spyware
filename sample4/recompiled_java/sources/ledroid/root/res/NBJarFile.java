package ledroid.root.res;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileFilter;
import ledroid.utils.AndroidResourceFile;

public final class NBJarFile {
    private int a = -1;
    private String b = null;
    private File c;
    private AndroidResourceFile d = null;

    public NBJarFile(Context ctx, int nbResid, File placedDir) {
        this.d = new AndroidResourceFile(ctx.getResources(), nbResid);
        this.c = placedDir;
        updateIfNeed();
    }

    public final String getDexPath(Context ctx, int version) {
        return "/data/dalvik-cache/data@data@" + ctx.getPackageName() + "@files@nb" + (version == 0 ? "" : "." + version) + ".jar@classes.dex";
    }

    public final int getNbJarFileVersion(File f) {
        return getNbJarFileVersion(f.getName());
    }

    public final int getNbJarFileVersion(String name) {
        if (name.endsWith(".jar") && name.startsWith("nb")) {
            String[] split = name.split("\\.");
            if (split.length == 3) {
                return Integer.valueOf(split[1]).intValue();
            }
        }
        return -1;
    }

    public final void updateIfNeed() {
        File[] listNbJars = this.c.listFiles(new FileFilter() {
            /* class ledroid.root.res.NBJarFile.AnonymousClass1 */

            public final boolean accept(File pathname) {
                String name = pathname.getName();
                if (!name.startsWith("nb") || !name.endsWith(".jar") || name.split("\\.").length < 3) {
                    return false;
                }
                int version = Integer.valueOf(name.split("\\.")[1]).intValue();
                if (version >= 8) {
                    return version == 8 ? true : true;
                }
                pathname.delete();
                return false;
            }
        });
        if (listNbJars == null || listNbJars.length == 0) {
            this.a = 8;
            this.b = this.c.getAbsolutePath() + "/nb" + ("." + 8) + ".jar";
            if (this.d.writeTo(this.b)) {
                Log.w("Ledroid", "Place ledroid service file to " + this.c.getAbsolutePath() + " fialed.");
            }
        } else if (listNbJars.length == 1) {
            this.a = getNbJarFileVersion(listNbJars[0]);
            this.b = listNbJars[0].getAbsolutePath();
        } else if (listNbJars.length > 1) {
            File newFile = listNbJars[0];
            this.a = getNbJarFileVersion(newFile);
            for (int i = 1; i < listNbJars.length; i++) {
                int rVersion = getNbJarFileVersion(listNbJars[i]);
                if (this.a < rVersion) {
                    this.a = rVersion;
                    newFile.delete();
                    newFile = listNbJars[i];
                } else if (this.a > rVersion) {
                    listNbJars[i].delete();
                }
            }
            this.b = newFile.getAbsolutePath();
        }
    }

    public final int getNewVersionCode() {
        return this.a;
    }

    public final String getAbsolutePath() {
        return this.b;
    }
}
