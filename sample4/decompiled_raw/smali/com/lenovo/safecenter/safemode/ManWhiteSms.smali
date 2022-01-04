.class public Lcom/lenovo/safecenter/safemode/ManWhiteSms;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "ManWhiteSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/ManWhiteSms$b;,
        Lcom/lenovo/safecenter/safemode/ManWhiteSms$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:I

.field private e:Landroid/widget/ListView;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;

.field private h:Lcom/lenovo/safecenter/database/AppDatabase;

.field private i:Z

.field private j:Landroid/app/ProgressDialog;

.field private k:Z

.field private l:Lcom/lenovo/safecenter/safemode/ManWhiteSms$b;

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->k:Z

    .line 42
    new-instance v0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$a;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms$a;-><init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->m:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/ManWhiteSms;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->j:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->k:Z

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->d:I

    return v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->h:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->m:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public initData()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->h:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/database/AppDatabase;->getwhiteSms()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->f:Ljava/util/List;

    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->f:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->g:Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;

    .line 135
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->g:Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    :cond_0
    return-void
.end method

.method public init_recovery(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "select_numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->j:Landroid/app/ProgressDialog;

    .line 240
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->j:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 241
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->j:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->k:Z

    .line 244
    new-instance v0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;-><init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms$5;->start()V

    .line 251
    return-void
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ManWhiteSms$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms$1;-><init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->c:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ManWhiteSms$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms$2;-><init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->b:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;-><init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->a:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;-><init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->finish()V

    .line 123
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v1, 0x7f0300af

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->setContentView(I)V

    .line 86
    const v1, 0x7f020286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d000b

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 87
    const v1, 0x7f0903eb

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->e:Landroid/widget/ListView;

    .line 88
    const v1, 0x7f0903ec

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->a:Landroid/widget/Button;

    .line 89
    const v1, 0x7f0903ed

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->b:Landroid/widget/Button;

    .line 90
    const v1, 0x7f0903ee

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->c:Landroid/widget/Button;

    .line 91
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->h:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 92
    iput-boolean v4, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->i:Z

    .line 93
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->d:I

    .line 94
    iget v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->d:I

    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->a:Landroid/widget/Button;

    const v2, 0x7f0d01a4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 101
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->initData()V

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->onBtnClick()V

    .line 103
    new-instance v1, Lcom/lenovo/safecenter/safemode/ManWhiteSms$b;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/safecenter/safemode/ManWhiteSms$b;-><init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;B)V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->l:Lcom/lenovo/safecenter/safemode/ManWhiteSms$b;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->l:Lcom/lenovo/safecenter/safemode/ManWhiteSms$b;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void

    .line 97
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->a:Landroid/widget/Button;

    const v2, 0x7f0d01a5

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->l:Lcom/lenovo/safecenter/safemode/ManWhiteSms$b;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 79
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 109
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 110
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 116
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 117
    return-void
.end method
