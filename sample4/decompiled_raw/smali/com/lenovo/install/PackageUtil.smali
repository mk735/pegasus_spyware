.class public Lcom/lenovo/install/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/install/PackageUtil$AppSnippet;
    }
.end annotation


# static fields
.field public static final INTENT_ATTR_APPLICATION_INFO:Ljava/lang/String; = "com.android.packageinstaller.applicationInfo"

.field public static final INTENT_ATTR_INSTALL_STATUS:Ljava/lang/String; = "com.android.packageinstaller.installStatus"

.field public static final INTENT_ATTR_PACKAGE_NAME:Ljava/lang/String; = "com.android.packageinstaller.PackageName"

.field public static final INTENT_ATTR_PERMISSIONS_LIST:Ljava/lang/String; = "com.android.packageinstaller.PermissionsList"

.field public static final PREFIX:Ljava/lang/String; = "com.android.packageinstaller."

.field public static final newAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/install/PackageUtil;->newAppMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method public static getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/net/Uri;)Lcom/lenovo/install/PackageUtil$AppSnippet;
    .locals 8
    .param p0, "pContext"    # Landroid/app/Activity;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "packageURI"    # Landroid/net/Uri;

    .prologue
    .line 173
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "archiveFilePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 175
    .local v4, "pRes":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 176
    .local v1, "assmgr":Landroid/content/res/AssetManager;
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 177
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 178
    .local v5, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 181
    .local v3, "label":Ljava/lang/CharSequence;
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_0

    .line 183
    :try_start_0
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 187
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 188
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v6, :cond_4

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 191
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 194
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v6, :cond_2

    .line 196
    :try_start_1
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 200
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 203
    :cond_3
    new-instance v6, Lcom/lenovo/install/PackageUtil$AppSnippet;

    invoke-direct {v6, v3, v2}, Lcom/lenovo/install/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v6

    .line 188
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v6

    goto :goto_2

    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static getApplicationInfo(Landroid/net/Uri;)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p0, "packageURI"    # Landroid/net/Uri;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "archiveFilePath":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 77
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 78
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_0

    .line 79
    const/4 v5, 0x0

    .line 81
    :goto_0
    return-object v5

    :cond_0
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p0, "packageURI"    # Landroid/net/Uri;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "archiveFilePath":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 92
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 93
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 96
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    return-object v3
.end method

.method public static getPerssions(Landroid/content/pm/PackageParser$Package;Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "mPermsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-nez p0, :cond_1

    .line 232
    :cond_0
    return-object v1

    .line 215
    :cond_1
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 216
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 217
    .local v4, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 218
    .local v3, "size":I
    if-lez v3, :cond_0

    .line 220
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "permName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 223
    .local v5, "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v5, :cond_2

    .line 224
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v5    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static isPackageAlreadyInstalled(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, "installedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 147
    .local v2, "installedListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 148
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 149
    .local v3, "tmp":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    const/4 v4, 0x1

    .line 153
    .end local v3    # "tmp":Landroid/content/pm/PackageInfo;
    :goto_1
    return v4

    .line 147
    .restart local v3    # "tmp":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "tmp":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
