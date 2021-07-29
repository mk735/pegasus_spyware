.class public Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;
.super Ljava/lang/Object;
.source "DataLayerManageBoot.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->a:I

    .line 303
    iput v0, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->b:I

    .line 304
    iput v0, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->c:I

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "listA":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "listB":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    .end local p0    # "listA":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object p0

    .line 288
    .restart local p0    # "listA":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v2, "listC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 292
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    .local v0, "elementB":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "elementB":Ljava/lang/String;
    :cond_2
    move-object p0, v2

    .line 297
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "SELECT pkgName FROM BootCom"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-lez v16, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "pkgName"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-virtual {v13}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 110
    .local v3, "fromDatabases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 115
    .local v4, "fromReal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3, v4}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 116
    .local v2, "deleteItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v4, v3}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 117
    .local v6, "insertItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "DataLayerManageBoot"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " deleteItem == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " insertItem == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 120
    const/4 v13, 0x1

    .line 149
    :goto_1
    return v13

    .line 123
    :cond_2
    new-instance v1, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, "dbHelper":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 125
    .local v12, "writeDB":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 126
    const-string v11, "pkgName=?"

    .line 127
    .local v11, "whereClause":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_3

    .line 128
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 129
    .local v9, "packageName":Ljava/lang/String;
    const-string v13, "BootCom"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-virtual {v12, v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 132
    .end local v5    # "i":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "whereClause":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 133
    invoke-static/range {p0 .. p0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->c(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v8

    .line 134
    .local v8, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_4

    .line 135
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 136
    .restart local v9    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    .line 137
    .local v7, "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v10, "values":Landroid/content/ContentValues;
    const-string v13, "appName"

    iget-object v14, v7, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v13, "clsName"

    iget-object v14, v7, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->e:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v13, "pkgName"

    iget-object v14, v7, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v13, "proName"

    iget-object v14, v7, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->d:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v13, "state"

    iget v14, v7, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v13, "customer_state"

    iget v14, v7, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v13, "BootCom"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 147
    .end local v5    # "i":I
    .end local v7    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    .end local v8    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 148
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 149
    const/4 v13, 0x1

    goto/16 :goto_1
.end method

.method private static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 183
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, "intent":Landroid/content/Intent;
    const/16 v7, 0x258

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 186
    .local v6, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 187
    .local v5, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 188
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 194
    const-string v7, "com.lenovo.safebox"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.lenovo.safecenter.plugin"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 199
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 200
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v3
.end method

.method private static c(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v11, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 211
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v10, "intent":Landroid/content/Intent;
    const/16 v1, 0x258

    invoke-virtual {v12, v10, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 214
    .local v14, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 216
    .local v13, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v1, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 217
    .local v8, "app":Landroid/content/pm/ApplicationInfo;
    iget v1, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const-string v1, "com.lenovo.safebox"

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lenovo.safecenter.plugin"

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    .line 229
    .local v6, "state":I
    if-eqz v6, :cond_1

    const/4 v1, 0x1

    if-ne v6, v1, :cond_2

    .line 231
    :cond_1
    const/4 v6, 0x1

    .line 235
    :goto_1
    new-instance v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    const/4 v1, 0x0

    invoke-virtual {v8, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 238
    .local v0, "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    iget-object v1, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v1, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    .end local v0    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    :cond_2
    const/4 v6, 0x2

    goto :goto_1

    .line 245
    .end local v6    # "state":I
    .end local v8    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v11
.end method


# virtual methods
.method public getAllAllowBootCount(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 474
    invoke-static {p1}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->a(Landroid/content/Context;)Z

    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, "count":I
    new-instance v2, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 478
    .local v2, "dbHelper":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v2}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 479
    .local v3, "readDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT * FROM BootCom WHERE customer_state=1"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 481
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 482
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 483
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 486
    invoke-virtual {v2}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 487
    return v0
.end method

.method public getBootAllowCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->a:I

    return v0
.end method

.method public getBootAppInfoFromRealAllCls(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 251
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v10, "intent":Landroid/content/Intent;
    const/16 v1, 0x258

    invoke-virtual {v12, v10, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 254
    .local v14, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 256
    .local v13, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v1, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 257
    .local v8, "app":Landroid/content/pm/ApplicationInfo;
    iget v1, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const-string v1, "com.lenovo.safebox"

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lenovo.safecenter.plugin"

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    .line 270
    .local v6, "state":I
    new-instance v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 274
    .local v0, "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v0    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    .end local v6    # "state":I
    .end local v8    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v11
.end method

.method public getBootForbidedList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 451
    .local v1, "dbHelper":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 452
    .local v4, "readDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT * FROM BootCom WHERE customer_state=2"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 454
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 455
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 456
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 457
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 458
    const-string v5, "pkgName"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 463
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 466
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 467
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 468
    return-object v2
.end method

.method public getBootItem(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static/range {p1 .. p1}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->a(Landroid/content/Context;)Z

    .line 39
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->a:I

    .line 41
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v16, "listSuggestAllow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v17, "listSuggestForbid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v15, "listNoSuggest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 46
    .local v18, "pm":Landroid/content/pm/PackageManager;
    new-instance v12, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 47
    .local v12, "dbHelper":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v12}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    .line 48
    .local v19, "readDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT * FROM BootCom"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 49
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 50
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 51
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 54
    const-string v6, "pkgName"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "clsName"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "clsName":Ljava/lang/String;
    const-string v6, "customer_state"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 59
    .local v8, "state":I
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 60
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 61
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "appName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getExpertSuggest(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 64
    .local v9, "expertSuggest":I
    new-instance v2, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 67
    .local v2, "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    const/4 v6, 0x2

    if-eq v8, v6, :cond_0

    .line 68
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->a:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->a:I

    .line 74
    :cond_0
    const/4 v6, 0x1

    if-ne v9, v6, :cond_1

    .line 75
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v2    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v9    # "expertSuggest":I
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 76
    .restart local v2    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "appName":Ljava/lang/String;
    .restart local v9    # "expertSuggest":I
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v6, 0x2

    if-ne v9, v6, :cond_2

    .line 77
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 83
    .end local v2    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v9    # "expertSuggest":I
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v13

    .line 84
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "appName":Ljava/lang/String;
    .restart local v9    # "expertSuggest":I
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_2
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 89
    .end local v2    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "clsName":Ljava/lang/String;
    .end local v8    # "state":I
    .end local v9    # "expertSuggest":I
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 92
    invoke-virtual {v12}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 93
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->trimToSize()V

    .line 94
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->trimToSize()V

    .line 95
    invoke-virtual {v15}, Ljava/util/ArrayList;->trimToSize()V

    .line 96
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;>;"
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    return-object v14
.end method

.method public getBootMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<[",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 408
    invoke-static {p1}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->a(Landroid/content/Context;)Z

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 411
    .local v0, "bootMap":Ljava/util/HashMap;, "Ljava/util/HashMap<[Ljava/lang/String;[I>;"
    iput v9, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->d:I

    .line 413
    new-instance v2, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 414
    .local v2, "dbHelper":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v2}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 415
    .local v4, "readDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT * FROM BootCom"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 416
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 417
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 418
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 419
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 420
    new-array v3, v10, [Ljava/lang/String;

    .line 421
    .local v3, "nameArr":[Ljava/lang/String;
    const/4 v6, 0x4

    new-array v5, v6, [I

    .line 422
    .local v5, "stateArr":[I
    const-string v6, "pkgName"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    .line 423
    const-string v6, "clsName"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    .line 424
    const-string v6, "customer_state"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v5, v11

    .line 425
    aget-object v6, v3, v9

    invoke-static {p1, v6}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getExpertSuggest(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v10

    .line 426
    const/4 v6, -0x1

    aput v6, v5, v9

    .line 427
    aget v6, v5, v11

    if-eq v6, v10, :cond_0

    aget v6, v5, v10

    if-eq v6, v11, :cond_0

    .line 428
    iget v6, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->d:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->d:I

    .line 429
    aput v10, v5, v9

    .line 434
    :cond_0
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v6, "DataLayerManageBoot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBootMap --- > packageName == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needChangeToState == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 439
    .end local v3    # "nameArr":[Ljava/lang/String;
    .end local v5    # "stateArr":[I
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 442
    invoke-virtual {v2}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 444
    return-object v0
.end method

.method public getBootMap(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;",
            ">;)",
            "Ljava/util/HashMap",
            "<[",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 316
    iput v8, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->b:I

    .line 317
    iput v8, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->c:I

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v0, "bootMap":Ljava/util/HashMap;, "Ljava/util/HashMap<[Ljava/lang/String;[I>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    .line 321
    .local v2, "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    new-array v3, v10, [Ljava/lang/String;

    .line 322
    .local v3, "nameArr":[Ljava/lang/String;
    const/4 v5, 0x4

    new-array v4, v5, [I

    .line 323
    .local v4, "stateArr":[I
    iget-object v5, v2, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    aput-object v5, v3, v8

    .line 324
    iget-object v5, v2, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->e:Ljava/lang/String;

    aput-object v5, v3, v9

    .line 325
    iget v5, v2, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    aput v5, v4, v9

    .line 326
    iget v5, v2, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->g:I

    aput v5, v4, v10

    .line 328
    const/4 v5, -0x1

    aput v5, v4, v8

    .line 329
    aget v5, v4, v9

    if-eq v5, v10, :cond_0

    aget v5, v4, v10

    if-eq v5, v9, :cond_0

    .line 330
    iget v5, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->b:I

    .line 331
    aput v10, v4, v8

    .line 333
    :cond_0
    aget v5, v4, v9

    if-ne v5, v10, :cond_1

    aget v5, v4, v10

    if-ne v5, v9, :cond_1

    .line 334
    iget v5, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->c:I

    .line 335
    aput v9, v4, v8

    .line 338
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v5, "DataLayerManageBoot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBootMap --- > packageName == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " needChangeToState == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    .end local v2    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    .end local v3    # "nameArr":[Ljava/lang/String;
    .end local v4    # "stateArr":[I
    :cond_2
    return-object v0
.end method

.method public getNeedChangeToAllow()I
    .locals 3

    .prologue
    .line 310
    const-string v0, "DataLayerManageBoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNeedChangeToAllow == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v0, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->c:I

    return v0
.end method

.method public getNeedChangeToForbid()I
    .locals 3

    .prologue
    .line 306
    const-string v0, "DataLayerManageBoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNeedChangeToForbid == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget v0, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->b:I

    return v0
.end method

.method public getNeedChangeToForbidJustCount()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->d:I

    return v0
.end method

.method public updatePkgsInBootDB(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<[",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    .prologue
    .local p2, "cns":Ljava/util/HashMap;, "Ljava/util/HashMap<[Ljava/lang/String;[I>;"
    const/4 v10, 0x0

    .line 361
    new-instance v1, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 362
    .local v1, "dbHelper":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 363
    .local v6, "writeDB":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 364
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[Ljava/lang/String;[I>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v4, v7, v10

    .line 365
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v0, v7, v10

    .line 366
    .local v0, "changeToState":I
    const-string v7, "DataLayerManageBoot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateManyPkgsDB --- > packageName == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newState == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 370
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 371
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "customer_state"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v7, "BootCom"

    const-string v8, "pkgName=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object v4, v9, v10

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 375
    .end local v0    # "changeToState":I
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[Ljava/lang/String;[I>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 376
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 377
    return-void
.end method

.method public updatePkgsInBootDB2(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    .prologue
    .local p2, "cns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    const/4 v10, 0x0

    .line 381
    new-instance v1, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 382
    .local v1, "dbHelper":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 383
    .local v6, "writeDB":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 384
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 385
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v0, v7, v10

    .line 386
    .local v0, "changeToState":I
    const-string v7, "DataLayerManageBoot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateManyPkgsDB --- > packageName == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newState == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 390
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 391
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "customer_state"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    const-string v7, "BootCom"

    const-string v8, "pkgName=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object v4, v9, v10

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 395
    .end local v0    # "changeToState":I
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 396
    invoke-virtual {v1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 397
    return-void
.end method

.method public updateSinglePkgDB(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 347
    new-instance v0, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "dbHelper":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 349
    .local v3, "writeDB":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "customer_state"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v4, "BootCom"

    const-string v5, "pkgName=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 353
    .local v1, "updateCount":I
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 354
    invoke-virtual {v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 355
    const-string v4, "DataLayerManageBoot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSinglePkgDB --- > packageName == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newState == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v4, "DataLayerManageBoot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSinglePkgDB --- > updateCount == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v1
.end method
