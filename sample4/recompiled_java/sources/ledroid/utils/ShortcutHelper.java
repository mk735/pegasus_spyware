package ledroid.utils;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcelable;

public final class ShortcutHelper {
    private Intent a;

    public ShortcutHelper() {
        this.a = new Intent();
        setDuplicate(false);
    }

    public ShortcutHelper(String shortcutName) {
        this();
        setShortcutName(shortcutName);
    }

    public ShortcutHelper(String shortcutName, Intent launchIntent) {
        this(shortcutName);
        setLaunchIntent(launchIntent);
    }

    public ShortcutHelper(String shortcutName, Parcelable shortIcon) {
        this(shortcutName);
        setShortcutIcon(shortIcon);
    }

    public ShortcutHelper(String shortcutName, Parcelable shortIcon, Intent launchIntent) {
        this(shortcutName, shortIcon);
        setLaunchIntent(launchIntent);
    }

    public final ShortcutHelper setDuplicate(boolean allowed) {
        this.a.putExtra("duplicate", allowed);
        return this;
    }

    public final ShortcutHelper setShortcutName(String name) {
        this.a.putExtra("android.intent.extra.shortcut.NAME", name);
        return this;
    }

    public final ShortcutHelper setShortcutIcon(Parcelable shortIcon) {
        this.a.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", shortIcon);
        return this;
    }

    public final ShortcutHelper setLaunchIntent(Intent launchIntent) {
        this.a.putExtra("android.intent.extra.shortcut.INTENT", launchIntent);
        return this;
    }

    public final ShortcutHelper installTheShortcut(Context ctx) throws ShortcutCreatorInstallException {
        if (ctx == null) {
            throw new ShortcutCreatorInstallException("Shortcut installation need a Context, but it is null!");
        }
        a();
        this.a.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
        ctx.sendBroadcast(this.a);
        return this;
    }

    private void a() throws ShortcutCreatorInstallException {
        if (!this.a.getExtras().containsKey("android.intent.extra.shortcut.INTENT")) {
            throw new ShortcutCreatorInstallException("Didnot set Intent.EXTRA_SHORTCUT_INTENT yet!");
        }
    }

    public final ShortcutHelper uninstallTheShortcut(Context ctx) throws ShortcutCreatorInstallException {
        if (ctx == null) {
            throw new ShortcutCreatorInstallException("Shortcut installation need a Context, but it is null!");
        }
        a();
        this.a.setAction("com.android.launcher.action.UNINSTALL_SHORTCUT");
        ctx.sendBroadcast(this.a);
        return this;
    }

    public final boolean isExistShortcut(Context ctx) {
        boolean isInstallShortcut = false;
        String[] AUTHORITY = {"com.android.launcher.settings", "com.android.launcher2.settings", "com.lenovo.launcher2.settings"};
        Uri[] CONTENT_URIs = {Uri.parse("content://" + AUTHORITY[0] + "/favorites?notify=true"), Uri.parse("content://" + AUTHORITY[1] + "/favorites?notify=true"), Uri.parse("content://" + AUTHORITY[2] + "/favorites?notify=true")};
        Cursor c = null;
        for (Uri uri : CONTENT_URIs) {
            try {
                c = ctx.getContentResolver().query(uri, new String[]{"iconPackage"}, "iconPackage=?", new String[]{ctx.getPackageName()}, null);
                if (c != null && c.moveToFirst()) {
                    isInstallShortcut = true;
                }
            } finally {
                if (c != null) {
                    c.close();
                }
            }
        }
        return isInstallShortcut;
    }

    public static class ShortcutCreatorInstallException extends Exception {
        public ShortcutCreatorInstallException(String msg) {
            super(msg);
        }
    }
}
