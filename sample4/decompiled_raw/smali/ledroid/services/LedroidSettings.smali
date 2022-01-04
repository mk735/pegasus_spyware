.class public final Lledroid/services/LedroidSettings;
.super Lledroid/services/LedroidSupport;
.source "LedroidSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/services/LedroidSettings$BaseSettings;,
        Lledroid/services/LedroidSettings$LedroidSettingsSecure;,
        Lledroid/services/LedroidSettings$LedroidSettingsSystem;
    }
.end annotation


# instance fields
.field private a:Lledroid/services/LedroidSettings$LedroidSettingsSystem;

.field private b:Lledroid/services/LedroidSettings$LedroidSettingsSecure;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lledroid/services/LedroidSupport;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final getLedroidSettingsSecure()Lledroid/services/LedroidSettings$LedroidSettingsSecure;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lledroid/services/LedroidSettings;->b:Lledroid/services/LedroidSettings$LedroidSettingsSecure;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lledroid/services/LedroidSettings$LedroidSettingsSecure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lledroid/services/LedroidSettings$LedroidSettingsSecure;-><init>(Lledroid/services/LedroidSettings;B)V

    iput-object v0, p0, Lledroid/services/LedroidSettings;->b:Lledroid/services/LedroidSettings$LedroidSettingsSecure;

    .line 27
    :cond_0
    iget-object v0, p0, Lledroid/services/LedroidSettings;->b:Lledroid/services/LedroidSettings$LedroidSettingsSecure;

    return-object v0
.end method

.method public final getLedroidSettingsSystem()Lledroid/services/LedroidSettings$LedroidSettingsSystem;
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lledroid/services/LedroidSettings;->a:Lledroid/services/LedroidSettings$LedroidSettingsSystem;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lledroid/services/LedroidSettings$LedroidSettingsSystem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lledroid/services/LedroidSettings$LedroidSettingsSystem;-><init>(Lledroid/services/LedroidSettings;B)V

    iput-object v0, p0, Lledroid/services/LedroidSettings;->a:Lledroid/services/LedroidSettings$LedroidSettingsSystem;

    .line 20
    :cond_0
    iget-object v0, p0, Lledroid/services/LedroidSettings;->a:Lledroid/services/LedroidSettings$LedroidSettingsSystem;

    return-object v0
.end method
