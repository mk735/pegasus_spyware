package tms;

import android.content.ContentResolver;
import android.net.Uri;
import android.provider.Settings;

public class n {
    public static void a(int i, ContentResolver contentResolver) {
        Uri uriFor = Settings.System.getUriFor("screen_brightness");
        Settings.System.putInt(contentResolver, "screen_brightness", i);
        contentResolver.notifyChange(uriFor, null);
    }

    public static boolean a(ContentResolver contentResolver) {
        try {
            return Settings.System.getInt(contentResolver, "screen_brightness_mode") == 1;
        } catch (Settings.SettingNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static int b(ContentResolver contentResolver) {
        try {
            return Settings.System.getInt(contentResolver, "screen_brightness");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static void c(ContentResolver contentResolver) {
        Settings.System.putInt(contentResolver, "screen_brightness_mode", 0);
    }

    public static void d(ContentResolver contentResolver) {
        Settings.System.putInt(contentResolver, "screen_brightness_mode", 1);
    }
}
