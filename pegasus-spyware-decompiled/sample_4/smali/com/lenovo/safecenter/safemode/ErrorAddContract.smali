.class public Lcom/lenovo/safecenter/safemode/ErrorAddContract;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "ErrorAddContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/ErrorAddContract$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/LinearLayout;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

.field private g:I

.field private h:Landroid/widget/BaseAdapter;

.field private i:Z

.field private j:Landroid/app/ProgressDialog;

.field private k:Lcom/lenovo/safecenter/safemode/ErrorAddContract$a;

.field private l:I

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->i:Z

    .line 45
    iput v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->l:I

    .line 46
    new-instance v0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;-><init>(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->m:Landroid/os/Handler;

    .line 230
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/ErrorAddContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;
    .param p1, "x1"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->h:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/ErrorAddContract;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->g:I

    return v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->h:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->f:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->l:I

    return v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->l:I

    return v0
.end method


# virtual methods
.method public initCopyDel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "selectlist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    .line 441
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->i:Z

    .line 444
    new-instance v0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;-><init>(Lcom/lenovo/safecenter/safemode/ErrorAddContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;->start()V

    .line 465
    return-void
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    .line 193
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->i:Z

    .line 197
    new-instance v0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;-><init>(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;->start()V

    .line 207
    return-void
.end method

.method public initInsert(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "selectlist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    .line 311
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->i:Z

    .line 314
    new-instance v0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$5;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract$5;-><init>(Lcom/lenovo/safecenter/safemode/ErrorAddContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract$5;->start()V

    .line 328
    return-void
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ErrorAddContract$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract$3;-><init>(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;-><init>(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->finish()V

    .line 187
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->setContentView(I)V

    .line 152
    const v1, 0x7f020286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0022

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 154
    const v1, 0x7f090076

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->b:Landroid/widget/LinearLayout;

    .line 155
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a:Landroid/widget/Button;

    .line 158
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a:Landroid/widget/Button;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 159
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a:Landroid/widget/Button;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 160
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->d:Landroid/widget/ListView;

    .line 161
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->e:Landroid/widget/TextView;

    .line 163
    new-instance v1, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v1}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->f:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromtype"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->g:I

    .line 165
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->onBtnClick()V

    .line 167
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->initData()V

    .line 173
    new-instance v1, Lcom/lenovo/safecenter/safemode/ErrorAddContract$a;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/safecenter/safemode/ErrorAddContract$a;-><init>(Lcom/lenovo/safecenter/safemode/ErrorAddContract;B)V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->k:Lcom/lenovo/safecenter/safemode/ErrorAddContract$a;

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->k:Lcom/lenovo/safecenter/safemode/ErrorAddContract$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 224
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->k:Lcom/lenovo/safecenter/safemode/ErrorAddContract$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 226
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 218
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 219
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 220
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 213
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 214
    return-void
.end method

.method public setAddBtnText()V
    .locals 5

    .prologue
    .line 138
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->l:I

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a:Landroid/widget/Button;

    const v1, 0x7f0d0540

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a:Landroid/widget/Button;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
