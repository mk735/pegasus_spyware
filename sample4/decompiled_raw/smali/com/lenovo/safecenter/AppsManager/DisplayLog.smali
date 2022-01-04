.class public Lcom/lenovo/safecenter/AppsManager/DisplayLog;
.super Landroid/app/Activity;
.source "DisplayLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;,
        Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;
    }
.end annotation


# static fields
.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/lenovo/safecenter/database/AppDatabase;

.field private b:Landroid/content/pm/PackageManager;

.field private d:Landroid/app/ProgressDialog;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Handler;

.field private q:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->k:Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;

    .line 63
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$1;-><init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->p:Landroid/os/Handler;

    .line 181
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$3;-><init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 451
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 42
    sput-object p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/DisplayLog;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->d:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0160

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$7;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$7;-><init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$7;->start()V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->k:Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    .prologue
    .line 42
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->l:I

    return v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->b:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 464
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 466
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 467
    iput-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->o:Z

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 469
    iput-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->n:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090404

    if-ne v0, v1, :cond_0

    .line 174
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0356

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$6;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$6;-><init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$5;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$5;-><init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 179
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f0300b2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->setContentView(I)V

    .line 119
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->f:Landroid/widget/TextView;

    const v0, 0x7f0905ae

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;-><init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f090405

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->e:Landroid/widget/ProgressBar;

    .line 121
    const v0, 0x7f090406

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->g:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f090403

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->h:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f090404

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->i:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f090407

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->j:Landroid/widget/ListView;

    .line 129
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->b:Landroid/content/pm/PackageManager;

    .line 133
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 134
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 148
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->startActivity(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->finish()V

    .line 168
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 154
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->n:Z

    if-eqz v1, :cond_3

    .line 155
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->setResult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    sget-object v1, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->setResult(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 251
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 253
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const v9, 0x7f0d0355

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 203
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 205
    iget-boolean v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->o:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 206
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "from"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "from":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->l:I

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "key"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 213
    const-wide/16 v4, 0x0

    .line 214
    .local v4, "tariffTime":J
    const-wide/16 v2, 0x0

    .line 215
    .local v2, "privacyTime":J
    sget v6, Lcom/lenovo/safecenter/support/SafeCenterService;->charge_count:I

    if-lez v6, :cond_1

    sget-object v6, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v7, "tariff"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 217
    sget-object v6, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v7, "tariff"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v6, v6, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 219
    :cond_1
    sget v6, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    if-lez v6, :cond_2

    sget-object v6, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v7, "privacy"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 221
    sget-object v6, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v7, "privacy"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v6, v6, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 223
    :cond_2
    cmp-long v6, v4, v2

    if-lez v6, :cond_6

    iput v10, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->l:I

    .line 227
    .end local v2    # "privacyTime":J
    .end local v4    # "tariffTime":J
    :cond_3
    :goto_0
    iget v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->l:I

    if-nez v6, :cond_7

    .line 228
    const-string v6, "sendmessage"

    iput-object v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->m:Ljava/lang/String;

    .line 229
    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->f:Landroid/widget/TextView;

    const v7, 0x7f0d0535

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    const v9, 0x7f0d053b

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    sput v10, Lcom/lenovo/safecenter/support/SafeCenterService;->send_sms_count:I

    sput v10, Lcom/lenovo/safecenter/support/SafeCenterService;->call_count:I

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Const;->saveChargeLogsCount(Landroid/content/Context;)V

    .line 234
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/MyUtils;->showLeSecNotification(Landroid/content/Context;)V

    .line 245
    :cond_4
    :goto_1
    iget v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->l:I

    new-instance v7, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;

    invoke-direct {v7, p0, v6}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;-><init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;I)V

    invoke-virtual {v7}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->start()V

    .line 247
    .end local v0    # "from":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    :cond_5
    return-void

    .line 224
    .restart local v0    # "from":Ljava/lang/String;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "privacyTime":J
    .restart local v4    # "tariffTime":J
    :cond_6
    iput v8, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->l:I

    goto :goto_0

    .line 236
    .end local v2    # "privacyTime":J
    .end local v4    # "tariffTime":J
    :cond_7
    iget v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->l:I

    if-ne v6, v8, :cond_4

    .line 237
    const-string v6, "privacy"

    iput-object v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->m:Ljava/lang/String;

    .line 238
    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->f:Landroid/widget/TextView;

    const v7, 0x7f0d052f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    const v9, 0x7f0d053a

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    sput v10, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Const;->savePrivacyLogsCount(Landroid/content/Context;)V

    .line 243
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/MyUtils;->showLeSecNotification(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected setAdapter()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 256
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 257
    sget-object v0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->i:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 262
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;

    sget-object v1, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->c:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;-><init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->k:Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;

    .line 263
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->k:Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
