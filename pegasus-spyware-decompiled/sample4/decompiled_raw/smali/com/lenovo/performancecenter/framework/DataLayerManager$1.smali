.class final Lcom/lenovo/performancecenter/framework/DataLayerManager$1;
.super Ljava/lang/Object;
.source "DataLayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/framework/DataLayerManager;->initApplication(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/lenovo/performancecenter/framework/DataLayerManager$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .prologue
    .line 460
    const-string v5, "DataLayerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "initApplication ---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v13, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$1;->a:Landroid/content/Context;

    invoke-direct {v13, v5}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 463
    .local v13, "dbh":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v13}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 464
    .local v12, "db_r":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT * FROM ApplicationsInfo"

    const/4 v6, 0x0

    invoke-virtual {v12, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 466
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_5

    .line 467
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 468
    const-string v5, "DataLayerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "initApplication ---> cursor.getCount == 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getWhiteListSuggestNotKill()Ljava/util/ArrayList;

    move-result-object v17

    .line 470
    .local v17, "mWhiteListSuggestNotKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$1;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getWhiteListNotKill(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v16

    .line 471
    .local v16, "mWhiteListNotKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v15, "insertValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/performancecenter/performance/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$1;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 474
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 476
    .local v10, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 478
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-gtz v5, :cond_2

    .line 480
    const/4 v8, 0x0

    .line 485
    .local v8, "flag":I
    :goto_1
    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 486
    .local v3, "pkgName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "appName":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/performancecenter/performance/AppInfo;

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/performancecenter/performance/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 488
    .local v2, "info":Lcom/lenovo/performancecenter/performance/AppInfo;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 489
    :cond_0
    const/4 v5, 0x1

    iput v5, v2, Lcom/lenovo/performancecenter/performance/AppInfo;->state:I

    .line 491
    :cond_1
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    .end local v2    # "info":Lcom/lenovo/performancecenter/performance/AppInfo;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v8    # "flag":I
    :cond_2
    const/4 v8, 0x1

    .restart local v8    # "flag":I
    goto :goto_1

    .line 493
    .end local v8    # "flag":I
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$1;->a:Landroid/content/Context;

    invoke-static {v5, v15}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 495
    .end local v10    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "insertValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/performancecenter/performance/AppInfo;>;"
    .end local v16    # "mWhiteListNotKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "mWhiteListSuggestNotKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 500
    :cond_5
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 501
    invoke-virtual {v13}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 502
    return-void
.end method
