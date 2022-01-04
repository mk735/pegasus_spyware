.class public Lcom/lenovo/safecenter/notificationintercept/support/ScanUtilsImpl;
.super Ljava/lang/Object;
.source "ScanUtilsImpl.java"

# interfaces
.implements Lcom/lenovo/safecenter/notificationintercept/support/IScanUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    .line 55
    .local v7, "networkAvailable":Z
    if-nez v7, :cond_0

    move v0, v5

    .line 67
    :goto_0
    return v0

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.lenovo.antivirus.AppinfoProvider/appinfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    :goto_1
    if-nez v10, :cond_5

    move-object v6, v2

    .line 60
    .local v6, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    :cond_2
    invoke-static {v6, p0}, Lcom/lenovo/safecenter/notificationintercept/support/ScanUtilsImpl;->cloudScanGlobal(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 61
    .local v8, "notifyApps":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 62
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 59
    .end local v6    # "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    .end local v8    # "notifyApps":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.lenovo.antivirus.AppinfoProvider/appinfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "pkgname=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " query.count == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    const-string v1, "pkgname"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "md5"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sha1"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "filesize"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "appname"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 64
    .restart local v6    # "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    .restart local v8    # "notifyApps":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " notifyApps == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 66
    invoke-static {p0, v8}, Lcom/lenovo/safecenter/notificationintercept/support/ScanUtilsImpl;->a(Landroid/content/Context;Ljava/util/List;)V

    move v0, v9

    .line 67
    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "notifyApps":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    new-instance v8, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;-><init>(Landroid/content/Context;)V

    .line 77
    .local v8, "db":Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->insertList(Ljava/util/List;)V

    .line 78
    invoke-virtual {v8}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->closeDatabase()V

    .line 80
    new-instance v9, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 81
    .local v9, "db2":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    invoke-virtual {v9}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findAll()Ljava/util/List;

    move-result-object v26

    .line 82
    .local v26, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    invoke-virtual {v9}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 83
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v19, "newPermission":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v20, "oldPermission":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    .line 86
    .local v4, "adBean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    const/4 v6, 0x0

    .line 87
    .local v6, "contains":Z
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    .line 88
    .local v25, "permissionBean":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    invoke-virtual {v4}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getPkgName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 89
    const/4 v6, 0x1

    .line 90
    move-object/from16 v0, v25

    iget v0, v0, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 91
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    .line 92
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v25    # "permissionBean":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_2
    if-nez v6, :cond_0

    .line 98
    new-instance v21, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    invoke-direct/range {v21 .. v21}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;-><init>()V

    .line 99
    .local v21, "p":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    invoke-virtual {v4}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getPkgName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    .line 100
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    .line 101
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v4    # "adBean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .end local v6    # "contains":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v21    # "p":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_3
    new-instance v22, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 105
    .local v22, "pDB":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->insertList(Ljava/util/List;)V

    .line 106
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->updateList(Ljava/util/List;)V

    .line 107
    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 108
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v14, "labelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 110
    .local v23, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    .line 112
    .local v24, "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :try_start_0
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 113
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 114
    .local v16, "loadLabel":Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 115
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "loadLabel":Ljava/lang/CharSequence;
    :catch_0
    move-exception v10

    .line 116
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v24    # "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    .line 121
    .restart local v24    # "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :try_start_1
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 122
    .restart local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 123
    .restart local v16    # "loadLabel":Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 124
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "loadLabel":Ljava/lang/CharSequence;
    :catch_1
    move-exception v10

    .line 125
    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v24    # "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_5
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " Show Notification !!! labelList.size === "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " oldPermission="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " newPermission="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 130
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    if-eqz v27, :cond_6

    .line 131
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-gt v0, v1, :cond_7

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 132
    .local v15, "labelText":Ljava/lang/String;
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    .line 133
    .local v17, "mNotification":Landroid/app/Notification;
    const v27, 0x7f020205

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 134
    const v27, 0x7f0d062d

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v15, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 135
    new-instance v13, Landroid/content/Intent;

    const-class v27, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v13, "intent":Landroid/content/Intent;
    const-string v27, "tab"

    const-string v28, "noti_permission"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 140
    .local v7, "contentIntent":Landroid/app/PendingIntent;
    const v27, 0x7f0d0190

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    const v28, 0x7f0d062d

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v15, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 150
    const-string v27, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 151
    .local v18, "manager":Landroid/app/NotificationManager;
    const v27, 0x208d3

    move-object/from16 v0, v18

    move/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 154
    .end local v7    # "contentIntent":Landroid/app/PendingIntent;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "labelText":Ljava/lang/String;
    .end local v17    # "mNotification":Landroid/app/Notification;
    .end local v18    # "manager":Landroid/app/NotificationManager;
    :cond_6
    return-void

    .line 131
    :cond_7
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "\u3001"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "..."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public static cloudScanGlobal(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Appinfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    const/4 v12, 0x0

    .line 206
    .local v12, "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    const-string v13, "c81e728d9d4c2f636f067f89cc14862c"

    .line 208
    .local v13, "md5Key":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v18

    if-gtz v18, :cond_1

    .line 209
    :cond_0
    const/16 v18, 0x0

    .line 268
    :goto_0
    return-object v18

    .line 212
    :cond_1
    const/4 v14, 0x0

    .line 213
    .local v14, "num":I
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v16, "sb":Ljava/lang/StringBuffer;
    const-string v18, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "<apklist>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " CloudScan size == "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 217
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    .line 218
    .local v10, "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    add-int/lit8 v14, v14, 0x1

    .line 219
    const-string v18, "<apk>"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v10}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getSHA1()Ljava/lang/String;

    move-result-object v18

    const-string v19, "preload"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 221
    const-string v18, "<packagesha1>"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual {v10}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getSHA1()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "</packagesha1>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :goto_2
    const-string v18, "</apk>"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 223
    :cond_2
    const-string v18, "<certmd5>"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual {v10}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getMD5()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "</certmd5>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v18, "<filesize>"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual {v10}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getFilesize()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "</filesize>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v18, "<packagename>"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual {v10}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPkgName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "</packagename>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 229
    .end local v10    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    :cond_3
    const-string v18, "</apklist>"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :try_start_0
    new-instance v8, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v8}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 233
    .local v8, "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    new-instance v15, Lorg/apache/commons/httpclient/methods/PostMethod;

    const-string v18, "http://sss.lenovomm.com/sss/1.0/adcloudscan"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 236
    .local v15, "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 238
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 239
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 241
    .local v7, "gos":Ljava/util/zip/GZIPOutputStream;
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 242
    .local v4, "bytes":[B
    const/4 v11, 0x0

    .line 243
    .local v11, "length":I
    :goto_3
    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v4, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v11

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_5

    .line 244
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v4, v0, v11}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 264
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "bytes":[B
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    .end local v11    # "length":I
    .end local v15    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_0
    move-exception v5

    .line 265
    .local v5, "e":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " exception == "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->e(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    move-object/from16 v18, v12

    .line 268
    goto/16 :goto_0

    .line 246
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bytes":[B
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    .restart local v11    # "length":I
    .restart local v15    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :cond_5
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 247
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 248
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 249
    new-instance v6, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;

    new-instance v18, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v19, "text/xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 251
    .local v6, "entity":Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;
    invoke-virtual {v15, v6}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 252
    const-string v18, "Content-Encoding"

    const-string v19, "gzip"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v18, "ticket"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lenovo/safecenter/support/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v8, v15}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v17

    .line 256
    .local v17, "status":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "===statusstatus"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 257
    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 258
    invoke-virtual {v15}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 259
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "===statusstatus string is not null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 261
    :cond_6
    invoke-virtual {v15}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/support/ScanUtilsImpl;->parseXML(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto/16 :goto_4
.end method

.method public static parseXML(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    const/4 v0, 0x0

    .line 282
    .local v0, "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 283
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, "UTF-8"

    invoke-interface {v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 284
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .local v3, "event":I
    move-object v1, v0

    .line 285
    .end local v0    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .local v1, "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    .line 286
    packed-switch v3, :pswitch_data_0

    :cond_0
    move-object v0, v1

    .line 309
    .end local v1    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :cond_1
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move-object v1, v0

    .end local v0    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    goto :goto_0

    .line 288
    :pswitch_0
    :try_start_1
    const-string v6, "apk"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 289
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    invoke-direct {v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    .end local v1    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :goto_2
    :try_start_2
    const-string v6, "adname"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 292
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setAdname(Ljava/lang/String;)V

    .line 294
    :cond_2
    const-string v6, "packagename"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 295
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setPkgName(Ljava/lang/String;)V

    .line 297
    :cond_3
    const-string v6, "description"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 298
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setDescription(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 312
    .end local v3    # "event":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    .end local v0    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    return-object v4

    .line 303
    .restart local v1    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .restart local v3    # "event":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    :try_start_3
    const-string v6, "apk"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 305
    const/4 v0, 0x0

    .end local v1    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    goto :goto_1

    .line 312
    .end local v0    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    goto :goto_3

    .end local v0    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :cond_5
    move-object v0, v1

    .end local v1    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    goto :goto_2

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public adScan()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public notifyScanAll(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lenovo/safecenter/notificationintercept/support/ScanUtilsImpl;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public notifyScanSingle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1, p2}, Lcom/lenovo/safecenter/notificationintercept/support/ScanUtilsImpl;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 47
    return-void
.end method
