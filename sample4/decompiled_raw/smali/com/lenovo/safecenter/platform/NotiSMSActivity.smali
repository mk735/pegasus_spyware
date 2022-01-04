.class public Lcom/lenovo/safecenter/platform/NotiSMSActivity;
.super Landroid/app/Activity;
.source "NotiSMSActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/pm/PackageManager;

.field private h:Landroid/content/Context;

.field private i:Lcom/lenovo/safecenter/database/AppDatabase;

.field private j:Landroid/widget/ProgressBar;

.field private k:J

.field private l:I

.field private m:I

.field private n:Landroid/widget/TextView;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->k:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->l:I

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->m:I

    .line 46
    new-instance v0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;-><init>(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->m:I

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->l:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->l:I

    return v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->k:J

    return-wide v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->i:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v1, 0x7f0300c0

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->setContentView(I)V

    .line 87
    sget v1, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 88
    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->setFinishOnTouchOutside(Z)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->g:Landroid/content/pm/PackageManager;

    .line 92
    iput-object p0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->h:Landroid/content/Context;

    .line 93
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->i:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 94
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "smsIntent":Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->e:Ljava/lang/String;

    .line 96
    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->a:Ljava/lang/String;

    .line 97
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->b:Ljava/lang/String;

    .line 98
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->c:Ljava/lang/String;

    .line 99
    const-string v1, "valueName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->f:Ljava/lang/String;

    .line 101
    const v1, 0x7f09043f

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090440

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090412

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090442

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v5, 0x7f090443

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090445

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f09043d

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->j:Landroid/widget/ProgressBar;

    const v7, 0x7f090444

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->n:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->n:Landroid/widget/TextView;

    const v8, 0x7f0d00fe

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->m:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->c:Ljava/lang/String;

    if-nez v7, :cond_1

    const v7, 0x7f0d0103

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->d:Ljava/lang/String;

    const v7, 0x7f02017b

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d0104

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    invoke-direct {v1, p0, v5, v6}, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;-><init>(Lcom/lenovo/safecenter/platform/NotiSMSActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void

    .line 101
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->g:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->c:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->g:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->i:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v7, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->getApp_isupload(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v12, :cond_2

    const v1, 0x7f0d0162

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const v1, 0x7f0d0106

    :try_start_1
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 290
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 291
    const/4 p1, -0x1

    .line 293
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 115
    new-instance v0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;-><init>(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->start()V

    .line 138
    return-void
.end method
