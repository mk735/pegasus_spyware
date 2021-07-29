.class public Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;
.super Landroid/app/Activity;
.source "NotiSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/pm/PackageManager;

.field private f:Landroid/content/pm/ApplicationInfo;

.field private g:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;

.field private h:Landroid/app/NotificationManager;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->i:Z

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->i:Z

    return v0
.end method


# virtual methods
.method public initVirus()V
    .locals 9

    .prologue
    .line 82
    const/4 v7, 0x1

    sput-boolean v7, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->hasVirus:Z

    .line 83
    const-string v7, "viruspkgname"

    invoke-static {v7, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "virus_pkgname":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, "isexist":Z
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "arr":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    .line 92
    .local v5, "vir":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    const/4 v3, 0x1

    .line 98
    .end local v5    # "vir":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "isexist":Z
    .end local v4    # "len$":I
    :cond_1
    :goto_1
    const-string v7, "viruspkgname"

    invoke-static {v7, v6, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 107
    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->c:Ljava/lang/String;

    invoke-static {v7, v8, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 108
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeHasVirus()V

    .line 109
    return-void

    .line 90
    .restart local v0    # "arr":[Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "isexist":Z
    .restart local v4    # "len$":I
    .restart local v5    # "vir":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "isexist":Z
    .end local v4    # "len$":I
    .end local v5    # "vir":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public notifyVirus()V
    .locals 21

    .prologue
    .line 170
    :try_start_0
    const-string v17, "viruspkgname"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 171
    .local v15, "virus_pkgname":Ljava/lang/String;
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 172
    .local v16, "virus_pkgname_split":[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v12, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v14, v4, v7

    .line 176
    .local v14, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->e:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->e:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2c

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 181
    .end local v14    # "str":Ljava/lang/String;
    :cond_0
    new-instance v13, Landroid/content/Intent;

    const-class v17, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v13, "showVirus":Landroid/content/Intent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v17, "fromnotify"

    const-string v18, "notify"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v13, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 186
    const/high16 v17, 0x20000000

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 189
    .local v8, "intent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification;

    const v17, 0x7f020053

    const v18, 0x7f0d0305

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 194
    .local v10, "mNotification":Landroid/app/Notification;
    const/16 v17, 0xa

    move/from16 v0, v17

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 197
    const v17, 0x7f0d0309

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 199
    .local v11, "not_str":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 201
    const v17, 0x7f0d0305

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1, v11, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->h:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    const/16 v18, 0x22a

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "i$":I
    .end local v8    # "intent":Landroid/app/PendingIntent;
    .end local v9    # "len$":I
    .end local v10    # "mNotification":Landroid/app/Notification;
    .end local v11    # "not_str":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "showVirus":Landroid/content/Intent;
    .end local v15    # "virus_pkgname":Ljava/lang/String;
    .end local v16    # "virus_pkgname_split":[Ljava/lang/String;
    :goto_1
    return-void

    .line 206
    :catch_0
    move-exception v6

    .line 208
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->e:Landroid/content/pm/PackageManager;

    .line 46
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 47
    .local v1, "smsIntent":Landroid/content/Intent;
    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->c:Ljava/lang/String;

    .line 48
    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->a:Ljava/lang/String;

    .line 49
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->h:Landroid/app/NotificationManager;

    .line 50
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "virustype"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->d:Ljava/lang/String;

    .line 51
    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;

    invoke-direct {v2, p0, p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;-><init>(Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->g:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;

    .line 52
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->registerAction()V

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->e:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->a:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->f:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    const v2, 0x7f0d02b3

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->setTitle(I)V

    .line 64
    const v2, 0x7f030034

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->setContentView(I)V

    .line 65
    const v2, 0x7f0901a1

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0901a2

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0901a3

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0901a4

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901a5

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0901a7

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v8, 0x7f0901a6

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    :try_start_1
    iget-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->e:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->f:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->b:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "virustype"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0d02e9

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->c:Ljava/lang/String;

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->c:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "virustype"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0d0307

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;

    invoke-direct {v2, p0, v7, v8}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->initVirus()V

    .line 67
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v12, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->i:Z

    .line 59
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 60
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->finish()V

    goto/16 :goto_0

    .line 65
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const v9, 0x7f02017b

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const v2, 0x7f0d0300

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0d02d4

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v9, "virusname"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070015

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v6, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "virusname"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v10, 0x21

    invoke-virtual {v3, v6, v9, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d0306

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 242
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->g:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->i:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->d:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->notifyVirus()V

    .line 255
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 71
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 77
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    return-void
.end method

.method public registerAction()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->g:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    return-void
.end method

.method public removePackageActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 259
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    .local v1, "uninstallIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void
.end method
