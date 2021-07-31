package ledroid.services;

import android.content.Context;
import android.os.RemoteException;
import ledroid.root.RootPermissionException;

public final class LedroidSettings extends LedroidSupport {
    private LedroidSettingsSystem a;
    private LedroidSettingsSecure b;

    public LedroidSettings(Context ctx) {
        super(ctx);
    }

    public final LedroidSettingsSystem getLedroidSettingsSystem() {
        if (this.a == null) {
            this.a = new LedroidSettingsSystem(this, (byte) 0);
        }
        return this.a;
    }

    public final LedroidSettingsSecure getLedroidSettingsSecure() {
        if (this.b == null) {
            this.b = new LedroidSettingsSecure(this, (byte) 0);
        }
        return this.b;
    }

    public final class LedroidSettingsSystem extends BaseSettings {
        /* synthetic */ LedroidSettingsSystem(LedroidSettings x0, byte b2) {
            this();
        }

        private LedroidSettingsSystem() {
            super();
        }

        @Override // ledroid.services.LedroidSettings.BaseSettings
        public final String getString(String name, String def) throws RootPermissionException {
            try {
                return LedroidSettings.this.getLenovoManager().getSettingsSystemString(name);
            } catch (RemoteException e) {
                e.printStackTrace();
                return def;
            }
        }

        @Override // ledroid.services.LedroidSettings.BaseSettings
        public final boolean putString(String name, String value) throws RootPermissionException {
            try {
                return LedroidSettings.this.getLenovoManager().putSettingsSystemString(name, value);
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }
    }

    public final class LedroidSettingsSecure extends BaseSettings {
        public static final String BIOMETRIC_WEAK_EVER_CHOSEN_KEY = "lockscreen.biometricweakeverchosen";
        public static final String DISABLE_LOCKSCREEN_KEY = "lockscreen.disabled";
        public static final String LOCKOUT_ATTEMPT_DEADLINE = "lockscreen.lockoutattemptdeadline";
        public static final String LOCKOUT_PERMANENT_KEY = "lockscreen.lockedoutpermanently";
        public static final String LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK = "lockscreen.biometric_weak_fallback";
        public static final String LOCKSCREEN_OPTIONS = "lockscreen.options";
        public static final String LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS = "lockscreen.power_button_instantly_locks";
        public static final String LOCK_PASSWORD_SALT_KEY = "lockscreen.password_salt";
        public static final String PASSWORD_HISTORY_KEY = "lockscreen.passwordhistory";
        public static final String PASSWORD_TYPE_ALTERNATE_KEY = "lockscreen.password_type_alternate";
        public static final String PASSWORD_TYPE_KEY = "lockscreen.password_type";
        public static final String PATTERN_EVER_CHOSEN_KEY = "lockscreen.patterneverchosen";

        /* synthetic */ LedroidSettingsSecure(LedroidSettings x0, byte b2) {
            this();
        }

        private LedroidSettingsSecure() {
            super();
        }

        @Override // ledroid.services.LedroidSettings.BaseSettings
        public final String getString(String name, String def) throws RootPermissionException {
            try {
                return LedroidSettings.this.getLenovoManager().getSettingsSecureString(name);
            } catch (RemoteException e) {
                e.printStackTrace();
                return def;
            }
        }

        @Override // ledroid.services.LedroidSettings.BaseSettings
        public final boolean putString(String name, String value) throws RootPermissionException {
            try {
                return LedroidSettings.this.getLenovoManager().putSettingsSecureString(name, value);
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }
    }

    public abstract class BaseSettings {
        public abstract String getString(String str, String str2) throws RootPermissionException;

        public abstract boolean putString(String str, String str2) throws RootPermissionException;

        public BaseSettings() {
        }

        public String getString(String name) throws RootPermissionException {
            return getString(name, null);
        }

        public int getInt(String name, int def) throws RootPermissionException {
            String v = getString(name);
            if (v == null) {
                return def;
            }
            try {
                return Integer.parseInt(v);
            } catch (NumberFormatException e) {
                return def;
            }
        }

        public boolean putInt(String name, int value) throws RootPermissionException {
            return putString(name, Integer.toString(value));
        }

        public long getLong(String name, long def) throws RootPermissionException {
            String valString = getString(name);
            if (valString == null) {
                return def;
            }
            try {
                return Long.parseLong(valString);
            } catch (NumberFormatException e) {
                return def;
            }
        }

        public boolean putLong(String name, long value) throws RootPermissionException {
            return putString(name, Long.toString(value));
        }

        public float getFloat(String name, float def) throws RootPermissionException {
            String v = getString(name);
            if (v == null) {
                return def;
            }
            try {
                return Float.parseFloat(v);
            } catch (NumberFormatException e) {
                return def;
            }
        }

        public boolean putFloat(String name, float value) throws RootPermissionException {
            return putString(name, Float.toString(value));
        }
    }
}
