.class public Lcom/lenovo/safecenter/test/SafeCenter;
.super Ljava/lang/Object;
.source "SafeCenter.java"


# static fields
.field public static ACTION_CHILD_MODE_ON:Ljava/lang/String;

.field public static ACTION_GUEST_MODE_ON:Ljava/lang/String;

.field public static LeTaskMenu:Ljava/lang/String;

.field public static browserApp:Ljava/lang/String;

.field public static contactsApp:Ljava/lang/String;

.field public static safeCenter:Ljava/lang/String;

.field public static whiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "com.android.contacts"

    sput-object v0, Lcom/lenovo/safecenter/test/SafeCenter;->contactsApp:Ljava/lang/String;

    .line 36
    const-string v0, "com.android.browser"

    sput-object v0, Lcom/lenovo/safecenter/test/SafeCenter;->browserApp:Ljava/lang/String;

    .line 37
    const-string v0, "com.lenovo.safecenter"

    sput-object v0, Lcom/lenovo/safecenter/test/SafeCenter;->safeCenter:Ljava/lang/String;

    .line 38
    const-string v0, "com.android.letaskmenu"

    sput-object v0, Lcom/lenovo/safecenter/test/SafeCenter;->LeTaskMenu:Ljava/lang/String;

    .line 40
    const-string v0, "com.safecenter.broadcast.openChildMode"

    sput-object v0, Lcom/lenovo/safecenter/test/SafeCenter;->ACTION_CHILD_MODE_ON:Ljava/lang/String;

    .line 41
    const-string v0, "com.safecenter.broadcast.openGuestMode"

    sput-object v0, Lcom/lenovo/safecenter/test/SafeCenter;->ACTION_GUEST_MODE_ON:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v4, "inputPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 320
    .local v1, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 322
    .local v2, "imi":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 323
    .local v3, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v3    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    return-object v4
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 10
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 295
    const-string v8, "android.permission.BIND_WALLPAPER"

    invoke-virtual {p0, v8, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v6

    .line 301
    :cond_1
    const/4 v8, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 302
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x81

    if-nez v8, :cond_4

    .line 303
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_2

    move v6, v7

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v0, "arr$":[Landroid/content/pm/ServiceInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 305
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v9, "android.permission.BIND_WALLPAPER"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 304
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "arr$":[Landroid/content/pm/ServiceInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    move v6, v7

    .line 314
    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    if-eqz p0, :cond_1

    .line 166
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 167
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    iget-object v2, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v2, 0x1

    .line 171
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static closeChildMode(Landroid/content/Context;Lcom/lenovo/safecenter/database/AppDatabase;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "database"    # Lcom/lenovo/safecenter/database/AppDatabase;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 75
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportChildModeSwitchChange(Ljava/lang/Boolean;)V

    .line 78
    invoke-virtual {p1, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->queryAllHideApps(I)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "hideApp":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 81
    invoke-static {p0, v0}, Lcom/lenovo/safecenter/support/CMDHelper;->enableApps(Landroid/content/Context;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const-string v4, "child_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    sget-object v4, Lcom/lenovo/safecenter/test/SafeCenter;->ACTION_CHILD_MODE_ON:Ljava/lang/String;

    invoke-static {p0, v4, v3}, Lcom/lenovo/safecenter/test/SafeCenter;->sendBoradcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 92
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 87
    goto :goto_0

    .line 90
    :cond_1
    const-string v4, "child_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    sget-object v4, Lcom/lenovo/safecenter/test/SafeCenter;->ACTION_CHILD_MODE_ON:Ljava/lang/String;

    invoke-static {p0, v4, v3}, Lcom/lenovo/safecenter/test/SafeCenter;->sendBoradcast(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static closeGuestMode(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "childModeOn"    # Z
    .param p2, "database"    # Lcom/lenovo/safecenter/database/AppDatabase;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez p1, :cond_0

    .line 130
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportGuestModeSwitchChange(Ljava/lang/Boolean;)V

    .line 132
    :cond_0
    if-eqz p1, :cond_1

    .line 136
    const-string v3, "child_mode_on"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    sget-object v3, Lcom/lenovo/safecenter/test/SafeCenter;->ACTION_CHILD_MODE_ON:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/lenovo/safecenter/test/SafeCenter;->sendBoradcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportChildModeSwitchChange(Ljava/lang/Boolean;)V

    .line 140
    :cond_1
    const-string v3, "guest_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    invoke-static {p0, p1, p2}, Lcom/lenovo/safecenter/support/CMDHelper;->changeToNormalContactsAndMmsDB(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    sget-object v3, Lcom/lenovo/safecenter/test/SafeCenter;->ACTION_GUEST_MODE_ON:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->sendBoradcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 146
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static getLauncherApp(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 175
    .local v7, "pm":Landroid/content/pm/PackageManager;
    sget-object v12, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    if-nez v12, :cond_0

    .line 176
    invoke-static {p0}, Lcom/lenovo/safecenter/test/SafeCenter;->getWhitelist(Landroid/content/Context;)V

    .line 178
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v10, "themeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "com.lenovo.launcher.theme"

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v5, "it":Landroid/content/Intent;
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/4 v12, 0x0

    invoke-virtual {v7, v5, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 184
    .local v9, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 189
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 190
    .local v3, "flag":Z
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 191
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 193
    :try_start_0
    iget-object v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iput-object v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    sget-object v12, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    iget-object v13, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v12}, Lcom/lenovo/safecenter/test/SafeCenter;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v12}, Lcom/lenovo/safecenter/support/WhiteAppsList;->contains(Ljava/util/List;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 202
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 203
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lenovo/safecenter/support/AppInfo;>;"
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 204
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/safecenter/support/AppInfo;

    .line 205
    .local v11, "tmp":Lcom/lenovo/safecenter/support/AppInfo;
    iget-object v12, v11, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    iget-object v13, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 206
    const/4 v3, 0x1

    .line 207
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v11, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    goto :goto_2

    .line 194
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lenovo/safecenter/support/AppInfo;>;"
    .end local v11    # "tmp":Lcom/lenovo/safecenter/support/AppInfo;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 210
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lenovo/safecenter/support/AppInfo;>;"
    :cond_3
    if-nez v3, :cond_1

    .line 211
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    .line 212
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 213
    iget-object v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    .line 214
    const/4 v12, 0x0

    iput v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 215
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 219
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v3    # "flag":Z
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lenovo/safecenter/support/AppInfo;>;"
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-object v1
.end method

.method public static getWhitelist(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 257
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    .line 259
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.lenovo.safecenter"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.android.stk"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.android.stk2"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.android.camera"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.android.clock"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.android.providers.downloads.ui"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.android.settings"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.lenovomobile.deskclock"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.android.deskclock"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.android.mms"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    const-string v8, "com.lenovo.safe.powercenter"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 272
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, "it":Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {v5, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 275
    .local v6, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 276
    sget-object v8, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 280
    .local v2, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 281
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 282
    .local v4, "pkgName":Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/lenovo/safecenter/test/SafeCenter;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 283
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 287
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/lenovo/safecenter/test/SafeCenter;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 288
    .local v1, "inputPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 289
    sget-object v7, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 292
    :cond_3
    return-void
.end method

.method public static getWidgetApp(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "hideList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    .local p2, "launcherList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    const/4 v12, 0x0

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 224
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 225
    .local v4, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v8

    .line 226
    .local v8, "widgetList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    const v9, 0x7f0d0018

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, "smallTools":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    .line 231
    .local v6, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 232
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    iget-object v9, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 233
    sget-object v9, Lcom/lenovo/safecenter/test/SafeCenter;->whiteList:Ljava/util/List;

    iget-object v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v9}, Lcom/lenovo/safecenter/test/SafeCenter;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v9}, Lcom/lenovo/safecenter/test/SafeCenter;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 238
    :try_start_0
    iget-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iput-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 239
    iget-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_1
    iget-object v9, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->className:Ljava/lang/String;

    .line 244
    iput v12, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 245
    iget-object v9, v6, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    .line 246
    iget-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    const-string v10, "Widget"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 247
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    .line 249
    :cond_2
    iget-object v9, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget v10, v6, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 250
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 240
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 253
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    return-object v1
.end method

.method public static openChildMode(Landroid/content/Context;Lcom/lenovo/safecenter/database/AppDatabase;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "database"    # Lcom/lenovo/safecenter/database/AppDatabase;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 48
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportChildModeSwitchChange(Ljava/lang/Boolean;)V

    .line 51
    invoke-virtual {p1, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->queryAllHideApps(I)Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "hideApp":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 54
    invoke-static {p0, v0}, Lcom/lenovo/safecenter/support/CMDHelper;->disableApps(Landroid/content/Context;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const-string v3, "child_mode_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    sget-object v3, Lcom/lenovo/safecenter/test/SafeCenter;->ACTION_CHILD_MODE_ON:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->sendBoradcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 68
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 62
    goto :goto_0

    .line 66
    :cond_1
    const-string v3, "child_mode_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    sget-object v3, Lcom/lenovo/safecenter/test/SafeCenter;->ACTION_CHILD_MODE_ON:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->sendBoradcast(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static openGuestMode(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "childModeOn"    # Z
    .param p2, "database"    # Lcom/lenovo/safecenter/database/AppDatabase;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 102
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 104
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportGuestModeSwitchChange(Ljava/lang/Boolean;)V

    .line 106
    const-string v4, "cleanHistory"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/MyUtils;->deleteBrowserRecord(Landroid/content/Context;)V

    .line 109
    :cond_0
    if-eqz p1, :cond_1

    .line 113
    const-string v4, "child_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    sget-object v4, Lcom/lenovo/safecenter/test/SafeCenter;->ACTION_CHILD_MODE_ON:Ljava/lang/String;

    invoke-static {p0, v4, v3}, Lcom/lenovo/safecenter/test/SafeCenter;->sendBoradcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 116
    :cond_1
    const-string v4, "guest_mode_on"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    invoke-static {p0, p1, p2}, Lcom/lenovo/safecenter/support/CMDHelper;->changeToGuestContactsAndMmsDB(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    sget-object v3, Lcom/lenovo/safecenter/test/SafeCenter;->ACTION_GUEST_MODE_ON:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->sendBoradcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 122
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static sendBoradcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public static sendBoradcast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public static setFlyModeEnable(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 99
    return-void
.end method
