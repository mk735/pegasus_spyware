.class public final Lledroid/services/LedroidSettings$LedroidSettingsSecure;
.super Lledroid/services/LedroidSettings$BaseSettings;
.source "LedroidSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/services/LedroidSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LedroidSettingsSecure"
.end annotation


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"


# instance fields
.field final synthetic b:Lledroid/services/LedroidSettings;


# direct methods
.method private constructor <init>(Lledroid/services/LedroidSettings;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lledroid/services/LedroidSettings$LedroidSettingsSecure;->b:Lledroid/services/LedroidSettings;

    invoke-direct {p0, p1}, Lledroid/services/LedroidSettings$BaseSettings;-><init>(Lledroid/services/LedroidSettings;)V

    return-void
.end method

.method synthetic constructor <init>(Lledroid/services/LedroidSettings;B)V
    .locals 0
    .param p1, "x0"    # Lledroid/services/LedroidSettings;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lledroid/services/LedroidSettings$LedroidSettingsSecure;-><init>(Lledroid/services/LedroidSettings;)V

    return-void
.end method


# virtual methods
.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lledroid/services/LedroidSettings$LedroidSettingsSecure;->b:Lledroid/services/LedroidSettings;

    invoke-virtual {v1}, Lledroid/services/LedroidSettings;->getLenovoManager()Lledroid/services/ILedroidService;

    move-result-object v1

    invoke-interface {v1, p1}, Lledroid/services/ILedroidService;->getSettingsSecureString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 79
    .end local p2    # "def":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 76
    .restart local p2    # "def":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lledroid/services/LedroidSettings$LedroidSettingsSecure;->b:Lledroid/services/LedroidSettings;

    invoke-virtual {v1}, Lledroid/services/LedroidSettings;->getLenovoManager()Lledroid/services/ILedroidService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lledroid/services/ILedroidService;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method
