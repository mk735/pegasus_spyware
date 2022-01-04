.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;
.super Ljava/lang/Thread;
.source "AppUninstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getLauncherApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->g(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->h(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->i(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 259
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v13, "it":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v15, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 264
    .local v17, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 266
    .local v16, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->i(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->i(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 277
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v1, v6}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 279
    const/4 v14, 0x0

    .line 280
    .local v14, "movetoSDcrad":Z
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eqz v1, :cond_1

    iget v1, v6, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->j(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;

    move-result-object v1

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 281
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->g(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v18

    new-instance v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "third"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/lenovo/safecenter/support/AppInfo;-><init>(ILjava/lang/String;ILjava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 304
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "movetoSDcrad":Z
    :catch_0
    move-exception v10

    .line 305
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 280
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "movetoSDcrad":Z
    :cond_3
    :try_start_1
    iget v2, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eqz v2, :cond_2

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;->b:I

    goto :goto_1

    .line 286
    .end local v14    # "movetoSDcrad":Z
    :cond_4
    const/4 v11, 0x0

    .line 287
    .local v11, "i":I
    const/4 v11, 0x0

    :goto_2
    sget-object v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->md5s:[Ljava/lang/String;

    array-length v1, v1

    if-ge v11, v1, :cond_5

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/database/AppUtil;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->md5s:[Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 291
    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lenovo App:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_5
    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->md5s:[Ljava/lang/String;

    array-length v1, v1

    if-ne v11, v1, :cond_0

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->h(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v9

    new-instance v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "system"

    const-string v8, ""

    invoke-direct/range {v1 .. v8}, Lcom/lenovo/safecenter/support/AppInfo;-><init>(ILjava/lang/String;ILjava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 287
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 309
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "i":I
    .end local v16    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->h(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->g(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 315
    const-wide/16 v1, 0x5dc

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 320
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    return-void

    .line 316
    :catch_1
    move-exception v10

    .line 318
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method
