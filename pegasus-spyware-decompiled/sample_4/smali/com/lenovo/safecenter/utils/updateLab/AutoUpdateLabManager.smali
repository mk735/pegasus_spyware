.class public Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;
.super Ljava/lang/Object;
.source "AutoUpdateLabManager.java"


# static fields
.field public static final KEY_AUTO_UPDATE_MODE:Ljava/lang/String; = "auto_update_mode"

.field public static final KEY_IS_AUTO_UPDATE:Ljava/lang/String; = "is_auto_update"

.field public static final KEY_NEW_AUTO_UPDATE_MODE:Ljava/lang/String; = "new_auto_update_mode"

.field public static final KEY_NEW_IS_AUTO_UPDATE:Ljava/lang/String; = "new_is_auto_update"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoUpdateMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "new_auto_update_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSelectedUpdateModeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->getUpdateModeStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "autoUpdateModeOption":[Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->getAutoUpdateMode(Landroid/content/Context;)I

    move-result v1

    .line 61
    .local v1, "mode":I
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 62
    aget-object v2, v0, v1

    .line 66
    :goto_0
    return-object v2

    .line 64
    :cond_0
    invoke-static {v3, p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->setAutoUpdateMode(ILandroid/content/Context;)V

    .line 65
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->setIsAutoUpdate(ZLandroid/content/Context;)V

    .line 66
    aget-object v2, v0, v3

    goto :goto_0
.end method

.method public static getUpdateModeStringArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0d0658

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0d0659

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0d065a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0d065b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static initAutoUpdateData(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 42
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "auto_update_mode"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const-string v3, "auto_update_mode"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, "oldMode":I
    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->setAutoUpdateMode(ILandroid/content/Context;)V

    .line 45
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "auto_update_mode"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    .end local v0    # "oldMode":I
    :cond_0
    const-string v3, "is_auto_update"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const-string v3, "is_auto_update"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    .local v1, "oldisAuto":Z
    invoke-static {v1, p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->setIsAutoUpdate(ZLandroid/content/Context;)V

    .line 50
    if-nez v1, :cond_1

    .line 51
    invoke-static {v5, p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->setAutoUpdateMode(ILandroid/content/Context;)V

    .line 53
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "is_auto_update"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    .end local v1    # "oldisAuto":Z
    :cond_2
    return-void
.end method

.method public static isAutoUpdate(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "new_is_auto_update"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAutoUpdateMode(ILandroid/content/Context;)V
    .locals 2
    .param p0, "auto_update_mode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "new_auto_update_mode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method public static setIsAutoUpdate(ZLandroid/content/Context;)V
    .locals 2
    .param p0, "is_auto_update"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "new_is_auto_update"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method
