.class public Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;
.super Landroid/app/Activity;
.source "LeSafeMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;
.implements Ljava/util/Observer;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/lenovo/safecenter/utils/LeSafeObservable;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Landroid/widget/PopupWindow;

.field private i:Lcom/lenovo/safecenter/utils/Panel;

.field private j:Landroid/content/SharedPreferences;

.field private k:Lcom/lenovo/safecenter/dialog/CustomDialog;

.field private l:Landroid/app/ProgressDialog;

.field private m:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

.field private n:Landroid/os/Handler;

.field private o:Landroid/content/SharedPreferences;

.field private p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

.field private q:Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;

.field private r:Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 162
    new-instance v0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;III)V
    .locals 4
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "color"    # I

    .prologue
    .line 504
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 505
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0x1a

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 507
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 508
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 7
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "score"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0d0566

    .line 314
    const v1, 0x7f0903d7

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    .local v0, "detailCheckup":Landroid/widget/TextView;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsHealthCheckNoOptimiza()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d0565

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, p1, v6, v1, v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 547
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->i:Lcom/lenovo/safecenter/utils/Panel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/safecenter/utils/Panel;->setOpen(ZZ)Z

    .line 548
    return-void
.end method

.method private a()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 1219
    iget-object v10, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->o:Landroid/content/SharedPreferences;

    const-string v11, "holiday_img_id"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1221
    .local v2, "id":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->o:Landroid/content/SharedPreferences;

    const-string v11, "holiday_img_imageurl"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1223
    .local v7, "url":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->o:Landroid/content/SharedPreferences;

    const-string v11, "holiday_img_endtime"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    .local v0, "endtime":Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 1227
    .local v5, "lEndTime":J
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 1230
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "holiday_img.jpg"

    invoke-direct {v1, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1231
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    .line 1232
    .local v3, "isFileExists":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v10, v10, v5

    if-gez v10, :cond_0

    move v4, v8

    .line 1233
    .local v4, "isShow":Z
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 1236
    :goto_2
    return v8

    .end local v4    # "isShow":Z
    :cond_0
    move v4, v9

    .line 1232
    goto :goto_1

    .restart local v4    # "isShow":Z
    :cond_1
    move v8, v9

    .line 1236
    goto :goto_2

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "isFileExists":Z
    .end local v4    # "isShow":Z
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->k:Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->k:Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    const/4 v5, 0x1

    .line 146
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lenovo.safecenter.support.SecurtyService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->f:Z

    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.lenovo.safecenter.support.SafeCenterService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->g:Z

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->f:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    const-class v2, Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    iget-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->g:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    return-void
.end method

.method static synthetic g(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Lcom/lenovo/safecenter/utils/Panel;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->i:Lcom/lenovo/safecenter/utils/Panel;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    const/4 v2, 0x0

    .line 146
    const v0, 0x7f090333

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f090336

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic i(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    const v0, 0x7f090333

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f090336

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic j(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->j:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    .prologue
    .line 146
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$5;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l:Landroid/app/ProgressDialog;

    const v1, 0x7f0d04bc

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public canExecute(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1110
    const/4 v2, 0x0

    .line 1111
    .local v2, "i":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1112
    .local v1, "file":Ljava/io/File;
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 1113
    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1114
    const-string v3, "ydp"

    const-string v4, "canExecute()...true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/4 v3, 0x1

    .line 1126
    :goto_1
    return v3

    .line 1117
    :cond_0
    const-string v3, "ydp"

    const-string v4, "canExecute()...false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const-wide/16 v3, 0x5dc

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1126
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected exit()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->c:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->c:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->deleteObservers()V

    .line 415
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->c:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->close()V

    .line 417
    :cond_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->shutdown()V

    .line 418
    return-void
.end method

.method public feedback(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "mail"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 1045
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1046
    .local v5, "manager":Landroid/telephony/TelephonyManager;
    const-string v3, ""

    .line 1048
    .local v3, "idea":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v10, "utf-8"

    invoke-virtual {p1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/safecenter/encoders/UrlBase64;->encode([B)[B

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "idea":Ljava/lang/String;
    .local v4, "idea":Ljava/lang/String;
    move-object v3, v4

    .line 1053
    .end local v4    # "idea":Ljava/lang/String;
    .restart local v3    # "idea":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 1055
    .local v8, "versionName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v12, 0x8000

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1058
    .local v6, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1062
    .end local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    new-instance v1, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 1063
    .local v1, "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    new-instance v7, Lorg/apache/commons/httpclient/methods/PostMethod;

    const-string v10, "http://sss.lenovomm.com/sss/1.0/idea"

    invoke-direct {v7, v10}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v7, "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    const-string v10, "content"

    invoke-virtual {v7, v10, v3}, Lorg/apache/commons/httpclient/methods/PostMethod;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v10, "lang"

    const-string v11, "zh-cn"

    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1068
    const-string v10, "email"

    invoke-virtual {v7, v10, p2}, Lorg/apache/commons/httpclient/methods/PostMethod;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_0
    const-string v10, "revision"

    invoke-virtual {v7, v10, v8}, Lorg/apache/commons/httpclient/methods/PostMethod;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v10, "devicefamily"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string v10, "deviceidtype"

    const-string v11, "imei"

    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    .line 1074
    const-string v10, "deviceid"

    const-string v11, "N/A"

    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :goto_2
    const-string v10, "devicevendor"

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :try_start_2
    invoke-virtual {v1, v7}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v2

    .line 1082
    .local v2, "i":I
    invoke-virtual {v7}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v10

    if-nez v10, :cond_1

    const/16 v10, 0xc8

    if-ne v2, v10, :cond_1

    move v2, v9

    .line 1093
    .end local v2    # "i":I
    :cond_1
    :goto_3
    return v2

    .line 1049
    .end local v1    # "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    .end local v7    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .end local v8    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1059
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v8    # "versionName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1060
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1076
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    .restart local v7    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :cond_2
    const-string v10, "deviceid"

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1088
    :catch_2
    move-exception v0

    .line 1089
    .local v0, "e":Lorg/apache/commons/httpclient/HttpException;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpException;->printStackTrace()V

    .end local v0    # "e":Lorg/apache/commons/httpclient/HttpException;
    :goto_4
    move v2, v9

    .line 1093
    goto :goto_3

    .line 1090
    :catch_3
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public isMailNO(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mail"    # Ljava/lang/String;

    .prologue
    .line 1039
    const-string v2, "^(\\w)+(\\.\\w+)*@(\\w)+((\\.\\w+)+)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1040
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1041
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 438
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 439
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportOneKeyHealthCheckup()V

    goto :goto_0

    .line 442
    :sswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->showpopupWindow()V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 449
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 452
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 455
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 456
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 459
    :sswitch_4
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030078

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0902df

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0902e0

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->j:Landroid/content/SharedPreferences;

    const-string v5, "feedback_msg"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->j:Landroid/content/SharedPreferences;

    const-string v5, "feedback_mail"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v5, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d049d

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d04a0

    new-instance v5, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    invoke-direct {v5, p0, v1, v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v5, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0047

    invoke-virtual {v1, v2, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->k:Lcom/lenovo/safecenter/dialog/CustomDialog;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->k:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    .line 460
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 467
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "frommain"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 471
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 474
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/MainTab/AboutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 475
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x7f0903d8 -> :sswitch_0
        0x7f0903e2 -> :sswitch_2
        0x7f0903e3 -> :sswitch_3
        0x7f0903e4 -> :sswitch_4
        0x7f0903e5 -> :sswitch_5
        0x7f0903e7 -> :sswitch_6
        0x7f0905ae -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v11, 0x1f4

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const-string v0, "wu0wu"

    const-string v1, "LeSafeMainActivity  onCreate() start....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const v0, 0x7f0300ab

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->setContentView(I)V

    .line 219
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0905ae

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f0201d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->initIsRootThePhone()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->o:Landroid/content/SharedPreferences;

    iput-object p0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    new-instance v0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$13;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$13;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$13;->start()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->j:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->c:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->c:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0, p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->addObserver(Ljava/util/Observer;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "safepaymen_on"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->register()Z

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/PwdUtil;->judgeUpdateAppLockPatch(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->m:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->SUS_CHANNEL:Ljava/lang/String;

    new-instance v8, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$14;

    invoke-direct {v8, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$14;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    move v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZZLcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->m:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    :cond_1
    sget-boolean v0, Lcom/lenovo/safecenter/utils/Const;->updateAPK:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->j:Landroid/content/SharedPreferences;

    const-string v2, "update_apk_path"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0732

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0733

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0734

    new-instance v2, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$3;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0576

    new-instance v2, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$2;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    :goto_1
    iput-boolean v5, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->f:Z

    new-instance v0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$7;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$7;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$7;->start()V

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$8;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$8;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 221
    const v0, 0x7f090333

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f090335

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090334

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040007

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v10}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v3, v10}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    invoke-virtual {v3, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0903d8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09032f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/utils/Panel;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->i:Lcom/lenovo/safecenter/utils/Panel;

    const v0, 0x7f0903da

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$10;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$10;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->i:Lcom/lenovo/safecenter/utils/Panel;

    new-instance v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$11;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$11;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/Panel;->setOnPanelListener(Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;)V

    const v0, 0x7f0903d9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7}, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->q:Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;

    new-instance v0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->r:Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;

    const v0, 0x7f090337

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->q:Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f090332

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->r:Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$9;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$9;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/httpApi/LeSafeAPI;->getHolidayImgSync(Landroid/content/Context;Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;)V

    .line 224
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/httpApi/LeSafeAPI;->getSafePayList(Landroid/content/Context;Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;)V

    .line 225
    const-string v0, "wu0wu"

    const-string v1, "LeSafeMainActivity  onCreate() end....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 220
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v3, v5

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->m:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->upDate(Z)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->exit()V

    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 525
    return-void
.end method

.method public onError(II)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "statusCode"    # I

    .prologue
    .line 1147
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 394
    const/16 v1, 0x52

    if-ne p1, v1, :cond_2

    .line 395
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->showpopupWindow()V

    .line 409
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 399
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    .line 401
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 402
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->i:Lcom/lenovo/safecenter/utils/Panel;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/Panel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 403
    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Z)V

    goto :goto_1

    .line 406
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 529
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 530
    const v0, 0x7f090335

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090334

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 531
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->dismissShowPwdDialog()V

    .line 532
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 533
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const v9, 0x7f07001d

    const v8, 0x7f070016

    const v7, 0x7f02016d

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 537
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 538
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->i:Lcom/lenovo/safecenter/utils/Panel;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0, v6}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Z)V

    .line 541
    :cond_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getHealthCheckupScore()I

    move-result v2

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getHealthCheckupTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/WflUtils;->getDaysNumFromToday(J)I

    move-result v3

    const v0, 0x7f0903d7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0903d6

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isFirstHealthCheckup()Z

    move-result v4

    if-eqz v4, :cond_3

    const v2, 0x7f0d05ac

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->refresh()V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->q:Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->refresh()V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->r:Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->refresh()V

    .line 542
    invoke-static {}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->hasNewVersionLab()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isUpdateingLab()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "i"

    const-string v1, "wu0wu"

    const-string v2, "hasNewVersionLab"

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getDialogNoticeUpdateTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->isInTheSameDay(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "i"

    const-string v1, "wu0wu"

    const-string v2, "!isInTheSameDay"

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isTopActivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "i"

    const-string v1, "wu0wu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isTopActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->isAutoUpdate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/Const;->setDialogNoticeUpdateTime(J)V

    .line 543
    :cond_2
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 544
    return-void

    .line 541
    :cond_3
    if-gez v3, :cond_4

    const v2, 0x7f0d05ac

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    if-gt v3, v5, :cond_7

    const/16 v0, 0x64

    if-lt v2, v0, :cond_5

    const v0, 0x7f0d0562

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f020170

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-direct {p0, v0, v2, v9}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x3c

    if-lt v2, v0, :cond_6

    const/16 v0, 0x63

    if-gt v2, v0, :cond_6

    const v0, 0x7f0d0563

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f020171

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-direct {p0, v0, v2, v9}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_6
    const v0, 0x7f0d0564

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f020172

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-direct {p0, v0, v2, v8}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x2

    if-lt v3, v2, :cond_8

    const/4 v2, 0x6

    if-gt v3, v2, :cond_8

    const v2, 0x7f0d0468

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v0, v2, v6, v3, v4}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    const v0, 0x7f02032c

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x7

    if-lt v3, v2, :cond_1

    const v2, 0x7f0d0469

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f02016f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 4
    .param p1, "method"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1131
    packed-switch p1, :pswitch_data_0

    .line 1137
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1133
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_0
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p0}, Lcom/lenovo/safecenter/utils/httpApi/LeSafeAPI;->downloadHolidayImg(Landroid/content/Context;Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;)V

    :cond_1
    const-string v0, "d"

    const-string v1, "wu0wu"

    const-string v2, "handleHolidayImgSync onSuccess =304..."

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "obj":Ljava/lang/Object;
    const-string v0, "expiredId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "expiredId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getHolidayImgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "holiday_img_id"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "holiday_img_imageurl"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "holiday_img_starttime"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "holiday_img_endtime"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "holiday_img_version"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "d"

    const-string v2, "wu0wu"

    const-string v3, "handleHolidayImgSync onSuccess =remove data..."

    invoke-static {v0, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "holiday_img.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "holiday_img_id"

    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    const-string v0, "imageurl"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v2, "holiday_img_imageurl"

    const-string v0, "imageurl"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    const-string v0, "starttime"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v2, "holiday_img_starttime"

    const-string v0, "starttime"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    const-string v0, "endtime"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v2, "holiday_img_endtime"

    const-string v0, "endtime"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    const-string v0, "version"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v2, "holiday_img_version"

    const-string v0, "version"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getHolidayImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0, p0}, Lcom/lenovo/safecenter/utils/httpApi/LeSafeAPI;->downloadHolidayImg(Landroid/content/Context;Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;)V

    :cond_9
    const-string v0, "d"

    const-string v1, "wu0wu"

    const-string v2, "handleHolidayImgSync onSuccess =end..."

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1136
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$6;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$6;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showpopupWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 723
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ad

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 757
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0903e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    .line 761
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    const v2, 0x7f0e000c

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 762
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 763
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 764
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 765
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    const v2, 0x7f0905ac

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 769
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 770
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->b:Landroid/widget/ImageView;

    const v2, 0x7f0201d9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 771
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$12;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$12;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 777
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 632
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 633
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 657
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 635
    :pswitch_1
    const-string v0, "i"

    const-string v1, "wu0wu"

    const-string v2, "LeSafeActivity LeSafeObservable.OBSERVER_QUERY_LAB"

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->refresh()V

    goto :goto_0

    .line 641
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->refresh()V

    goto :goto_0

    .line 644
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->refresh()V

    goto :goto_0

    .line 647
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->refresh()V

    goto :goto_0

    .line 650
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->refresh()V

    goto :goto_0

    .line 653
    :pswitch_6
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->refresh()V

    goto :goto_0

    .line 656
    :pswitch_7
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->p:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->refresh()V

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
