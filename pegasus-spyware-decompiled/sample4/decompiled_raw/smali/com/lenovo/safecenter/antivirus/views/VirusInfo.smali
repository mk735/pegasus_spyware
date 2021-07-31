.class public Lcom/lenovo/safecenter/antivirus/views/VirusInfo;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "VirusInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/VirusInfo$b;,
        Lcom/lenovo/safecenter/antivirus/views/VirusInfo$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/Button;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/pm/ApplicationInfo;

.field private k:Landroid/content/pm/PackageManager;

.field private l:Lcom/lenovo/safecenter/antivirus/views/VirusInfo$b;

.field private m:Landroid/content/pm/PackageStats;

.field private n:Lcom/lenovo/safecenter/antivirus/views/VirusInfo$a;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->o:Landroid/os/Handler;

    .line 288
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 279
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;Landroid/os/Message;)V
    .locals 10
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/VirusInfo;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    const v9, 0x7f0d02fc

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pStats"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageStats;

    iget-wide v1, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, v0, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->m:Landroid/content/pm/PackageStats;

    if-nez v3, :cond_1

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->m:Landroid/content/pm/PackageStats;

    invoke-direct {p0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->m:Landroid/content/pm/PackageStats;

    iget-wide v3, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->m:Landroid/content/pm/PackageStats;

    iget-wide v5, v0, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v3, v5

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->m:Landroid/content/pm/PackageStats;

    iget-wide v5, v0, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->j:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v1, 0x1

    .line 211
    :goto_0
    return v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 211
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->o:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->finish()V

    .line 106
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v3, 0x7f03003d

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->setContentView(I)V

    .line 64
    const v3, 0x7f020286

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0d048c

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 65
    const v3, 0x7f0901c7

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->a:Landroid/widget/TextView;

    .line 66
    const v3, 0x7f0901c8

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->b:Landroid/widget/TextView;

    .line 67
    const v3, 0x7f0901c9

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->c:Landroid/widget/TextView;

    .line 68
    const v3, 0x7f0901cd

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->d:Landroid/widget/TextView;

    .line 69
    const v3, 0x7f0901c6

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->g:Landroid/widget/ImageView;

    .line 70
    const v3, 0x7f0901ca

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->e:Landroid/widget/TextView;

    .line 71
    const v3, 0x7f0901cb

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->f:Landroid/widget/TextView;

    .line 72
    const v3, 0x7f0901cc

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->h:Landroid/widget/Button;

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pkgname"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->i:Ljava/lang/String;

    .line 74
    new-instance v3, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$b;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$b;-><init>(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->l:Lcom/lenovo/safecenter/antivirus/views/VirusInfo$b;

    .line 75
    new-instance v3, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$a;

    invoke-direct {v3, p0, p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$a;-><init>(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->n:Lcom/lenovo/safecenter/antivirus/views/VirusInfo$a;

    .line 76
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->registerAction()V

    .line 77
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->k:Landroid/content/pm/PackageManager;

    .line 78
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->i:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->a(Ljava/lang/String;)Z

    .line 79
    const v3, 0x7f0901ce

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 80
    .local v1, "permsView":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/AppSecurityPermissions;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->j:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .local v0, "asp":Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    const v3, 0x7f0901cf

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 87
    .local v2, "securityList":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    .end local v2    # "securityList":Landroid/widget/LinearLayout;
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->h:Landroid/widget/Button;

    new-instance v4, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$2;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$2;-><init>(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void

    .line 89
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->n:Lcom/lenovo/safecenter/antivirus/views/VirusInfo$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 201
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 202
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 151
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 152
    const v4, 0x7f0d02f2

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "state":Ljava/lang/String;
    const v4, 0x7f0d02f3

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "advice":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "desc"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "desc"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    :cond_0
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->d:Landroid/widget/TextView;

    const v5, 0x7f0d0300

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 165
    :goto_0
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f0d02f4

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 166
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f0d02f6

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->k:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->j:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 191
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->g:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->j:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->k:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->j:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->k:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_6

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0d02fb

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_3
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->j:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->j:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 194
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->k:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->j:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->l:Lcom/lenovo/safecenter/antivirus/views/VirusInfo$b;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 196
    :cond_1
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 197
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_4
    return-void

    .line 163
    :cond_2
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "desc"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "desc"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "desc"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    :cond_4
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->d:Landroid/widget/TextView;

    const v5, 0x7f0d02e9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 179
    :goto_5
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f0d02f5

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 180
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f0d02f7

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 177
    :cond_5
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "desc"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 191
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v4

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->g:Landroid/widget/ImageView;

    const v6, 0x7f02017b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_6
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->b:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public registerAction()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->n:Lcom/lenovo/safecenter/antivirus/views/VirusInfo$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void
.end method

.method public removePackageActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 109
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

    .line 110
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 111
    .local v1, "uninstallIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
