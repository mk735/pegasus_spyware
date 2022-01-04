.class public Lcom/lenovo/safecenter/antivirus/support/SyncDownService;
.super Landroid/app/Service;
.source "SyncDownService.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$1;-><init>(Lcom/lenovo/safecenter/antivirus/support/SyncDownService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/support/SyncDownService;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    .prologue
    .line 31
    const-string v0, "virusnetshowtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "cloudscan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "count"

    const-string v2, "virusnetadd"

    invoke-static {v2, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/support/SyncDownService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static showSafeNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 161
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 163
    .local v2, "manager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 165
    .local v1, "mNotification":Landroid/app/Notification;
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 166
    const/4 v3, 0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/Notification;->when:J

    .line 168
    iput-object p1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 169
    const v3, 0x7f020293

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 170
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 171
    .local v0, "intent":Landroid/app/PendingIntent;
    const v3, 0x7f0d0759

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d075a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 172
    const/16 v3, 0x22b

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 173
    return-void
.end method


# virtual methods
.method public notifyVirus(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 132
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const-string v19, "viruspkgname"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 133
    .local v17, "virus_pkgname":Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 134
    .local v18, "virus_pkgname_split":[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v14, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v4, v18

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v16, v4, v7

    .line 138
    .local v16, "str":Ljava/lang/String;
    const/16 v19, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2c

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 140
    .end local v16    # "str":Ljava/lang/String;
    :cond_0
    new-instance v15, Landroid/content/Intent;

    const-class v19, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v15, "showVirus":Landroid/content/Intent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v19, "fromnotify"

    const-string v20, "notify"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v15, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    const/high16 v19, 0x20000000

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 146
    .local v8, "intent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification;

    const v19, 0x7f020053

    const v20, 0x7f0d0305

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 147
    .local v10, "mNotification":Landroid/app/Notification;
    const/16 v19, 0xa

    move/from16 v0, v19

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 148
    const v19, 0x7f0d0309

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 149
    .local v12, "not_str":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 150
    const v19, 0x7f0d0305

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1, v12, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 151
    const-string v19, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 152
    .local v11, "manager":Landroid/app/NotificationManager;
    const/16 v19, 0x22a

    move/from16 v0, v19

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "i$":I
    .end local v8    # "intent":Landroid/app/PendingIntent;
    .end local v9    # "len$":I
    .end local v10    # "mNotification":Landroid/app/Notification;
    .end local v11    # "manager":Landroid/app/NotificationManager;
    .end local v12    # "not_str":Ljava/lang/String;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "showVirus":Landroid/content/Intent;
    .end local v17    # "virus_pkgname":Ljava/lang/String;
    .end local v18    # "virus_pkgname_split":[Ljava/lang/String;
    :goto_1
    return-void

    .line 153
    :catch_0
    move-exception v6

    .line 154
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 55
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;-><init>(Lcom/lenovo/safecenter/antivirus/support/SyncDownService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->start()V

    .line 111
    return-void
.end method
