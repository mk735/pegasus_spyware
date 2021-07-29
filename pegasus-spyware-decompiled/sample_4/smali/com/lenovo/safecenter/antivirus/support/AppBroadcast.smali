.class public Lcom/lenovo/safecenter/antivirus/support/AppBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "AppBroadcast.java"


# instance fields
.field a:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

.field private b:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyVirus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sb_virus"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 137
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const-string v18, "viruspkgname"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 138
    .local v16, "virus_pkgname":Ljava/lang/String;
    const-string v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 139
    .local v17, "virus_pkgname_split":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v13, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v4, v17

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v15, v4, v7

    .line 143
    .local v15, "str":Ljava/lang/String;
    const/16 v18, 0x2000

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 145
    .end local v15    # "str":Ljava/lang/String;
    :cond_0
    new-instance v14, Landroid/content/Intent;

    const-class v18, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v14, "showVirus":Landroid/content/Intent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v18, "fromnotify"

    const-string v19, "notify"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v14, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 149
    const/high16 v18, 0x20000000

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 151
    .local v8, "intent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification;

    const v18, 0x7f020053

    const v19, 0x7f0d0305

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 153
    .local v10, "mNotification":Landroid/app/Notification;
    const/16 v18, 0xa

    move/from16 v0, v18

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 155
    const v18, 0x7f0d0309

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, "not_str":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 157
    const v18, 0x7f0d0305

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1, v11, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/support/AppBroadcast;->b:Landroid/app/NotificationManager;

    move-object/from16 v18, v0

    const/16 v19, 0x22a

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "i$":I
    .end local v8    # "intent":Landroid/app/PendingIntent;
    .end local v9    # "len$":I
    .end local v10    # "mNotification":Landroid/app/Notification;
    .end local v11    # "not_str":Ljava/lang/String;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "showVirus":Landroid/content/Intent;
    .end local v16    # "virus_pkgname":Ljava/lang/String;
    .end local v17    # "virus_pkgname_split":[Ljava/lang/String;
    :goto_1
    return-void

    .line 160
    :catch_0
    move-exception v6

    .line 162
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const-string v23, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/antivirus/support/AppBroadcast;->b:Landroid/app/NotificationManager;

    .line 34
    const-string v23, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 37
    const-string v23, "pkgname"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v21

    .line 39
    .local v21, "urlPkgName":Ljava/lang/String;
    const-string v23, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 40
    .local v19, "stringArray":[Ljava/lang/String;
    const/16 v23, 0x1

    aget-object v14, v19, v23

    .line 41
    .local v14, "pkgName":Ljava/lang/String;
    const-string v23, "pkgname"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "+++"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v11, 0x1

    .line 44
    .local v11, "isThrid":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x2000

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 45
    .local v10, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 50
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v11, :cond_0

    .line 52
    new-instance v16, Landroid/content/Intent;

    const-class v23, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v16, "service":Landroid/content/Intent;
    const-string v23, "pkgname"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    .end local v11    # "isThrid":Z
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v16    # "service":Landroid/content/Intent;
    .end local v19    # "stringArray":[Ljava/lang/String;
    .end local v21    # "urlPkgName":Ljava/lang/String;
    :cond_0
    const-string v23, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 61
    new-instance v23, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/antivirus/support/AppBroadcast;->a:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v21

    .line 63
    .restart local v21    # "urlPkgName":Ljava/lang/String;
    const-string v23, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 64
    .restart local v19    # "stringArray":[Ljava/lang/String;
    const/16 v23, 0x1

    aget-object v14, v19, v23

    .line 65
    .restart local v14    # "pkgName":Ljava/lang/String;
    const-string v23, "viruspkgname"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 66
    .local v22, "viruspkgnamelist":Ljava/lang/String;
    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 68
    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 69
    .local v20, "strs":[Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v4, v20

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_1

    aget-object v18, v4, v9

    .line 72
    .local v18, "str1":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 46
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "str1":Ljava/lang/String;
    .end local v20    # "strs":[Ljava/lang/String;
    .end local v22    # "viruspkgnamelist":Ljava/lang/String;
    .restart local v11    # "isThrid":Z
    :catch_0
    move-exception v7

    .line 48
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "isThrid":Z
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "strs":[Ljava/lang/String;
    .restart local v22    # "viruspkgnamelist":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 75
    .local v5, "bool":Z
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v8, v23, -0x1

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_2

    .line 77
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 79
    invoke-interface {v13, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 80
    const/4 v5, 0x1

    .line 81
    const v23, 0x7f0d031f

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "desc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/support/AppBroadcast;->a:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getAppInfo(Ljava/lang/String;)Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    move-result-object v3

    .line 83
    .local v3, "aInfo":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    if-eqz v3, :cond_2

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/support/AppBroadcast;->a:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getAppname()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    const-string v26, "0"

    invoke-virtual/range {v23 .. v26}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v3    # "aInfo":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    .end local v6    # "desc":Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_8

    .line 93
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v15, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 97
    .local v17, "str":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2c

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 75
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "str":Ljava/lang/String;
    .local v9, "i$":I
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 99
    .local v9, "i$":Ljava/util/Iterator;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const-string v23, "viruspkgname"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "isRealtimeProtectOpen"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 102
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/support/AppBroadcast;->notifyVirus(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_4
    if-eqz v5, :cond_6

    .line 113
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeKilledVirus()V

    .line 116
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "bool":Z
    .end local v8    # "i":I
    .end local v12    # "len$":I
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "strs":[Ljava/lang/String;
    :cond_6
    invoke-static {v14}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->removeConfig(Ljava/lang/String;Landroid/content/Context;)V

    .line 118
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v19    # "stringArray":[Ljava/lang/String;
    .end local v21    # "urlPkgName":Ljava/lang/String;
    .end local v22    # "viruspkgnamelist":Ljava/lang/String;
    :cond_7
    const-string v23, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    return-void

    .line 107
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "bool":Z
    .restart local v8    # "i":I
    .local v9, "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "pkgName":Ljava/lang/String;
    .restart local v19    # "stringArray":[Ljava/lang/String;
    .restart local v20    # "strs":[Ljava/lang/String;
    .restart local v21    # "urlPkgName":Ljava/lang/String;
    .restart local v22    # "viruspkgnamelist":Ljava/lang/String;
    :cond_8
    const-string v23, "viruspkgname"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 108
    const/16 v23, 0x0

    sput-boolean v23, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->hasVirus:Z

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/support/AppBroadcast;->b:Landroid/app/NotificationManager;

    move-object/from16 v23, v0

    const/16 v24, 0x22a

    invoke-virtual/range {v23 .. v24}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4
.end method
