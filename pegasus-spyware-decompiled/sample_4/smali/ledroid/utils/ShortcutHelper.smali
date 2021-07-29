.class public final Lledroid/utils/ShortcutHelper;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lledroid/utils/ShortcutHelper;->a:Landroid/content/Intent;

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lledroid/utils/ShortcutHelper;->setDuplicate(Z)Lledroid/utils/ShortcutHelper;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortcutName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lledroid/utils/ShortcutHelper;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lledroid/utils/ShortcutHelper;->setShortcutName(Ljava/lang/String;)Lledroid/utils/ShortcutHelper;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "shortcutName"    # Ljava/lang/String;
    .param p2, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lledroid/utils/ShortcutHelper;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2}, Lledroid/utils/ShortcutHelper;->setLaunchIntent(Landroid/content/Intent;)Lledroid/utils/ShortcutHelper;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "shortcutName"    # Ljava/lang/String;
    .param p2, "shortIcon"    # Landroid/os/Parcelable;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lledroid/utils/ShortcutHelper;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lledroid/utils/ShortcutHelper;->setShortcutIcon(Landroid/os/Parcelable;)Lledroid/utils/ShortcutHelper;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcelable;Landroid/content/Intent;)V
    .locals 0
    .param p1, "shortcutName"    # Ljava/lang/String;
    .param p2, "shortIcon"    # Landroid/os/Parcelable;
    .param p3, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lledroid/utils/ShortcutHelper;-><init>(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {p0, p3}, Lledroid/utils/ShortcutHelper;->setLaunchIntent(Landroid/content/Intent;)Lledroid/utils/ShortcutHelper;

    .line 41
    return-void
.end method

.method private a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lledroid/utils/ShortcutHelper;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;

    const-string v1, "Didnot set Intent.EXTRA_SHORTCUT_INTENT yet!"

    invoke-direct {v0, v1}, Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public final installTheShortcut(Landroid/content/Context;)Lledroid/utils/ShortcutHelper;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;

    const-string v1, "Shortcut installation need a Context, but it is null!"

    invoke-direct {v0, v1}, Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    invoke-direct {p0}, Lledroid/utils/ShortcutHelper;->a()V

    .line 92
    iget-object v0, p0, Lledroid/utils/ShortcutHelper;->a:Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lledroid/utils/ShortcutHelper;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-object p0
.end method

.method public final isExistShortcut(Landroid/content/Context;)Z
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    .local v11, "isInstallShortcut":Z
    new-array v6, v2, [Ljava/lang/String;

    const-string v0, "com.android.launcher.settings"

    aput-object v0, v6, v3

    const-string v0, "com.android.launcher2.settings"

    aput-object v0, v6, v4

    const-string v0, "com.lenovo.launcher2.settings"

    aput-object v0, v6, v5

    .line 122
    .local v6, "AUTHORITY":[Ljava/lang/String;
    new-array v7, v2, [Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v6, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/favorites?notify=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v7, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v6, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/favorites?notify=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v7, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v6, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/favorites?notify=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v7, v5

    .line 125
    .local v7, "CONTENT_URIs":[Landroid/net/Uri;
    const/4 v9, 0x0

    .line 126
    .local v9, "c":Landroid/database/Cursor;
    move-object v8, v7

    .local v8, "arr$":[Landroid/net/Uri;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_3

    aget-object v1, v8, v10

    .line 128
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "iconPackage"

    aput-object v4, v2, v3

    const-string v3, "iconPackage=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 132
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v11, 0x1

    .line 136
    :cond_0
    if-eqz v9, :cond_1

    .line 137
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 137
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 142
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    return v11
.end method

.method public final setDuplicate(Z)Lledroid/utils/ShortcutHelper;
    .locals 2
    .param p1, "allowed"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lledroid/utils/ShortcutHelper;->a:Landroid/content/Intent;

    const-string v1, "duplicate"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    return-object p0
.end method

.method public final setLaunchIntent(Landroid/content/Intent;)Lledroid/utils/ShortcutHelper;
    .locals 2
    .param p1, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lledroid/utils/ShortcutHelper;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    return-object p0
.end method

.method public final setShortcutIcon(Landroid/os/Parcelable;)Lledroid/utils/ShortcutHelper;
    .locals 2
    .param p1, "shortIcon"    # Landroid/os/Parcelable;

    .prologue
    .line 69
    iget-object v0, p0, Lledroid/utils/ShortcutHelper;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    return-object p0
.end method

.method public final setShortcutName(Ljava/lang/String;)Lledroid/utils/ShortcutHelper;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lledroid/utils/ShortcutHelper;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    return-object p0
.end method

.method public final uninstallTheShortcut(Landroid/content/Context;)Lledroid/utils/ShortcutHelper;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;

    const-string v1, "Shortcut installation need a Context, but it is null!"

    invoke-direct {v0, v1}, Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-direct {p0}, Lledroid/utils/ShortcutHelper;->a()V

    .line 112
    iget-object v0, p0, Lledroid/utils/ShortcutHelper;->a:Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lledroid/utils/ShortcutHelper;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    return-object p0
.end method
