.class public Lcom/lenovo/safecenter/database/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# static fields
.field public static PERM_TOTAL:I

.field private static a:I

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xf

    sput v0, Lcom/lenovo/safecenter/database/AppUtil;->PERM_TOTAL:I

    .line 34
    const/16 v0, 0x8

    sput v0, Lcom/lenovo/safecenter/database/AppUtil;->a:I

    .line 35
    const/4 v0, 0x3

    sput v0, Lcom/lenovo/safecenter/database/AppUtil;->b:I

    .line 36
    const/4 v0, 0x2

    sput v0, Lcom/lenovo/safecenter/database/AppUtil;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([III)I
    .locals 3
    .param p0, "selected"    # [I
    .param p1, "start"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x1

    .line 70
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    .line 71
    aget v2, p0, v0

    if-ne v2, v1, :cond_0

    .line 76
    :goto_1
    return v1

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static batchOperateDB(Lcom/lenovo/safecenter/database/AppDatabase;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V
    .locals 14
    .param p0, "database"    # Lcom/lenovo/safecenter/database/AppDatabase;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "appinfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 662
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 663
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 664
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 667
    :try_start_0
    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 668
    .local v13, "pkgname":Ljava/lang/String;
    sget-object v1, Lcom/lenovo/install/PackageUtil;->newAppMap:Ljava/util/Map;

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 669
    invoke-static {p1}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getThirdWhiteAppsList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 670
    .local v5, "whiteApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getPreInstalledVersion()Z

    move-result v7

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v7}, Lcom/lenovo/safecenter/database/AppUtil;->configurateAppsPermission(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentResolver;Ljava/util/List;Landroid/content/pm/ApplicationInfo;Z)V

    .line 677
    .end local v5    # "whiteApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 682
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 684
    .end local v13    # "pkgname":Ljava/lang/String;
    :goto_1
    return-void

    .line 673
    .restart local v13    # "pkgname":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/lenovo/install/PackageUtil;->newAppMap:Ljava/util/Map;

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    move-object v6, p1

    move-object/from16 v7, p2

    move-object v8, v3

    move-object v9, v4

    move-object/from16 v10, p3

    invoke-static/range {v6 .. v11}, Lcom/lenovo/safecenter/database/AppUtil;->configurateAppsPermission(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentResolver;Landroid/content/pm/ApplicationInfo;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 678
    .end local v13    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 679
    .local v12, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 682
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 681
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 682
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public static batchOperateDBForBoot(Landroid/content/Context;Lcom/lenovo/safecenter/database/AppDatabase;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "database"    # Lcom/lenovo/safecenter/database/AppDatabase;
    .param p2, "versionCode"    # Z

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 595
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 596
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getThirdWhiteAppsList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 597
    .local v4, "whiteApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/lenovo/safecenter/database/AppUtil;->getInstalledThirdApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .line 598
    .local v9, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p1}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 599
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 602
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .local v5, "appinfo":Landroid/content/pm/ApplicationInfo;
    move-object v0, p0

    move v6, p2

    .line 603
    invoke-static/range {v0 .. v6}, Lcom/lenovo/safecenter/database/AppUtil;->configurateAppsPermission(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentResolver;Ljava/util/List;Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 608
    .end local v5    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 609
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 612
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 615
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    const-string v0, "test"

    const-string v6, "batchOperateDBForBoot end..."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void

    .line 607
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 612
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 611
    .end local v8    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 612
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
.end method

.method public static checkPkgExit(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v8, 0x0

    .line 139
    .local v8, "exit":Z
    const/4 v6, 0x0

    .line 141
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.lenovo.providers.querypermissions/pkgname/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 142
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 144
    const/4 v8, 0x1

    .line 148
    :cond_0
    if-eqz v6, :cond_1

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 152
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return v8

    .line 145
    :catch_0
    move-exception v7

    .line 146
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    if-eqz v6, :cond_1

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 148
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static configurateAppsPermission(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentResolver;Landroid/content/pm/ApplicationInfo;Ljava/util/Map;)V
    .locals 39
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "resolver"    # Landroid/content/ContentResolver;
    .param p4, "appinfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/ContentResolver;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p5, "permMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;>;"
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 529
    .local v38, "pkgname":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/database/AppUtil;->getAppPermissionConfigurs(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v37

    .line 530
    .local v37, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v6}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 531
    .local v6, "app":Lcom/lenovo/safecenter/support/AppInfo;
    move-object/from16 v0, p4

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v6, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    .line 532
    move-object/from16 v0, v38

    iput-object v0, v6, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 533
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    .line 534
    invoke-static/range {p5 .. p5}, Lcom/lenovo/safecenter/database/AppUtil;->getTrust(Ljava/util/Map;)I

    move-result v2

    iput v2, v6, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    .line 536
    const-string v2, "privacy"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v7, 0x0

    .line 538
    .local v7, "priSelect":I
    :goto_0
    const-string v2, "privacy"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 539
    .local v8, "priSuggest":I
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", priSelect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", priSuggest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v4, "android.permission.READ_SMS"

    const-string v5, "privacy"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 542
    const-string v4, "android.permission.WRITE_SMS"

    const-string v5, "privacy"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 544
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "privacy"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 546
    const-string v4, "android.permission.READ_CONTACTS"

    const-string v5, "privacy"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 548
    const-string v4, "android.permission.WRITE_CONTACTS"

    const-string v5, "privacy"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 550
    const-string v4, "android.permission.READ_CALENDAR"

    const-string v5, "privacy"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 552
    const-string v4, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    const-string v5, "privacy"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 555
    const-string v2, "location"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v14, 0x0

    .line 557
    .local v14, "locSelect":I
    :goto_1
    const-string v2, "location"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 558
    .local v15, "locSuggest":I
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", locSelect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", locSuggest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v12, "location"

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v13, v6

    invoke-static/range {v9 .. v15}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 561
    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    const-string v12, "location"

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v13, v6

    invoke-static/range {v9 .. v15}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 563
    const-string v11, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    const-string v12, "location"

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v13, v6

    invoke-static/range {v9 .. v15}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 566
    const-string v2, "device"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v21, 0x0

    .line 568
    .local v21, "devSelect":I
    :goto_2
    const-string v2, "device"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 569
    .local v22, "devSuggest":I
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", devSelect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", devSuggest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v18, "android.permission.RECORD_AUDIO"

    const-string v19, "device"

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v20, v6

    invoke-static/range {v16 .. v22}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 572
    const-string v18, "android.permission.CAMERA"

    const-string v19, "device"

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v20, v6

    invoke-static/range {v16 .. v22}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 575
    const-string v2, "sendmessage"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v28, 0x0

    .line 577
    .local v28, "smsSelect":I
    :goto_3
    const-string v2, "sendmessage"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 578
    .local v29, "smsSuggest":I
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", smsSelect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", smsSuggest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v25, "android.permission.SEND_SMS"

    const-string v26, "sendmessage"

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move-object/from16 v27, v6

    invoke-static/range {v23 .. v29}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 582
    const-string v2, "call_phone"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 v35, 0x0

    .line 584
    .local v35, "callSelect":I
    :goto_4
    const-string v2, "call_phone"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 585
    .local v36, "callSuggest":I
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callSelect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callSuggest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v32, "android.permission.CALL_PHONE"

    const-string v33, "call_phone"

    move-object/from16 v30, p1

    move-object/from16 v31, p2

    move-object/from16 v34, v6

    invoke-static/range {v30 .. v36}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 588
    const-string v32, "android.permission.CALL_PRIVILEGED"

    const-string v33, "call_phone"

    move-object/from16 v30, p1

    move-object/from16 v31, p2

    move-object/from16 v34, v6

    invoke-static/range {v30 .. v36}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V

    .line 590
    return-void

    .line 536
    .end local v7    # "priSelect":I
    .end local v8    # "priSuggest":I
    .end local v14    # "locSelect":I
    .end local v15    # "locSuggest":I
    .end local v21    # "devSelect":I
    .end local v22    # "devSuggest":I
    .end local v28    # "smsSelect":I
    .end local v29    # "smsSuggest":I
    .end local v35    # "callSelect":I
    .end local v36    # "callSuggest":I
    :cond_0
    const-string v2, "privacy"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/AppInfo;

    iget v7, v2, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto/16 :goto_0

    .line 555
    .restart local v7    # "priSelect":I
    .restart local v8    # "priSuggest":I
    :cond_1
    const-string v2, "location"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/AppInfo;

    iget v14, v2, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto/16 :goto_1

    .line 566
    .restart local v14    # "locSelect":I
    .restart local v15    # "locSuggest":I
    :cond_2
    const-string v2, "device"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v2, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    move/from16 v21, v0

    goto/16 :goto_2

    .line 575
    .restart local v21    # "devSelect":I
    .restart local v22    # "devSuggest":I
    :cond_3
    const-string v2, "sendmessage"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v2, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    move/from16 v28, v0

    goto/16 :goto_3

    .line 582
    .restart local v28    # "smsSelect":I
    .restart local v29    # "smsSuggest":I
    :cond_4
    const-string v2, "call_phone"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v2, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    move/from16 v35, v0

    goto/16 :goto_4
.end method

.method public static configurateAppsPermission(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentResolver;Ljava/util/List;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 49
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "resolver"    # Landroid/content/ContentResolver;
    .param p5, "appinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "version"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/ApplicationInfo;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p4, "whiteApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 431
    .local v48, "pkgname":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 432
    .local v8, "contains":Z
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/database/AppUtil;->getAppPermissionConfigurs(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v47

    .line 434
    .local v47, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "privacy"

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 436
    .local v10, "priSelect":I
    const-string v6, "android.permission.READ_SMS"

    const-string v7, "privacy"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 440
    const-string v6, "android.permission.WRITE_SMS"

    const-string v7, "privacy"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 444
    const-string v6, "android.permission.RECEIVE_SMS"

    const-string v7, "privacy"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 448
    const-string v6, "android.permission.READ_CONTACTS"

    const-string v7, "privacy"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 452
    const-string v6, "android.permission.WRITE_CONTACTS"

    const-string v7, "privacy"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 456
    const-string v6, "android.permission.READ_CALENDAR"

    const-string v7, "privacy"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 460
    const-string v6, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    const-string v7, "privacy"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 465
    const-string v2, "location"

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 467
    .local v19, "locSelect":I
    const-string v15, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v16, "location"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    move/from16 v17, v8

    move/from16 v18, p6

    invoke-static/range {v11 .. v19}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 471
    const-string v15, "android.permission.ACCESS_FINE_LOCATION"

    const-string v16, "location"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    move/from16 v17, v8

    move/from16 v18, p6

    invoke-static/range {v11 .. v19}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 475
    const-string v15, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    const-string v16, "location"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    move/from16 v17, v8

    move/from16 v18, p6

    invoke-static/range {v11 .. v19}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 481
    const-string v2, "device"

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 483
    .local v28, "devSelect":I
    const-string v24, "android.permission.RECORD_AUDIO"

    const-string v25, "device"

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p5

    move/from16 v26, v8

    move/from16 v27, p6

    invoke-static/range {v20 .. v28}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 487
    const-string v24, "android.permission.CAMERA"

    const-string v25, "device"

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p5

    move/from16 v26, v8

    move/from16 v27, p6

    invoke-static/range {v20 .. v28}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 492
    const-string v2, "sendmessage"

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 494
    .local v37, "smsSelect":I
    const-string v33, "android.permission.SEND_SMS"

    const-string v34, "sendmessage"

    move-object/from16 v29, p0

    move-object/from16 v30, p1

    move-object/from16 v31, p2

    move-object/from16 v32, p5

    move/from16 v35, v8

    move/from16 v36, p6

    invoke-static/range {v29 .. v37}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 499
    const-string v2, "call_phone"

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v46

    .line 501
    .local v46, "callSelect":I
    const-string v42, "android.permission.CALL_PHONE"

    const-string v43, "call_phone"

    move-object/from16 v38, p0

    move-object/from16 v39, p1

    move-object/from16 v40, p2

    move-object/from16 v41, p5

    move/from16 v44, v8

    move/from16 v45, p6

    invoke-static/range {v38 .. v46}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 504
    const-string v42, "android.permission.CALL_PRIVILEGED"

    const-string v43, "call_phone"

    move-object/from16 v38, p0

    move-object/from16 v39, p1

    move-object/from16 v40, p2

    move-object/from16 v41, p5

    move/from16 v44, v8

    move/from16 v45, p6

    invoke-static/range {v38 .. v46}, Lcom/lenovo/safecenter/database/AppUtil;->getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 507
    return-void
.end method

.method public static getAppPermissionConfigurs(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v8, 0x0

    .line 157
    .local v8, "select":I
    const/4 v6, 0x0

    .line 159
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.lenovo.providers.querypermissions/pkgname/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/type/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 160
    .local v1, "quri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "result"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 176
    :goto_0
    if-eqz v6, :cond_0

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    .end local v1    # "quri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return v8

    .line 164
    .restart local v1    # "quri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, "sendmessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    const/4 v8, 0x2

    goto :goto_0

    .line 167
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "quri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 170
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    const-string v0, "sendmessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    const/4 v8, 0x2

    .line 176
    :goto_2
    if-eqz v6, :cond_0

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 174
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 176
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getAppPermissionConfigurs(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pkgname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 91
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v0, "privacy"

    const-string v2, "-1"

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device"

    const-string v2, "-1"

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "location"

    const-string v2, "-1"

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sendmessage"

    const-string v2, "-1"

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "call_phone"

    const-string v2, "-1"

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 95
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.lenovo.providers.querypermissions/pkgname/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    .local v1, "quri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    sget v0, Lcom/lenovo/safecenter/database/AppUtil;->PERM_TOTAL:I

    new-array v10, v0, [I

    .line 101
    .local v10, "selected":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v10

    if-ge v8, v0, :cond_2

    .line 102
    add-int/lit8 v0, v8, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, "tmp":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    aput v0, v10, v8

    .line 101
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v10, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 127
    .end local v1    # "quri":Landroid/net/Uri;
    .end local v8    # "i":I
    .end local v10    # "selected":[I
    .end local v11    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 128
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    if-eqz v6, :cond_1

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v9

    .line 109
    .restart local v1    # "quri":Landroid/net/Uri;
    .restart local v8    # "i":I
    .restart local v10    # "selected":[I
    :cond_2
    :try_start_2
    const-string v0, "privacy"

    const/4 v2, 0x0

    sget v3, Lcom/lenovo/safecenter/database/AppUtil;->a:I

    invoke-static {v10, v2, v3}, Lcom/lenovo/safecenter/database/AppUtil;->a([III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "device"

    sget v2, Lcom/lenovo/safecenter/database/AppUtil;->a:I

    sget v3, Lcom/lenovo/safecenter/database/AppUtil;->c:I

    invoke-static {v10, v2, v3}, Lcom/lenovo/safecenter/database/AppUtil;->a([III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "location"

    sget v2, Lcom/lenovo/safecenter/database/AppUtil;->a:I

    sget v3, Lcom/lenovo/safecenter/database/AppUtil;->c:I

    add-int/2addr v2, v3

    sget v3, Lcom/lenovo/safecenter/database/AppUtil;->b:I

    invoke-static {v10, v2, v3}, Lcom/lenovo/safecenter/database/AppUtil;->a([III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget v0, Lcom/lenovo/safecenter/database/AppUtil;->PERM_TOTAL:I

    add-int/lit8 v0, v0, -0x2

    aget v0, v10, v0

    if-ne v0, v12, :cond_3

    .line 119
    sget v0, Lcom/lenovo/safecenter/database/AppUtil;->PERM_TOTAL:I

    add-int/lit8 v0, v0, -0x2

    const/4 v2, 0x2

    aput v2, v10, v0

    .line 120
    :cond_3
    const-string v0, "sendmessage"

    sget v2, Lcom/lenovo/safecenter/database/AppUtil;->PERM_TOTAL:I

    add-int/lit8 v2, v2, -0x2

    aget v2, v10, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget v0, Lcom/lenovo/safecenter/database/AppUtil;->PERM_TOTAL:I

    add-int/lit8 v0, v0, -0x1

    aget v0, v10, v0

    if-ne v0, v12, :cond_4

    .line 123
    sget v0, Lcom/lenovo/safecenter/database/AppUtil;->PERM_TOTAL:I

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    aput v2, v10, v0

    .line 124
    :cond_4
    const-string v0, "call_phone"

    sget v2, Lcom/lenovo/safecenter/database/AppUtil;->PERM_TOTAL:I

    add-int/lit8 v2, v2, -0x1

    aget v2, v10, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .end local v8    # "i":I
    .end local v10    # "selected":[I
    :cond_5
    if-eqz v6, :cond_1

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 130
    .end local v1    # "quri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 805
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return v1

    .line 806
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 810
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getAppsForBoot(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "appinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "permName"    # Ljava/lang/String;
    .param p5, "typeName"    # Ljava/lang/String;
    .param p6, "contains"    # Z
    .param p7, "version"    # Z
    .param p8, "suggest"    # I

    .prologue
    .line 363
    iget v5, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 364
    .local v5, "uid":I
    iget-object v4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 365
    .local v4, "pkgname":Ljava/lang/String;
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, p4, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 369
    const-string v6, "select * from appname where uid=? and apptype=? and pername=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p5, v7, v8

    const/4 v8, 0x2

    aput-object p4, v7, v8

    invoke-virtual {p2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 373
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 374
    new-instance v1, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v1}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 375
    .local v1, "app":Lcom/lenovo/safecenter/support/AppInfo;
    iput-object v4, v1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 376
    iput v5, v1, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    .line 377
    iput-object v3, v1, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    .line 378
    iput-object p5, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 379
    iput-object p4, v1, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    .line 381
    if-eqz p6, :cond_2

    .line 382
    const/4 v6, 0x1

    iput v6, v1, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    .line 383
    const/4 v6, 0x0

    iput v6, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 402
    :goto_0
    invoke-static {p2, v1}, Lcom/lenovo/safecenter/database/AppUtil;->insertApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/lenovo/safecenter/support/AppInfo;)V

    .line 404
    .end local v1    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 406
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-void

    .line 385
    .restart local v1    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/4 v6, 0x0

    iput v6, v1, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    .line 386
    if-nez p7, :cond_6

    .line 387
    if-gez p8, :cond_5

    .line 388
    const-string v6, "sendmessage"

    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 389
    const/4 v6, 0x2

    iput v6, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto :goto_0

    .line 391
    :cond_3
    iget-object v6, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v7, "privacy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 392
    const/4 v6, 0x1

    iput v6, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto :goto_0

    .line 394
    :cond_4
    const/4 v6, 0x0

    iput v6, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto :goto_0

    .line 398
    :cond_5
    move/from16 v0, p8

    iput v0, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto :goto_0

    .line 400
    :cond_6
    const/4 v6, 0x0

    iput v6, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto :goto_0
.end method

.method public static getAppsForBoot(Landroid/content/pm/PackageManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;II)V
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "perName"    # Ljava/lang/String;
    .param p3, "appType"    # Ljava/lang/String;
    .param p4, "app"    # Lcom/lenovo/safecenter/support/AppInfo;
    .param p5, "selected"    # I
    .param p6, "suggest"    # I

    .prologue
    .line 410
    iget-object v1, p4, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 411
    iput-object p2, p4, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    .line 412
    iput-object p3, p4, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 413
    iput p5, p4, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 414
    iput p6, p4, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    .line 416
    invoke-static {p4}, Lcom/lenovo/safecenter/database/AppUtil;->getContentValues(Lcom/lenovo/safecenter/support/AppInfo;)Landroid/content/ContentValues;

    move-result-object v0

    .line 417
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "appname"

    const-string v2, "packagename=? and pername=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p4, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p4, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 419
    const-string v1, "appname"

    const-string v2, "name"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 424
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static getContentValues(Lcom/lenovo/safecenter/support/AppInfo;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "app"    # Lcom/lenovo/safecenter/support/AppInfo;

    .prologue
    .line 184
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "uid"

    iget v2, p0, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v1, "name"

    iget-object v2, p0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "selected"

    iget v2, p0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v1, "packagename"

    iget-object v2, p0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "apptype"

    iget-object v2, p0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "pername"

    iget-object v2, p0, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "trusted"

    iget v2, p0, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v1, "suggest"

    iget v2, p0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v1, "isupload"

    iget v2, p0, Lcom/lenovo/safecenter/support/AppInfo;->isupload:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    return-object v0
.end method

.method public static getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "Context"    # Landroid/content/Context;
    .param p1, "packName"    # Ljava/lang/String;

    .prologue
    .line 719
    const/4 v3, 0x0

    .line 720
    .local v3, "sigs":[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .line 722
    .local v2, "md5":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 723
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 724
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, "str1":Ljava/lang/String;
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/safecenter/support/MD5Util;->getMD5String([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 726
    const-string v5, "info"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "str1=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">>>>>>>>str==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    .end local v1    # "i":I
    .end local v4    # "str1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 731
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object v2
.end method

.method public static getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    .line 287
    const-string v0, ""

    .line 289
    .local v0, "des":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 337
    :goto_0
    return-object v0

    .line 291
    :sswitch_0
    const v1, 0x7f0d00d3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    goto :goto_0

    .line 295
    :sswitch_1
    const v1, 0x7f0d05e9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    goto :goto_0

    .line 299
    :sswitch_2
    const v1, 0x7f0d05ea

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    goto :goto_0

    .line 303
    :sswitch_3
    const v1, 0x7f0d00df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    goto :goto_0

    .line 308
    :sswitch_4
    const v1, 0x7f0d00db

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    goto :goto_0

    .line 312
    :sswitch_5
    const v1, 0x7f0d00e1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    goto :goto_0

    .line 316
    :sswitch_6
    const v1, 0x7f0d00e2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    goto :goto_0

    .line 320
    :sswitch_7
    const v1, 0x7f0d00d2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    goto :goto_0

    .line 324
    :sswitch_8
    const v1, 0x7f0d00dd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    goto :goto_0

    .line 328
    :sswitch_9
    const v1, 0x7f0d00d1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    goto :goto_0

    .line 332
    :sswitch_a
    const v1, 0x7f0d0667

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    goto :goto_0

    .line 336
    :sswitch_b
    const v1, 0x7f0d066e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xb -> :sswitch_9
        0x2c -> :sswitch_a
        0x2d -> :sswitch_b
        0x30 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getDescriptionByType(Landroid/content/Context;Lcom/lenovo/safecenter/database/AppDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "database"    # Lcom/lenovo/safecenter/database/AppDatabase;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "perType"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v0, "privacy"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const v0, 0x7f0d03ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    .line 262
    :cond_0
    const-string v0, "location"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_1
    const-string v0, "device"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    const v0, 0x7f0d03ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_2
    const-string v0, "sendmessage"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_3
    const-string v0, "call_phone"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    const v0, 0x7f0d00d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_4
    const-string v0, "internet"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    const v0, 0x7f0d00e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstalledThirdApps(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 41
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v5, "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    const/16 v6, 0x2000

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 45
    .local v3, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v3, :cond_1

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 54
    .end local v5    # "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    return-object v5

    .line 48
    .restart local v5    # "third_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 49
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0}, Lcom/lenovo/safecenter/database/AppUtil;->isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 50
    .local v1, "flag":Z
    if-eqz v1, :cond_2

    sget-object v6, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 51
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getPerDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "perType"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f0d00d2

    const v1, 0x7f0d00db

    .line 222
    const-string v0, "android.permission.READ_SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    const v0, 0x7f0d00d3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 225
    :cond_1
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_2
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_3
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_4
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_5
    const-string v0, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 235
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_6
    const-string v0, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_7
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 239
    const v0, 0x7f0d00e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_8
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 241
    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_9
    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 243
    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 244
    :cond_a
    const-string v0, "android.permission.CALL_PHONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 246
    :cond_b
    const-string v0, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 248
    :cond_c
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 249
    const v0, 0x7f0d00e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 250
    :cond_d
    const-string v0, "android.permission.WRITE_SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 251
    const v0, 0x7f0d0667

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 252
    :cond_e
    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 253
    const v0, 0x7f0d066e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 256
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getTrust(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "permMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;>;"
    const-string v0, "privacy"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    const-string v0, "privacy"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    .line 522
    :goto_0
    return v0

    .line 512
    :cond_0
    const-string v0, "location"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    const-string v0, "location"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    goto :goto_0

    .line 514
    :cond_1
    const-string v0, "device"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 515
    const-string v0, "device"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    goto :goto_0

    .line 516
    :cond_2
    const-string v0, "call_phone"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 517
    const-string v0, "call_phone"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    goto :goto_0

    .line 518
    :cond_3
    const-string v0, "sendmessage"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 519
    const-string v0, "sendmessage"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    goto :goto_0

    .line 522
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/lenovo/safecenter/support/AppInfo;)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "app"    # Lcom/lenovo/safecenter/support/AppInfo;

    .prologue
    .line 198
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "uid"

    iget v2, p1, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v1, "name"

    iget-object v2, p1, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "selected"

    iget v2, p1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v1, "packagename"

    iget-object v2, p1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "apptype"

    iget-object v2, p1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "pername"

    iget-object v2, p1, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "trusted"

    iget v2, p1, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v1, "suggest"

    iget v2, p1, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v1, "isupload"

    iget v2, p1, Lcom/lenovo/safecenter/support/AppInfo;->isupload:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v1, "appname"

    const-string v2, "name"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 209
    return-void
.end method

.method public static isAntiVirusExist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 754
    const/4 v1, 0x0

    .line 755
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 757
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.lenovo.antivirus"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 761
    :goto_0
    if-eqz v1, :cond_0

    .line 762
    const/4 v3, 0x1

    .line 764
    :cond_0
    return v3

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 790
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 796
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v1, :cond_0

    .line 797
    const/4 v2, 0x1

    .line 799
    :cond_0
    return v2

    .line 792
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 794
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHarassExist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 771
    const/4 v1, 0x0

    .line 772
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 774
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.lenovo.safecenter.lenovoAntiSpam"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 779
    :goto_0
    if-eqz v1, :cond_0

    .line 780
    const/4 v3, 0x1

    .line 782
    :cond_0
    return v3

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNacExist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 737
    const/4 v1, 0x0

    .line 738
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 740
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.lenovo.leos.nac"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 744
    :goto_0
    if-eqz v1, :cond_0

    .line 745
    const/4 v3, 0x1

    .line 747
    :cond_0
    return v3

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNotExist(Ljava/util/ArrayList;Lcom/lenovo/safecenter/support/AppInfo;)Z
    .locals 5
    .param p1, "appInfo"    # Lcom/lenovo/safecenter/support/AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "target":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    const/4 v1, 0x1

    .line 213
    .local v1, "flag":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 214
    .local v0, "appInfo1":Lcom/lenovo/safecenter/support/AppInfo;
    iget v3, v0, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    iget v4, p1, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    if-ne v3, v4, :cond_0

    .line 215
    const/4 v1, 0x0

    goto :goto_0

    .line 218
    .end local v0    # "appInfo1":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_1
    return v1
.end method

.method public static isSelected(Ljava/util/ArrayList;I)I
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    const/4 v2, 0x0

    .line 347
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v2

    .line 351
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 352
    .local v0, "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    iget v3, v0, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    if-ne v3, p1, :cond_2

    .line 353
    iget v2, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 354
    .local v2, "status":I
    goto :goto_0
.end method

.method public static isTariff(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permName"    # Ljava/lang/String;

    .prologue
    .line 688
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 689
    .local v0, "tariffPermissionNameList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 690
    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 691
    const-string v1, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    const/4 v1, 0x1

    .line 695
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTariffType(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permType"    # Ljava/lang/String;

    .prologue
    .line 700
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 701
    .local v0, "tariffPermissionNameList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "internet"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 702
    const-string v1, "sendmessage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 703
    const-string v1, "call_phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    const/4 v1, 0x1

    .line 707
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "flag":Z
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 61
    const/4 v0, 0x1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method
