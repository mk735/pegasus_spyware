.class public Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "VirusDeepInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$b;,
        Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;,
        Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;
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

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/content/pm/ApplicationInfo;

.field private m:Landroid/content/pm/PackageManager;

.field private n:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$b;

.field private o:Landroid/content/pm/PackageStats;

.field private p:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;

.field private q:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->r:Landroid/os/Handler;

    .line 337
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 328
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;Landroid/os/Message;)V
    .locals 10
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    const v9, 0x7f0d02fc

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
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

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->o:Landroid/content/pm/PackageStats;

    if-nez v3, :cond_1

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->o:Landroid/content/pm/PackageStats;

    invoke-direct {p0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->o:Landroid/content/pm/PackageStats;

    iget-wide v3, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->o:Landroid/content/pm/PackageStats;

    iget-wide v5, v0, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v3, v5

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->o:Landroid/content/pm/PackageStats;

    iget-wide v5, v0, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->j:Z

    return v0
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isSD"    # Z
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 263
    if-nez p2, :cond_0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->l:Landroid/content/pm/ApplicationInfo;

    .line 270
    :goto_0
    const/4 v2, 0x1

    .line 273
    :goto_1
    return v2

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->m:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 267
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->l:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 273
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;Landroid/os/Message;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->a(J)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d02fc

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->r:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public deleteApkFromSD(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.antivirus.delete.sdfile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->finish()V

    .line 128
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v3, 0x7f03002a

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->setContentView(I)V

    .line 71
    const v3, 0x7f020286

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0d048c

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 72
    const v3, 0x7f090143

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->a:Landroid/widget/TextView;

    .line 73
    const v3, 0x7f090144

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->b:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f090145

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->c:Landroid/widget/TextView;

    .line 75
    const v3, 0x7f090149

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->d:Landroid/widget/TextView;

    .line 76
    const v3, 0x7f090142

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->g:Landroid/widget/ImageView;

    .line 77
    const v3, 0x7f090146

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->e:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f090147

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->f:Landroid/widget/TextView;

    .line 79
    const v3, 0x7f090148

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->h:Landroid/widget/Button;

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pkgname"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->i:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isSD"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->j:Z

    .line 82
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "filepath"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->k:Ljava/lang/String;

    .line 83
    new-instance v3, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$b;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$b;-><init>(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->n:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$b;

    .line 84
    new-instance v3, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;

    invoke-direct {v3, p0, p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;-><init>(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->p:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;

    .line 85
    new-instance v3, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;

    invoke-direct {v3, p0, p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;-><init>(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->q:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->registerAction()V

    .line 87
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->m:Landroid/content/pm/PackageManager;

    .line 88
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->i:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->j:Z

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->k:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->a(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 89
    const v3, 0x7f09014a

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 91
    .local v1, "permsView":Landroid/widget/LinearLayout;
    iget-boolean v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->j:Z

    if-nez v3, :cond_1

    .line 92
    new-instance v0, Landroid/widget/AppSecurityPermissions;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->l:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    .local v0, "asp":Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 95
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    const v3, 0x7f09014b

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 99
    .local v2, "securityList":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    .end local v2    # "securityList":Landroid/widget/LinearLayout;
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->h:Landroid/widget/Button;

    const v4, 0x7f0d02ed

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 110
    .end local v0    # "asp":Landroid/widget/AppSecurityPermissions;
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->h:Landroid/widget/Button;

    new-instance v4, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$2;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$2;-><init>(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void

    .line 101
    .restart local v0    # "asp":Landroid/widget/AppSecurityPermissions;
    :cond_0
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 106
    .end local v0    # "asp":Landroid/widget/AppSecurityPermissions;
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->h:Landroid/widget/Button;

    const v4, 0x7f0d0105

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->p:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->q:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 257
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 258
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 259
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 206
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 207
    const v5, 0x7f0d02f2

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "state":Ljava/lang/String;
    const v5, 0x7f0d02f3

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "advice":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "desc"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "desc"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    :cond_0
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->d:Landroid/widget/TextView;

    const v6, 0x7f0d0300

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 219
    :goto_0
    new-array v5, v9, [Ljava/lang/Object;

    const v6, 0x7f0d02f4

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 221
    iget-boolean v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->j:Z

    if-eqz v5, :cond_3

    .line 222
    new-array v5, v9, [Ljava/lang/Object;

    const v6, 0x7f0d0513

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_1
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const/4 v3, 0x0

    .line 232
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-boolean v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->j:Z

    if-eqz v5, :cond_4

    .line 233
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->m:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->k:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 241
    :goto_2
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->g:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->l:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->m:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->a:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->l:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->m:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_5

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f0d02fb

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_3
    iget-boolean v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->j:Z

    if-nez v5, :cond_6

    .line 244
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->l:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->l:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 245
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->m:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->l:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->n:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$b;

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 252
    :cond_1
    :goto_4
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 253
    :goto_5
    return-void

    .line 217
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "desc"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 224
    :cond_3
    new-array v5, v9, [Ljava/lang/Object;

    const v6, 0x7f0d02f6

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 235
    .restart local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->m:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->l:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x2000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_2

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 241
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->b:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 248
    :cond_6
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->r:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 249
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->k:Ljava/lang/String;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->r:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public registerAction()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->p:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "action.antivirus.delete.sdfile.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->q:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method

.method public removePackageActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 131
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

    .line 132
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .local v1, "uninstallIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method
