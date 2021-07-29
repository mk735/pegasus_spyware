.class public Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;
.super Ljava/lang/Object;
.source "PolicyAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ANR_TYPE:Ljava/lang/String; = "ANR"

.field public static final APP_TYPE_SYSTEM:Ljava/lang/String; = "system"

.field public static final APP_TYPE_USER:Ljava/lang/String; = "user"

.field public static final CRASHED_TYPE:Ljava/lang/String; = "CRASHED"

.field public static final DescribeFromWeiYunXing:Ljava/lang/String; = "performance.UsedAppInfo.weiyunxing"

.field public static final DescribeFromYiChang:Ljava/lang/String; = "performance.UsedAppInfo.yichang"

.field public static final DescribeFromZhengYunXing:Ljava/lang/String; = "performance.UsedAppInfo.zhengzaiyunxing"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:J

.field private f:J

.field public flag:I

.field private g:J

.field private h:J

.field private i:J

.field public icon:Landroid/graphics/drawable/Drawable;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field protected lastErrorTime:J

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/content/Context;

.field private o:Landroid/content/pm/PackageManager;

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public processName:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->h:J

    .line 53
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->i:J

    .line 57
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->lastErrorTime:J

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->m:Ljava/util/ArrayList;

    .line 68
    iput p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->uid:I

    .line 69
    iput-object p2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->processName:Ljava/lang/String;

    .line 70
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->o:Landroid/content/pm/PackageManager;

    .line 71
    iput-object p3, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->n:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "errorCondition"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->h:J

    .line 53
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->i:J

    .line 57
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->lastErrorTime:J

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->m:Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->processName:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->k:Ljava/lang/String;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->lastErrorTime:J

    .line 80
    return-void
.end method


# virtual methods
.method public addNum()V
    .locals 4

    .prologue
    .line 386
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->e:J

    .line 387
    return-void
.end method

.method public compareTo(Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;)I
    .locals 6
    .param p1, "obj"    # Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 343
    iget-object v2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->n:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->isInSysWhiteList(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->n:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->isInSysWhiteList(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->d:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->d:Z

    if-eqz v2, :cond_0

    .line 348
    :cond_2
    iget-boolean v2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->d:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->d:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 349
    goto :goto_0

    .line 350
    :cond_3
    iget-wide v2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->g:J

    iget-wide v4, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->g:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    move v0, v1

    .line 351
    goto :goto_0

    .line 352
    :cond_4
    iget-wide v1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->g:J

    iget-wide v3, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->g:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 355
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    check-cast p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateAppTotleImpLevel()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 321
    iget-wide v2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->g:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->e:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v0, v2

    .line 322
    .local v0, "levelResult":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 323
    iget-wide v2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 327
    :goto_0
    return-object v2

    .line 325
    :cond_0
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->g:J

    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->f:J

    .line 326
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->e:J

    .line 327
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method public getAppDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuInfoTenTime()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getForegoing()J
    .locals 2

    .prologue
    .line 390
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->h:J

    return-wide v0
.end method

.method public getImportance()J
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->f:J

    return-wide v0
.end method

.method public getLastCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLastErrorTime()J
    .locals 2

    .prologue
    .line 446
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->lastErrorTime:J

    return-wide v0
.end method

.method public getLastLongMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getLastStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()J
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->e:J

    return-wide v0
.end method

.method public getRunningTime()J
    .locals 2

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->i:J

    return-wide v0
.end method

.method public getTotleImpLevel()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 186
    iget-wide v2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->g:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->e:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v0, v2

    .line 187
    .local v0, "levelResult":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 188
    iget-wide v2, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 190
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCanUninstall()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->d:Z

    return v0
.end method

.method public isHasStore()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->b:Z

    return v0
.end method

.method public isTodayUsed()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->c:Z

    return v0
.end method

.method public setAppDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "appDir"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->a:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setCanUninstall(Z)V
    .locals 0
    .param p1, "canUninstall"    # Z

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->d:Z

    .line 427
    return-void
.end method

.method public setCpuInfoTenTime(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "cpuInfoTenTime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->m:Ljava/util/ArrayList;

    .line 419
    return-void
.end method

.method public setForegoing(J)V
    .locals 0
    .param p1, "foregoing"    # J

    .prologue
    .line 394
    iput-wide p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->h:J

    .line 395
    return-void
.end method

.method public setHasStore(Z)V
    .locals 0
    .param p1, "hasStore"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->b:Z

    .line 365
    return-void
.end method

.method public setImportance(J)V
    .locals 3
    .param p1, "importance"    # J

    .prologue
    const-wide/16 v1, 0x64

    .line 372
    cmp-long v0, p1, v1

    if-lez v0, :cond_1

    .line 373
    iput-wide p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->f:J

    .line 374
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->g:J

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 376
    iput-wide p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->f:J

    .line 377
    iget-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->e:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->g:J

    goto :goto_0
.end method

.method public setLastCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCondition"    # Ljava/lang/String;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->k:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setLastErrorTime(J)V
    .locals 0
    .param p1, "lastErrorTime"    # J

    .prologue
    .line 450
    iput-wide p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->lastErrorTime:J

    .line 451
    return-void
.end method

.method public setLastLongMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastLongMsg"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->j:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setLastStackTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastStackTrace"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->l:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setRunningTime(J)V
    .locals 0
    .param p1, "runningTime"    # J

    .prologue
    .line 402
    iput-wide p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->i:J

    .line 403
    return-void
.end method

.method public setTodayUsed(Z)V
    .locals 0
    .param p1, "todayUsed"    # Z

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->c:Z

    .line 435
    return-void
.end method

.method public updateUAIRunningTimeToDatebase()V
    .locals 7

    .prologue
    .line 303
    new-instance v1, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    iget-object v4, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->n:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 304
    .local v1, "dbh":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 305
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 306
    .local v3, "evs":Landroid/content/ContentValues;
    const-string v4, "Last_Running_Time"

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->getRunningTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    const-string v4, "Last_Foreground"

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->getForegoing()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    :try_start_0
    const-string v4, "UsedApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package_Name= \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 316
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 318
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 316
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    goto :goto_0

    .line 315
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 316
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    throw v4
.end method
