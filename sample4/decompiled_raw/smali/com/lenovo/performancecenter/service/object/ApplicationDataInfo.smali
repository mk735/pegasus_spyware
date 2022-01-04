.class public Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;
.super Ljava/lang/Object;
.source "ApplicationDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private final i:Landroid/content/pm/IPackageStatsObserver$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v1, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->b:I

    .line 101
    iput-wide v1, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->c:J

    .line 102
    iput-wide v1, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->d:J

    .line 103
    iput-wide v1, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->e:J

    .line 104
    iput-wide v1, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->f:J

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->g:I

    .line 197
    new-instance v0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$1;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$1;-><init>(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->i:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->a:Ljava/util/List;

    .line 58
    invoke-direct {p0, p1}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->a:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 183
    :goto_0
    iget-object v1, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->g:I

    if-eq v1, v2, :cond_0

    .line 184
    const-string v1, "ClearCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ---> waitCallBack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 121
    .local v1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->g:I

    .line 122
    iput v6, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->h:I

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->i:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    goto :goto_1

    .line 126
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->h:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->g:I

    return v0
.end method

.method public static clearAllCache(Landroid/content/pm/PackageManager;)V
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 228
    new-array v0, v6, [Ljava/lang/Class;

    .line 229
    .local v0, "arrayOfClass":[Ljava/lang/Class;
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v7

    .line 230
    const-class v6, Landroid/content/pm/IPackageDataObserver;

    aput-object v6, v0, v8

    .line 234
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "freeStorageAndNotify"

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 236
    .local v3, "localMethod":Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    :cond_1
    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 237
    .local v2, "localLong":Ljava/lang/Long;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$2;

    invoke-direct {v6}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$2;-><init>()V

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v2    # "localLong":Ljava/lang/Long;
    .end local v3    # "localMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static clearSeperateCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "cotext"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v0, " -cc "

    invoke-static {p1, v0, p0}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmdInJar(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 224
    return-void
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->h:I

    return v0
.end method


# virtual methods
.method public getCacheInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;>;"
    invoke-direct {p0}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->a()V

    .line 82
    iget-object v9, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageStats;

    .line 83
    .local v8, "ps":Landroid/content/pm/PackageStats;
    iget-wide v9, v8, Landroid/content/pm/PackageStats;->cacheSize:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 85
    :try_start_0
    iget-object v9, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 86
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "lable":Ljava/lang/String;
    invoke-virtual {v5, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 88
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-static {v4}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 89
    .local v1, "bitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;

    iget-object v10, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    iget-wide v11, v8, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {p1, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v10, v6, v9, v11}, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 91
    .local v0, "appInfo":Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;
    iget-wide v9, v8, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v9, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appCacheSize:J

    .line 92
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v0    # "appInfo":Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;
    .end local v1    # "bitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "lable":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "ps":Landroid/content/pm/PackageStats;
    :cond_1
    return-object v7
.end method

.method public getDataInfo()Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;
    .locals 13

    .prologue
    const-wide/16 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->a()V

    .line 65
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->c:J

    .line 66
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->d:J

    .line 67
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->e:J

    .line 68
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->f:J

    .line 69
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageStats;

    .line 70
    .local v12, "ps":Landroid/content/pm/PackageStats;
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->c:J

    iget-wide v2, v12, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->c:J

    .line 71
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->d:J

    iget-wide v2, v12, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->d:J

    .line 72
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->e:J

    iget-wide v2, v12, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->e:J

    goto :goto_0

    .line 74
    .end local v12    # "ps":Landroid/content/pm/PackageStats;
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->c:J

    iget-wide v2, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->d:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->f:J

    .line 75
    new-instance v0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;

    iget-wide v2, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->c:J

    iget-wide v4, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->d:J

    iget-wide v6, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->e:J

    iget-wide v8, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->f:J

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;-><init>(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;JJJJB)V

    return-object v0
.end method
