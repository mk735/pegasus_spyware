.class public final Lledroid/utils/IconAndLableCache;
.super Ljava/lang/Object;
.source "IconAndLableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/utils/IconAndLableCache$a;
    }
.end annotation


# static fields
.field private static e:Lledroid/utils/IconAndLableCache;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lledroid/utils/IconAndLableCache$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lledroid/utils/IconAndLableCache;

    invoke-direct {v0}, Lledroid/utils/IconAndLableCache;-><init>()V

    sput-object v0, Lledroid/utils/IconAndLableCache;->e:Lledroid/utils/IconAndLableCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    .line 63
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iput-object v1, p0, Lledroid/utils/IconAndLableCache;->a:Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-direct {p0, v0, v1}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 117
    :try_start_0
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    .line 124
    .local v0, "iconId":I
    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, v1, v0}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 128
    .end local v0    # "iconId":I
    :goto_1
    return-object v2

    .line 120
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    const/4 v1, 0x0

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 134
    :try_start_0
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 139
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 140
    .local v0, "iconId":I
    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, v1, v0}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 144
    .end local v0    # "iconId":I
    :goto_1
    return-object v2

    .line 136
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    const/4 v1, 0x0

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method private a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 84
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Landroid/content/pm/PackageInfo;)Lledroid/utils/IconAndLableCache$a;
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 330
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0}, Lledroid/utils/IconAndLableCache;->b(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconAndLableCache$a;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 350
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 351
    .local v1, "packageName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/utils/IconAndLableCache$a;

    .line 352
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    if-nez v0, :cond_1

    .line 353
    new-instance v0, Lledroid/utils/IconAndLableCache$a;

    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lledroid/utils/IconAndLableCache$a;-><init>(B)V

    .line 354
    .restart local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->b(Lledroid/utils/IconAndLableCache$a;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 356
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v2}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lledroid/utils/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 360
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_1
    return-object v0

    .line 350
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 356
    .restart local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_4
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method private b(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$a;
    .locals 4
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 334
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 335
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/utils/IconAndLableCache$a;

    .line 336
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lledroid/utils/IconAndLableCache$a;

    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lledroid/utils/IconAndLableCache$a;-><init>(B)V

    .line 338
    .restart local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->b(Lledroid/utils/IconAndLableCache$a;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 340
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lledroid/utils/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 344
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_1
    return-object v0
.end method

.method public static getIconCacheInstance(Landroid/content/Context;)Lledroid/utils/IconAndLableCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lledroid/utils/IconAndLableCache;->e:Lledroid/utils/IconAndLableCache;

    iget-object v0, v0, Lledroid/utils/IconAndLableCache;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lledroid/utils/IconAndLableCache;->e:Lledroid/utils/IconAndLableCache;

    iget-object v0, v0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    sget-object v0, Lledroid/utils/IconAndLableCache;->e:Lledroid/utils/IconAndLableCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lledroid/utils/IconAndLableCache;->c:Landroid/content/Context;

    .line 69
    sget-object v0, Lledroid/utils/IconAndLableCache;->e:Lledroid/utils/IconAndLableCache;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    .line 71
    :cond_1
    sget-object v0, Lledroid/utils/IconAndLableCache;->e:Lledroid/utils/IconAndLableCache;

    return-object v0
.end method


# virtual methods
.method public final flush()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 176
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getAllIcons()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v5, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v5

    .line 367
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v3, "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 369
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/utils/IconAndLableCache$a;

    .line 370
    .local v0, "e":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 373
    .end local v0    # "e":Lledroid/utils/IconAndLableCache$a;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 372
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public final getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    .local v0, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 104
    invoke-direct {p0, v0, p2}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 106
    :goto_1
    return-object v1

    .line 101
    .end local v0    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    .restart local v0    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method public final getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    iget-object v4, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v4

    .line 181
    :try_start_0
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 182
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 185
    :cond_0
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->a:Landroid/graphics/Bitmap;

    monitor-exit v4

    .line 189
    :goto_0
    return-object v3

    .line 188
    :cond_1
    invoke-direct {p0, v2}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    .line 189
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public final getIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 252
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 253
    if-nez p1, :cond_0

    .line 254
    const/4 v1, 0x0

    monitor-exit v2

    .line 258
    :goto_0
    return-object v1

    .line 257
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->b(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    .line 258
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getIcon(Landroid/content/pm/PackageInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 230
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 231
    if-nez p1, :cond_0

    .line 232
    const/4 v1, 0x0

    monitor-exit v2

    .line 236
    :goto_0
    return-object v1

    .line 235
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/pm/PackageInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    .line 236
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 208
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v1, 0x0

    monitor-exit v2

    .line 214
    :goto_0
    return-object v1

    .line 213
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    .line 214
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 215
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v3

    .line 275
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    const/4 v2, 0x0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :goto_0
    return-object v2

    .line 278
    :cond_0
    :try_start_1
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 285
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-direct {p0, v1}, Lledroid/utils/IconAndLableCache;->b(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    .line 286
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->a(Lledroid/utils/IconAndLableCache$a;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 287
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 282
    :catch_0
    move-exception v2

    :try_start_3
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->a:Landroid/graphics/Bitmap;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final getLable(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    iget-object v4, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v4

    .line 195
    :try_start_0
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 196
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 199
    :cond_0
    const/4 v3, 0x0

    monitor-exit v4

    .line 203
    :goto_0
    return-object v3

    .line 202
    :cond_1
    invoke-direct {p0, v2}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    .line 203
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->b(Lledroid/utils/IconAndLableCache$a;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public final getLable(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 263
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 264
    if-nez p1, :cond_0

    .line 265
    const/4 v1, 0x0

    monitor-exit v2

    .line 269
    :goto_0
    return-object v1

    .line 268
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->b(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    .line 269
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->b(Lledroid/utils/IconAndLableCache$a;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 270
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getLable(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 241
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 242
    if-nez p1, :cond_0

    .line 243
    const/4 v1, 0x0

    monitor-exit v2

    .line 247
    :goto_0
    return-object v1

    .line 246
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/pm/PackageInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    .line 247
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->b(Lledroid/utils/IconAndLableCache$a;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 248
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getLable(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 219
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v1, 0x0

    monitor-exit v2

    .line 225
    :goto_0
    return-object v1

    .line 224
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->a(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    .line 225
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->b(Lledroid/utils/IconAndLableCache$a;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getLable(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v3

    .line 292
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    const/4 p1, 0x0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 295
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->d:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 302
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-direct {p0, v1}, Lledroid/utils/IconAndLableCache;->b(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$a;

    move-result-object v0

    .line 303
    .local v0, "entry":Lledroid/utils/IconAndLableCache$a;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$a;->b(Lledroid/utils/IconAndLableCache$a;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "packageName":Ljava/lang/String;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 304
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$a;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 299
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final isDefaultIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 308
    iget-object v0, p0, Lledroid/utils/IconAndLableCache;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v1, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lledroid/utils/IconAndLableCache;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
