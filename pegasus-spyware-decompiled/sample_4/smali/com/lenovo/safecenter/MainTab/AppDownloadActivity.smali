.class public Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;
.super Landroid/app/Activity;
.source "AppDownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final APP_LOCK_FILE_NAME:Ljava/lang/String; = "LenovoSafeBox455.apk"

.field public static final APP_LOCK_PATCH_VERSIONCODE:I = 0x3b83d1

.field public static final CHANNEL_KEY_LEBATTERY:Ljava/lang/String; = "Develop"

.field public static final CHANNEL_KEY_LECLOUD:Ljava/lang/String; = "leanquan_embed"

.field public static final CHANNEL_KEY_SELF:Ljava/lang/String; = "self"

.field public static final WIDGET4X1_FILE_NAME:Ljava/lang/String; = "LenovoSafeWidget115.apk"


# instance fields
.field private a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Landroid/widget/TextView;

.field private f:Landroid/os/Handler;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->c:Z

    .line 85
    new-instance v0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$1;-><init>(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->f:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$2;-><init>(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->g:Landroid/content/BroadcastReceiver;

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->i:Z

    const v0, 0x7f0d05fa

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->f:Landroid/os/Handler;

    invoke-static {v2, v0, v1}, Lcom/lenovo/safecenter/utils/WflUtils;->sendMessageToHandler(ILjava/lang/Object;Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0d04a8

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 420
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$4;-><init>(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 498
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public static copyAssetsFilesInstall(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "what"    # I

    .prologue
    .line 504
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;

    move v1, p4

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$5;-><init>(ILandroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 569
    return-void
.end method

.method public static copyAssetsFilesInstallAtBackgroud(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 573
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;

    invoke-direct {v1, p1, p0, p2}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$6;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 632
    return-void
.end method

.method public static mustUpdateAppLock(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    const-string v0, "com.lenovo.safebox"

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/database/AppUtil;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0x3b83d1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startAppDownloadActivity(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "isEntry"    # Z

    .prologue
    .line 392
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v0, "down":Landroid/content/Intent;
    const-string v1, "type"

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 394
    const-string v1, "isEntry"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 396
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 267
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const-string v0, "com.lenovo.safebox"

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    invoke-static {p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->mustUpdateAppLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "LenovoSafeBox455.apk"

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-direct {p0, v0, p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->startPrivatezone(Landroid/content/Context;)V

    .line 279
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->finish()V

    goto :goto_0

    .line 282
    :cond_2
    const-string v0, "LenovoSafeBox455.apk"

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-direct {p0, v0, p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 288
    const-string v0, "com.lenovo.leos.cloud.sync"

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->startLeCloudSyn(Landroid/content/Context;)V

    .line 295
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->finish()V

    goto :goto_0

    .line 290
    :cond_5
    const-string v0, "com.lenovo.safe.powercenter"

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerBattery;->startLeBattery(Landroid/content/Context;)V

    goto :goto_1

    .line 292
    :cond_6
    const-string v0, "com.lenovo.kidmode"

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->startKidMode(Landroid/content/Context;)V

    goto :goto_1

    .line 297
    :cond_7
    const-string v0, "com.lenovo.leos.cloud.sync"

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.lenovo.safe.powercenter"

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.lenovo.kidmode"

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :cond_8
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    if-nez v0, :cond_9

    new-instance v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    new-instance v8, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$3;

    invoke-direct {v8, p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$3;-><init>(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;)V

    move-object v1, p0

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZZLcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    :cond_9
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->upDate(Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/lenovo/safecenter/utils/DialogUtil;->createManualUpdateDialog(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 306
    :sswitch_1
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v9, "i":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->startActivity(Landroid/content/Intent;)V

    .line 309
    const v0, 0x7f040017

    const v1, 0x7f040014

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 313
    .end local v9    # "i":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->finish()V

    goto/16 :goto_0

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902d3 -> :sswitch_0
        0x7f0904b9 -> :sswitch_1
        0x7f0905ad -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f030072

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->setContentView(I)V

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d059c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    iput v2, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->d:I

    const-string v2, "isEntry"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->c:Z

    const-string v1, "AppDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initView()...type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0902ca

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0902cb

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0902cc

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902cd

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0902ce

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0902cf

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902d0

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0902d1

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0902d2

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0902d3

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->e:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v10, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->d:I

    packed-switch v10, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    return-void

    .line 123
    :pswitch_1
    const-string v3, "Develop"

    iput-object v3, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->b:Ljava/lang/String;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v10, -0x2

    invoke-direct {v3, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x28

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const-string v4, "com.lenovo.safe.powercenter"

    iput-object v4, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    const v4, 0x7f0d0721

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f02024e

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f02019d

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f0d0725

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d0726

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d0727

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d0728

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0d0729

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "leanquan_embed"

    iput-object v2, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->b:Ljava/lang/String;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xd

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v10, "com.lenovo.leos.cloud.sync"

    iput-object v10, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    const v10, 0x7f0d059c

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0201a2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f0d0722

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d0723

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d0578

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d0579

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d057a

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d057b

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0d0577

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "self"

    iput-object v2, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->b:Ljava/lang/String;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x28

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const-string v10, "com.lenovo.safebox"

    iput-object v10, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    const v10, 0x7f0d000b

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f020120

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f0d000b

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0d0693

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d0694

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d0695

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d0696

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->mustUpdateAppLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0d0716

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0d05f7

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0d0729

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "self"

    iput-object v2, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->b:Ljava/lang/String;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x28

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const-string v10, "com.lenovo.kidmode"

    iput-object v10, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->h:Ljava/lang/String;

    const v10, 0x7f0d078a

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f020191

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f0d078a

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d078b

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d078c

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d078d

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d078e

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0d0729

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 387
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 388
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 373
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 374
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 375
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 380
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 382
    return-void
.end method
