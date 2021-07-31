.class public Lcom/lenovo/safecenter/antivirus/support/installJudgeService;
.super Landroid/app/Service;
.source "installJudgeService.java"


# instance fields
.field a:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

.field private d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;-><init>(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->d:Landroid/os/Handler;

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/installJudgeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doinbg(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 275
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;-><init>(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->start()V

    .line 302
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 20
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v6, 0x2000

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 131
    .local v14, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "app_name1":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "isRealtimeProtectOpen"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 135
    invoke-static/range {p0 .. p1}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "md5":Ljava/lang/String;
    const-string v5, "preload"

    .line 137
    .local v5, "sha1":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    iget-object v3, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 139
    .local v10, "filesize":J
    const-wide/32 v18, 0x1400000

    cmp-long v3, v10, v18

    if-gez v3, :cond_0

    .line 141
    invoke-static {v9}, Lcom/lenovo/safecenter/antivirus/utils/SHA1Util;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 144
    :cond_0
    new-instance v2, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v2, "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->a:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->insertAppinfo(Lcom/lenovo/safecenter/antivirus/domain/Appinfo;)V

    .line 148
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "isRealtimeProtectOpen"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    .line 154
    const/4 v12, 0x0

    .line 155
    .local v12, "i":I
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 156
    .local v15, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    const/4 v6, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v13, v6, v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanPackages(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v17

    .line 157
    .local v17, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .line 158
    .local v16, "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget v3, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    .line 160
    const/4 v12, 0x2

    .line 165
    :cond_1
    iput v12, v15, Landroid/os/Message;->what:I

    .line 166
    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    if-nez v12, :cond_2

    .line 170
    sget-boolean v3, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isInstall:Z

    if-nez v3, :cond_2

    .line 172
    const-string v3, "0"

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\" "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v3, v6, v1}, Lcom/lenovo/safecenter/utils/MyUtils;->showScanVirusNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->d:Landroid/os/Handler;

    invoke-virtual {v3, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    .end local v2    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    .end local v4    # "md5":Ljava/lang/String;
    .end local v5    # "sha1":Ljava/lang/String;
    .end local v7    # "app_name1":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "filesize":J
    .end local v12    # "i":I
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "msg":Landroid/os/Message;
    .end local v16    # "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    .end local v17    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;>;"
    :cond_3
    :goto_0
    return-void

    .line 180
    .restart local v2    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    .restart local v4    # "md5":Ljava/lang/String;
    .restart local v5    # "sha1":Ljava/lang/String;
    .restart local v7    # "app_name1":Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "filesize":J
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    const/4 v6, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v13, v6, v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanPackages(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v17

    .line 181
    .restart local v17    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .line 182
    .restart local v16    # "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    iget v3, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    .line 184
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->initVirus(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->e:Z

    if-nez v3, :cond_3

    .line 189
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->e:Z

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->stopSelf()V

    .line 191
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v2    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    .end local v4    # "md5":Ljava/lang/String;
    .end local v5    # "sha1":Ljava/lang/String;
    .end local v7    # "app_name1":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "filesize":J
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    .end local v17    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;>;"
    :catch_0
    move-exception v8

    .line 197
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initVirus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v7, 0x1

    sput-boolean v7, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->hasVirus:Z

    .line 207
    const-string v7, "viruspkgname"

    invoke-static {v7, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "virus_pkgname":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, "isexist":Z
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
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

    .line 216
    .local v5, "vir":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 218
    const/4 v3, 0x1

    .line 222
    .end local v5    # "vir":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "isexist":Z
    .end local v4    # "len$":I
    :cond_1
    :goto_1
    const-string v7, "viruspkgname"

    invoke-static {v7, v6, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 231
    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 233
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeHasVirus()V

    .line 234
    return-void

    .line 214
    .restart local v0    # "arr":[Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "isexist":Z
    .restart local v4    # "len$":I
    .restart local v5    # "vir":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "isexist":Z
    .end local v4    # "len$":I
    .end local v5    # "vir":Ljava/lang/String;
    :cond_3
    move-object v6, p1

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 239
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->a:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    .line 240
    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    .line 241
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V

    .line 124
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->e:Z

    .line 270
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->doinbg(Landroid/content/Intent;)V

    .line 271
    return-void
.end method
