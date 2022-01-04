.class public abstract Lledroid/services/LedroidSettings$BaseSettings;
.super Ljava/lang/Object;
.source "LedroidSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/services/LedroidSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseSettings"
.end annotation


# instance fields
.field final synthetic a:Lledroid/services/LedroidSettings;


# direct methods
.method public constructor <init>(Lledroid/services/LedroidSettings;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lledroid/services/LedroidSettings$BaseSettings;->a:Lledroid/services/LedroidSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lledroid/services/LedroidSettings$BaseSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 203
    .end local p2    # "def":F
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "def":F
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lledroid/services/LedroidSettings$BaseSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 121
    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "def":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lledroid/services/LedroidSettings$BaseSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "valString":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 164
    .local v1, "value":J
    :goto_0
    return-wide v1

    .end local v1    # "value":J
    :cond_0
    move-wide v1, p2

    .line 160
    goto :goto_0

    .line 162
    :catch_0
    move-exception v3

    move-wide v1, p2

    .restart local v1    # "value":J
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lledroid/services/LedroidSettings$BaseSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lledroid/services/LedroidSettings$BaseSettings;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lledroid/services/LedroidSettings$BaseSettings;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lledroid/services/LedroidSettings$BaseSettings;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation
.end method
