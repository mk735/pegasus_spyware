.class public final Lledroid/services/LedroidSettings$LedroidSettingsSystem;
.super Lledroid/services/LedroidSettings$BaseSettings;
.source "LedroidSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/services/LedroidSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LedroidSettingsSystem"
.end annotation


# instance fields
.field final synthetic b:Lledroid/services/LedroidSettings;


# direct methods
.method private constructor <init>(Lledroid/services/LedroidSettings;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lledroid/services/LedroidSettings$LedroidSettingsSystem;->b:Lledroid/services/LedroidSettings;

    invoke-direct {p0, p1}, Lledroid/services/LedroidSettings$BaseSettings;-><init>(Lledroid/services/LedroidSettings;)V

    return-void
.end method

.method synthetic constructor <init>(Lledroid/services/LedroidSettings;B)V
    .locals 0
    .param p1, "x0"    # Lledroid/services/LedroidSettings;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lledroid/services/LedroidSettings$LedroidSettingsSystem;-><init>(Lledroid/services/LedroidSettings;)V

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
    .line 36
    :try_start_0
    iget-object v1, p0, Lledroid/services/LedroidSettings$LedroidSettingsSystem;->b:Lledroid/services/LedroidSettings;

    invoke-virtual {v1}, Lledroid/services/LedroidSettings;->getLenovoManager()Lledroid/services/ILedroidService;

    move-result-object v1

    invoke-interface {v1, p1}, Lledroid/services/ILedroidService;->getSettingsSystemString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 40
    .end local p2    # "def":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 37
    .restart local p2    # "def":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 38
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
    .line 46
    :try_start_0
    iget-object v1, p0, Lledroid/services/LedroidSettings$LedroidSettingsSystem;->b:Lledroid/services/LedroidSettings;

    invoke-virtual {v1}, Lledroid/services/LedroidSettings;->getLenovoManager()Lledroid/services/ILedroidService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lledroid/services/ILedroidService;->putSettingsSystemString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 50
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 50
    const/4 v1, 0x0

    goto :goto_0
.end method
