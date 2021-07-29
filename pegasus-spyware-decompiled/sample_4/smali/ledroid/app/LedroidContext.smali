.class public interface abstract Lledroid/app/LedroidContext;
.super Ljava/lang/Object;
.source "LedroidContext.java"


# static fields
.field public static final LEDROID_ACTIVITY_MANAGER:Ljava/lang/String; = "ledroid_activity"

.field public static final LEDROID_PACKAGE_MANAGER:Ljava/lang/String; = "ledroid_package"

.field public static final LEDROID_ROOT_TIMINAL:Ljava/lang/String; = "ledroid_root"

.field public static final LEDROID_SETTINGS_WRAPPER:Ljava/lang/String; = "ledroid_settings"

.field public static final LEDROID_STATUSBAR_MANAGER:Ljava/lang/String; = "ledroid_statusbar"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getLedroidActivityManager()Lledroid/services/LedroidActivityManager;
.end method

.method public abstract getLedroidPackageManager()Lledroid/services/LedroidPackageManager;
.end method

.method public abstract getLedroidSettings()Lledroid/services/LedroidSettings;
.end method

.method public abstract getLedroidStatusBarManager()Lledroid/services/LedroidStatusBarManager;
.end method

.method public abstract getShellTerminalController()Lledroid/root/ShellTerminalController;
.end method

.method public abstract getSystemService(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract hasRootPermission()Z
.end method
