.class final Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;
.super Ljava/lang/Thread;
.source "CheckPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v5}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->b(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "uid"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 79
    .local v9, "uid":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v5}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->b(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "pkgname"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v5}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->b(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "replacing"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 81
    .local v18, "replacing":Z
    const-string v5, "com.lenovo.safebox"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    new-instance v16, Landroid/content/Intent;

    const-string v5, "com.lenovo.safebox.WATCH_APP_SERVICE"

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v16, "it":Landroid/content/Intent;
    const-string v5, "controler"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v5}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    .end local v16    # "it":Landroid/content/Intent;
    :cond_0
    :try_start_0
    new-instance v1, Lcom/lenovo/safecenter/adapter/DaoImpl;

    new-instance v5, Lcom/lenovo/safecenter/adapter/DbAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v6}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/lenovo/safecenter/adapter/DbAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v5}, Lcom/lenovo/safecenter/adapter/DaoImpl;-><init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V

    .line 90
    .local v1, "di":Lcom/lenovo/safecenter/adapter/DaoImpl;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v5}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 91
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x2000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 92
    .local v11, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "app_name":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 94
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v5}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/lenovo/safecenter/database/AppUtil;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "md5":Ljava/lang/String;
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "md5: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v13, Ljava/io/File;

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v13, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 99
    .local v14, "filesize":J
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    const-string v7, "true"

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/safecenter/adapter/DaoImpl;->insterForUserApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-nez v18, :cond_1

    .line 102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v6}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Context;

    move-result-object v6

    move-object/from16 v7, v17

    move-object v8, v4

    move-object v10, v3

    invoke-static/range {v5 .. v11}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "di":Lcom/lenovo/safecenter/adapter/DaoImpl;
    .end local v2    # "app_name":Ljava/lang/String;
    .end local v4    # "md5":Ljava/lang/String;
    .end local v11    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "filesize":J
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->stopSelf()V

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v12

    .line 105
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
